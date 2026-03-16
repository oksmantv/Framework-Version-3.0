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
		[[[[10485,11084,4.76837e-006],243,"Middle",[]],[[10476.6,11088,0.253457],237,"Middle",[]],[[10483.6,11079.9,1.1956],242,"Up",[]],[[10488.2,11077.6,0.998953],73,"Middle",[]],[[10490,11071.8,-0.00314999],133,"Middle",[]]],[["UK3CB_ARD_O_BMP1",[10439.1,11012.6,-1.90735e-006],32,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10517.2,11079.2,-0.0598545],192,"Up",[]],[[10521.5,11075.1,2.89168],37,"Middle",[]],[[10528.3,11075.6,3.08379],17,"Down",[]],[[10527,11088.6,0.298319],213,"Up",[]]],[["UK3CB_ADM_O_SPG9",[10531.8,11086.3,0],37,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10524.4,11091.8,1.71661e-005],226,"Middle",[]],[[10518.4,11094.2,4.29153e-005],24,"Up",[]],[[10519.5,11093.9,2.95639e-005],27,"Up",[]],[[10504.8,11100.8,1.1482],45,"Middle",[]],[[10505.4,11100.1,1.04532],45,"Middle",[]],[[10502.1,11096.9,0.613589],148,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		// Counter First Block
		[rush_1,"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;
		[rush_2,"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;
		[rush_3,"rush",4,east,1500,[]] spawn OKS_Lambs_SpawnGroup;

		sleep 30;

		[[],[["UK3CB_ARD_O_BMP2K",[10094.3,10273,0],306,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["konkurs_hide_source",1,"crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[[[10195.6,10667.1,0],[[0,"Move"],[1,"SAFE"]]],[[10427,10993.4,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;

		_Vehicles = ["UK3CB_TKA_O_GAZ_Vodnik_Cannon", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_BMP2", "UK3CB_TKA_O_MTLB_BMP", "UK3CB_TKA_O_MTLB_Cannon"];
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 3,900,east,_Vehicles,200] spawn NEKY_Hunt_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 3,900,east,_Vehicles,200] spawn NEKY_Hunt_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 3,900,east,_Vehicles,200] spawn NEKY_Hunt_HuntBase;
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_1, 3,900,east,_Vehicles,200] spawn NEKY_Hunt_HuntBase;
	};

	case 3: {

		[Trigger_1,false,[0,32,false,false],east,0,2,0,[4,true,false,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Patrol
		[[[[9553.91,9619.6,4.76837e-007],0,[]],[[9558.91,9614.6,0],0,[]],[[9548.91,9614.6,0],0,[]],[[9563.91,9609.6,0],0,[]]],[],[[[9657.44,9619.24,0],[[0,"Move"],[1,"SAFE"]]],[[9817.54,9711.49,4.95911e-005],[[0,"Move"]]],[[9659.06,9745.58,-4.00543e-005],[[0,"Move"]]],[[9535.84,9634.39,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9489.45,9641.05,0],310,[]],[[9496.5,9641.63,1.03599],310,[]],[[9490.04,9634,0.098917],310,[]],[[9503.55,9642.21,1.51769],310,[]]],[],[[[9519.05,9904.53,1.08459],[[0,"Move"],[1,"SAFE"]]],[[9386.88,9905.83,0],[[0,"Move"]]],[[9392.88,9743.84,11.7579],[[0,"Move"]]],[[9476.54,9641.16,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Compound 1
		[[[[9566.17,9859.41,0.298908],342,"Middle",[]],[[9555.14,9854.21,0],31,"Up",[]],[[9559.15,9872.09,0.719063],105,"Up",[]],[[9558.61,9867.37,0.492495],101,"Up",[]],[[9547.88,9867.07,-1.90735e-006],144,"Up",[]],[[9559.66,9873.67,3.21353],38,"Middle",[]],[[9562.23,9871.05,3.07405],49,"Middle",[]]],[["UK3CB_ADM_O_SPG9",[9561.04,9872.63,3.08335],49,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Compound 2
		[[[[9629.81,9750.92,3.84682],318,"Up",[]],[[9629.46,9747.61,3.84378],297,"Up",[]],[[9632.9,9755.4,3.57365],10,"Up",[]],[[9632.07,9754.26,1.27032],10,"Up",[]],[[9630.91,9751.31,0.959867],278,"Up",[]],[[9630.83,9744.71,0],283,"Up",[]],[[9639.59,9748.07,3.20103],1,"Down",[]],[[9645.9,9759.54,0.12348],191,"Up",[]],[[9636.21,9758.28,0],268,"Up",[]],[[9641.2,9762.01,-0.0253563],189,"Middle",[]],[[9642.49,9742.45,-1.23978e-005],14,"Middle",[]]],[["UK3CB_ARD_O_BMP2K",[9605.31,9757.76,-0.000107765],328,[["driver",-1,[]],["cargo",-1,[0]]],[[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Compound 3
		[[[[9452.7,9727.32,3.05176e-005],37,"Up",[]],[[9449.27,9717.1,-2.19345e-005],330,"Up",[]],[[9461.63,9721.27,-1.62125e-005],257,"Up",[]],[[9472.98,9723.39,-6.10352e-005],297,"Up",[]],[[9476.25,9718.88,-1.43051e-005],237,"Up",[]],[[9471.92,9712.19,0.696707],268,"Up",[]],[[9464.42,9717.72,0.864715],268,"Up",[]]],[["UK3CB_ARD_O_BMP1",[9437.15,9699.9,-9.53674e-007],0,[["driver",-1,[]],["cargo",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

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
