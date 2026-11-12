params ["_Patient", "_Medic"];

if (!isServer || {isNull _Patient} || {isNull _Medic} || {alive _Patient}) exitWith {};
if !(_Patient getVariable ["MED_RequiresDiagnosis", false]) exitWith {};
if !(_Medic isEqualTo (_Patient getVariable ["MED_DeadDiagnosisPlayer", objNull])) exitWith {};
if (_Patient getVariable ["MED_DeadDiagnosisStarted", false]) exitWith {};

_Patient setVariable ["MED_DeadDiagnosisStarted", true, true];

[_Patient] spawn {
    params ["_Patient"];
    sleep 5;

    if (!isNull _Patient && {!alive _Patient}) then {
        _Patient setVariable ["MED_DeadDiagnosisComplete", true, true];
    };
};
