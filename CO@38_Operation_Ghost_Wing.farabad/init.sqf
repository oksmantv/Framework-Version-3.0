/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

if(isServer) then {

	[[DestroyObject_1,DestroyObject_2,DestroyObject_3,DestroyObject_4,DestroyObject_5], nil, nil, nil, "destroy", nil, false, false] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_6,DestroyObject_7], nil, nil, nil, "destroy", nil, false, false] spawn OKS_fnc_Destroy_Task;
	[Group hostage_1, getMarkerPos "respawn_west", west, false, nil, true, false] spawn OKS_fnc_Evacuate_HVT;
	[Group hostage_2, getMarkerPos "respawn_west", west, false, nil, true, false] spawn OKS_fnc_Evacuate_HVT;
	[Group hostage_3, getMarkerPos "respawn_west", west, false, nil, true, false] spawn OKS_fnc_Evacuate_HVT;
	[Group hostage_4, getMarkerPos "respawn_west", west, false, nil, true, false] spawn OKS_fnc_Evacuate_HVT;
	[Group hostage_5, getMarkerPos "respawn_west", west, false, nil, true, false] spawn OKS_fnc_Evacuate_HVT;
	[Group hostage_6, getMarkerPos "respawn_west", west, false, nil, true, false] spawn OKS_fnc_Evacuate_HVT;
};
