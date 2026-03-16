/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

missionNamespace setVariable ["AR_SUPPORTED_VEHICLES_OVERRIDE",[], true];

if(isServer) then {

	[true,"Task_0", ["The Russian onslaught is heading towards our pocket of resistance. They are currently conducting offensives from the south. The United States forces are tasked with disrupting this offensive so that the balance of power changes in our favour.", "Operation Ropes", ""], nil,"CREATED",-1,false, "whiteboard"] call BIS_fnc_taskCreate;
	
	[true,["Task_1","Task_0"], ["", "Objective Beta", ""], nil,"ASSIGNED",-1,false, "attack"] call BIS_fnc_taskCreate;
	[[DestroyObject_1,DestroyObject_2],nil,nil,nil,"destroy","task_1", false, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_3,DestroyObject_4,DestroyObject_5],nil,nil,nil,"destroy","task_1", false, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_6],nil,nil,nil,"heli","task_1", false, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_7,DestroyObject_8],nil,nil,nil,"truck","task_1", false, true] spawn OKS_fnc_Destroy_Task;

	[true,["Task_2","Task_0"], ["", "Objective Hotel", ""], nil,"ASSIGNED",-1,false, "attack"] call BIS_fnc_taskCreate;
	[[DestroyObject_17,DestroyObject_18,DestroyObject_19,DestroyObject_20,DestroyObject_21],nil,nil,nil,"truck","task_2", false, true] spawn OKS_fnc_Destroy_Task;

	[true,["Task_3","Task_0"], ["", "Objective Kilo", ""], nil,"ASSIGNED",-1,false, "attack"] call BIS_fnc_taskCreate;
	[[DestroyObject_9,DestroyObject_10],nil,nil,nil,"destroy","task_3", false, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_11,DestroyObject_12],nil,nil,nil,"heli","task_3", false, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_13],nil,nil,nil,"truck","task_3", false, true] spawn OKS_fnc_Destroy_Task;

	[true,["Task_4","Task_0"], ["", "Objective X-Ray", ""], nil,"ASSIGNED",-1,false, "attack"] call BIS_fnc_taskCreate;
	[[DestroyObject_14,DestroyObject_15,DestroyObject_16],nil,nil,nil,"destroy","task_4", false, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_22,DestroyObject_23,DestroyObject_24],nil,nil,nil,"destroy","task_4", false, true] spawn OKS_fnc_Destroy_Task;

	// Phase 1.
	[[[[3584.14,10140.4,-2.86102e-06],124,"Up",[]],[[3624.9,10138.6,3.89797],217,"Up",[]],[[3624.48,10140,3.82545],233,"Up",[]],[[3552.96,10160.1,-2.86102e-06],87,"Up",[]],[[3630.65,10227.6,12.3654],178,"Middle",[]],[[3628.13,10229.5,12.3654],194,"Up",[]],[[3628.73,10231.6,3.11538],203,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[3617.74,10141.5,0],81,[]],[[3619.48,10140.1,0],81,[]],[[3615.91,10140.7,0],81,[]],[[3616.99,10137.6,0],81,[]]],[],[[[3610.36,10235.3,0],[[0,"Move"],[1,"SAFE"]]],[[3544.3,10225,0],[[0,"Move"]]],[[3608.52,10235.4,0],[[0,"Move"]]],[[3618.67,10144.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[3663.42,10166.2,0],0,[]],[[3665.06,10167.7,0],0,[]],[[3663.93,10164.3,0],0,[]],[[3667.11,10164.9,0],0,[]]],[],[[[3625.87,10173.5,0],[[0,"Move"],[1,"SAFE"]]],[[3546.31,10141.8,-1.19209e-07],[[0,"Move"]]],[[3625.43,10171.7,-1.19209e-07],[[0,"Move"]]],[[3660.74,10167.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[3602.78,10234.7,0],0,[]],[[3604.42,10236.2,0],0,[]],[[3603.29,10232.8,0],0,[]],[[3606.47,10233.3,0],0,[]]],[],[[[3568.43,10260.1,0],[[0,"Move"],[1,"SAFE"]]],[[3537.96,10248.9,0],[[0,"Move"]]],[[3541.6,10217.2,0],[[0,"Move"]]],[[3600.1,10236.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[4019.6,9293.68,1.0157],124,"Up",[]],[[4009.76,9297.23,0.0719681],204,"Up",[]],[[3973.91,9278.51,3.79541],182,"Up",[]],[[3978.82,9278.33,0.349871],354,"Up",[]],[[3997.69,9253.38,0],88,"Up",[]],[[3983.29,9238.08,0.338695],96,"Up",[]],[[4003.77,9263.79,0.272767],218,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;


	[
		heli_1, heli_2, east,
		["RHS_Mi24P_vdv", "RHS_Mi8mt_vdv", "RHS_Mi8MTV3_vdv", "RHS_Mi8T_vdv"], true, [180,300]
	] spawn OKS_fnc_AI_HelicopterFlyBy;
	
	sleep 10;

	[
		heli_1, heli_2, east,
		["RHS_Mi24P_vdv", "RHS_Mi8mt_vdv", "RHS_Mi8MTV3_vdv", "RHS_Mi8T_vdv"], true, [180,300]
	] spawn OKS_fnc_AI_HelicopterFlyBy;

	sleep 10;

	[friendly_1, friendly_2, friendly_3, west, [5, ["rhsusf_stryker_m1126_m2_wd","rhsusf_stryker_m1126_m2_wd","rhsusf_M1220_usarmy_wd","rhsusf_M1220_usarmy_wd","rhsusf_M1230a1_usarmy_wd"], 35, 35], [false, 0], [], true, true, ["rush"]] spawn OKS_fnc_Convoy_Spawn;

	// AI Battles.
	_battleRef1 = [
		west_1,					 // Faction 1 spawn object
		east_1,					 // Faction 2 spawn object  
		meet_1,					 // Meeting point object (returned for control)
		west,					   // Faction 1 side
		east,					   // Faction 2 side
		["UK3CB_GAF_B_T72BM", "UK3CB_GAF_B_T72BB", "UK3CB_GAF_B_T72BC", "UK3CB_GAF_B_BTR80a", "UK3CB_GAF_B_BMP1", "UK3CB_GAF_B_BMP2"],
		["rhs_btr80a_msv", "rhs_bmp1_msv", "rhs_bmp2e_msv", "rhs_t90a_tv", "rhs_t90_tv", "rhs_t80bvk"],
		west,				// Defending side (optional)
		true,					   // Enable looping battles
		90,						 // Delay between rounds (seconds)
		-1,						 // Max rounds (-1 = infinite)
		30,						 // Victory delay before cleanup
		12,						 // Maximum total units per round
		3000						// Player observation range (meters)
	] call OKS_fnc_AI_Battle;

	sleep 30;

	_battleRef2 = [
		west_2,					 // Faction 1 spawn object
		east_2,					 // Faction 2 spawn object  
		meet_2,					 // Meeting point object (returned for control)
		west,					   // Faction 1 side
		east,					   // Faction 2 side
		["UK3CB_GAF_B_T72BM", "UK3CB_GAF_B_T72BB", "UK3CB_GAF_B_T72BC", "UK3CB_GAF_B_BTR80a", "UK3CB_GAF_B_BMP1", "UK3CB_GAF_B_BMP2"],
		["rhs_btr80a_msv", "rhs_bmp1_msv", "rhs_bmp2e_msv", "rhs_t90a_tv", "rhs_t90_tv", "rhs_t80bvk"],
		west,				// Defending side (optional)
		true,					   // Enable looping battles
		90,						 // Delay between rounds (seconds)
		-1,						 // Max rounds (-1 = infinite)
		30,						 // Victory delay before cleanup
		12,						 // Maximum total units per round
		3000						// Player observation range (meters)
	] call OKS_fnc_AI_Battle;

	{
		_side1 = _X select 0;
		_side2 = _X select 1;
		_artilleryBattle = [
			_side1,					// West artillery spawn
			_side2,					// East artillery spawn  
			west,							   // West side
			east,							   // East side
			["UK3CB_GAF_B_2S1", "UK3CB_GAF_B_D30", "UK3CB_AAF_I_Kamaz_MLRS"],			   // West artillery classes
			["UK3CB_CW_SOV_O_EARLY_2S1","UK3CB_CW_SOV_O_Early_D30", "UK3CB_AAF_O_Kamaz_MLRS"],			   // East artillery classes
			90,								 // Base delay between fire missions
			1,								  // Rounds per fire mission
			true,							   // Enable looping
			-1,								 // Infinite fire missions
			30								  // Victory delay
		] call OKS_fnc_AI_ArtilleryBattle;
		sleep 5 + (random 15);
	} foreach [[warty_1,earty_1],[warty_2,earty_2],[warty_3,earty_3],[warty_4,earty_4],[warty_5,earty_5],[warty_6,earty_6]];

};