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

		[Trigger_1,false,[15,12,false,false],east,0,2,1,[2,true,false,1],[0,false],[3,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_2,false,[16,12,false,false],east,0,1,0,[2,true,false,1],[0,false],[3,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Tank
		[[],[["UK3CB_ARD_O_T55",[4793.26,3274.2,-7.62939e-006],258,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],["UK3CB_ARD_O_T72A",[4811.19,3738.32,0],263,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]],["UK3CB_ARD_O_T72A",[4843.16,4026.34,0],161,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]],["UK3CB_ARD_O_T72A",[3513.53,2350.82,0],157,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {
		[[],[["UK3CB_ARD_O_T55",[4878.61,4385.17,-7.62939e-006],251,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],["UK3CB_ARD_O_T72A",[4726.22,4383.31,0],182,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]],["UK3CB_ARD_O_T72A",[4253.96,4364.72,-1.90735e-006],83,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]],["UK3CB_ARD_O_T72A",[4779.55,4971.16,-1.90735e-006],187,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]],["UK3CB_ARD_O_T55",[4979.63,5179.87,-7.62939e-006],204,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[Trigger_3,false,[15,12,false,false],east,0,2,0,[2,true,false,1],[0,false],[2,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_4,false,[15,8,false,false],east,0,2,2,[1,true,false,1],[0,false],[4,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
	};

	case 3: {

		[Trigger_5,false,[16,12,false,false],east,0,1,1,[1,true,false,1],[0,false],[4,false],[0,0,0,0,0],false] spawn OKS_CreateZone;	
		[[],[["UK3CB_ARD_O_T72A",[3386.93,5461.37,0],142,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]],["UK3CB_ARD_O_T72A",[3916.38,5761.83,0],158,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]],["UK3CB_ARD_O_T55",[4008.38,5803.43,-9.53674e-006],160,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],["UK3CB_ARD_O_T55",[4483.23,6499.41,-7.62939e-006],226,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],["UK3CB_ARD_O_T55",[4459.95,6521.49,-7.62939e-006],243,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
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
