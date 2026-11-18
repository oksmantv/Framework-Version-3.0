/*
	OKS_fnc_Task_SeizeAsset;

	Example: [_object, _showPosition] call OKS_fnc_Task_SeizeAsset;

	Parameters:
		_object - The object to be seized (default: objNull)
		_showPosition - Whether to show the position of the object on the map (default: true)

*/

Params [
	["_object", objNull, [objNull]],
	["_taskParent", "", [""]],
	["_showPosition", true, [true]]
];
if (!Alive _object) exitWith {false};

private _TaskId = format ["SeizeAssetTask_Id_%1",round(random 10000)];
private _DisplayName = getText (configfile >> "CfgVehicles" >> (typeOf _object) >> "displayName");
private _Position = getPos _object;
if(!(_showPosition)) then {
	_Position = [];
};

[
	true,
	[_TaskId, _taskParent],
	[
		format["You have been tasked with securing and seizing a valuable asset. The asset, a %2 is present in the area of operations. Find it, secure it, and lock it. Use the hold-action to lock and seize.",_DisplayName],
		format["Seize %1",_DisplayName],
		"marker2"
	],
	_Position,
	1,
	-1,
	true,
	"use"
] call BIS_fnc_taskCreate; // task with a custom icon

_object setVariable ["AttachedSeizeAssetTaskId", _TaskId, true];
[
	_object,																		// Object the action is attached to
	format["<t color='#7ccaff'>Seize %1</t>", _DisplayName],					   // Title of the action
	"\a3\ui_f\data\igui\cfg\actions\take_ca.paa",	// Idle icon shown on screen
	"\a3\ui_f\data\igui\cfg\actions\take_ca.paa",	// Progress icon shown on screen
	"_this distance _target < 6",									// Condition for the action to be shown
	"_caller distance _target < 6",									// Condition for the action to progress
	{},																// Code executed when action starts
	{},																// Code executed on every progress tick
	{ 
		params ["_caller","_target"]; // Code executed on completion
		_TaskId = (_this select 0) getVariable ["AttachedSeizeAssetTaskId", nil]; // Remove the task ID variable from the object
		if(!isNil _TaskId) then {
			[_TaskId,"SUCCEEDED", true] call BIS_fnc_taskSetState; // Set the task state to completed
		};
	},									
	{},																// Code executed on interrupted
	[],																// Arguments passed to the scripts as _this select 3
	5,																// Action duration in seconds
	10,																// Priority
	true,															// Remove on completion
	false															// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, _object];				    // MP-compatible implementation

waitUntil { [_TaskId] call BIS_fnc_taskCompleted || !alive _object }; // Wait until the task is completed or the object is destroyed
if(!alive _object) then {
	[_TaskId,"FAILED", true] call BIS_fnc_taskSetState; // Set the task state to failed if the object is destroyed
};