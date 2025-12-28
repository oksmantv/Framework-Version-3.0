/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	[[DestroyObject_1,DestroyObject_2,DestroyObject_3]] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_4,DestroyObject_5,DestroyObject_6,DestroyObject_7]] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_8,DestroyObject_9,DestroyObject_10,DestroyObject_11]] spawn OKS_fnc_Destroy_Task;
	[[Arty_1,Arty_2,Arty_3]] spawn OKS_fnc_Destroy_Task;
	[[AAA_1,AAA_2]] spawn OKS_fnc_Destroy_Task;
	[[Radar_1]] spawn OKS_fnc_Destroy_Task;
	[[Mortar_1]] spawn OKS_fnc_Destroy_Task;
	null = [intel_1, [hostage_1, hostage_2, hostage_3], nil, "HOSTAGE INTEL\nYou have found intel regarding hostages. Check your fire in the area of operations.\n\n%1\n\n%2", nil, "", true] spawn OKS_fnc_SetupIntel;
	[group hostage_1] spawn OKS_fnc_Hostage;
};