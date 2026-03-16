
// execVM "ChildrenTaskComplete.sqf";

waitUntil {
	sleep 1;
	triggerActivated TaskExists &&
	{
		_X call BIS_fnc_taskCompleted == true
	} count ("Task_4" call BIS_fnc_taskChildren) == count ("Task_4" call BIS_fnc_taskChildren) && count ("Task_4" call BIS_fnc_taskChildren) > 0};
	["Task_4","SUCCEEDED"] call BIS_fnc_taskSetState;
