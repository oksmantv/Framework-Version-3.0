params ["_Terminal","_SpawnPos","_Severe",["_ShouldBleed",true,[true]],["_isAssessment",false,[false]],["_Player",objNull,[objNull]],["_isMassCasualty",false,[false]]];
private ["_TierLevel", "_TaskId"];

if (!isServer) exitWith {};
if (isNull _Terminal) exitWith {};

_Severe = toLower _Severe;
if !(_Severe in ["random", "some", "lot", "alot", "large", "fatal", "dead"]) exitWith {};
if (!isNull _Player && {(!alive _Player) || {_Player distance _Terminal > 12}}) exitWith {};
if (!_isMassCasualty && {_Terminal getVariable ["MED_ExerciseActive", false]}) exitWith {
    if (!isNull _Player) then {
        "This medical station is already in use." remoteExec ["systemChat", _Player];
    };
};

if (!_isMassCasualty) then {
    _Terminal setVariable ["MED_ExerciseActive", true, true];
};

switch (toLower _Severe) do {
    case "some": {
        _TierLevel = 3;
    };
    case "lot": {
        _TierLevel = 2;
    };    
    case "alot": {
        _TierLevel = 2;
    };
    case "large": {
        _TierLevel = 2;
    };       
     case "fatal": {
        _TierLevel = 1;
    };     
    case "dead": {
        _TierLevel = 4;
    };        
    default { 
        _TierLevel = 0;
    };
};

    if(!isNull _Terminal) then {
        if ((typeOf _Terminal) isEqualTo "Land_DataTerminal_01_F") then {
            [_Terminal,3] call BIS_fnc_dataTerminalAnimate;
            playSound3D [MISSION_ROOT + "activated.wav", _Terminal];
            sleep 3.5;
        };
    };
_previousUnit = _Terminal getVariable ["AttachedUnit",objNull];
deleteVehicle _previousUnit;
_Group = createGroup west;
_Group setVariable ["GW_Gear_BlackList",true,true];
_Group setVariable ["acex_headless_blacklist",true,true];
_Unit = _Group createUnit ["B_Soldier_F",_SpawnPos, [], -1, "CAN_COLLIDE"];
_Unit setVariable ["GW_Gear_BlackList",true,true];
_Unit hideObjectGlobal true;
_Terminal setVariable ["AttachedUnit",_Unit,true];
if (_Severe isEqualTo "dead" && {!_IsAssessment} && {!isNull _Player}) then {
    _Unit setVariable ["MED_RequiresDiagnosis", true, true];
    _Unit setVariable ["MED_DeadDiagnosisPlayer", _Player, true];
};

For "_i" from 0 to 30 do {
    _Unit addItemToUniform "ACE_ElasticBandage"
};
_Unit setBehaviour "CARELESS"; _Unit disableAI "MOVE";
doStop _Unit;
_Unit setDir (_Unit getDir _Terminal);
[_Unit,_Severe,_Terminal,_IsAssessment] spawn MedicalDamage;
if ((typeOf _Terminal) == "Land_DataTerminal_01_F") then {
    [_Terminal,0] call BIS_fnc_dataTerminalAnimate;
    sleep 3;
};

waitUntil {sleep 0.1; _Unit getVariable ["MED_PatientReady",false] || isNull _Unit};
if (isNull _Unit) exitWith {
    _Terminal setVariable ["MED_ExerciseActive", false, true];
};
_Unit hideObjectGlobal false;

if (!isNull _Player) then {
    _TaskId = format ["Medical_%1_%2", netId _Terminal, floor (diag_tickTime * 1000)];
    private _TaskTitle = if (_IsAssessment) then {"Medical Triage Assessment"} else {"Treat Medical Casualty"};
    private _TaskDescription = if (_IsAssessment) then {
        "Assess the casualty and select the correct triage tier using the ACE interaction menu."
    } else {
        "Treat the casualty until bleeding is controlled and they are stable."
    };
    [_TaskId, "CREATED", _TaskTitle, _TaskDescription, _Unit] remoteExec ["MedicalTask", _Player];
};
    
