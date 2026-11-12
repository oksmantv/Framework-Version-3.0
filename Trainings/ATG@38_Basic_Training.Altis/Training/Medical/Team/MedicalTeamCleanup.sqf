/* [terminal, configuration, result, reason] call MED_Team_Cleanup; server only and idempotent. */
params ["_terminal", "_configuration", "_result", "_reason"];
if (!isServer) exitWith {};
if !(_terminal getVariable ["MED_Team_Active", false]) exitWith {};

_configuration params ["_spawn", "_returnSpawn", "_ao", "_anchors", "_targets", "_hunts", ["_barrier", objNull]];
private _enrolled = _terminal getVariable ["MED_Team_EnrolledPlayers", []];
private _taskId = _terminal getVariable ["MED_Team_TaskId", ""];
private _stopSwitch = _terminal getVariable ["MED_Team_StopSwitch", "MED_Team_1_StopHunts"];
private _flareModule = _terminal getVariable ["MED_Team_FlareModule", objNull];
private _flareGroup = _terminal getVariable ["MED_Team_FlareGroup", grpNull];
private _flarePosition = _terminal getVariable ["MED_Team_FlarePosition", [0, 0, 0]];
private _crater = _terminal getVariable ["MED_Team_Crater", objNull];
private _getGroupCenter = {
    params ["_units"];
    private _validUnits = _units select {!isNull _x};
    if (_validUnits isEqualTo []) exitWith {[0, 0, 0]};
    private _totalPosition = [0, 0, 0];
    {
        private _position = getPosATL _x;
        _totalPosition set [0, (_totalPosition # 0) + (_position # 0)];
        _totalPosition set [1, (_totalPosition # 1) + (_position # 1)];
        _totalPosition set [2, (_totalPosition # 2) + (_position # 2)];
    } forEach _validUnits;
    [
        (_totalPosition # 0) / count _validUnits,
        (_totalPosition # 1) / count _validUnits,
        (_totalPosition # 2) / count _validUnits
    ]
};

missionNamespace setVariable [_stopSwitch, true, true];
private _state = if (_result isEqualTo "SUCCESS") then {"SUCCEEDED"} else {"FAILED"};
private _title = format ["Team Medical Course — %1", _terminal getVariable ["MED_Team_Mode", ""]];
private _message = if (_result isEqualTo "SUCCESS") then {"Casualty outcomes resolved. Course complete. Return to medical training."} else {"Course failed. Team removed from the area."};
private _courseUnits = _enrolled select {alive _x && {_x inArea _ao}};
private _courseSoundPosition = if (_courseUnits isEqualTo []) then {getPosATL _spawn} else {[_courseUnits] call _getGroupCenter};
[MISSION_ROOT + "evacuate_area.wav", objNull, ATLToASL _courseSoundPosition, 100] remoteExec ["MED_Team_PlaySound", _courseUnits];
{
    [_taskId, _state, _title, _reason, _returnSpawn] remoteExec ["MED_Team_Task", _x];
} forEach _enrolled;
["Team Medical Instructor", "side", _message, "TEAM MEDICAL INSTRUCTOR", sideUnknown, "\A3\ui_f\data\IGUI\Cfg\simpleTasks\types\radio_ca.paa", false] spawn OKS_fnc_ChatGlobal;
sleep 5;

{
    if (alive _x) then {_x setPosATL (getPosATL _returnSpawn)};
} forEach _enrolled;
sleep 1;
[MISSION_ROOT + (if (_result isEqualTo "SUCCESS") then {"victory.wav"} else {"failure.wav"}), _returnSpawn, getPosASL _returnSpawn, 250] remoteExec ["MED_Team_PlaySound", _enrolled select {alive _x}];

{
    {deleteVehicle _x} forEach units _x;
    deleteGroup _x;
} forEach (_terminal getVariable ["MED_Team_StaticGroups", []]);
{
    if (!isNull _x) then {deleteVehicle _x};
} forEach (_terminal getVariable ["MED_Team_Casualties", []]);
{
    if (!isNull _x) then {deleteVehicle _x};
} forEach (_terminal getVariable ["MED_Team_HuntUnits", []]);
{
    deleteVehicle _x;
} forEach (allUnits select {_x getVariable ["OKS_Lambs_SpawnerSwitch", ""] isEqualTo _stopSwitch});
if (!isNull _flareModule) then {deleteVehicle _flareModule};
if (!isNull _flareGroup) then {deleteGroup _flareGroup};
{deleteVehicle _x} forEach (_flarePosition nearObjects ["JCA_GrenadeAmmo_SignalFlare_Green", 100]);
if (!isNull _crater) then {deleteVehicle _crater};

{
    private _handler = _x getVariable ["MED_Team_HitHandler", -1];
    if (_handler >= 0) then {_x removeEventHandler ["Hit", _handler]};
    _x setVariable ["MED_Team_HitHandler", -1];
    _x setVariable ["MED_Team_TargetDown", false, true];
    _x enableSimulationGlobal true;
    _x hideObjectGlobal false;
    _x animateSource ["terc", 0, true];
} forEach _targets;

if (!isNull _barrier) then {
    _barrier hideObjectGlobal false;
    _barrier enableSimulationGlobal true;
};

_terminal setVariable ["MED_Team_Active", false, true];
_terminal setVariable ["MED_Team_Casualties", [], true];
_terminal setVariable ["MED_Team_StaticGroups", [], true];
_terminal setVariable ["MED_Team_HuntUnits", [], true];
_terminal setVariable ["MED_Team_FlareModule", objNull, true];
_terminal setVariable ["MED_Team_FlareGroup", grpNull, true];
_terminal setVariable ["MED_Team_FlarePosition", [], true];
_terminal setVariable ["MED_Team_Crater", objNull, true];
