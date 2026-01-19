// [DriverTrigger_1,DriverEndTrigger_1] execVM "Training\GunnnerCourseStart.sqf";

if(!isServer) exitWith {};

Params ["_StartingTrigger","_CourseIndex","_EndTrigger","_thisList","_SpawnTriggers"];

_PlayerVehicle = vehicle (_thisList select 0);
_StartingTrigger setVariable ["CurrentActiveCrew",crew _PlayerVehicle,true];
private _String = "";
{
	_String = _String + (name _X + ", ");
} foreach crew _PlayerVehicle;
_String = _String + format["started gunner course %1.",_CourseIndex];
["hq","side",_String] remoteExec ["OKS_Chat",0];

_StartingTrigger setVariable ["IsActiveGunnerCourse",true,true];
{
	_X setVariable ["CurrentActiveCrew",_PlayerVehicle,true]
} foreach _SpawnTriggers;

// Set course to inactive once completed
waitUntil {sleep 0.5; triggerActivated _EndTrigger};
_StartingTrigger setVariable ["IsActiveGunnerCourse",false,true];
{
	_X setVariable ["SpawnActivated",false,true];
	_X setVariable ["CurrentActiveCrew",[],true];
} foreach _SpawnTriggers;
private _String = "";
{
	_String = _String + (name _X + ", ");
} foreach crew _PlayerVehicle;
_String = _String + format["completed gunner course %1.",_CourseIndex];
["hq","side",_String] remoteExec ["OKS_Chat",0];

