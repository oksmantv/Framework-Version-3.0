/* Server-authoritative controller. [_terminal, _mode, _caller] remoteExec ["MED_Team_Start", 2]; */
MED_Team_Start = {
    params ["_terminal", "_mode", "_caller"];
    if (!isServer || {isNull _caller} || {!isPlayer _caller}) exitWith {};
    if (_caller distance _terminal > 3) exitWith {"Move closer to the medical course terminal." remoteExec ["systemChat", _caller]};
    if (_terminal getVariable ["MED_Team_Active", false]) exitWith {"The team medical course is already in use." remoteExec ["systemChat", _caller]};

    private _configuration = _terminal getVariable ["MED_Team_Configuration", []];
    if (_configuration isEqualTo []) exitWith {"Medical team course configuration is unavailable." remoteExec ["systemChat", _caller]};
    _configuration params ["_spawn", "_returnSpawn", "_ao", "_anchors", "_targets", "_hunts", ["_barrier", objNull]];
    private _enrolled = (units group _caller) select {isPlayer _x && {alive _x} && {_x distance _terminal <= 100}};
    if (_enrolled isEqualTo []) exitWith {"No alive group members are close enough to enroll." remoteExec ["systemChat", _caller]};

    nopop = true;
    publicVariable "nopop";

    private _runId = (missionNamespace getVariable ["MED_Team_NextRunId", 0]) + 1;
    missionNamespace setVariable ["MED_Team_NextRunId", _runId];
    private _stopSwitch = format ["MED_Team_1_StopHunts_%1", _runId];
    missionNamespace setVariable [_stopSwitch, false, true];

    _terminal setVariable ["MED_Team_Active", true, true];
    _terminal setVariable ["MED_Team_RunId", _runId, true];
    _terminal setVariable ["MED_Team_EnrolledPlayers", _enrolled, true];
    _terminal setVariable ["MED_Team_Mode", _mode, true];
    _terminal setVariable ["MED_Team_StopSwitch", _stopSwitch, true];

    private _taskId = format ["MED_Team_%1", _runId];
    _terminal setVariable ["MED_Team_TaskId", _taskId, true];

    if (!isNull _barrier) then {
        _barrier hideObjectGlobal true;
        _barrier enableSimulationGlobal false;
    };
    playSound3D [MISSION_ROOT + "activated.wav", _terminal];
    ["Team Medical Instructor", "side", "Course started. Reach the casualties and get every survivor awake.", "TEAM MEDICAL INSTRUCTOR", sideUnknown, "\A3\ui_f\data\IGUI\Cfg\simpleTasks\types\radio_ca.paa", false] spawn OKS_fnc_ChatGlobal;
    sleep 5;
    {
        _x setPosATL (getPosATL _spawn);
    } forEach _enrolled;


    [_terminal, _configuration, _mode, _runId, _stopSwitch] spawn {
        params ["_terminal", "_configuration", "_mode", "_runId", "_stopSwitch"];
        _configuration params ["_spawn", "_returnSpawn", "_ao", "_anchors", "_targets", "_hunts", ["_barrier", objNull]];
        sleep 1;
        if !(_terminal getVariable ["MED_Team_Active", false] && {_terminal getVariable ["MED_Team_RunId", -1] isEqualTo _runId}) exitWith {};

        private _casualtySetup = [_anchors] call MED_Team_SpawnCasualties;
        _casualtySetup params [
            ["_casualties", []],
            ["_flareModule", objNull],
            ["_flareGroup", grpNull],
            ["_flarePosition", [0, 0, 0]],
            ["_crater", objNull]
        ];
        _terminal setVariable ["MED_Team_Casualties", _casualties, true];
        _terminal setVariable ["MED_Team_FlareModule", _flareModule, true];
        _terminal setVariable ["MED_Team_FlareGroup", _flareGroup, true];
        _terminal setVariable ["MED_Team_FlarePosition", _flarePosition, true];
        _terminal setVariable ["MED_Team_Crater", _crater, true];
        private _taskId = _terminal getVariable ["MED_Team_TaskId", ""];
        private _taskTitle = format ["Team Medical Course — %1", _mode];
        private _taskDescription = "Casualties are marked here. Get every living casualty awake; at least one casualty must survive.";
        {
            [_taskId, "CREATED", _taskTitle, _taskDescription, _casualties # 0] remoteExec ["MED_Team_Task", _x];
        } forEach (_terminal getVariable ["MED_Team_EnrolledPlayers", []]);
        private _percentage = switch (_mode) do {case "Level 1": {0.5}; case "Level 2": {0.7}; case "Level 3": {1}; default {0}};
        private _staticGroups = [_targets, if (_mode isEqualTo "Dry Run") then {"DRY"} else {"LIVE"}, _percentage] call MED_Team_SetupTargets;
        _terminal setVariable ["MED_Team_StaticGroups", _staticGroups, true];
        private _huntUnits = [];
        _terminal setVariable ["MED_Team_HuntUnits", _huntUnits, true];

        if !(_mode isEqualTo "Dry Run") then {
            private _settings = switch (_mode) do {
                case "Level 1": {[3, 1, 1500, 60]};
                case "Level 2": {[4, 1, 1500, 30]};
                default {[6, 1, 1500, 15]};
            };
            _settings params ["_spawners", "_infantry", "_range", "_delay"];
            private _available = +_hunts;
            for "_i" from 1 to (_spawners min count _available) do {
                private _hunt = selectRandom _available;
                _available deleteAt (_available find _hunt);
                [getPos _hunt, "rush", _infantry, independent, _range, _huntUnits, _stopSwitch, _delay] spawn OKS_fnc_Lambs_Spawner;
            };
        };

        private _outsideSince = -1;
        while {_terminal getVariable ["MED_Team_Active", false] && {_terminal getVariable ["MED_Team_RunId", -1] isEqualTo _runId}} do {
            sleep 2;
            private _enrolled = _terminal getVariable ["MED_Team_EnrolledPlayers", []];
            private _availablePlayers = _enrolled select {alive _x && {_x inArea _ao}};
            if (_availablePlayers isEqualTo []) then {
                if (_outsideSince < 0) then {_outsideSince = diag_tickTime};
                if (diag_tickTime - _outsideSince >= 30) exitWith {
                    [_terminal, _configuration, "FAIL", "The team could not maintain a presence in the area."] call MED_Team_Cleanup;
                };
            } else {
                _outsideSince = -1;
            };

            private _dead = _casualties select {!alive _x};
            private _healed = _casualties select {
                private _casualty = _x;
                alive _casualty
                && {[_casualty] call ace_common_fnc_isAwake
                && [_casualty] call ace_medical_status_fnc_getBloodLoss < 0.001}
            };
            private _resolved = (count _dead) + (count _healed);
            if (count _dead isEqualTo count _casualties) exitWith {
                sleep 10;
                [_terminal, _configuration, "FAIL", "All casualties died before a patient could be stabilized."] call MED_Team_Cleanup;
            };

            private _targetsComplete = _mode isNotEqualTo "Dry Run" || {{_x getVariable ["MED_Team_TargetDown", false]} count _targets isEqualTo count _targets};
            if (_resolved isEqualTo count _casualties && {count _healed > 0} && {_targetsComplete}) exitWith {
                sleep 10;
                [_terminal, _configuration, "SUCCESS", "All casualty outcomes resolved and at least one casualty survived. Team medical course complete."] call MED_Team_Cleanup;
            };
        };
    };
};
