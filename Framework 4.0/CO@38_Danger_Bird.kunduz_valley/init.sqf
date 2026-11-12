/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	[true, ["main"], ["", "Operation Danger Bird", "marker2"], objNull, 1, 3, true, "whiteboard"] call BIS_fnc_taskCreate; 
	[true, ["main0","main"], ["Find and eliminate the commanders at Objective Trojan.", "Objective Trojan", "marker2"], objNull, 1, 3, true, "attack"] call BIS_fnc_taskCreate; 
	[true, ["main1","main"], ["Find and eliminate the commanders at Objective Fury.", "Objective Fury", "marker2"], objNull, 1, 3, true, "attack"] call BIS_fnc_taskCreate; 
	(group officer_1) setVariable ["acex_headless_blacklist", true, true];
	(group officer_2) setVariable ["acex_headless_blacklist", true, true];
	(group officer_3) setVariable ["acex_headless_blacklist", true, true];
	(group officer_4) setVariable ["acex_headless_blacklist", true, true];
	[[officer_1], "Eliminate Commander", "Commander", "You have been tasked with killing a high value target in the area of operations.", "kill", "main0", false, true] spawn OKS_fnc_Destroy_Task;
	[[officer_2], "Eliminate Commander", "Commander", "You have been tasked with killing a high value target in the area of operations.", "kill", "main0", false, true] spawn OKS_fnc_Destroy_Task;
	[[officer_3], "Eliminate Commander", "Commander", "You have been tasked with killing a high value target in the area of operations.", "kill", "main1", false, true] spawn OKS_fnc_Destroy_Task;
	[[officer_4], "Eliminate Commander", "Commander", "You have been tasked with killing a high value target in the area of operations.", "kill", "main1", false, true] spawn OKS_fnc_Destroy_Task;
	[officer_1] spawn OKS_fnc_Surrender;
	[officer_2] spawn OKS_fnc_Surrender;
	[officer_3] spawn OKS_fnc_Surrender;
	[officer_4] spawn OKS_fnc_Surrender;
	null = [intel_1, [officer_3,officer_4], "main1", "ENEMY INTEL\nYou have found intel regarding the location of the enemy commanders.\n\n%1\n\n%2", nil, "", true, ['objective2'], false] spawn OKS_fnc_SetupIntel;
	[[DestroyObject_1,DestroyObject_2,DestroyObject_3,DestroyObject_4,DestroyObject_5,DestroyObject_6,DestroyObject_7], "Destroy Insurgent Assets", "Assets", "In the area of operations you will find enemy assets. Anything with weapons, make sure to destroy it.", "destroy", "main1", false, true] spawn OKS_fnc_Destroy_Task;

	sleep 15;
	[	
		Trigger_1,  // Name of Trigger used as Spawn Area
		false, 		// DO NOT EDIT
		[
			0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
			0,		// Number of Patrolling Infantry
			false,  // Create Sector Objective on Garrison?
			false   // Should have dedicated patrols near static positions
		],
		civilian, // Side of Enemy
		1,    // Number of Wheeled on Patrol
		0,    // Number of APCs on Patrol
		0,    // Number of Tanks on Patrol
		[
			0,     // Number of Roadblocks - Preferred Game Logic Location 'FOB'"
			true,  // Should be on tarmac.
			false, // Should have dedicated patrol.
			0  	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
		],
		[
			0,     // Number of Mortars
			false  // Should have dedicated patrols around it
		],[
			0,    // Number of Random Objectives - Preferred Game Logic Location 'Camp'"
			false // Should have dedicated patrols around it
		],
		[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Preferred Game Logic Location 'Respawn Point'"
		,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
	] spawn OKS_fnc_CreateZone;
	[	
		Trigger_2,  // Name of Trigger used as Spawn Area
		false, 		// DO NOT EDIT
		[
			0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
			0,		// Number of Patrolling Infantry
			false,  // Create Sector Objective on Garrison?
			false   // Should have dedicated patrols near static positions
		],
		civilian, // Side of Enemy
		1,    // Number of Wheeled on Patrol
		0,    // Number of APCs on Patrol
		0,    // Number of Tanks on Patrol
		[
			0,     // Number of Roadblocks - Preferred Game Logic Location 'FOB'"
			true,  // Should be on tarmac.
			false, // Should have dedicated patrol.
			0  	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
		],
		[
			0,     // Number of Mortars
			false  // Should have dedicated patrols around it
		],[
			0,    // Number of Random Objectives - Preferred Game Logic Location 'Camp'"
			false // Should have dedicated patrols around it
		],
		[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Preferred Game Logic Location 'Respawn Point'"
		,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
	] spawn OKS_fnc_CreateZone;
};