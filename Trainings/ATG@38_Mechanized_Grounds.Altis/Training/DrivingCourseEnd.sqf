// [thisList,DriverTeleport_1] execVM "Training\DrivingCourseEnd.sqf";

if(!isServer) exitWith {};

Params ["_thisList","_TeleportObject"];

_Vehicle = Vehicle (_thisList select 0);

waitUntil {
	sleep 5;
	count (_TeleportObject nearEntities ["LandVehicle",10]) == 0
};
_Vehicle setPos (getPos _TeleportObject);
_Vehicle setDir (getDir _TeleportObject);

"Teleported to beginning of course." remoteExec ["systemChat",crew _Vehicle];