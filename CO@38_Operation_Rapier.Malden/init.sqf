/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	[true, ["task0"], ["A section of the ASF Battalion has been tasked with clearing the Anti-ship / Anti-Air threat on Balden Island before the main invasion force.", "Operation Rapier", "cookiemarker"], nil, "CREATED", 0, false, "scout"] call BIS_fnc_taskCreate;
	[true, ["task2","task0"], ["Your primary objective in this operation is to neutralize the air defences and ship defence assets ahead of the main invasion.", "Sabotage: Balden", "Insertion Point"], [11992.5,4879.1,0], "created", 4, true, "attack"] call BIS_fnc_taskCreate;
	[true, ["task1","task0"], ["You need to reach the insertion point undetected. Hiding the boat for your exfil is essential for your survival. Not to say there have been reports of civilian and CSAT boats in the harbor and along the coast.", "Reach Insertion Point", "Insertion Point"], [11992.5,4879.1,0], "ASSIGNED", 5, true, "boat"] call BIS_fnc_taskCreate;

	[[DestroyObject_1], nil, nil, nil, "destroy", "task2", false, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_2], nil, nil, nil, "destroy", "task2", false, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_3], nil, nil, nil, "danger", "task2", false, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_4], nil, nil, nil, "danger", "task2", false, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_5], nil, nil, nil, "danger", "task2", false, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_6], nil, nil, nil, "truck", "task2", false, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_7], nil, nil, nil, "truck", "task2", false, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_8], nil, nil, nil, "radio", "task2", false, true] spawn OKS_fnc_Destroy_Task;
	sleep 5;
	_TaskList = "task2" call BIS_fnc_taskChildren;
	waitUntil { sleep 15; {_X call BIS_fnc_taskCompleted} count _TaskList == count _TaskList};
	["task2","SUCCEEDED"] call BIS_fnc_taskSetState;
	sleep 5;
	[true, ["task3","task0"], ["You have destroyed all priority assets, you are cleared to RTB. Return to ANS Nassau through any means necessary. Capture or steal if need be!", "Exfiltrate!", "Insertion Point"], [12160.6,6457.33,0], "ASSIGNED", 5, true, "run"] call BIS_fnc_taskCreate;

};