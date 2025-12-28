/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	[InsertLZ_1] spawn OKS_fnc_Insert_Task;
	[[DestroyObject_1,DestroyObject_2,DestroyObject_3]] spawn OKS_fnc_Destroy_Task;
	[group hostage_1] spawn OKS_fnc_Hostage;
	[[Arty_1,Arty_2,Arty_3,Arty_4]] spawn OKS_fnc_Destroy_Task;
};