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

		[[[[14741.2,5759.35,3.65732],116,"Up",[]],[[14740.2,5757.2,3.62458],158,"Up",[]],[[14739.1,5755.05,3.58464],190,"Up",[]],[[14736.5,5755.63,3.71443],139,"Up",[]],[[14740.1,5755.66,0.9656],139,"Up",[]],[[14743.2,5752.46,0],190,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[14744.5,5764.7,3.38314],85,"Up",[]],[[14744,5762.77,3.34225],139,"Up",[]],[[14743.1,5761.52,3.33198],139,"Up",[]],[[14743.5,5765.15,0.414629],305,"Up",[]],[[14748.5,5765.99,0],300,"Up",[]],[[14733.4,5761.4,1.19689],139,"Up",[]],[[14720,5765.07,0.325296],80,"Up",[]],[[14726,5775.08,0.294539],97,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[14896.7,5790.39,3.69603],104,"Up",[]],[[14902.5,5788.94,1.21786],305,"Up",[]],[[14898.4,5790.66,1.0773],189,"Up",[]],[[14900.4,5795.14,0],267,"Up",[]],[[14908.1,5788.58,0],338,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[14899.3,5782.44,3.84979],195,"Up",[]],[[14901.4,5783.46,3.92169],305,"Up",[]],[[14891.1,5789.76,3.21883],198,"Up",[]],[[14891,5790.69,0.201515],157,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[14880.4,5784.88,0.505704],157,"Up",[]],[[14876.8,5786.99,0.481565],61,"Up",[]],[[14874.5,5790.72,0.687313],120,"Up",[]],[[14878.1,5785.06,3.58066],213,"Middle",[]],[[14880.7,5783.99,3.62471],167,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrol
		[[[[15469.7,5318.53,0],0,[]],[[15474.7,5313.53,0],0,[]],[[15464.7,5313.53,0],0,[]],[[15479.7,5308.53,0],0,[]]],[],[[[15258.1,5257.83,0],[[0,"Move"],[1,"SAFE"]]],[[15122.5,5492.13,0],[[0,"Move"]]],[[15288.9,5549.12,0],[[0,"Move"]]],[[15504,5414.93,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[14821,5146.52,0],126,[]],[[14814,5145.45,0],126,[]],[[14820,5153.51,0],126,[]],[[14807,5144.39,0],126,[]]],[],[[[14804.3,5407.82,0],[[0,"Move"],[1,"SAFE"]]],[[15079.3,5416.66,0],[[0,"Move"]]],[[15164.7,5223.21,0],[[0,"Move"]]],[[14941.8,5117.15,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[14864.4,4964.8,9.53674e-007],111,[]],[[14857.9,4961.93,9.53674e-007],111,[]],[[14861.5,4971.26,9.53674e-007],111,[]],[[14851.5,4959.05,9.53674e-007],111,[]]],[],[[[15035.1,5095.55,0],[[0,"Move"],[1,"SAFE"]]],[[15266.8,5120.1,0],[[0,"Move"]]],[[15277.6,4953.16,0],[[0,"Move"]]],[[14899.3,4944.8,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[15612.5,5120.99,0],0,[]],[[15617.5,5115.99,0],0,[]],[[15607.5,5115.99,0],0,[]],[[15622.5,5110.99,0],0,[]]],[],[[[15395.2,5069.05,0],[[0,"Move"],[1,"SAFE"]]],[[15263,5211.55,0],[[0,"Move"]]],[[15650.8,5354.79,1.90735e-006],[[0,"Move"]]],[[15617.4,5198.66,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[15147,5840.26,0],0,[]],[[15152,5835.26,9.53674e-007],0,[]],[[15142,5835.26,0],0,[]],[[15157,5830.26,9.53674e-007],0,[]]],[],[[[14893.2,5814.18,0],[[0,"Move"],[1,"SAFE"]]],[[14859.9,5837.58,0],[[0,"Move"]]],[[14839.4,5974.75,0],[[0,"Move"]]],[[15104.5,5898.02,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[14643.5,5695.9,0],126,[]],[[14636.5,5694.84,9.53674e-007],126,[]],[[14642.4,5702.89,0],126,[]],[[14629.5,5693.77,9.53674e-007],126,[]]],[],[[[14699.8,5839.52,9.53674e-007],[[0,"Move"],[1,"SAFE"]]],[[14831.2,5838.52,0],[[0,"Move"]]],[[14759.4,5697.47,0],[[0,"Move"]]],[[14671.8,5667.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[14722.4,5552.22,0],111,[]],[[14716,5549.34,0],111,[]],[[14719.6,5558.68,0],111,[]],[[14709.5,5546.46,9.53674e-007],111,[]]],[],[[[14767,5647.65,0],[[0,"Move"],[1,"SAFE"]]],[[14899.2,5662.04,0],[[0,"Move"]]],[[14975.9,5511.31,0],[[0,"Move"]]],[[14757.3,5532.22,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[15325.3,5638.06,0],0,[]],[[15330.3,5633.06,0],0,[]],[[15320.3,5633.06,0],0,[]],[[15335.3,5628.06,0],0,[]]],[],[[[15072.5,5590.79,0],[[0,"Move"],[1,"SAFE"]]],[[14940.3,5733.29,0],[[0,"Move"]]],[[15332.9,5743.56,9.53674e-007],[[0,"Move"]]],[[15331.5,5677.79,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Vehicle Patrol
		[[],[["UK3CB_MEE_O_BTR40_MG",[14908.7,5714,-4.95911e-005],160,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["MEE",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]]]]],[[[15074.2,5453.18,0],[[0,"Move"],[1,"SAFE"]]],[[15425.1,4969.32,1.43051e-005],[[0,"Move"]]],[[15063.7,5464.08,2.47955e-005],[[0,"Move"]]],[[14904.4,5722.58,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {
	};

	case 3: {
	};

	case 4: {
	};

	case 5: {
	};

	case 6: {
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
