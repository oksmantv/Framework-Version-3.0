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

		[	Trigger_1,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				8,		// Number of Patrolling Infantry
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

		/* First Defences Houses */
		//[[[[2250.29,284.103,1.90735e-006],263,"Up",[]],[[2252.24,287.528,1.90735e-006],263,"Middle",[]],[[2254.2,291.483,0],263,"Middle",[]],[[2260.15,297.565,1.90735e-006],118,"Middle",[]],[[2267.58,279.495,1.90735e-006],263,"Middle",[]],[[2279.22,284.584,1.90735e-006],263,"Middle",[]],[[2274.08,275.268,2.98182],106,"Middle",[]],[[2271.15,272.977,2.98835],17,"Up",[]],[[2278.69,279.163,0.00143909],90,"Middle",[]],[[2159.21,383.226,1.90735e-006],150,"Middle",[]],[[2156.72,387.635,2.38419e-006],30,"Middle",[]],[[2167.6,408.957,0],263,"Up",[]],[[2166.81,445.881,2.86102e-006],321,"Middle",[]],[[2159.93,456.724,2.86102e-006],299,"Middle",[]],[[2150.72,463.239,2.86102e-006],299,"Middle",[]],[[2161.12,473.972,0.10181],337,"Middle",[]],[[2179.09,451.677,0.169401],298,"Middle",[]]],[["UK3CB_CW_SOV_O_EARLY_UAZ_SPG9",[2170.92,406.204,0.5],272,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_CW_SOV_O_EARLY_UAZ_SPG9",[2164.19,453.952,1],251,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		
		/* Second Defence Across River */
		//[[],[["rhs_btr80a_vdv",[2326.49,381.543,0.446769],286,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]],["rhs_btr70_vdv",[2341.27,398.038,0.341485],276,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		//[[[[2473.56,582.323,0],32,"Middle",[]],[[2470.88,574.528,-4.76837e-007],307,"Middle",[]],[[2481.97,595.991,-4.76837e-007],212,"Middle",[]],[[2501.06,577.838,0],197,"Middle",[]],[[2502.95,571.46,-4.76837e-007],339,"Middle",[]],[[2515.75,563.341,0],327,"Middle",[]],[[2525.3,554.702,0],256,"Middle",[]],[[2526.57,551.766,0],256,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/* Second Row Static Vehicles */
		//[[],[["rhs_btr80_vdv",[2515.07,361.286,0],333,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]],["UK3CB_KDF_O_BTR80a",[2578.8,474.422,0],289,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		/* Village Defence Hipinmäki */
		[[[[2827.91,877.843,-9.53674e-007],304,"Up",[]],[[2826.38,875.143,0],274,"Up",[]],[[2839.5,914.104,4.7267],334,"Up",[]],[[2837.64,912.488,4.68266],314,"Up",[]],[[2867.92,870.897,1.90735e-006],244,"Up",[]],[[2872.39,875.274,0],289,"Up",[]]],[["rhs_bmp1_vdv",[2824.41,864.429,0],281,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2860.58,766.095,-9.53674e-006],233,"Middle",[]],[[2873.94,754.787,-1.90735e-006],198,"Up",[]],[[2870.95,756.059,0],205,"Up",[]],[[2862.36,763.506,-1.90735e-006],205,"Up",[]],[[2884.45,796.258,0.61261],305,"Up",[]],[[2879.18,804.352,0.699272],38,"Up",[]]],[["rhs_bmp1_vdv",[2846.01,796.238,1],231,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		//[[[[2880.23,854.224,0.57184],230,"Up",[]],[[2944.55,847.761,0],315,"Up",[]],[[2955.7,865.676,0.543385],240,"Up",[]]],[["rhs_btr70_vdv",[2925.48,817.248,0],276,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]],["rhs_bmp1_vdv",[2894.66,851.996,1],319,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		//[[[[2844.7,909.923,1.0104],137,"Up",[]],[[2838.88,906.504,0.848949],94,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Static BMPs
		[[],[["rhs_bmp1_msv",[3308.4,583.932,0],308,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["rhs_bmp1_msv",[3526.56,668.513,0],328,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// MSR Tank Patrol
		//[[],[["UK3CB_KDF_O_T55",[2972.71,102.229,0],25,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["OLI",1]]]]],[[[3251.11,551.907,0],[[0,"Move"],[1,"SAFE"]]],[[3886.52,1153.69,-2.86102e-006],[[0,"Move"]]],[[3245.34,557.635,0],[[0,"Move"]]],[[2968.4,106.382,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		/* Arty Objectives */
		[Arty_1,"artillery",200,EAST,false] spawn OKS_CreateObjectives;
		[Arty_2,"artillery",200,EAST,false] spawn OKS_CreateObjectives;
		//[Arty_3,"artillery",200,EAST,false] spawn OKS_CreateObjectives;

		[antiair_1,"antiair",200,EAST,false] spawn OKS_CreateObjectives;
		//[antiair_2,"antiair",200,EAST,false] spawn OKS_CreateObjectives;

		[east,"rhs_ka60_grey",patrol_1,1000,[2,1],2000,getPos egress,true,false] execVM "Scripts\NEKY_AirDrop\OKS_Helicopter_Patrol.sqf";
		[east,"RHS_Mi8AMT_vdv",patrol_2,1000,[2,0.5],2000,getPos egress,true,true] execVM "Scripts\NEKY_AirDrop\OKS_Helicopter_Patrol.sqf";

	};

	case 2: {

		[ [3380.13,895.46,0], 4, east, 1000,[]] spawn OKS_Rush_SpawnGroup;
		[ [3181.33,545.549,0], 4, east, 1000,[]] spawn OKS_Rush_SpawnGroup;
		[ [3111.1,1354.09,0], 4, east, 1000,[]] spawn OKS_Rush_SpawnGroup;

		[vehicleHunt_1,nil,"UK3CB_KDF_O_T55",east,2500] spawn OKS_Hunt_SpawnGroup;
		[vehicleHunt_2,nil,"rhs_btr80a_vdv",east,2500] spawn OKS_Hunt_SpawnGroup;
		
	};

	case 3: {

		/* Railroad */
		[[[[3278.52,954.878,3.07202],299,"Up",[]],[[3274.03,947.236,3.01335],299,"Up",[]],[[3277.13,940.615,0.0750332],289,"Up",[]],[[3271.53,941.472,2.92902],299,"Up",[]],[[3272.04,937.555,3.28767],255,"Up",[]]],[["rhs_bmp1_msv",[3164.75,1001.32,0],271,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3360.32,908,1.02543],271,"Middle",[]],[[3361.16,909.291,0.958942],284,"Middle",[]],[[3367.02,907.221,-1.90735e-006],45,"Middle",[]],[[3365.43,904.403,0],222,"Middle",[]],[[3377.25,929.275,0],250,"Up",[]],[[3377.9,933.538,0],269,"Up",[]],[[3378.12,936.124,0],330,"Up",[]],[[3386.83,932.739,0],266,"Up",[]]],[["UK3CB_CW_SOV_O_LATE_BTR80a",[3313.96,902.198,0],298,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]]]],["UK3CB_KDF_O_T55",[3354.45,1031.95,0],210,[["driver",-1,[]],["gunner",-1,[0]],["commader",-1,[0,0]]],[[6,["OLI",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		/* Past Railroad */
		//[[[[3838.62,862.176,0],295,"Up",[]],[[3857.17,834.207,-1.90735e-006],291,"Up",[]]],[["UK3CB_KDF_O_UAZ_SPG9",[3862.68,814.475,1],286,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["OLI",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_KDF_O_UAZ_SPG9",[3851.6,927.791,9.53674e-007],270,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["OLI",1]],[7,["light_hide",0,"spare_hide",0]]]],["rhs_bmp1_tv",[3863.66,905.57,0],273,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		//[[[[3861.7,872.331,3.8147e-006],264,"Middle",[]],[[3868.2,879.146,3.8147e-006],351,"Middle",[]],[[3873.79,879.515,0.228662],230,"Up",[]],[[3890.98,874.241,0.284702],256,"Up",[]],[[3891.9,866.644,0.295532],347,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/* Artillery Objectives */
		[[[[4264.64,928.024,0.762234],332,"Up",[]],[[4263.95,925.831,0.729538],282,"Up",[]],[[4234.46,942.009,-1.90735e-006],252,"Up",[]],[[4234.39,926.366,0.787235],29,"Up",[]],[[4229.23,926.525,0.786505],56,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4311.08,852.348,0.352949],299,"Up",[]],[[4304.9,850.122,0.314211],29,"Up",[]],[[4297.2,845.135,2.71518],62,"Up",[]],[[4297.36,843.772,0.172209],80,"Up",[]],[[4309.62,824.177,0.749308],29,"Up",[]],[[4307.11,830.765,0.772011],29,"Up",[]],[[4319.93,820.243,0.522802],79,"Middle",[]],[[4316.63,811.301,0.21199],66,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		//[[[[4402.44,821.417,0.291155],138,"Middle",[]],[[4399.59,819.93,0.278793],310,"Up",[]],[[4401.42,816.488,0.251701],239,"Up",[]],[[4411.14,815.79,0.292774],28,"Up",[]],[[4404.86,811.631,0.348948],44,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		/* Artillery Static Vehicles */
		[[],[["rhs_bmp1_msv",[4448.26,913.917,-3.8147e-006],290,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["rhs_btr80a_vdv",[4337.68,845.521,0],339,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	

				//// START OF ZONE /////
			[	Trigger_2,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					12,		// Number of Patrolling Infantry
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
		//[antiair_3,"antiair",200,EAST,false] spawn OKS_CreateObjectives;
	
	};

	case 4: {
		//// START OF ZONE /////
		[	Trigger_3,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				16,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				12,		// Number of Patrolling Infantry
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
				2,    // Number of Random Objectives - Preferred Game Logic Location 'Camp'"
				true // Should have dedicated patrols around it
			],
			[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Preferred Game Logic Location 'Respawn Point'"
			,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
		] spawn OKS_CreateZone;
		//// END OF ZONE ////

		[antiair_4,"antiair",200,EAST,false] spawn OKS_CreateObjectives;
		[east,"rhs_ka60_grey",patrol_3,1000,[2,1],2000,getPos egress,true,false] execVM "Scripts\NEKY_AirDrop\OKS_Helicopter_Patrol.sqf";
		[east,"RHS_Mi8AMT_vdv",patrol_4,1000,[2,0.5],2000,getPos egress,true,true] execVM "Scripts\NEKY_AirDrop\OKS_Helicopter_Patrol.sqf";
	};

	case 5: {
		/// Forts Ahead of Airfield
		[[[[5532.46,1145.28,1.14441e-005],192,"Up",[]],[[5526.03,1140.46,0.00788879],192,"Up",[]],[[5573.02,1092.23,0],268,"Middle",[]],[[5573.75,1088.49,1.90735e-005],270,"Up",[]]],[["rhs_bmp2e_msv",[5528.83,1143.41,0.138763],200,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0]]]],["rhs_btr80a_msv",[5577.05,1091.74,0.358044],258,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5542.15,1024.46,0.0120316],282,"Up",[]],[[5549.51,1024.75,0],350,"Middle",[]],[[5543.91,1025.74,0.100418],51,"Middle",[]],[[5542.42,1025.47,1.90735e-005],303,"Up",[]],[[5541.83,1022.71,0.00577545],271,"Up",[]],[[5620.89,989.52,0],300,"Middle",[]],[[5609.7,999.545,0.0114326],97,"Up",[]],[[5613.81,998.993,0],96,"Middle",[]],[[5609.12,988.814,0],301,"Up",[]],[[5608.79,993.38,0],301,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		//[[[[5706.57,1063.83,3.8147e-006],279,"Up",[]],[[5711.78,1061.79,-1.52588e-005],59,"Middle",[]],[[5800.53,1130.41,7.62939e-006],277,"Middle",[]],[[5799.61,1115.39,3.8147e-006],228,"Middle",[]],[[5798.22,1117.37,-7.62939e-006],244,"Up",[]],[[5796.61,1120.64,0.889145],244,"Middle",[]],[[5794.31,1125.34,1.61415],244,"Middle",[]],[[5794.6,1126.77,1.59141],301,"Middle",[]],[[5806.48,1133.66,1.52588e-005],275,"Middle",[]],[[5795.74,1126.02,0],106,"Middle",[]],[[5798.2,1024.81,-1.52588e-005],339,"Middle",[]],[[5794.81,1019.06,-1.52588e-005],339,"Up",[]],[[5791.67,1013.87,-3.8147e-006],339,"Up",[]],[[5786.44,1003.06,0.380062],339,"Up",[]],[[5799.54,1005.99,0.0358734],339,"Middle",[]],[[5801.8,1010.57,1.90735e-005],223,"Middle",[]]],[["UK3CB_KDF_O_UAZ_SPG9",[5709.29,1065.46,0],283,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["OLI",1]],[7,["light_hide",0,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		//// START OF ZONE /////
		[	Trigger_4,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				14,		// Number of Patrolling Infantry
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

		/// Airfield
		[antiair_5,"antiair",200,EAST,false] spawn OKS_CreateObjectives;
		//[antiair_6,"antiair",200,EAST,false] spawn OKS_CreateObjectives;
		//[antiair_7,"antiair",200,EAST,false] spawn OKS_CreateObjectives;

	};

	case 6: {

		// Convoy Counter North
		[convoystart,convoywp,convoyend,east,[4,["UK3CB_CCM_O_Pickup_DSHKM", "UK3CB_CCM_O_V3S_Open", "UK3CB_CCM_O_V3S_Closed", "UK3CB_CCM_O_V3S_Open"],6,25],[true,6]] spawn OKS_Convoy_Spawn;

	};

	case 7: {

		[[[[6579.31,1168,13.0552],227,"Up",[]],[[6579.58,1175.21,13.0552],256,"Up",[]],[[6582.06,1170.51,17.7068],227,"Middle",[]],[[6586.58,1170.01,13.0552],162,"Up",[]],[[6601.99,1127.21,6.49216],227,"Up",[]],[[6641.28,1109.91,6.47319],227,"Up",[]],[[6611.67,1109.86,6.49216],227,"Up",[]],[[6615.3,1109.9,3.09216],227,"Up",[]],[[6597.86,1142.2,2.86216],174,"Up",[]],[[6648.16,1123.81,3.8147e-006],256,"Up",[]],[[6679.47,1140.24,0.11256],346,"Up",[]],[[6674.46,1144.78,0.112556],54,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		//[[[[6721.42,1145.3,0.143692],216,"Up",[]],[[6731.16,1195.97,4.56978],216,"Up",[]],[[6729.43,1198.12,4.55602],247,"Up",[]],[[6588.38,1102,0.549496],263,"Up",[]],[[6625.05,1102.19,0.558224],266,"Up",[]],[[6652.01,1098.63,0],26,"Up",[]],[[6669.9,1117.02,0.106476],107,"Up",[]],[[6662.61,1114.09,0.106476],350,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 8: {
	};

	case 9: {
	};

	case 10: {
	};

	case 11: {
	};

	case 12: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
