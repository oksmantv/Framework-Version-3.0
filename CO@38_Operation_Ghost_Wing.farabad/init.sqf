/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

if(isServer) then {

	[[DestroyObject_1,DestroyObject_2,DestroyObject_3,DestroyObject_4,DestroyObject_5], nil, nil, nil, "destroy", nil, false, false] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_6,DestroyObject_7], nil, nil, nil, "destroy", nil, false, false] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_8,DestroyObject_9,DestroyObject_10], nil, nil, nil, "truck", nil, false, false] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_11,DestroyObject_12,DestroyObject_13], nil, nil, nil, "truck", nil, false, false] spawn OKS_fnc_Destroy_Task;

	[
		true,
		["Task_Rescue"],
		[
			"The insurgents are led by 8 high-value targets. Capture them to weaken the insurgent forces and gather intelligence..",
			"Capture Insurgent Leaders",
			"Extract"
		],
		nil,
		"ASSIGNED",
		-1,
		true,
		"meet",
		false
	] call BIS_fnc_taskCreate;

	[Group hostage_1, getMarkerPos "respawn_west", west, false, "Task_Rescue", true, true] spawn OKS_fnc_Evacuate_HVT;
	[Group hostage_2, getMarkerPos "respawn_west", west, false, "Task_Rescue", true, true] spawn OKS_fnc_Evacuate_HVT;
	[Group hostage_3, getMarkerPos "respawn_west", west, false, "Task_Rescue", true, true] spawn OKS_fnc_Evacuate_HVT;
	[Group hostage_4, getMarkerPos "respawn_west", west, false, "Task_Rescue", true, true] spawn OKS_fnc_Evacuate_HVT;
	[Group hostage_5, getMarkerPos "respawn_west", west, false, "Task_Rescue", true, true] spawn OKS_fnc_Evacuate_HVT;
	[Group hostage_6, getMarkerPos "respawn_west", west, false, "Task_Rescue", true, true] spawn OKS_fnc_Evacuate_HVT;
	[Group hvt_1, 	  getMarkerPos "respawn_west", west, false, "Task_Rescue", false, true] spawn OKS_fnc_Evacuate_HVT;

	[[],[["rhs_KORD_high_MSV",[4080.26,2936.89,0],0,[["gunner",-1,[0]]],[[351,false]]],["rhs_KORD_high_MSV",[3330.13,3419.91,0],199,[["gunner",-1,[0]]],[[351,false]]],["rhs_KORD_high_MSV",[4739.21,2622.09,0],0,[["gunner",-1,[0]]],[[351,false]]],["rhs_KORD_high_MSV",[4722.98,2601.34,1.90735e-06],279,[["gunner",-1,[0]]],[[351,false]]],["rhs_KORD_high_MSV",[8494.45,3427.77,3.63117],0,[["gunner",-1,[0]]],[[351,false]]],["rhs_KORD_high_MSV",[8507.25,3382.72,3.35617],0,[["gunner",-1,[0]]],[[351,false]]],["rhs_KORD_high_MSV",[8431.86,3426.45,0],0,[["gunner",-1,[0]]],[[351,false]]],["rhs_KORD_high_MSV",[8452.44,3344.23,3.00204],0,[["gunner",-1,[0]]],[[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
};
