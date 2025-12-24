/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/
if(isServer) then {
	[true, "task_1", ["This operation takes you into the mountains of Norway to eliminate the SCUD Launchers used to drop munitions on Oslo. We must silence fire-support base Vladimir.", "Operation Frozen Road", "Road"], nil, "ASSIGNED", 2, true,"attack"] call BIS_fnc_taskCreate;

	[[DestroyObject_1,DestroyObject_2,DestroyObject_3],"Destroy SCUDs","SCUD Launcher",nil,"destroy","task_1"] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_4,DestroyObject_5,DestroyObject_6],"Sabotage Munitions","Munitions Trucks",nil,"destroy","task_1"] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_7,DestroyObject_8,DestroyObject_9,DestroyObject_10,DestroyObject_11,DestroyObject_12],"Clear Mines", "AT Mine",nil,"mine","task_1"] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_13,DestroyObject_14,DestroyObject_15,DestroyObject_16,DestroyObject_17,DestroyObject_18],"Clear Mines", "AT Mine",nil,"mine","task_1"] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_19,DestroyObject_20],"Clear Razorwire","Razorwire",nil,"use","task_1"] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_21,DestroyObject_22],"Clear Razorwire","Razorwire",nil,"use","task_1"] spawn OKS_fnc_Destroy_Task;
};