if (!_isMassCasualty && {!isNil "MED_MASS_READY"}) then {
        waitUntil {sleep 0.1; MED_MASS_READY};
        if ((typeOf _Terminal) isEqualTo "Land_InfoStand_V2_F") then {
            playSound3D [MISSION_ROOT + "whistle.wav", MedicalMass_1];
            {
                    _x setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,1,0,1.0,ca)"];
            } forEach [IndicatorL_1,IndicatorL_2,IndicatorL_3,IndicatorL_4];
        };
    };

sleep 0.5;
[_Unit, "unarmed"] call GW_Gear_Fnc_Handler;

if(_IsAssessment) then {
    [_Unit,_TierLevel] remoteExec ["MedicalAssessment",_Player];

    private _AssessmentDeadline = diag_tickTime + 90;
    waitUntil {
        sleep 0.5;
        _Unit getVariable ["AssessmentComplete",false]
        || _Unit getVariable ["AssessmentFailed",false]
        || isNull _Unit
        || diag_tickTime >= _AssessmentDeadline
    };

    _DiagnosedTier = _Unit getVariable ["DiagnosedTier",0];
    if(_Unit getVariable ["AssessmentComplete",false]) then {
        ["Medical Instructor","side",format["%1 completed assessment of a Tier %2 casualty.",name _Player,_TierLevel]] remoteExec ["OKS_fnc_Chat",0];
        [_TaskId, "SUCCEEDED", "Medical Triage Assessment", format ["Correctly identified the casualty as Tier %1.", _TierLevel]] remoteExec ["MedicalTask", _Player];
    } else {
        private _FailureText = if (diag_tickTime >= _AssessmentDeadline) then {"Assessment timed out."} else {format ["Incorrect triage: selected Tier %1; correct tier was %2.", _DiagnosedTier, _TierLevel]};
        ["Medical Instructor","side",format["%1 failed assessment of a Tier %2 casualty, player selected Tier %3",name _Player,_TierLevel,_DiagnosedTier]] remoteExec ["OKS_fnc_Chat",0];
        [_TaskId, "FAILED", "Medical Triage Assessment", _FailureText] remoteExec ["MedicalTask", _Player];
    };
    deleteVehicle _Unit;
    _Terminal setVariable ["MED_ExerciseActive", false, true];
} else {
    if (!isNull _Player) then {
        [_Unit, _Player, _Terminal, _TaskId] spawn {
            params ["_Casualty", "_Player", "_Terminal", "_TaskId"];
            private _Deadline = diag_tickTime + 600;
            waitUntil {
                sleep 1;
                isNull _Casualty
                || (_Casualty getVariable ["MED_DeadDiagnosisComplete", false])
                || (!alive _Casualty && {!(_Casualty getVariable ["MED_RequiresDiagnosis", false])})
                || diag_tickTime >= _Deadline
                || (
                    ([_Casualty] call ace_medical_status_fnc_getCardiacOutput > 0.07)
                    && {[_Casualty] call ace_medical_status_fnc_getBloodLoss < 0.001}
                    && {{[_Casualty, _x] call ace_medical_treatment_fnc_hasTourniquetAppliedTo} count ["LeftLeg","RightLeg","LeftArm","RightArm"] == 0}
                    && {!(_Casualty getVariable ["MED_CPRRequired", false]) || {_Casualty getVariable ["MED_CPRCompleted", false]}}
                )
            };

            private _State = "SUCCEEDED";
            private _Debrief = "Casualty stabilized: bleeding is controlled and circulation has recovered.";
            if (_Casualty getVariable ["MED_DeadDiagnosisComplete", false]) then {
                _Debrief = "Casualty death was correctly confirmed after diagnosis.";
            } else {
                if (isNull _Casualty || !alive _Casualty) then {
                    _State = "FAILED";
                    _Debrief = "Casualty died before treatment was completed.";
                };
            };
            if (diag_tickTime >= _Deadline) then {
                _State = "FAILED";
                _Debrief = "Treatment time expired before the casualty was stabilized.";
            };
            [_TaskId, _State, "Treat Medical Casualty", _Debrief] remoteExec ["MedicalTask", _Player];
            if ((_Terminal getVariable ["AttachedUnit", objNull]) isEqualTo _Casualty) then {
                _Terminal setVariable ["MED_ExerciseActive", false, true];
            };
        };
    };
};