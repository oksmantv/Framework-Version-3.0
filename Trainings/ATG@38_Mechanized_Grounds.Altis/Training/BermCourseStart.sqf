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
["hq","side",_String] remoteExec ["OKS_Chat",0];

_StartingTrigger setVariable ["IsActiveBermCourse",true,true];
_StartingTrigger setVariable ["CurrentActiveCrew",_PlayerVehicle,true];
{
	_X setVariable ["CurrentActiveCrew",_PlayerVehicle,true]
} foreach _SpawnTriggers;

// Set course to inactive once completed
waitUntil {sleep 0.5; {_X getVariable ["BermTargetDown",false]} count _SpawnTriggers == count _SpawnTriggers};
_StartingTrigger setVariable ["IsActiveBermCourse",false,true];
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
["hq","side",_String] remoteExec ["OKS_Chat",0];

waitUntil {
	sleep 5;
	count (_TeleportObject nearEntities ["LandVehicle",10]) == 0
};
_PlayerVehicle setPos (getPos _TeleportObject);
_PlayerVehicle setDir (getDir _TeleportObject);

"Teleported to beginning of course." remoteExec ["systemChat",crew _PlayerVehicle];

