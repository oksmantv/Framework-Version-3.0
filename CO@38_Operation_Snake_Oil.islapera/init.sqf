/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {

	[true, ["Main"], ["", "Operation Snake Oil","Main"], nil, "CREATED", 2, true,"meet"] call BIS_fnc_taskCreate;
	[true, ["Main1","Main"], ["", "Transportation Hub", "AD"], nil, "CREATED", 2, true,"attack"] call BIS_fnc_taskCreate;
	[true, ["Main2","Main"], ["", "Search Site 1", "AD"], nil, "CREATED", 2, true,"search"] call BIS_fnc_taskCreate;
	[true, ["Main3","Main"], ["", "Search Site 2", "AD"], nil, "CREATED", 2, true,"search"] call BIS_fnc_taskCreate;
    
	// Obj 1
	[[DestroyObject_1,DestroyObject_2],"Neutralize Helicopters","Helicopters",nil,"heli","Main1",false,true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_3],"Maintainance Truck","Maintainance truck",nil,"truck","Main1",false,true] spawn OKS_fnc_Destroy_Task;
	[group hvt_1, getPos ExfilSite_1, west, false, "Main1", true, true] spawn OKS_fnc_Evacuate_HVT;

	// Obj 2
	[group hostage_1,"Main2"] spawn OKS_fnc_Hostage;
	[[DestroyObject_4],"Destroy Supply Truck","Transport truck",nil,"truck","Main2",false,true] spawn OKS_fnc_Destroy_Task;

	// Obj 3
	[[DestroyObject_5,DestroyObject_6],"Sabotage Cache","weapons cache",nil,"truck","Main3",false,true] spawn OKS_fnc_Destroy_Task;
};