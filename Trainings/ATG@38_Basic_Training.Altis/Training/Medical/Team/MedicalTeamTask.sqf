params ["_taskId", "_state", ["_title", "Team Medical Course"], ["_description", ""], ["_destination", objNull]];

if (!hasInterface) exitWith {};

if (_state isEqualTo "CREATED") then {
    [player, _taskId, [_description, _title, "heal"], _destination, "ASSIGNED", -1, true, "heal", true] call BIS_fnc_taskCreate;
} else {
    [_taskId, [_description, _title, "heal"]] call BIS_fnc_taskSetDescription;
    [_taskId, _state, true] call BIS_fnc_taskSetState;
};
