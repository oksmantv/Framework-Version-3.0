/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	[west, "west_task_1", ["You are the BLUFOR force, the Chernarussian Defence Force. You have been pushed out of Chernarus to the norther region and border, the NAPA fighters have been working to destabilize the region and have now been found. Our frontline is making a full advance, your task is to breakthrough and reach the NAPA fighters to rescue them.", "Rescue NAPA", "Relieve"], [6552,5596.44,0.00143433], "ASSIGNED", 2, true, "run"] call BIS_fnc_taskCreate;
	[independent, "indep_task_1", ["You are the independent force, the NAPA freedom fighters. You have been operating behind enemy lines to sabotage Chedaki logistics networks. You have been located by the enemy and must defend your position until relieved by the Chernarussian Defence forces. Tasks will pop-up during important stages detailing your next move.", "Defend OP Harvest", "cookiemarker"], [6552,5596.44,0.00143433], "CREATED", 2, true, "defend"] call BIS_fnc_taskCreate;
	
	sleep 10;
	if({side group _X == WEST && !(_X in [wecho1,wecho2,wecho3,wecho4,wecho5,wecho6])} count AllPlayers > 0) then {
		["ATLAS","side","BLUFOR faction detected. Operation set to BREAKTHROUGH rescue."] spawn OKS_fnc_ChatGlobal;
		BOREALIS_MISSION_CODE = 1;
		publicVariable "BOREALIS_MISSION_CODE";

		waitUntil{sleep 15; triggerActivated spawnTrigger_2};
		null = [100] spawn GW_Fnc_spawnList;
	} else {
		["ATLAS","side","NO BLUFOR faction detected. Operation set to Independent DEFENCE."] spawn OKS_fnc_ChatGlobal;
		BOREALIS_MISSION_CODE = 2;
		publicVariable "BOREALIS_MISSION_CODE";
		
		waitUntil{sleep 15; triggerActivated spawnTrigger_1};
		[
			"CDF Command",
			"side",
			"Outpost Harvest, this is CDF Command, our breakthrough has failed, you are on your own. Cause as much chaos as possible, we will regroup for another attempt, over.",
			"CDF Command",
			25000,
			100,
			independent
		] spawn OKS_fnc_ChatGlobal;
		sleep 10;
		["CDF Command", "side", "The Chedaki will attack the Outpost in 5 minutes, good luck, Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;
		sleep 300;
		null = [100] spawn GW_Fnc_spawnList;
	};
};