/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/

OKS_fnc_Task_SeizeAsset = compile (preprocessFileLineNumbers "fn_SeizeAsset.sqf");
if(isServer) then {
	[Truck_1, "Task_2", false] spawn OKS_fnc_Task_SeizeAsset;
	[Truck_2, "Task_2", false] spawn OKS_fnc_Task_SeizeAsset;
	[Truck_3, "Task_2", false] spawn OKS_fnc_Task_SeizeAsset;

	{
		[_X,nil,nil,nil,nil,"Task_1",false] spawn OKS_fnc_Destroy_Task;
	} foreach [arty_1,arty_2,arty_3,arty_4];
	{
		[_X,nil,nil,nil,nil,"Task_2",false] spawn OKS_fnc_Destroy_Task;
	} foreach [support_1,support_2,support_3,support_4];

	[[DestroyObject_1,DestroyObject_2,DestroyObject_3],nil,nil,nil,nil,"Task_3",false] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_4,DestroyObject_5,DestroyObject_6,DestroyObject_7],nil,nil,nil,nil,"Task_3",false] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_8,DestroyObject_9,DestroyObject_10],nil,nil,nil,nil,"Task_3",false] spawn OKS_fnc_Destroy_Task;

	null = [Radar_1,["rhs_KORD_high_MSV","RHS_ZU23_VDV"],3500,2500,30] spawn OKS_fnc_Radar;
};
		