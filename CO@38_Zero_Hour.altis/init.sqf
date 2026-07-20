/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	[InsertLZ_1] spawn OKS_fnc_Insert_Task;
	_Task1 = [OP_Sofia,"EAST",nil,55,"Secure OP Sofia","attack"] spawn OKS_fnc_ClearImmediateArea;
	_Task2 = [OP_Chloe,"EAST",nil,55,"Secure OP Chloe","attack"] spawn OKS_fnc_ClearImmediateArea;
	_Task3 = [OP_Eleni,"EAST",nil,55,"Secure OP Eleni","attack"] spawn OKS_fnc_ClearImmediateArea;
	_Task4 = [Enemy_HQ,"EAST",nil,55,"Secure OP Eleni","attack"] spawn OKS_fnc_ClearImmediateArea;
	[[Mortar_1]] spawn OKS_fnc_Destroy_Task;

	// Wait Until Capture of Village is Complete.
	waitUntil { 
		sleep 30;
		{_X call BIS_fnc_taskCompleted} count [_Task1,_Task2,_Task3,_Task4] == 4
	};
	["COMMAND","side","1st Platoon, this is command, message over..."] spawn OKS_fnc_ChatGlobal; sleep 6;
	["COMMAND","side","1st Platoon, good work on taking the village of Chalkeia. As you may have heard, the landings have begun. Enemy reinforcements are gathering to the north, break."] spawn OKS_fnc_ChatGlobal; sleep 6;
	["COMMAND","side","The main advance will come down the main supply route, it is vital that you defeat their initial wave. You must buy enough time for the landings to complete."] spawn OKS_fnc_ChatGlobal; sleep 6;
	["COMMAND","side","Expect the attack in 10 minutes. Prepare the defences. Chalkeia must hold! Command out"] spawn OKS_fnc_ChatGlobal; sleep 6;

	[true, ["Task_1"], ["You must lock down the MSR to avoid letting enemy reserves to interfere with the landings to the south-east. Repel the main advance and force them to rethink their approach!", "Lock-Down MSR", "marker2"], objNull, 1, 3, true, "mine"] call BIS_fnc_taskCreate
	
	SpawnTrigger_2_Complete = false;
	[2] spawn GW_Fnc_SpawnList;
	// Wait Until Capture of Village is Complete.
	waitUntil { 
		sleep 30;
		SpawnTrigger_2_Complete
	};
	["Task_1","SUCCEEDED"] call BIS_fnc_taskSetState; sleep 5;
	[true, ["Task_2"], ["", "", "marker2"], objNull, 1, 3, true, "meet"] call BIS_fnc_taskCreate


};