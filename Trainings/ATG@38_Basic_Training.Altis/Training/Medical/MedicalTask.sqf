params ["_TaskId", "_State", ["_Title", "Medical Training"], ["_Description", ""], ["_Destination", objNull]];

if (!hasInterface) exitWith {};

if (_State isEqualTo "CREATED") then {
    [
        player,
        _TaskId,
        [_Description, _Title, "heal"],
        _Destination,
        "ASSIGNED",
        -1,
        true,
        "heal",
        true
    ] call BIS_fnc_taskCreate;
} else {
    if (_Description != "") then {
        [_TaskId, [_Description, _Title, "heal"]] call BIS_fnc_taskSetDescription;
    };

    [_TaskId, _State, true] call BIS_fnc_taskSetState;

    if (_State in ["SUCCEEDED", "FAILED"]) then {
        systemChat format ["Medical debrief: %1", _Description];
    };
};
