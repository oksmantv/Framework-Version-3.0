/*
	AUTHOR: GuzzenVonLidl
	Description:
		What case tha should be called for the zone player is in
	Usage:
		null = [1] spawn GW_Fnc_spawnList;
	Parameters:
		#0: Number:	Activate zone
	Returning Value:
		None
*/



#include "script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};

params [
	"_case"
];

switch (_case) do {

	case 1: {

		[Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
		[Trigger_2,false,[0,0,false,false],civilian,4,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_3,false,[0,12,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_4,false,[0,12,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Secondary 1
		[[[[6153.31,3766.67,0],0,"Up",[]],[[6136.11,3777.54,3.6298],88,"Up",[]],[[6145.21,3764.12,3.61042],53,"Up",[]],[[6143.33,3785.32,0],67,"Up",[]],[[6152.31,3771.53,0],21,"Up",[]],[[6134.25,3775.5,0.474026],0,"Up",[]],[[6135.75,3793.3,0.431892],0,"Up",[]],[[6112.54,3776.29,3.65186],66,"Up",[]],[[6112.8,3774.62,6.57515],70,"Up",[]],[[6103.97,3777.38,0.577472],105,"Up",[]],[[6108.91,3774.02,6.59885],261,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5891.18,4847.54,3.64],76,"Up",[]],[[5889.56,4849.63,3.66184],38,"Up",[]],[[5887.49,4854.76,3.31],8,"Up",[]],[[5885.51,4857.25,3.33184],54,"Up",[]],[[5874.1,4872.96,2.66096],88,"Up",[]],[[5875.19,4849.29,0.021841],76,"Up",[]],[[5887.02,4849.12,0.994881],76,"Up",[]],[[5868.78,4862.42,0.021841],93,"Up",[]],[[5857.82,4857.63,1.64121],30,"Up",[]],[[5856.68,4878.89,0.021842],222,"Up",[]],[[5848.47,4860.33,0],171,"Up",[]],[[5866.97,4812.97,0.021841],1,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		[[6459.62,2849.69,0],"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;
		[[6321.96,3129.66,0],"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;	
		[[6021.03,2904.24,0],"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;

	};

	case 3: {

		[[6407.68,4280.56,0],"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;
		[[6292.26,4577.35,0],"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;	
		[[6086.21,4395.43,0],"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;

	};


	case 4: {

		[[6446.6,5159.69,0],"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;
		[[6268.93,5180.78,0],"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;	
		[[6021.3,5183.11,0],"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;

	};

	case 5: {

		[[5828.92,5722.99,0],"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;
		[[5775.23,5620.3,0],"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;	
		[[6259.48,5692.82,0],"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;

	};

	case 6: {


		// Final Defence
		defendcomplete_1 = false;
		[true, ["defence_1","task_0"], ["Outpost Jamsheed is about to get hit by an insurgent attack. Repel the attackers, they are currently incoming from the north. Hold the outpost at all costs.", "Defend North", "Defend"], objNull, "ASSIGNED", 2, true, "defend"] call BIS_fnc_taskCreate;		
		[[attack_1,attack_2,attack_3,attack_4,attack_5,attack_6],4,1,1,"rush",east,1500,"defendcomplete_1"] spawn OKS_Lambs_Wavespawn;
		sleep 5;
		["hq","side","The outpost is under attack! 1-1 the barracks have ample fighting positions. Garrison the building and help us defend the outpost!"] remoteExec ["OKS_Chat",0];
		sleep 60;
		_VehicleGroup1 = [[],[["UK3CB_MEI_O_Offroad_M2",[5887.19,6184.27,0],69,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_03",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[[[6221.95,5937.79,0],[[0,"Move"],[1,"SAFE"]]],[[6321.89,5858.74,9.53674e-007],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		
		waitUntil {sleep 5; (defendcomplete_1 == true) && ({Alive _X || [_X] call ace_common_fnc_isAwake} count units _VehicleGroup1) == 0};
		["defence_2","SUCCEEDED"] call BIS_fnc_taskSetState;
		
		sleep 10; 

		defendcomplete_2 = false;
		[true, ["defence_2","task_0"], ["You have repelled the first wave. New attackers are inbound from the south, repel the attackers.", "Defend South", "Defend"], objNull, "ASSIGNED", 2, true, "defend"] call BIS_fnc_taskCreate;
		[[attack_7,attack_8,attack_9,attack_10,attack_11,attack_12],4,1,1,"rush",east,1500,"defendcomplete_2"] spawn OKS_Lambs_Wavespawn;

		sleep 90;
		_VehicleGroup2 = [[],[["UK3CB_MEI_O_Offroad_M2",[6680.15,5459.51,7.62939e-006],48,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_03",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[[[6697.78,5602.46,0],[[0,"Move"],[1,"SAFE"]]],[[6623.8,5683.32,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		waitUntil {sleep 5; (defendcomplete_2 == true) && ({Alive _X || [_X] call ace_common_fnc_isAwake} count units _VehicleGroup2) == 0};
		["defence_2","SUCCEEDED"] call BIS_fnc_taskSetState;

		sleep 5;
		["Task_0","SUCCEEDED"] call BIS_fnc_taskSetState;
	
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   Dynamic Script Params
		   0 - Trigger Name (Object)
		   1 - Disabled - Keep False
		   2 - Number of Infantry - [Static Integer,Patrol Integer,CreateSectorObjective?,LocalPatrols?] (Array) -
		   3 - Wheeled Patrols (Integer/Number)
		   4 - APC Patrols (Integer/Number)
		   5 - Tank Patrols (Integer/Number)
		   6 - Roadblocks [RoadBlocksCount,OnlyOnTarmac,LocalPatrols?,NumberChanceForVehicle(0-1)] (Array)
		   7 - Mortar Pits [MortarCount,LocalPatrols?] (Array)
		   8 - Random Objectives [ObjectiveCount,LocalPatrols?] (Array)
		   9 - Hunt Array Bases [Infantry,Wheeled,APC,Tank,Helicopter]
		   10 - Dynamic Civilians on? (Boolean)

			Local Patrols - This means that the strongpoints / roadblocks / mortar pits / objectives have their own local patrols near their position.
			If you use it on Parameter 2, 30% of the static contacts will be turned into patrols.

		   Note:
		   The Dynamic Scripts does work on its own however is very limited in selecting positions for strongpoints.
		   You as an editor can assist the dynamic script by placing down locations for pinpointing different positions.
		   In Eden-Editor "Location"s can be found in Systems (F5) and Game Logics > Locations.

		   Area, Base, City, Evac Point, Resupply Point & Town -> Spawns Strongpoints & Sector Tasks (Selects Random Buildings in Area. Generally more contacts per building)
		   Outpost -> Spawns Compounds & Sector Tasks (Selects all buildings in range of compoundSize (Settings) and spawns even-spread over all buildings)
		   FOB -> Spawns Roadblocks, use the direction of the logic to define the direction of the roadblock.
		   Respawn Point -> If you use HuntBases these locations will be picked, use the direction of the logic to choose the spawn direction 15-25m away from logic.
		   Camp -> Static Objective positions, once again direction of logic defines direction of Objective compositions.
		   Village -> Defines village area for the Dynamic Civilian presence, radius is found in Settings.sqf

		   All Locations are not required, the script will find its own locations, however for the best experience and best result, help the dynamic script by placing these logics.

		   Example:
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_CreateZone")};

			//// START OF ZONE /////
			[	Trigger_1,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					8,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					25,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				0,    // Number of Wheeled on Patrol
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
				,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;
			//// END OF ZONE ////

		};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   	HuntBase Params

		   	0 - Base Object (Object)
		   	1 - Spawn Object (Object)
		   	2 - Hunt Trigger (Trigger)
		   	3 - Wave Count (Integer/Number)
		   	4 - Respawn Delay in Seconds (Integer/Number)
		   	5 - Enemy Side (Side)
		   	6 - Unit Selection - (Integer/String/Array with Strings)
		   	7 - Refresh Rate in Seconds (Integer/Number)

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn NEKY_Hunt_HuntBase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Hunt_HuntBase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn NEKY_Hunt_HuntBase;
		};

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   AirBase Params

		   0 - Base Object (Object)
		   1 - Spawn Object (Object)
		   2 - Hunt Trigger (Trigger)
		   3 - Enemy Side (Side)
		   4 - Classname of Helicopter (String)
		   5 - Type of Insert (Unload ONLY) (String)
		   6 - Cargo Split - [How many teams,Procent of Cargo] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
