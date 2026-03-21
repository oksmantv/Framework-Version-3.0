/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {

	[true, ["Main"], ["", "Operation Bradley Cooper","Main"], nil, "CREATED", 2, true,"attack"] call BIS_fnc_taskCreate;
	[true, ["Main1","Main"], ["", "Phase 1", "AD"], nil, "CREATED", 2, true,"move1"] call BIS_fnc_taskCreate;
	[true, ["Main2","Main"], ["", "Phase 2", "AD"], nil, "CREATED", 2, true,"move2"] call BIS_fnc_taskCreate;

	// Phase 1
	[[DestroyObject_1],nil,nil,nil,"danger","Main1",true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_2],nil,nil,nil,"danger","Main1",true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_3],nil,nil,nil,"danger","Main1",true] spawn OKS_fnc_Destroy_Task;
	[[aaa_1],nil,nil,nil,"danger","Main1",true] spawn OKS_fnc_Destroy_Task;
	[[aaa_2],nil,nil,nil,"danger","Main1",true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_31,DestroyObject_32],"Neutralize IR AA",nil,nil,"danger","Main1",true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_11,DestroyObject_12,DestroyObject_13,DestroyObject_14,DestroyObject_15,DestroyObject_16,DestroyObject_17,DestroyObject_18,DestroyObject_19,DestroyObject_20],"Destroy Motorpool",nil,nil,"truck","Main1",true] spawn OKS_fnc_Destroy_Task;
	[Group Hostage_1,getMarkerPos "respawn_west",west,false,"Main1", true, true] spawn OKS_fnc_Evacuate_HVT;

	// Phase 2
	[[DestroyObject_4,DestroyObject_5,DestroyObject_6,DestroyObject_7,DestroyObject_8,DestroyObject_9,DestroyObject_10],"Cripple Headquarters",nil,nil,"kill","Main2",true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_21,DestroyObject_22,DestroyObject_23,DestroyObject_24],"Destroy Supply dump",nil,nil,"destroy","Main1",true] spawn OKS_fnc_Destroy_Task;
	[[arty_1,arty_2,arty_3],"Silence Artillery",nil,nil,"destroy","Main2",true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_25,DestroyObject_26,DestroyObject_27,DestroyObject_28,DestroyObject_29,DestroyObject_30],"Destroy Fuel Depot",nil,nil,"truck","Main2",true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_33,DestroyObject_34,DestroyObject_35],"Destroy MLRS",nil,nil,"truck","Main2",true] spawn OKS_fnc_Destroy_Task;
};