/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	[[DestroyObject_1]] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_2,DestroyObject_3,DestroyObject_4,DestroyObject_5]] spawn OKS_fnc_Destroy_Task;
	[[AAA_1]] spawn OKS_fnc_Destroy_Task;
	[[Arty_1,Arty_2]] spawn OKS_fnc_Destroy_Task;
	[[Mortar_1]] spawn OKS_fnc_Destroy_Task;
	[group hostage_1] spawn OKS_fnc_Hostage;
	[group hostage_4] spawn OKS_fnc_Hostage;
	sleep 5;
	[intel_1, [hostage_1, hostage_2, hostage_3]] spawn OKS_fnc_SetupIntel;
	[intel_2, [hostage_4, hostage_5, hostage_6]] spawn OKS_fnc_SetupIntel;
};