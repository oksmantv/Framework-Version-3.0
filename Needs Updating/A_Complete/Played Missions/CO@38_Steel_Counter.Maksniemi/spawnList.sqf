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

		[	
			Trigger_1,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				8,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				16,		// Number of Patrolling Infantry
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

		/// Point Alfa
		[[[[5346.64,5178.37,0.160148],53,"Up",[]],[[5332.24,5170.8,1.17386],324,"Up",[]],[[5336.76,5171.66,1.17386],26,"Up",[]],[[5336.63,5166.83,1.17386],149,"Middle",[]],[[5334.16,5168.67,1.17386],354,"Middle",[]],[[5341.54,5164.15,0],48,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5335.03,5181.11,2.053],57,"Middle",[]],[[5337.59,5184.4,2.05479],60,"Up",[]],[[5334.59,5188.7,2.05949],33,"Up",[]],[[5330.14,5187.7,2.053],161,"Middle",[]],[[5338.53,5190.87,0],57,"Up",[]]],[["rhs_bmp2e_vmf",[5331.81,5198.3,0],50,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5319.23,5196.97,0.74586],104,"Up",[]],[[5314.52,5200.46,0.74586],217,"Middle",[]],[[5316.02,5203.94,0.74586],26,"Up",[]],[[5325.54,5207.75,0],26,"Up",[]],[[5311.06,5213.57,0],105,"Middle",[]],[[5311.51,5216.6,1.79626],26,"Middle",[]]],[["UK3CB_TKA_O_DSHkM_Mini_TriPod",[5315.82,5200.9,3.956],42,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		/// Point Beta
		[[[[4980.32,5023.41,-4.4167e-005],357,"Middle",[]],[[4973.71,5013.34,-6.55651e-007],63,"Middle",[]],[[4981.35,5009.45,0],96,"Middle",[]],[[4975.95,5001.4,0.552388],78,"Up",[]],[[4975.85,5008.05,0.552388],199,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4973.22,4987.25,1.84953],212,"Middle",[]],[[4975.23,4980.45,1.84953],255,"Middle",[]]],[["rhs_btr80_vv",[4986.16,4993.81,0.525834],94.1931,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4987.58,4981.06,0],357,"Up",[]],[[4986.34,4970.2,0],104,"Up",[]],[[4968.92,4960.61,0],357,"Middle",[]],[[4969.98,4970.73,0.980391],357,"Middle",[]],[[4966.6,4965.06,0.980391],89,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Patrols
		[[[[5333.27,5130.84,0],0,[]],[[5338.27,5125.84,-5.96046e-008],0,[]],[[5328.27,5125.84,0],0,[]],[[5343.27,5120.84,0],0,[]]],[],[[[5254.1,5075.39,-5.38826e-005],[[0,"Move"]]],[[5258.58,5019.33,1.7072],[[0,"Move"]]],[[5201.18,4994.95,-2.38419e-007],[[0,"Move"]]],[[5160.04,5050.05,0],[[0,"Move"]]],[[5184.2,5121.73,2.19345e-005],[[0,"Move"]]],[[5267.59,5159.2,-4.94719e-006],[[0,"Move"]]],[[5324.15,5135.87,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5080.53,5151.47,-0.500001],251,[]],[[5083.64,5157.82,-0.392374],251,[]],[[5086.88,5148.35,-0.861216],251,[]],[[5086.76,5164.16,-1.32454],251,[]]],[],[[[5138.5,5131.83,0],[[0,"Move"]]],[[5210.19,5116.82,2.68049],[[0,"Move"]]],[[5251.81,5070.37,1.45953],[[0,"Move"]]],[[5212.97,5013.63,0.50513],[[0,"Move"]]],[[5150.85,5028.08,0],[[0,"Move"]]],[[4999.19,5101.2,0],[[0,"Move"]]],[[5078.72,5141.21,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5094.66,5048.3,2.63085],0,[]],[[5099.66,5043.3,2.75607],0,[]],[[5089.66,5043.3,2.63258],0,[]],[[5104.66,5038.3,2.37617],0,[]]],[],[[[5015.49,4992.86,4.03198],[[0,"Move"]]],[[5019.97,4936.79,5.23927],[[0,"Move"]]],[[4962.57,4912.42,5.15764],[[0,"Move"]]],[[4921.42,4967.51,3.70341],[[0,"Move"]]],[[4945.58,5039.19,1.26642],[[0,"Move"]]],[[5028.98,5076.67,2.6581],[[0,"Move"]]],[[5085.54,5053.33,2.63085],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {

			[east,arty_1,getMarkerPos "artyTarget",7,300,30] spawn OKS_ArtyFire; sleep 1.5;
			[east,arty_2,getMarkerPos "artyTarget",7,300,30] spawn OKS_ArtyFire; sleep 1;
			[east,arty_3,getMarkerPos "artyTarget",7,300,30] spawn OKS_ArtyFire; sleep 1.5;
			[east,arty_4,getMarkerPos "artyTarget",7,300,30] spawn OKS_ArtyFire; sleep 1;
			[east,arty_5,getMarkerPos "artyTarget",7,300,30] spawn OKS_ArtyFire; sleep 1.5;
			[east,arty_6,getMarkerPos "artyTarget",7,300,30] spawn OKS_ArtyFire; sleep 1;

			//// START OF ZONE /////
			[	Trigger_2,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					14,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				0,    // Number of Wheeled on Patrol
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

			/// Charlie
			[[[[3785.67,5807.7,0],127,"Up",[]],[[3796.6,5816.11,-2.38419e-007],127,"Up",[]],[[3790.3,5811.78,1.13373],127,"Up",[]],[[3778.66,5814.66,1.16578],127,"Up",[]],[[3782.01,5819.2,1.16578],127,"Up",[]],[[3785.78,5819.88,1.16578],127,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			[[[[3803.65,5832.33,0.880086],127,"Up",[]],[[3783.98,5832.16,2.03491],24,"Up",[]],[[3790.01,5835.02,2.03491],127,"Up",[]],[[3789.35,5827.47,2.03491],127,"Up",[]]],[["rhs_bmp1p_vv",[3804.27,5836.74,0],114,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["9p135_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
			[[[[3810.22,5855.66,-6.67572e-006],207,"Up",[]],[[3811.59,5863.38,1.47481],145,"Up",[]],[[3798.95,5848.87,0.737777],127,"Up",[]],[[3800.63,5852.36,0.737785],127,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

			/// Dog
			[[[[3563.95,5883.07,2.37023],95,"Up",[]],[[3567.15,5887.89,2.37023],95,"Up",[]],[[3562.46,5888.25,2.37389],95,"Up",[]],[[3571.86,5909.5,0],149,"Up",[]],[[3563.91,5921.4,-2.74181e-006],179,"Middle",[]]],[["rhs_bmp2e_vmf",[3572.36,5898.97,0],86,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
			[[[[3563.76,5903.43,0.906157],95,"Up",[]],[[3563.36,5906.73,0.909099],95,"Up",[]],[[3561.62,5911.66,0.92177],95,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			[[[[3581.17,5876.97,1.19209e-007],95,"Up",[]],[[3575.55,5860.1,0],95,"Up",[]],[[3577.86,5865.01,2.38419e-006],95,"Up",[]],[[3565.4,5868.17,1.3941],95,"Up",[]],[[3563.33,5873.39,1.51989],95,"Up",[]],[[3570.1,5872.72,1.49396],95,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
			// Arty Guards
			[[[[3152.6,5972.99,2.26936],136,"Up",[]],[[3154.51,5976.99,1.97191],136,"Up",[]],[[3141.58,5973.7,1.97209],136,"Up",[]],[[3149.23,5982.45,0],72,"Up",[]],[[3174.28,5986.73,0],85,"Middle",[]],[[3170.44,5999.34,0],133,"Up",[]],[[3153.51,6001.12,0],160,"Up",[]]],[["UK3CB_CW_SOV_O_EARLY_T55",[3142.7,5995.92,0],99,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["SOV",1]]]],["UK3CB_AAF_O_SPG9",[3141.36,6013.82,-4.76837e-007],204,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
			[[[[3113.05,5939.13,0.172357],136,"Up",[]],[[3095.99,5937.65,0],249,"Up",[]],[[2985.18,5786.91,3.57628e-007],114,"Up",[]],[[3002.79,5808.82,0],63,"Up",[]],[[3000.23,5804.33,0.368557],114,"Up",[]],[[2990,5793.15,0.856416],84,"Up",[]]],[["rhs_bmp1d_vmf",[3133.22,5934.03,0],113,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_vdv",[3087.48,5731.04,0],110,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_AAF_O_SPG9",[2998.15,5812.07,0],86,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;	
	};

	case 3: {

			//// START OF ZONE /////
			[	Trigger_3,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					22,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				0,    // Number of Wheeled on Patrol
				2,    // Number of APCs on Patrol
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

			[[[[1081.57,2566.51,0],0,[]],[[1086.57,2561.51,0],0,[]],[[1076.57,2561.51,0],0,[]],[[1091.57,2556.51,-1.19209e-007],0,[]]],[],[[[1027.01,2655.71,-2.28882e-005],[[0,"Move"]]],[[901.109,2728.69,-4.76837e-007],[[0,"Move"]]],[[803.985,2586.29,0],[[0,"Move"]]],[[1019.61,2541.64,8.10623e-006],[[0,"Move"]]],[[1069.09,2558.74,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[1151.22,2842.24,0],255,[]],[[1154.72,2848.38,0],255,[]],[[1157.36,2838.74,0],255,[]],[[1158.21,2854.53,0],255,[]]],[],[[[1079.65,2766.01,0],[[0,"Move"]]],[[1042.62,2625.27,0],[[0,"Move"]]],[[1151.11,2653.06,0],[[0,"Move"]]],[[1191.61,2789.08,7.98702e-006],[[0,"Move"]]],[[1162.01,2832.26,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[946.817,2819.42,0],221,[]],[[946.337,2826.48,0],221,[]],[[953.872,2819.9,0],221,[]],[[945.858,2833.53,0],221,[]]],[],[[[929.262,2716.34,0],[[0,"Move"]]],[[976.133,2578.57,0],[[0,"Move"]]],[[1142.94,2622,0],[[0,"Move"]]],[[1009.85,2797.42,7.62939e-006],[[0,"Move"]]],[[961.326,2817.07,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 4: {

			/// Easy
			[[[[1342.91,3806.08,2.05636e-006],15,"Up",[]],[[1343.9,3822.18,1.96695e-006],15,"Up",[]],[[1336.93,3815.38,2.08616e-006],15,"Middle",[]],[[1330.15,3825.42,1.8158],15,"Up",[]],[[1326.05,3823.98,1.88584],15,"Up",[]],[[1335.24,3843.94,2.02656e-006],15,"Up",[]]],[["rhs_bmp2_msv",[1332.61,3840.08,0],72,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
			[[[[1326.79,3855.06,2.08616e-006],15,"Up",[]],[[1319.23,3846.29,0.915469],15,"Up",[]],[[1318.84,3842.52,0.915469],318,"Up",[]],[[1315.32,3865.03,2.02656e-006],167,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

			//// Foxtrot
			[[[[899.784,3291.79,0],339,"Up",[]],[[910.887,3273.08,0],318,"Up",[]],[[900.375,3274.62,1.06829],339,"Up",[]],[[897.858,3271.27,0.681204],339,"Up",[]],[[886.106,3282.48,2.19421],339,"Up",[]],[[885.392,3279.58,2.01129],339,"Up",[]],[[882.816,3289.7,0],339,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			[[[[875.921,3298.94,1.04927],339,"Up",[]],[[872.647,3298.78,0.591987],279,"Up",[]]],[["rhs_bmp2_msv",[887.304,3296.96,-2.38419e-007],42,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

			//// START OF ZONE /////
			[	Trigger_4,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					18,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				4,    // Number of Wheeled on Patrol
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

			[[[[1067.6,2538.69,0],58,"Up",[]],[[1047.07,2547.11,0],354,"Up",[]],[[1055.45,2547,0.206637],274,"Up",[]],[[1066.48,2549.78,2.91636],40,"Up",[]],[[1025.25,2587.63,0.620318],35,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			[[[[1054.4,2635.46,0.573721],334,"Up",[]],[[1059.45,2636.75,0.356831],58,"Up",[]],[[1110.61,2646.43,0.80839],11,"Up",[]],[[1105.25,2647.24,0.711103],300,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			[[[[1091,2661.37,0],317,"Up",[]],[[1094.39,2667.94,0.682],337,"Up",[]],[[1134.82,2689.61,0.620055],24,"Up",[]],[[1137.68,2685.39,0],14,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 5: {
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
