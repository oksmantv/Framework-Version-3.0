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
["hq","side",_String] remoteExec ["OKS_fnc_Chat",0];
diag_log format["[GunnerCourse] Course started | Index: %1 | Vehicle: %2 | Crew: %3", _CourseIndex, typeOf _PlayerVehicle, count crew _PlayerVehicle];

_StartingTrigger setVariable ["IsActiveGunnerCourse",true,true];
_StartingTrigger setVariable ["SpawnedEntities",[],true];

// Make vehicle and crew invincible during course
_PlayerVehicle allowDamage false;
{_x allowDamage false} forEach crew _PlayerVehicle;

{
	_X setVariable ["CurrentActiveCrew",_PlayerVehicle,true];
	_X setVariable ["StartingTrigger",_StartingTrigger,true];
} foreach _SpawnTriggers;

// Set course to inactive once completed
waitUntil {sleep 0.5; triggerActivated _EndTrigger};
_StartingTrigger setVariable ["IsActiveGunnerCourse",false,true];

// Cleanup all spawned entities
_SpawnedEntities = _StartingTrigger getVariable ["SpawnedEntities",[]];
diag_log format["[GunnerCourse] Cleaning up | Entities: %1", count _SpawnedEntities];
{
	if (_x isEqualType grpNull) then {
		{deleteVehicle _x} forEach units _x;
		deleteGroup _x;
	} else {
		if (!isNull _x) then {
			{deleteVehicle _x} forEach crew _x;

// Restore damage handling for vehicle and crew
_PlayerVehicle allowDamage true;
{_x allowDamage true} forEach crew _PlayerVehicle;

			deleteVehicle _x;
		};
	};
} forEach _SpawnedEntities;
_StartingTrigger setVariable ["SpawnedEntities",[],true];
{
	_X setVariable ["SpawnActivated",false,true];
	_X setVariable ["CurrentActiveCrew",[],true];
} foreach _SpawnTriggers;
private _String = "";
{
	_String = _String + (name _X + ", ");
} foreach crew _PlayerVehicle;
_String = _String + format["completed gunner course %1.",_CourseIndex];
["hq","side",_String] remoteExec ["OKS_fnc_Chat",0];
diag_log format["[GunnerCourse] Course completed | Index: %1", _CourseIndex];

