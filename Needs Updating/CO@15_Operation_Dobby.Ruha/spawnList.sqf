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

		[Trigger_1,false,[0,15,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_2,false,[0,15,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		[[[[2306.83,6922.74,0],291,"Auto",[]],[[2287.99,6939.65,1.90735e-006],309,"Middle",[]],[[2273.31,6908.72,0.53529],355,"Auto",[]],[[2270.56,6908.6,0.566673],355,"Auto",[]],[[2285.45,6909.02,0.45302],355,"Auto",[]],[[2292,6910.19,0.415377],342,"Auto",[]]],[["rhs_bmp1_msv",[2237.61,6911.3,0],358,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2263.89,7018.54,0.281309],172,"Auto",[]],[[2281.42,6986.56,0],266,"Auto",[]],[[2277.57,6999.84,0.0931606],283,"Auto",[]],[[2280.02,6992.68,0.477116],335,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2238.99,7036.69,0],279,"Auto",[]],[[2242.2,7016.21,0.886206],140,"Auto",[]],[[2244.33,7001.96,1.13703],172,"Auto",[]],[[2250.2,7006.42,0.68478],267,"Auto",[]],[[2247.81,7015.88,0.676701],172,"Auto",[]],[[2247.08,6996.09,0.160179],82,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Vehicles
		[[],[["rhs_bmp1_msv",[2509.11,6297.55,0],334,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp2e_msv",[2616.49,6961.57,0],267,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Farm House
		[[[[2923.82,6599.56,0],336,"Auto",[]],[[2939.35,6601.06,0],336,"Auto",[]],[[2932.2,6589.01,0.128521],336,"Auto",[]],[[2924.66,6590.82,0.508068],68,"Auto",[]],[[2925.1,6583.64,0.58758],4,"Auto",[]],[[2925.55,6578.22,0.767395],20,"Auto",[]],[[2930.37,6581.96,0.434698],269,"Auto",[]],[[2926.06,6572.4,1.06526],69,"Auto",[]],[[2926.41,6565.75,-1.90735e-006],64,"Auto",[]],[[2981.16,6570.19,1.21454],309,"Middle",[]],[[2983.53,6571.28,1.46609],309,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;


		_Vehicles = [
			"UK3CB_CHD_O_BMD1", 
			"UK3CB_CHD_O_BMP1", 
			"UK3CB_CHD_O_BMP2", 
			"UK3CB_CHD_O_BMD2", 
			"UK3CB_CHD_O_MTLB_Cannon", 
			"UK3CB_CHD_O_MTLB_BMP", 
			"UK3CB_CHD_O_T72A",
			"UK3CB_CHD_O_Hilux_Spg9", 
			"UK3CB_CHD_O_LR_SPG9", 
			"UK3CB_CHD_O_Pickup_SPG9"
		];
		[Base_1, Base_1, NEKY_Hunt_Trigger_1, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Base_2, Base_2, NEKY_Hunt_Trigger_1, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Base_3, Base_3, NEKY_Hunt_Trigger_1, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;


 		[east,arty_1,getMarkerPos "target",7,300,30] spawn OKS_ArtyFire;
		[east,arty_2,getMarkerPos "target",7,300,30] spawn OKS_ArtyFire;
		[aaa_1,east,false,1500,true] spawn GW_Ambient_AAA;
		[aaa_2,east,false,1500,true] spawn GW_Ambient_AAA;

	};

	case 2: {

		// Pihla
		[[[[3422.38,6203.78,0.397684],78,"Middle",[]],[[3436.45,6192.17,0.406277],327,"Middle",[]],[[3431.89,6183.87,0.60224],329,"Middle",[]],[[3438.71,6189.86,0.535456],169,"Middle",[]],[[3476.39,6214.89,0.487364],267,"Up",[]],[[3468.64,6214.68,0.0528336],89,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3438.9,6241.14,0.0397072],352,"Up",[]],[[3433.28,6238.35,0.0574799],322,"Up",[]],[[3441.74,6237.89,0.116285],181,"Up",[]],[[3470,6238.27,-1.90735e-006],45,"Middle",[]],[[3465.42,6239.07,0],327,"Middle",[]]],[["rhs_bmp2e_msv",[3441.28,6249.54,0],314,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3475.33,6271.7,1.09678],8,"Up",[]],[[3464.54,6284.1,0.0418167],357,"Up",[]],[[3475.06,6300.21,0.256445],224,"Up",[]],[[3445.19,6274.02,0],292,"Up",[]],[[3449.94,6277.24,0],299,"Up",[]],[[3449.76,6294.92,-1.90735e-006],352,"Middle",[]],[[3446.87,6286.84,0],277,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Isomaki
		[[[[4084.21,5720.16,0.476131],285,"Up",[]],[[4074.2,5718.44,0.494175],115,"Up",[]],[[4081.83,5702.03,0.21703],325,"Up",[]],[[4079.62,5740.22,0],266,"Middle",[]],[[4109.73,5734.75,-1.90735e-006],348,"Up",[]],[[4107.75,5721.62,0],132,"Up",[]],[[4104.46,5705.18,0],268,"Middle",[]]],[["rhs_bmp1_msv",[4106.08,5773.43,0],316,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4074.04,5683.43,0.853865],354,"Up",[]],[[4104.02,5653.69,0],4,"Middle",[]],[[4099.04,5661.05,0],318,"Middle",[]],[[4087.24,5637.26,0.162003],287,"Middle",[]]],[["rhs_bmp1_msv",[4099.77,5687.59,0],2,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4102.29,5621,0.523361],264,"Middle",[]],[[4100.52,5625.47,0.392887],191,"Middle",[]],[[4099.69,5631.27,0.17277],342,"Up",[]],[[4097.63,5629.56,0.182261],85,"Middle",[]]],[["rhs_bmp2e_msv",[4089.41,5548.87,0],346,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		_Vehicles = [
			"UK3CB_CHD_O_BMD1", 
			"UK3CB_CHD_O_BMP1", 
			"UK3CB_CHD_O_BMP2", 
			"UK3CB_CHD_O_BMD2", 
			"UK3CB_CHD_O_MTLB_Cannon", 
			"UK3CB_CHD_O_MTLB_BMP", 
			"UK3CB_CHD_O_T72A",
			"UK3CB_CHD_O_Hilux_Spg9", 
			"UK3CB_CHD_O_LR_SPG9", 
			"UK3CB_CHD_O_Pickup_SPG9"
		];
		[Base_4, Base_4, NEKY_Hunt_Trigger_2, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Base_5, Base_5, NEKY_Hunt_Trigger_2, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Base_6, Base_6, NEKY_Hunt_Trigger_2, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;

		[Trigger_3,false,[0,15,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

 		[east,arty_3,getMarkerPos "target",7,300,30] spawn OKS_ArtyFire;
		[east,arty_4,getMarkerPos "target",7,300,30] spawn OKS_ArtyFire;

	};

	case 3: {

		// Nyrhilä
		[[[[5093.12,5218.03,1.07453],274,"Up",[]],[[5092.73,5222.57,0.875527],11,"Up",[]],[[5099.66,5217.6,0.956517],274,"Up",[]],[[5106.39,5218.8,0.862382],333,"Up",[]],[[5101.99,5222.81,0.328668],178,"Up",[]],[[5117.6,5241.5,0],285,"Up",[]],[[5095.63,5224.95,0.447454],284,"Up",[]],[[5088.13,5241.39,0.481912],146,"Up",[]],[[5081.33,5240.41,0.754936],145,"Up",[]]],[["rhs_bmp1_msv",[5063.03,5223.83,0],292,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5143.31,5233.1,9.53674e-007],267,"Up",[]],[[5142.86,5237.97,9.53674e-007],300,"Up",[]],[[5136.07,5198.63,0],286,"Up",[]],[[5174.65,5199.95,0],277,"Up",[]],[[5224.57,5214.73,3.65572],221,"Up",[]],[[5220.72,5250.92,0.810571],220,"Up",[]],[[5220.92,5230.83,0],274,"Middle",[]],[[5213.79,5188.94,0.0641069],48,"Up",[]],[[5210.31,5186.65,0.285172],343,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5233.97,5212.42,0],226,"Up",[]],[[5253.87,5194.84,0.0573797],220,"Up",[]],[[5258.29,5190.53,3.22428],331,"Middle",[]],[[5261.91,5193.07,0.388956],316,"Middle",[]],[[5271.8,5207.64,0.468174],223,"Middle",[]],[[5259.8,5232.94,9.53674e-007],265,"Middle",[]],[[5260.4,5221.72,0],239,"Middle",[]]],[["rhs_bmp1_msv",[5284.67,5205.93,0],220,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5230.01,5180.67,0.663446],39,"Up",[]],[[5237.97,5183.67,0.464965],315,"Middle",[]],[[5272.82,5180.93,0.29217],277,"Up",[]],[[5258.97,5171.77,9.53674e-007],315,"Up",[]],[[5261.05,5148.99,0.129989],46,"Up",[]],[[5258.79,5188.94,0.177734],222,"Up",[]]],[["rhs_bmp2e_msv",[5321.9,5094.42,9.53674e-007],335,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		[Group HVT_1,getPos ExfilSite_1,west,true,nil] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";
		[Group HVT_2,getPos ExfilSite_2,west,true,nil] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";

	};

	case 4: {

		[Trigger_4,false,[0,15,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;	

		// Kaaranmä
		[[[[6013.25,6915.34,0.929601],357,"Up",[]],[[6018.55,6920.2,0.813418],273,"Up",[]],[[6022.62,6910.41,0.916869],357,"Up",[]],[[6013.7,6912.04,0.921261],111,"Up",[]]],[["rhs_bmp2e_msv",[5963.69,6795.11,0],250,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1]]]],["rhs_bmp1_msv",[5987.28,6933.17,-4.76837e-007],270,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[6033.76,6923.15,0.900735],271,"Up",[]],[[6031.87,6917.12,0.772582],266,"Up",[]],[[6029.08,6914.15,0.840415],357,"Up",[]],[[6035.81,6910.68,0.761883],182,"Middle",[]],[[6031.33,6910.42,0.81855],171,"Middle",[]]],[["rhs_bmp1_msv",[6102.22,6779.25,4.76837e-007],359,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[6139.69,6827.31,0.2776],129,"Up",[]],[[6144.32,6822.17,0.2776],129,"Up",[]],[[6142.31,6832.24,0.2776],32,"Up",[]],[[6145.54,6826.21,0.2776],360,"Up",[]],[[6150.07,6820,0.167664],40,"Up",[]],[[6159.2,6817.91,0.167664],342,"Up",[]],[[6165.71,6821.38,0],350,"Middle",[]],[[6164.91,6816.1,0.240463],51,"Up",[]],[[6170.92,6808.99,0.240463],26,"Up",[]]],[["rhs_bmp2e_msv",[6173.24,6867.75,4.76837e-007],299,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[6238.98,6829.98,0.585726],31,"Up",[]],[[6246.4,6834.11,0.644193],227,"Up",[]],[[6237.7,6825.16,2.08721],70,"Up",[]],[[6245.51,6830.5,3.86955],222,"Up",[]],[[6249.53,6834.97,3.84439],241,"Up",[]],[[6246.34,6837.29,3.92313],172,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		_Vehicles = [
			"UK3CB_CHD_O_BMD1", 
			"UK3CB_CHD_O_BMP1", 
			"UK3CB_CHD_O_BMP2", 
			"UK3CB_CHD_O_BMD2", 
			"UK3CB_CHD_O_MTLB_Cannon", 
			"UK3CB_CHD_O_MTLB_BMP", 
			"UK3CB_CHD_O_T72A",
			"UK3CB_CHD_O_Hilux_Spg9", 
			"UK3CB_CHD_O_LR_SPG9", 
			"UK3CB_CHD_O_Pickup_SPG9"
		];
		[Base_7, Base_7, NEKY_Hunt_Trigger_3, 2,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Base_8, Base_8, NEKY_Hunt_Trigger_3, 2,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Base_9, Base_9, NEKY_Hunt_Trigger_3, 2,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;	
	
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
