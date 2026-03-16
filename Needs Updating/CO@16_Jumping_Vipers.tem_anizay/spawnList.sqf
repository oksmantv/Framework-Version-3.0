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
	[[[[2386.39,2748.3,9.37283],167,"Auto",[]],[[2364.03,2744.33,9.12395],177,"Auto",[]],[[2348.08,2761.61,9.37282],223,"Auto",[]],[[2352.91,2811.76,6.95038],284,"Auto",[]],[[2411.97,2827.67,0],12,"Auto",[]],[[2423.51,2520.84,17.1683],241,"Auto",[]],[[2710.15,2434.7,17.0623],185,"Auto",[]],[[2709.57,2436.14,30.1279],175,"Auto",[]],[[2425.22,2521.4,30.2442],232,"Auto",[]],[[2467.61,2720.23,9.30754],167,"Middle",[]],[[2443.66,2720,10.493],167,"Middle",[]],[[2419.55,2700.73,0],167,"Auto",[]],[[2412.98,2697.82,-1.52588e-005],167,"Auto",[]],[[2386.87,2771.46,7.10605],96,"Auto",[]],[[2379.48,2775.69,7.10231],326,"Auto",[]],[[2342.53,2801.79,0],326,"Auto",[]],[[2356.92,2825.15,0],326,"Auto",[]],[[2373.76,2811.01,6.99405],170,"Auto",[]],[[2357.07,2767.36,9.37282],42,"Auto",[]],[[2371.76,2749.51,9.37283],185,"Auto",[]],[[2454.93,2812.29,1.52588e-005],338,"Auto",[]],[[2401.08,2829.86,1.52588e-005],12,"Auto",[]],[[2494.93,2769.06,10.606],80,"Middle",[]],[[2495.03,2742.51,9.49628],111,"Middle",[]],[[2756.1,2261.67,0],200,"Auto",[]],[[2720.76,2263.62,0],246,"Auto",[]],[[2376.08,2734.56,3.83876],200,"Middle",[]],[[2385.93,2734.41,3.79047],166,"Middle",[]],[[2528.34,2686.31,0],128,"Middle",[]],[[2531.66,2698.38,0],100,"Middle",[]],[[2423.04,2522.6,5.42628],262,"Auto",[]],[[2768.34,2261.44,0],108,"Auto",[]],[[2711.94,2433.7,5.24106],134,"Auto",[]]],[["UK3CB_TKA_O_KORD_high",[2350.5,2763.66,22.5697],204,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_PKM_nest_des",[2311.91,2826.84,-1.52588e-005],271,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_TKA_O_PKM_nest_des",[2658.41,2693.94,-1.52588e-005],134,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_TKA_O_PKM_nest_des",[2757.97,2252.17,1.52588e-005],181,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_TKA_O_KORD_high",[2494.94,2721.63,10.1653],132,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
	[[],[["UK3CB_TKA_O_BRDM2",[6023.95,2161.49,0],0,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[[[5043.86,2354.44,-3.05176e-005],[[0,"Move"]]],[[4269.44,1727.7,0],[[0,"Move"]]],[[4893.55,1039.82,1.52588e-005],[[0,"Move"]]],[[6056.83,1388.05,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[],[["UK3CB_TKA_O_BTR40_MG",[2700.27,3841.22,0],224,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]]]]],[[[2223.75,3412.35,0],[[0,"Move"]]],[[2316.56,2938.71,0.000152588],[[0,"Move"]]],[[3130.23,3225.45,-4.57764e-005],[[0,"Move"]]],[[3103.43,3952.05,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[],[["UK3CB_TKA_O_BTR80",[3267.34,3647.69,3.05176e-005],261,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[[[2656.14,3444.03,0.000167847],[[0,"Move"]]],[[2650,2742.43,-3.05176e-005],[[0,"Move"]]],[[3098.62,2830.72,1.52588e-005],[[0,"Move"]]],[[3275.42,3318.12,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[2896.46,2783.98,0],235,[]],[[2915.19,2787.51,0],235,[]],[[2922.16,2786.32,0],235,[]],[[2917.57,2801.45,0],235,[]],[[2929.04,2793.88,0],235,[]],[[2926.21,2797.72,0],235,[]]],[],[[[2703.74,2935.02,0],[[0,"Move"]]],[[2237.46,2863.89,0],[[0,"Move"]]],[[2585.22,2565.14,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};

	case 2: {
	[[],[["UK3CB_TKA_O_BMP1",[5996.66,1807.8,1.52588e-005],8,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[5575.14,2180.1,0],[[0,"Move"]]],[[5397.18,1805.03,-0.00012207],[[0,"Move"]]],[[5720.45,1118.75,0],[[0,"Move"]]],[[6144.56,1170.52,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[5870.19,659.501,0],0,[]],[[5875.19,654.501,0],0,[]],[[5865.19,654.501,0],0,[]],[[5880.19,649.501,0],0,[]],[[5860.19,649.501,0],0,[]],[[5885.19,644.501,0],0,[]],[[5855.19,644.501,0],0,[]],[[5890.19,639.501,0],0,[]]],[],[[[5997.06,915.782,-6.10352e-005],[[0,"Move"]]],[[5878.63,1031.78,6.10352e-005],[[0,"Move"]]],[[5423.29,1392.59,7.62939e-005],[[0,"Move"]]],[[5496.36,1025.5,-1.52588e-005],[[0,"Move"]]],[[5747.63,774.818,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	[[],[["UK3CB_TKA_O_BTR60",[5448.94,298.644,-9.15527e-005],291,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]],[[[5147.49,808.227,1.52588e-005],[[0,"Move"]]],[[4769.36,1349.52,0],[[0,"Move"]]],[[5008.9,304.841,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	[[[[5822.76,905.06,0.266998],314,"Auto",[]],[[5826.44,907.657,7.55258],317,"Auto",[]],[[5844.75,909.901,4.26617],317,"Auto",[]],[[5862.05,910.25,7.79007],317,"Auto",[]],[[5845.61,909.367,7.73093],326,"Auto",[]],[[5857.1,899.518,0.756836],301,"Auto",[]],[[5834.74,897.533,0.687622],85,"Auto",[]],[[5819.8,900.755,7.3573],317,"Auto",[]],[[5776.55,967.991,8.53793],317,"Auto",[]],[[5779.24,969.246,5.82458],330,"Auto",[]],[[5853.69,899.109,0.721039],340,"Auto",[]],[[5856.62,880.936,0],317,"Middle",[]],[[5874.67,892.88,0],2,"Auto",[]],[[5856.3,890.534,8.00458],233,"Auto",[]],[[5759.91,933.112,0],0,"Auto",[]],[[5743.77,948.724,3.05176e-005],293,"Down",[]],[[5769.27,955.847,0],250,"Auto",[]],[[5778.33,916.527,0.696991],2,"Auto",[]],[[5834.03,935.5,0],229,"Auto",[]],[[5861.64,903.241,0.830017],315,"Auto",[]],[[5790.28,898.154,0],59,"Auto",[]],[[5786.08,952.523,0],196,"Middle",[]],[[5821.7,877.362,0],337,"Middle",[]],[[5838.88,897.595,4.27423],99,"Middle",[]],[[5853.91,983.946,3.05176e-005],335,"Middle",[]],[[5836.26,968.609,0],337,"Middle",[]]],[["UK3CB_TKA_O_Hilux_Spg9",[5751.7,954.063,0],317,[["gunner",-1,[0]]],[[6,["TKA",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
	[[[[9474.56,1432.57,0],63,"Auto",[]],[[9456.41,1431.12,0.294605],43,"Auto",[]],[[9474.3,1418.91,0.172886],317,"Auto",[]],[[9516.64,1397.44,0],141,"Auto",[]],[[9586.92,1442.76,1.16467],210,"Auto",[]],[[9584.25,1418.6,3.8147e-006],315,"Auto",[]],[[9498.12,1402.32,2.81899],306,"Auto",[]],[[9524.96,1410.82,0.299515],212,"Auto",[]],[[9559.89,1450.34,-3.8147e-006],154,"Auto",[]],[[9538.06,1497.91,3.8147e-006],304,"Auto",[]],[[9509.22,1524.23,0],149,"Auto",[]],[[9557.83,1469.29,0],263,"Auto",[]],[[9461.65,1436.02,0],80,"Auto",[]],[[9304.12,1379.46,-3.8147e-006],62,"Auto",[]],[[9270.35,1404.82,0],95,"Auto",[]],[[9265.88,1366.53,0.476555],48,"Auto",[]],[[9263.19,1356.56,0.2728],24,"Auto",[]],[[9273.02,1352.98,0.314678],37,"Auto",[]],[[9374.61,1302.63,0],329,"Auto",[]],[[9389.16,1302.35,0],329,"Auto",[]],[[9341.92,1284.99,3.8147e-006],329,"Auto",[]],[[9120.39,1980.99,0],304,"Auto",[]],[[9148.68,1974.54,-7.62939e-006],8,"Auto",[]]],[["UK3CB_O_Static_PKM_High",[9592.12,1439.29,5.14098],265,[["gunner",-1,[0]]],[]],["UK3CB_O_PKM_Nest_Des",[9259.56,1476.52,0.000118256],325,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_TKA_O_GAZ_Vodnik_KVPT",[9094.84,1873.17,-6.10352e-005],312,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["TKA",1]]]],["UK3CB_TKA_O_GAZ_Vodnik_HMG",[9379.49,1315.61,3.8147e-006],0,[["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
	
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
