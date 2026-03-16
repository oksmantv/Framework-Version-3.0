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

		/// Ambush Static
		[[[[3368.41,389.937,-1.19209e-007],161,"Up",[]],[[3382.85,383.822,0],149,"Up",[]],[[3393.28,375.052,0],160,"Up",[]],[[3403.91,363.753,-2.38419e-007],157,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3497.25,51.0952,2.38419e-007],332,"Up",[]],[[3482.68,40.4745,0],332,"Up",[]],[[3509.29,60.8354,-2.38419e-007],332,"Up",[]],[[3520,60.8751,0],332,"Up",[]],[[3513.32,72.1957,0],332,"Up",[]]],[["UK3CB_ADA_O_LR_SPG9",[3486.94,41.9858,7.15256e-007],344,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Ambush Attackers
		_Group = [[[[3667.91,105.626,0],272,[]],[[3673.07,110.455,0],272,[]],[[3672.74,100.46,0],272,[]],[[3678.24,115.283,0],272,[]]],[],[[[3290.25,156.352,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[_Group,500] remoteExec ["lambs_wp_fnc_taskRush",0];
		sleep 2;
		_Group = [[[[3421.22,581.966,0],216,[]],[[3420.15,588.956,9.53674e-007],216,[]],[[3428.21,583.036,9.53674e-007],216,[]],[[3419.08,595.946,0],216,[]]],[],[[[3280.92,336.819,4.76837e-007],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[_Group,500] remoteExec ["lambs_wp_fnc_taskRush",0];
		sleep 2;
		_Group = [[[[3490.43,532.161,0],216,[]],[[3489.36,539.151,9.53674e-007],216,[]],[[3497.42,533.231,0],216,[]],[[3488.29,546.141,0],216,[]]],[],[[[3293.47,274.438,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[_Group,500] remoteExec ["lambs_wp_fnc_taskRush",0];
		sleep 2;
		_Group = [[[[3540.31,448.945,0],230,[]],[[3540.92,455.99,1.90735e-006],230,[]],[[3547.35,448.34,9.53674e-007],230,[]],[[3541.52,463.036,0],230,[]]],[],[[[3301.56,245.578,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[_Group,500] remoteExec ["lambs_wp_fnc_taskRush",0];

		// Ambush Vehicle Attackers
		[[],[["UK3CB_ADA_O_LR_SPG9",[3760.97,480.193,0],183,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[[[3492.27,287.057,-2.3365e-005],[[0,"Move"]]],[[3333.78,229.623,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 120;
		[[],[["UK3CB_ADA_O_LR_SPG9",[3761.2,505.09,0],184,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[[[3492.27,287.057,-2.3365e-005],[[0,"Move"]]],[[3333.78,229.623,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	
	
		//// START OF ZONE /////
		[	Trigger_1,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				15,		// Number of Patrolling Infantry
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
			,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
		] spawn OKS_CreateZone;
		//// END OF ZONE ////
	
	};

	case 2: {

		/// First Town
		[[[[3793.79,581.921,0.675335],277,"Up",[]],[[3790.38,576.28,0.69733],32,"Up",[]],[[3788.32,579.873,0.634316],25,"Up",[]],[[3792.38,583.667,3.98752],225,"Up",[]],[[3788.22,582.396,3.93975],294,"Up",[]],[[3786.81,583.268,3.90435],223,"Up",[]],[[3788.51,585.313,0.348348],245,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3714.5,621.992,0.672759],292,"Up",[]],[[3717.66,623.291,0.685737],173,"Up",[]],[[3721.71,626.225,0.681619],171,"Up",[]],[[3726.04,629.427,0.659625],143,"Up",[]],[[3717.01,629.925,0.651425],197,"Up",[]],[[3723.76,633.48,0.686142],191,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3733.78,674.03,0.36699],164,"Up",[]],[[3739.06,676.21,0.120614],160,"Up",[]],[[3734.28,677.701,0.218019],156,"Middle",[]],[[3731.08,676.958,0.348151],118,"Middle",[]],[[3740.51,680.413,0],226,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3799.66,720.721,0.834654],183,"Up",[]],[[3792.76,721.366,1.09298],185,"Up",[]],[[3803.02,720.649,0.823501],189,"Up",[]],[[3801.55,726.271,0.591065],246,"Middle",[]],[[3807.38,725.726,0.628165],242,"Middle",[]],[[3807.68,721.737,0.804736],189,"Up",[]],[[3792.58,727.159,0.592716],196,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		//// START OF ZONE /////
		[	Trigger_2,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				15,		// Number of Patrolling Infantry
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
			,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
		] spawn OKS_CreateZone;
		//// END OF ZONE ////	

		[HuntBase_1, HuntSpawn_1, NEKY_Hunt_Trigger_1, 4,1400,east,6,300] spawn NEKY_Hunt_HuntBase;
		[HuntBase_2, HuntSpawn_2, NEKY_Hunt_Trigger_1, 4,1600,east,6,300] spawn NEKY_Hunt_HuntBase;
		[HuntBase_3, HuntSpawn_3, NEKY_Hunt_Trigger_1, 4,1800,east,6,300] spawn NEKY_Hunt_HuntBase;
		[HuntBase_4, HuntSpawn_4, NEKY_Hunt_Trigger_1, 4,2200,east,6,300] spawn NEKY_Hunt_HuntBase;
	
	};

	case 3: {

		/// Second Town
		[[[[4072.93,630.038,0.680716],298,"Up",[]],[[4072.06,626.447,0.699762],302,"Up",[]],[[4066.48,627.478,0.584061],60,"Up",[]],[[4066.17,631.854,3.84335],289,"Up",[]],[[4067.16,626.211,3.97357],61,"Up",[]],[[4067.5,622.761,4.09332],277,"Up",[]],[[4068.26,620.222,4.33877],252,"Up",[]],[[4071.82,630.01,4.02385],211,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4115.4,652.913,0.544487],278,"Up",[]],[[4118.22,646.453,1.02778],277,"Up",[]],[[4117.4,649.14,4.07667],277,"Up",[]],[[4118.3,654.128,4.03319],277,"Up",[]],[[4121.03,655.708,3.99962],277,"Up",[]],[[4126.51,650.543,4.03683],165,"Up",[]],[[4122.64,651.824,4.03695],323,"Up",[]],[[4120.44,651.655,0.687052],201,"Up",[]],[[4124.13,650.02,0.6919],329,"Up",[]],[[4120.81,655.673,0.640018],160,"Middle",[]],[[4126.7,656.451,3.89835],277,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4201.65,706.481,0.301792],128,"Up",[]],[[4197.74,704.569,0.315105],128,"Up",[]],[[4194.13,703.71,0.349953],239,"Up",[]],[[4192.52,707.078,0.372362],114,"Middle",[]],[[4201.11,710.396,0.299891],199,"Middle",[]],[[4229.94,715.227,0],194,"Up",[]],[[4193.75,697.144,0],74,"Up",[]],[[4196.55,720.867,0],114,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4195.93,785.333,0],150,"Up",[]],[[4186.69,783.327,0],198,"Up",[]],[[4193.67,790.915,0],175,"Up",[]],[[4189.47,790.161,0.115561],194,"Middle",[]],[[4190.97,787.11,0.135788],194,"Up",[]],[[4184.77,786.554,0.291897],194,"Up",[]],[[4187.45,790.091,0.188379],184,"Middle",[]],[[4183.01,789.721,0.40773],119,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		//// Roadblock
		[[[[4114.73,1139.28,-1.90735e-006],203,"Up",[]],[[4121.75,1139.59,0.525803],203,"Up",[]],[[4126.82,1158.49,-3.8147e-006],203,"Up",[]],[[4123.99,1162.65,0.439381],203,"Up",[]],[[4124.85,1165.69,0.270819],283,"Up",[]],[[4105.41,1169.79,-1.90735e-006],109,"Up",[]],[[4102.11,1158.62,0.738937],142,"Up",[]],[[4113.84,1184.74,1.90735e-006],141,"Up",[]],[[4118.55,1206.57,0.396868],104,"Up",[]],[[4114.71,1203.21,0.718876],255,"Up",[]],[[4122.77,1211.29,-1.90735e-006],180,"Middle",[]],[[4128.62,1182.6,-1.90735e-006],273,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
				//// START OF ZONE /////
		[	Trigger_3,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				15,		// Number of Patrolling Infantry
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
			,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
		] spawn OKS_CreateZone;
		//// END OF ZONE ////

		[HuntBase_5, HuntSpawn_5, NEKY_Hunt_Trigger_2, 4,1500,east,6,300] spawn NEKY_Hunt_HuntBase;
		[HuntBase_6, HuntSpawn_6, NEKY_Hunt_Trigger_2, 4,1700,east,6,300] spawn NEKY_Hunt_HuntBase;
		[HuntBase_7, HuntSpawn_7, NEKY_Hunt_Trigger_2, 4,1400,east,6,300] spawn NEKY_Hunt_HuntBase;

	};

	case 4: {

	

		/// Pre Last Objective
		[[[[4184.33,1393.01,0.351984],173,"Middle",[]],[[4188.44,1395.5,0.10523],194,"Up",[]],[[4184.25,1401.9,-1.90735e-006],51,"Up",[]],[[4178.5,1410.15,0],229,"Up",[]],[[4167.3,1428.61,1.90735e-006],159,"Up",[]],[[4152.42,1414.27,1.90735e-006],133,"Up",[]],[[4144.08,1441.9,0],193,"Up",[]],[[4156.79,1434.79,1.90735e-006],41,"Up",[]],[[4162.95,1442.11,-1.90735e-006],44,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		/// Hondo Outpost
		[[[[4321.58,1778.32,0.533318],215,"Up",[]],[[4322.62,1777.16,0.52721],215,"Up",[]],[[4327.86,1775.24,0.361904],215,"Up",[]],[[4337.19,1773.72,0.55101],215,"Up",[]],[[4347.49,1780.44,3.8147e-006],215,"Up",[]],[[4343.28,1785.79,0],171,"Middle",[]],[[4336.19,1789.1,-3.8147e-006],91,"Up",[]],[[4344.51,1788.14,0.309898],157,"Up",[]],[[4311.92,1783.41,1.0222],232,"Up",[]],[[4314.81,1780.99,0.873657],194,"Up",[]],[[4318.01,1800.88,0.402672],178,"Up",[]],[[4315.74,1807.34,0.750759],95,"Up",[]]],[["UK3CB_ADR_O_Pickup_DSHKM",[4340.53,1766.34,0],200,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]]]],["UK3CB_AAF_O_SPG9",[4315.66,1783.21,2.68675],193,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4348.16,1793.14,0.199059],45,"Up",[]],[[4344.08,1793.94,0.218269],215,"Middle",[]],[[4332.14,1806.63,0.515701],167,"Up",[]],[[4334.56,1813.44,0.551453],129,"Up",[]],[[4349.96,1800.76,3.8147e-006],319,"Up",[]],[[4360.18,1816.1,0],218,"Up",[]],[[4352.62,1826.2,0],215,"Up",[]],[[4344.1,1834.49,0.362698],159,"Up",[]],[[4339.58,1835.36,0.591831],291,"Up",[]],[[4344.23,1841.91,0.204727],146,"Up",[]]],[["UK3CB_AAF_O_SPG9",[4345.74,1815.2,8.10814],180,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		//// START OF ZONE /////
		[	Trigger_1,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				15,		// Number of Patrolling Infantry
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
			,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
		] spawn OKS_CreateZone;
		//// END OF ZONE ////

	};

	case 5: {

		/// Hondo Counter-Attack
		[[],[["UK3CB_ADR_O_LR_SPG9",[4093.8,2104.04,7.62939e-006],136,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["AD",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[[[4458.94,1742.57,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CW_SOV_O_EARLY_BMP2",[3975.52,2044.67,0],136,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[[[4340.52,1683.03,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4179.3,2109.04,0],152,[]],[[4175.23,2110.27,0],152,[]],[[4173.47,2109.33,0],152,[]],[[4171.71,2108.38,0],152,[]]],[],[[[4393.52,1764.19,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4252.35,2183.17,3.8147e-006],152,[]],[[4248.29,2184.4,3.8147e-006],152,[]],[[4246.53,2183.45,3.8147e-006],152,[]],[[4244.77,2182.51,7.62939e-006],152,[]]],[],[[[4466.58,1838.32,1.14441e-005],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4052.98,2082.88,0],152,[]],[[4048.92,2084.11,0],152,[]],[[4047.16,2083.16,3.8147e-006],152,[]],[[4045.4,2082.22,0],152,[]]],[],[[[4376.23,1759.44,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3976.74,2000.76,3.8147e-006],132,[]],[[3972.5,2000.52,3.8147e-006],132,[]],[[3971.17,1999.03,3.8147e-006],132,[]],[[3969.84,1997.54,3.8147e-006],132,[]]],[],[[[4296.37,1750.46,7.62939e-006],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3864.79,2011.9,-3.8147e-006],126,[]],[[3860.6,2011.24,0],126,[]],[[3859.42,2009.63,0],126,[]],[[3858.24,2008.01,3.8147e-006],126,[]]],[],[[[4345.81,1705.64,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADR_O_LR_SPG9",[3845.76,1944.49,3.8147e-006],136,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["AD",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[[[4211.17,1583.11,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADA_O_BTR80a",[4194.3,2160.6,0],136,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]],[[[4507.74,1723.7,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
