// [[player]] execVM "TramTeleport.sqf";

Params ["_TriggerArea","_TeleportLocation"];
_Players = AllPlayers select {_X inArea _TriggerArea};

GOL_Tram = {
	Params ["_TeleportLocation"];
	systemChat "You leave the area with the tram...";
	[0, "BLACK", 5, 1] spawn BIS_fnc_fadeEffect;
	sleep 5.1;
	player setPos (_TeleportLocation getPos [1 + (random 5), random 360]);
	player setDir (player getDir ExitDoor);
	sleep 1;
	[1, "BLACK", 5, 1] spawn BIS_fnc_fadeEffect;
};
systemChat str [_Players,_TeleportLocation];
[_TeleportLocation] remoteExec ["GOL_Tram",_Players];
