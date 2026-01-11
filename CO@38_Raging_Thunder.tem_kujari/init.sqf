/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

if(isServer) then {
	[true, ["Task_1","Task_0"], ["The extremist insurgents are massing munitions in the region for a hostile takeover of the east. We must disrupt this growing force, find and destroy any enemy supplies.", "Destroy Munitions", "Munitions"], nil, "CREATED", 2, false, "armor"] call BIS_fnc_taskCreate;
	[true, ["Task_2","Task_0"], ["The artillery forces of the extremists are using the munition build up to soften positions and attacking villages to the east and north. We must silence the artillery and stop this terrorism.", "Silence Artillery", "Artillery"], nil, "CREATED", 2, false, "attack"] call BIS_fnc_taskCreate;
	[true, ["Task_3","Task_0"], ["The Insurgents have active enemy mortars in the region. They have a range of up to 2500m and will target our forces. We must find and neutralize the mortars.", "Neutralize Mortars", "Mortars"], nil, "CREATED", 2, false, "danger"] call BIS_fnc_taskCreate;
	[true, ["Task_4","Task_0"], ["Anti-Air defence is scarce for the Insurgents, but not entirely toothless. Zu-23 and Igla supplied AA teams are present in the area, find and eliminate.", "Suppress Air Defence", "AA"], nil, "CREATED", 2, false, "danger"] call BIS_fnc_taskCreate;
	[true, ["Task_5","Task_0"], ["Hostages and captives are present inside the area of operations. Avoid killing the hostages, extract them back to base for liberation.", "Rescue Hostages", "Rescue"], nil, "CREATED", 2, false, "meet"] call BIS_fnc_taskCreate;
	[true, ["Task_6","Task_0"], ["IEDs are present in the area of operations. Find and destroy the IEDs to clear the path for future operations and reduce civilian casualties..", "Clear IEDs", "IEDs"], nil, "CREATED", 2, false, "mine"] call BIS_fnc_taskCreate;
	[true, ["Intel_0","Task_0"], ["Scattered around the area of operations lie documents of intel. You will find these documents around marked insurgent buildings and compounds. Take the documents and read them to receive intel.", "Find Intel", "Intel"], nil, "CREATED", 2, false, "search"] call BIS_fnc_taskCreate;

	[[DestroyObject_1],nil,nil,nil,"box","Task_1",false,true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_2],nil,nil,nil,"box","Task_1",false,true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_5,DestroyObject_6],nil,nil,nil,"box","Task_1",false,true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_3,DestroyObject_4],nil,nil,nil,"truck","Task_1",false,true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_11],nil,nil,nil,"truck","Task_1",false,true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_7,DestroyObject_8,DestroyObject_9,DestroyObject_10],nil,nil,nil,"truck","Task_1",false,true] spawn OKS_fnc_Destroy_Task;
	[[arty_1,arty_2,arty_3],nil,nil,nil,"destroy","Task_2",false,true] spawn OKS_fnc_Destroy_Task;
	[[arty_4,arty_5],nil,nil,nil,"destroy","Task_2",false,true] spawn OKS_fnc_Destroy_Task;
	[[arty_6],nil,nil,nil,"destroy","Task_2",false,true] spawn OKS_fnc_Destroy_Task;
	[[mortar_2],nil,nil,nil,"destroy","Task_3",false,true] spawn OKS_fnc_Destroy_Task;
	[[mortar_1],nil,nil,nil,"destroy","Task_3",false,true] spawn OKS_fnc_Destroy_Task;
	[[aaa_1],nil,nil,nil,"destroy","Task_4",false,true] spawn OKS_fnc_Destroy_Task;
	[[iraa_1],nil,nil,nil,"destroy","Task_4",false,true] spawn OKS_fnc_Destroy_Task;
	[[IED_1],"Clear IED","IED", "You need to find and destroy this IED to clear a path.","destroy","Task_6",false,true] spawn OKS_fnc_Destroy_Task;
	[[IED_2],"Clear IED","IED", "You need to find and destroy this IED to clear a path.","destroy","Task_6",false,true] spawn OKS_fnc_Destroy_Task;
	[[IED_3],"Clear IED","IED", "You need to find and destroy this IED to clear a path.","destroy","Task_6",false,true] spawn OKS_fnc_Destroy_Task;
	[[IED_4],"Clear IED","IED", "You need to find and destroy this IED to clear a path.","destroy","Task_6",false,true] spawn OKS_fnc_Destroy_Task;
	[[IED_5],"Clear IED","IED", "You need to find and destroy this IED to clear a path.","destroy","Task_6",false,true] spawn OKS_fnc_Destroy_Task;
	[[IED_6],"Clear IED","IED", "You need to find and destroy this IED to clear a path.","destroy","Task_6",false,true] spawn OKS_fnc_Destroy_Task;
	[[IED_7],"Clear IED","IED", "You need to find and destroy this IED to clear a path.","destroy","Task_6",false,true] spawn OKS_fnc_Destroy_Task;
	[[IED_8],"Clear IED","IED", "You need to find and destroy this IED to clear a path.","destroy","Task_6",false,true] spawn OKS_fnc_Destroy_Task;
	[[IED_9],"Clear IED","IED", "You need to find and destroy this IED to clear a path.","destroy","Task_6",false,true] spawn OKS_fnc_Destroy_Task;
	[[IED_10],"Clear IED","IED", "You need to find and destroy this IED to clear a path.","destroy","Task_6",false,true] spawn OKS_fnc_Destroy_Task;
	[[IED_11],"Clear IED","IED", "You need to find and destroy this IED to clear a path.","destroy","Task_6",false,true] spawn OKS_fnc_Destroy_Task;

	// From West
	[intel_1,mortar_1,"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_2,DestroyObject_3,"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_3,DestroyObject_4,"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;

	// From East
	[intel_8,mortar_1,"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_9,DestroyObject_3,"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_10,DestroyObject_4,"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;

	// From West
	[intel_4,[DestroyObject_5,DestroyObject_6],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_5,[arty_1,arty_2,arty_3],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_6,iraa_1,"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_7,[DestroyObject_7,DestroyObject_8,DestroyObject_9,DestroyObject_10],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;

	// From East
	[intel_11,[DestroyObject_5,DestroyObject_6],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_12,[DestroyObject_1,DestroyObject_2],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_13,iraa_1,"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_14,[DestroyObject_7,DestroyObject_8,DestroyObject_9,DestroyObject_10],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;

	// From East
	[intel_15,[arty_1,arty_2,arty_3],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_17,[arty_1,arty_2,arty_3],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;

	// From West
	[intel_18,[arty_4,arty_5],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_16,mortar_2,"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;

	// From East
	[intel_19,arty_6,"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_20,aaa_1,"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_21,[arty_4,arty_5],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_22,mortar_2,"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;

	[intel_23,[IED_1,IED_2,IED_3,IED_4],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_24,[IED_1,IED_2,IED_3,IED_4],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;

	[intel_25,[IED_5,IED_6,IED_7,IED_8],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_26,[IED_5,IED_6,IED_7,IED_8],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;

	[intel_27,[IED_9,IED_10,IED_11],"intel_0"] spawn OKS_fnc_SetupIntel; sleep 1;
	[intel_28,[IED_9,IED_10,IED_11],"intel_0"] spawn OKS_fnc_SetupIntel;
};