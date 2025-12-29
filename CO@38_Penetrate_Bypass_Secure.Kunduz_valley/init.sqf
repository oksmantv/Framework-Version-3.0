/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	// Difficulty Setup
	OKS_Difficulty = ["OKS_Difficulty", -1] call BIS_fnc_getParamValue;
	publicVariable "OKS_Difficulty";

	sleep 5;

	if(OKS_Difficulty == 0) then {
		// Moto
		missionNamespace setVariable ["LAT_Chance",0.05, true];
		missionNamespace setVariable ["MAT_Chance",0.02, true];
		missionNamespace setVariable ["UGL_Chance",0.35, true];
	};
	if(OKS_Difficulty == 1) then {
		// Medium
		missionNamespace setVariable ["LAT_Chance",0.7, true];
		missionNamespace setVariable ["MAT_Chance",0.5, true];
		missionNamespace setVariable ["UGL_Chance",0.4, true];
	};
};
