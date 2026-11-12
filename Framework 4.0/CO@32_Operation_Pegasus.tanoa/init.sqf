/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	[group hostage_1,nil, true, "hostageExit_1"] spawn OKS_fnc_Hostage;
	[group hostage_5,nil, true, "hostageExit_2"] spawn OKS_fnc_Hostage;
	[[DestroyObject_2,DestroyObject_3],"Cause Distraction","Supply trucks","Two %1 are located inside a garrage in the village of Luganville. If you destroy these supply trucks the nearby enemy forces will converge to locate you.", "destroy", nil, true, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_1],"Disable AA","Titan Launcher","A %1 is located on a ridge west of Luganville. If you destroy this Titan Launcher the nearby enemy forces will converge to locate you. You could use it as a distraction.", "destroy", nil, true, true] spawn OKS_fnc_Destroy_Task;
	[searchlight_1, 120, true, true, 5] spawn OKS_fnc_SearchLight;
	[searchlight_2, 120, true, true, 5] spawn OKS_fnc_SearchLight;
	[searchlight_3, 120, true, true, 5] spawn OKS_fnc_SearchLight;
	[searchlight_4, 45, true, true, 5] spawn OKS_fnc_SearchLight;
	[searchlight_5, 120, true, true, 5] spawn OKS_fnc_SearchLight;
	[searchlight_6, 120, true, true, 5] spawn OKS_fnc_SearchLight;
};