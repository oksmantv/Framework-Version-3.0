// [_Group,true,"OKS_TASK_1","Description","TaskTitle","TaskMarker","ASSIGNED"] execVM "Scripts\OKS_Task\OKS_Destroy_Task.sqf";

if(!isServer) exitWith {};

Params ["_Group","_TaskSideOrObject","_TaskIdString","_TaskDescription","_TaskTitle","_TaskMarker","_State"];
Private "_Vehicle";

if(!(isNull objectParent leader _Group)) then {
	_Vehicle = (vehicle (leader _Group));
	_TaskTitle = format ["Destroy %1",getText (configFile >> "CfgVehicles" >> (typeOf _Vehicle) >> "displayName")];
} else {
	_Vehicle = leader _Group;
};

_TaskLocation = selectRandom units _Group;
_Task = [_TaskSideOrObject, _TaskIdString, [format["%1",_TaskDescription], format["%1",_TaskTitle], format["%1",_TaskMarker]], _TaskLocation,_State,-1,true,"destroy"] call BIS_fnc_taskCreate;

waitUntil {
	{!alive _X || _X getVariable ["ACE_isUnconscious",false]} count (units _Group) isEqualTo count (units _Group)
};
[_Task,"SUCCEEDED"] call BIS_fnc_taskSetState;
