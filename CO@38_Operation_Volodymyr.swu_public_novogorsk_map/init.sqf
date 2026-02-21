/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	[[DestroyObject_1,DestroyObject_2],nil,nil,nil,"danger",nil,false,true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_3],nil,nil,nil,"danger",nil,false,true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_4],nil,nil,nil,"danger",nil,false,true] spawn OKS_fnc_Destroy_Task;
	[[mortar_1],nil,nil,nil,"kill",nil,false,true] spawn OKS_fnc_Destroy_Task;
	[[arty_1],nil,nil,nil,nil,nil,false,true] spawn OKS_fnc_Destroy_Task;
	[[arty_2],nil,nil,nil,nil,nil,false,true] spawn OKS_fnc_Destroy_Task;
	[[radar_1],nil,nil,nil,nil,nil,false,true] spawn OKS_fnc_Destroy_Task;
	[[radar_2],nil,nil,nil,nil,nil,false,true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_25],nil,nil,nil,"danger",nil,false,true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_26],nil,nil,nil,"danger",nil,false,true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_5,DestroyObject_6,DestroyObject_7,DestroyObject_8,DestroyObject_9],"Clear Minefield","Minefield","There is a minefield in the area blocking supply routes, disarm or detonate the mines.","mine",nil,false,true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_10,DestroyObject_11,DestroyObject_12,DestroyObject_13,DestroyObject_14,DestroyObject_15,DestroyObject_16,DestroyObject_17],"Clear Minefield","Minefield","There is a minefield in the area blocking supply routes, disarm or detonate the mines.","mine",nil,false,true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_18,DestroyObject_19,DestroyObject_20,DestroyObject_21,DestroyObject_22,DestroyObject_23,DestroyObject_24],"Clear Minefield","Minefield","There is a minefield in the area blocking supply routes, disarm or detonate the mines.","mine",nil,false,true] spawn OKS_fnc_Destroy_Task;
};