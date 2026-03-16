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

		/// Arty Guards 1
		[[[[10204.5,3441.56,-0.000102043],23,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10210.7,3425.44,0],152,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10219.8,3403.61,-0.000102043],25,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10223.4,3395.25,-0.000102043],152,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Arty Guards 2
		[[[[9657.76,3076.07,-2.38419e-007],1,[]]],[],[[[9688.54,3065.61,-1.93119e-005],[[0,"Move"],[1,"SAFE"]]],[[9706.37,3088.98,-4.76837e-007],[[0,"Move"]]],[[9708.4,3110.9,-4.19617e-005],[[0,"Move"]]],[[9690.7,3110.35,0],[[0,"Move"]]],[[9657.62,3095.88,3.24249e-005],[[0,"Move"]]],[[9654.16,3081.31,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9707.21,3069.8,0],249,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9685.01,3092.18,0],15,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9713.79,3080.91,0],76,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9675,3084.39,0],325,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// AA 1
		[[[[9642.3,3294.73,-9.53674e-005],211,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9640.51,3326.91,-9.53674e-005],324,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9666.8,3311.22,-9.53674e-005],48,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Strongpoint 1 Guard.
		[[],[["rhsgref_cdf_b_bmd2",[9855.93,4355.64,0],308,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CDF",1]],[7,["9p135_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"wood_2_unhide",1,"antena2_hide",1]]]],["rhsgref_cdf_b_bmd2",[9771.93,4158.43,0],204,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CDF",1]],[7,["9p135_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"wood_2_unhide",1,"antena2_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[9987.58,4195.06,-3.8147e-006],116,"Up",[]],[[9977.54,4181.48,2.80989],195,"Up",[]],[[9886.66,4414.08,2.82867],116,"Up",[]],[[9865.77,4414.65,2.81225],232,"Up",[]],[[9881.09,4411.51,-2.86102e-006],185,"Up",[]],[[9795.59,4421.42,1.00275],164,"Up",[]],[[9722.23,4107.7,2.67752],141,"Up",[]],[[9705.44,4120.1,2.78],57,"Up",[]],[[9714.81,4107.12,-2.86102e-006],218,"Up",[]],[[9725.12,4140,0.814018],102,"Up",[]],[[9939.41,4150.98,1.46135],86,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// HQ Raid 1
		[[[[10478.7,4428.31,1.38319],347,"Up",[]],[[10478.7,4425.29,3.87882],173,"Up",[]],[[10482.5,4432.88,3.90803],117,"Up",[]],[[10476.2,4438.57,1.5036],158,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

			//// START OF ZONE /////
			[	Trigger_4,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					30,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				west, // Side of Enemy
				0,    // Number of Wheeled on Patrol
				1,    // Number of APCs on Patrol
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

			//// START OF ZONE /////
			[	Trigger_5,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					30,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				west, // Side of Enemy
				0,    // Number of Wheeled on Patrol
				1,    // Number of APCs on Patrol
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

			//// START OF ZONE /////
			[	Trigger_6,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					50,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				west, // Side of Enemy
				2,    // Number of Wheeled on Patrol
				1,    // Number of APCs on Patrol
				1,    // Number of Tanks on Patrol
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

		/// AA 2 Guard.
		[[[[9033.29,4985.69,4.87566e-005],221,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9058.47,5003.24,4.88162e-005],19,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9066.29,4970.46,4.88162e-005],157,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// AA 3 Guard.
		[[[[8048.09,6046.42,-7.45058e-006],136,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8048.09,6046.42,-7.45058e-006],136,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8015.63,6051.3,-7.45058e-006],136,[]]],[],[[[8026.02,6077.71,0],[[0,"Move"],[1,"SAFE"]]],[[8069.75,6068.68,-4.76837e-007],[[0,"Move"]]],[[8018.53,6048.37,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;		

		/// Strongpoint 2 & 3 Guard.
		[[],[["rhsgref_cdf_b_bmd2",[10304.6,5538.06,0],172,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CDF",1]],[7,["9p135_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"wood_2_unhide",1,"antena2_hide",1]]]],["rhsgref_cdf_b_bmd2",[10729.6,5832.81,0],28,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CDF",1]],[7,["9p135_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"wood_2_unhide",1,"antena2_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10353.9,5354.92,0],177,"Up",[]],[[10336.9,5356.54,2.73591],234,"Up",[]],[[10278.4,5377.02,1.47271],162,"Up",[]],[[10371.3,5575.09,0.918207],85,"Up",[]],[[10859.3,5650.26,2.78],177,"Up",[]],[[10826,5662.55,2.78243],177,"Up",[]],[[10812.1,5695.98,0.934507],177,"Up",[]],[[10699.4,5872.31,0],286,"Up",[]],[[10699.6,5853.12,0],208,"Up",[]],[[10892.2,5968.19,1.15161],52,"Up",[]],[[10083.4,5575.97,0],177,"Up",[]],[[10111.1,5609.95,2.76792],177,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		/// Strongpoint 4 Guard.
		[[],[["rhsgref_cdf_b_bmd2",[9689.3,6537.57,0],309,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CDF",1]],[7,["9p135_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"wood_2_unhide",1,"antena2_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[9828.58,6174.28,0],0,[]],[[9833.58,6169.28,0],0,[]],[[9823.58,6169.28,0],0,[]],[[9838.58,6164.28,-4.76837e-007],0,[]],[[9840.74,6161.18,0],0,[]],[[9830.74,6161.18,-4.76837e-007],0,[]]],[],[[[9667.18,6118.39,0],[[0,"Move"]]],[[9451.14,6178.05,4.76837e-007],[[0,"Move"]]],[[9422.88,6353.27,0],[[0,"Move"]]],[[9439.84,6178.05,0],[[0,"Move"]]],[[9653.36,6112.11,0],[[0,"Move"]]],[[9838,6154.19,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9451.97,6448.95,0],170,[]],[[9446.19,6453.02,0],170,[]],[[9456.04,6454.74,0],170,[]],[[9440.4,6457.08,0],170,[]],[[9437.74,6459.77,0],170,[]],[[9447.59,6461.49,0],170,[]]],[],[[[9583.63,6559.82,4.76837e-007],[[0,"Move"]]],[[9824.44,6510.14,0],[[0,"Move"]]],[[9890.25,6261.7,1.19209e-007],[[0,"Move"]]],[[9835.57,6512.08,0],[[0,"Move"]]],[[9596.16,6568.38,2.38419e-007],[[0,"Move"]]],[[9439.23,6467.13,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9443.57,6377.27,-0.00012207],196,"Up",[]],[[9439.28,6381.71,2.60557],196,"Up",[]],[[9442.63,6401.21,2.80734],0,"Up",[]],[[9446.1,6397.53,-0.00012207],65,"Up",[]],[[9648.08,6593.71,2.75557],359,"Up",[]],[[9640.83,6590.33,-0.00012207],286,"Up",[]],[[9726.79,6598.81,2.78493],4,"Up",[]],[[9734.1,6596.28,-0.000121593],38,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		/// HuntTrigger 2
		[Object_4, Spawn_4, HuntTrigger_2, 2,900,west,6,45] spawn NEKY_Hunt_HuntBase;
		[Object_5, Spawn_5, HuntTrigger_2, 2,900,west,6,45] spawn NEKY_Hunt_HuntBase;
		[Object_6, Spawn_6, HuntTrigger_2, 2,900,west,6,45] spawn NEKY_Hunt_HuntBase;
		[Object_7, Spawn_7, HuntTrigger_2, 2,900,west,6,45] spawn NEKY_Hunt_HuntBase;		

	};

	case 3: {
		/// HuntTrigger 3
		[Object_8, Spawn_4, HuntTrigger_3, 2,900,west,6,45] spawn NEKY_Hunt_HuntBase;
		[Object_9, Spawn_5, HuntTrigger_3, 2,900,west,6,45] spawn NEKY_Hunt_HuntBase;
		[Object_10, Spawn_10, HuntTrigger_3, 2,900,west,6,45] spawn NEKY_Hunt_HuntBase;		

		/// Arty 3
		[west,arty_6,targetArty,20,300,60] spawn OKS_ArtyFire;
		[west,arty_7,targetArty,20,300,60] spawn OKS_ArtyFire;

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
