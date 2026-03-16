/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

if (isServer) then {
	[true,"Task_0", ["The Tanoan Liberation army has gathered forces to overthrow the government of Tanoa. The mission is to turn the tide in this conflict. ", "Operation Daybreak", ""], nil,"CREATED",-1,false, "whiteboard"] call BIS_fnc_taskCreate;
	[true,["Task_1","Task_0"], ["We have identified two large force gatherings on the south-west island of Rio Seco and on the main island in the village of El Guamo. Tanoan army forces are fighting insurgents cells across the islands and are unable to gather enough forces to disrupt the Tanoan liberation forces.", "Disrupt Tanoa Liberation Forces", ""], nil,"ASSIGNED",-1,false, "attack"] call BIS_fnc_taskCreate;
	[true,["Task_2","Task_0"], ["A week ago special forces from the Navy SEALs attempted to recon these force gatherings to direct the navy airforce. They failed and were captured. The Marine Corps has been sent to hit these major forces to help turn the tide of the conflict and to rescue the navy SEALs.", "Rescue the SEALs", ""], nil,"created",-1,false, "meet"] call BIS_fnc_taskCreate;

	[[DestroyObject_1,DestroyObject_2,DestroyObject_3,DestroyObject_4,DestroyObject_5], nil, nil, nil, "destroy", "Task_1"] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_6,DestroyObject_7,DestroyObject_8], nil, nil, nil, "destroy", "Task_1"] spawn OKS_fnc_Destroy_Task;
	[Group officer_1, HVT_ExtractTrigger, west, false, "Task_2", true, true, "You have been tasked with rescuing a capture SEAL operative behind enemy lines. Bring him home, get him to the aircraft carrier."] spawn OKS_fnc_Evacuate_HVT;
	[Group officer_2, HVT_ExtractTrigger, west, false, "Task_2", true, true, "You have been tasked with rescuing a capture SEAL operative behind enemy lines. Bring him home, get him to the aircraft carrier."] spawn OKS_fnc_Evacuate_HVT;
	[Group officer_3, HVT_ExtractTrigger, west, false, "Task_2", true, true, "You have been tasked with rescuing a capture SEAL operative behind enemy lines. Bring him home, get him to the aircraft carrier."] spawn OKS_fnc_Evacuate_HVT;
	[Group officer_4, HVT_ExtractTrigger, west, false, "Task_2", true, true, "You have been tasked with rescuing a capture SEAL operative behind enemy lines. Bring him home, get him to the aircraft carrier."] spawn OKS_fnc_Evacuate_HVT;
	[Group officer_5, HVT_ExtractTrigger, west, false, "Task_2", true, true, "You have been tasked with rescuing a capture SEAL operative behind enemy lines. Bring him home, get him to the aircraft carrier."] spawn OKS_fnc_Evacuate_HVT;
	[Group officer_6, HVT_ExtractTrigger, west, false, "Task_2", true, true, "You have been tasked with rescuing a capture SEAL operative behind enemy lines. Bring him home, get him to the aircraft carrier."] spawn OKS_fnc_Evacuate_HVT;
	[Group officer_7, HVT_ExtractTrigger, west, false, "Task_2", true, true, "You have been tasked with rescuing a capture SEAL operative behind enemy lines. Bring him home, get him to the aircraft carrier."] spawn OKS_fnc_Evacuate_HVT;
	[Group officer_8, HVT_ExtractTrigger, west, false, "Task_2", true, true, "You have been tasked with rescuing a capture SEAL operative behind enemy lines. Bring him home, get him to the aircraft carrier."] spawn OKS_fnc_Evacuate_HVT;
	[[DestroyObject_9,DestroyObject_10,DestroyObject_11], nil, nil, nil, "destroy", "Task_1"] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_12,DestroyObject_13], nil, nil, nil, "destroy", "Task_1"] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_14,DestroyObject_15], nil, nil, nil, "destroy", "Task_1"] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_16,DestroyObject_17,DestroyObject_18], nil, nil, nil, "destroy", "Task_1"] spawn OKS_fnc_Destroy_Task;

	[getPos fire_1] spawn OKS_fnc_Fire;
	[getPos fire_2] spawn OKS_fnc_Fire;
	[getPos fire_3] spawn OKS_fnc_Fire;
	[getPos fire_4] spawn OKS_fnc_Fire;
	[getPos fire_5] spawn OKS_fnc_Fire;
	[getPos fire_6] spawn OKS_fnc_Fire;
};