// [[player]] execVM "ScareEffect.sqf";

Params ["_Players"];

GOL_Scare = {
	systemChat "Something enters your mind...";
	[0, "BLACK", 0.2, 1] spawn BIS_fnc_fadeEffect;
	sleep 0.1;
	_soundId = playSoundUI ["jumpScare", 0.75, 1];
	sleep 5;
	[1, "BLACK", 3, 1] spawn BIS_fnc_fadeEffect;
};
publicVariable "GOL_Scare";
sleep 0.5;

remoteExec ["GOL_Scare",_Players];
