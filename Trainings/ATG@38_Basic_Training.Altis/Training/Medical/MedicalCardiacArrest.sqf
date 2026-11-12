params ["_Patient"];

if (isNull _Patient || {!local _Patient} || {!alive _Patient}) exitWith {};

["ace_medical_FatalVitals", _Patient] call CBA_fnc_localEvent;

private _Deadline = diag_tickTime + 5;
waitUntil {
    sleep 0.1;
    _Patient getVariable ["ace_medical_status_inCardiacArrest", false]
    || !alive _Patient
    || diag_tickTime >= _Deadline
};

if (alive _Patient && {_Patient getVariable ["ace_medical_status_inCardiacArrest", false]}) then {
    _Patient setVariable ["ace_medical_statemachine_cardiacArrestTimeLeft", 45 + random 45];
};
