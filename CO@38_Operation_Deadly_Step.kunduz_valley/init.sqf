/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

if(isServer) then {
	// Server-side initialization code here
	[[DestroyObject_1,DestroyObject_2],"Find Cache #1","Enemy Cache","You need to destroy this %1 because it contains enemy supplies.","destroy","Task_1",false,true] spawn OKS_fnc_Destroy_Task; // Cache 1
	[[DestroyObject_15,DestroyObject_16],"Find Cache #2","Enemy Cache","You need to destroy this %1 because it contains enemy supplies.","destroy","Task_1",false,true] spawn OKS_fnc_Destroy_Task; // Cache 2
	[[DestroyObject_22],"Find Cache #3","Enemy Cache","You need to destroy this %1 because it contains enemy supplies.","destroy","Task_1",false,true] spawn OKS_fnc_Destroy_Task; // Cache Final South
	[[DestroyObject_23],"Find Cache #4","Enemy Cache","You need to destroy this %1 because it contains enemy supplies.","destroy","Task_1",false,true] spawn OKS_fnc_Destroy_Task; // Cache Final North
	[[DestroyObject_3,DestroyObject_4,DestroyObject_5],"Clear IEDs #1","IEDs","You need to remove the %1 to clear the road.","mine","Task_1",false,true] spawn OKS_fnc_Destroy_Task; // IED 1
	[[DestroyObject_6,DestroyObject_7,DestroyObject_8],"Clear IEDs #2","IEDs","You need to remove the %1 to clear the road.","mine","Task_1",false,true] spawn OKS_fnc_Destroy_Task; // IED 2
	[[DestroyObject_9,DestroyObject_10,DestroyObject_11],"Clear IEDs #3","IEDs","You need to remove the %1 to clear the road.","mine","Task_1",false,true] spawn OKS_fnc_Destroy_Task; // IED 3
	[[DestroyObject_12,DestroyObject_13,DestroyObject_14],"Clear IEDs #4","IEDs","You need to remove the %1 to clear the road.","mine","Task_1",false,true] spawn OKS_fnc_Destroy_Task; // IED 4
	[[DestroyObject_17,DestroyObject_18],"Find Supply Trucks","Supply Trucks","You need to destroy the %1 because it contains enemy supplies.","truck","Task_1",false,true] spawn OKS_fnc_Destroy_Task; // Fort Ammo Trucks
	[[DestroyObject_19,DestroyObject_20],"Find Mortars","pair of mortars","You need to destroy a %1 in the area of operations.","danger","Task_1",false,true] spawn OKS_fnc_Destroy_Task; // Fort Mortars
	[[DestroyObject_21],"Find Mortar","mortar","You need to destroy the %1 in the area of operations.","danger","Task_1",false,true] spawn OKS_fnc_Destroy_Task; // Fort Mortar in Village
};
