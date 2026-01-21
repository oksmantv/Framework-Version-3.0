// [DriverTrigger_1,DriverEndTrigger_1,Teleport_1] execVM "Training\GunnnerCourseStart.sqf";

if(!isServer) exitWith {};

Params ["_StartingTrigger","_CourseIndex","_thisList","_SpawnTriggers","_TeleportObject"];

_PlayerVehicle = vehicle (_thisList select 0);
_StartingTrigger setVariable ["CurrentActiveCrew",crew _PlayerVehicle,true];
_StartingTrigger setVariable ["VehicleTargets",(_StartingTrigger getVariable ["OriginalVehicleTargets",[]])];
private _String = "";
{
	_String = _String + (name _X + ", ");
} foreach crew _PlayerVehicle;
_String = _String + format["started berm course %1.",_CourseIndex];
["hq","side",_String] remoteExec ["OKS_fnc_Chat",0];
diag_log format["[BermCourse] Course started | Index: %1 | Vehicle: %2 | Crew: %3 | Targets: %4", _CourseIndex, typeOf _PlayerVehicle, count crew _PlayerVehicle, count _SpawnTriggers];

_StartingTrigger setVariable ["IsActiveBermCourse",true,true];
_StartingTrigger setVariable ["SpawnedEntities",[],true];
_StartingTrigger setVariable ["CurrentActiveCrew",_PlayerVehicle,true];

// Make vehicle and crew invincible during course
_PlayerVehicle allowDamage false;
{_x allowDamage false} forEach crew _PlayerVehicle;

{
	_X setVariable ["CurrentActiveCrew",_PlayerVehicle,true];
	_X setVariable ["StartingTrigger",_StartingTrigger,true];
} foreach _SpawnTriggers;

// Set course to inactive once completed
waitUntil {sleep 0.5; {_X getVariable ["BermTargetDown",false]} count _SpawnTriggers == count _SpawnTriggers};
_StartingTrigger setVariable ["IsActiveBermCourse",false,true];

// Cleanup all spawned entities
_SpawnedEntities = _StartingTrigger getVariable ["SpawnedEntities",[]];
{
	if (_x isEqualType grpNull) then {
		{deleteVehicle _x} forEach units _x;
		deleteGroup _x;
	} else {
		if (!isNull _x) then {
			{deleteVehicle _x} forEach crew _x;
			deleteVehicle _x;
		};
	};
} forEach _SpawnedEntities;
_StartingTrigger setVariable ["SpawnedEntities",[],true];

// Restore damage handling for vehicle and crew
_PlayerVehicle allowDamage true;
{_x allowDamage true} forEach crew _PlayerVehicle;

_StartingTrigger setVariable ["CurrentActiveCrew",[],true];
{
	_X setVariable ["SpawnActivated",false,true];
	_X setVariable ["BermTargetDown",false,true];
	_X setVariable ["CurrentActiveCrew",[],true]
} foreach _SpawnTriggers;

private _String = "";
{
	_String = _String + (name _X + ", ");
} foreach crew _PlayerVehicle;
_String = _String + format["completed berm course %1.",_CourseIndex];
["hq","side",_String] remoteExec ["OKS_fnc_Chat",0];
diag_log format["[BermCourse] Course completed | Index: %1", _CourseIndex];

waitUntil {
	sleep 5;
	count (_TeleportObject nearEntities ["LandVehicle",10]) == 0
};
_PlayerVehicle setPos (getPos _TeleportObject);
_PlayerVehicle setDir (getDir _TeleportObject);

"Teleported to beginning of course." remoteExec ["systemChat",crew _PlayerVehicle];

