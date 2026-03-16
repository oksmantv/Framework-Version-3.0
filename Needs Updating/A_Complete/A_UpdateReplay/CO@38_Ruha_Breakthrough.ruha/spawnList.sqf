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

		/// Trench 1
		[[[[2872.82,762.817,0.27247],0,"Middle",[]],[[2868.89,758.104,0.566225],249,"Up",[]],[[2872.43,758.558,0.716259],86,"Up",[]],[[2861.47,765.871,27.4988],124,"Middle",[]],[[2858.34,768.326,42.4972],227,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2853.54,771.781,41.8172],212,"Up",[]],[[2862.32,780.071,11.8691],226,"Middle",[]],[[2849.17,774.191,13.0389],44,"Middle",[]],[[2852.15,768.122,4.15601],328,"Middle",[]],[[2855.29,771.591,34.8609],257,"Up",[]],[[2855.47,773.668,33.283],330,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2848.65,777.534,20.462],245,"Up",[]],[[2843.17,783.606,0.606749],124,"Middle",[]],[[2840.37,785.57,1.54746],233,"Up",[]],[[2833.51,789.252,1.46686],306,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2829.91,794.663,1.54126],215,"Up",[]],[[2830.82,788.275,0.388355],217,"Up",[]],[[2824.9,799.488,0],318,"Middle",[]],[[2824.08,809.364,0.16271],200,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		/// Counter-Attack Prior to Trench 1
		[[],[["rhs_bmp1_msv",[2948.89,1169.97,9.53674e-007],210,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[[[2757.93,802.384,0],[[0,"Move"]]],[[2689.19,607.151,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["rhs_bmp1_msv",[2966.63,1203.37,0],210,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[[[2758.2,802.995,0],[[0,"Move"]]],[[2740.81,536.797,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[2950.39,782.061,1.90735e-006],224,[]],[[2950.25,789.13,5.72205e-006],224,[]],[[2957.46,782.203,3.8147e-006],224,[]],[[2950.11,796.2,1.90735e-006],224,[]]],[],[[[2897.97,738.804,1.33514e-005],[[0,"Move"]]],[[2619.89,507.475,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2967.75,759.843,0],224,[]],[[2967.61,766.913,0],224,[]],[[2974.82,759.985,0],224,[]],[[2967.47,773.982,0],224,[]]],[],[[[2915.33,716.586,0],[[0,"Move"]]],[[2637.25,485.257,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2983.56,741.31,-1.90735e-006],224,[]],[[2983.41,748.379,3.8147e-006],224,[]],[[2990.63,741.452,1.90735e-006],224,[]],[[2983.27,755.449,1.90735e-006],224,[]]],[],[[[2931.13,698.053,1.14441e-005],[[0,"Move"]]],[[2653.06,466.724,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2827.33,854.152,0],206,[]],[[2825.01,860.833,0],206,[]],[[2834.01,856.469,0],206,[]],[[2822.7,867.514,0],206,[]]],[],[[[2790.81,796.83,0],[[0,"Move"]]],[[2597.69,490.984,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	
	};

	case 3: {
		/// Counter Attack Trench 1
		[trenchrush_1,3,east,1000] spawn OKS_Rush_SpawnGroup;
		[trenchrush_2,3,east,1000] spawn OKS_Rush_SpawnGroup;
		[trenchrush_3,3,east,1000] spawn OKS_Rush_SpawnGroup;
		[trenchrush_4,3,east,1000] spawn OKS_Rush_SpawnGroup;

		[[],[["rhs_btr80a_vdv",[3131.19,1492.98,-4.76837e-007],221,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[[[2923.9,1129.94,1.90735e-006],[[0,"Move"]]],[[2924.12,954.067,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["rhs_bmp1_msv",[3154.36,1521.73,0],219,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",1]]]]],[[[2923.9,1129.94,1.90735e-006],[[0,"Move"]]],[[2862.66,978.749,9.53674e-007],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	
		/// Helicopter Attack
		[[],[["O_Heli_Light_02_dynamicLoadout_F",[6628.35,1339.72,0],271,[["driver",-1,[]]],[[6,["Black",1]],[8,["PylonWeapon_2000Rnd_65x39_belt","PylonWeapon_2000Rnd_65x39_belt"]]]]],[[[2907.81,844.714,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 30;

		[	Trigger_2,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				20,		// Number of Patrolling Infantry
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

		// Trench 2
		[[[[3239.54,1499.71,1.95089],209,"Up",[]],[[3240.65,1498.91,1.94935],209,"Up",[]],[[3230.36,1507.73,2.0215],209,"Up",[]],[[3229.23,1508.74,2.0285],209,"Up",[]],[[3218.5,1517.95,2.02911],209,"Up",[]],[[3217.44,1518.84,2.02481],209,"Up",[]],[[3211.58,1524.13,1.0174],336,"Middle",[]],[[3217.08,1520.92,0],310,"Middle",[]],[[3246.89,1494.79,9.53674e-007],312,"Middle",[]],[[3253.81,1487.5,0.887584],226,"Up",[]],[[3252.31,1488.63,1.06864],226,"Up",[]]],[["UK3CB_AAF_O_DSHKM",[3209.64,1525.25,0.83207],235,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		//// Mortars
		[mortar_1, east, "precise", "light", ["Up", 25],200,500,20] execVM "Scripts\NEKY_Mortars\NEKY_Mortars.sqf";
		[mortar_2, east, "precise", "light", ["Up", 25],200,500,20] execVM "Scripts\NEKY_Mortars\NEKY_Mortars.sqf";

		// HQ
		[[[[3398.02,1711.75,7.62939e-006],275,"Up",[]],[[3401.55,1673.8,1.43051e-005],283,"Up",[]],[[3379.98,1691.61,-4.76837e-007],275,"Up",[]],[[3365.21,1703.35,1.43051e-006],219,"Up",[]],[[3361.19,1711.18,-4.76837e-007],260,"Up",[]],[[3398.7,1716.53,-2.86102e-006],273,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3341.75,1659.01,3.38814],323,"Up",[]],[[3332.03,1648.16,3.35233],316,"Up",[]],[[3313.41,1643.93,0.225968],10,"Up",[]],[[3322.67,1657.28,-1.90735e-006],302,"Up",[]],[[3334.91,1649.51,0.29855],221,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3341.32,1646.25,3.40285],244,"Up",[]],[[3335.6,1641.43,0.257294],348,"Up",[]],[[3347.47,1610.23,0.463295],305,"Up",[]],[[3357.81,1630.48,0.600922],231,"Up",[]],[[3340.99,1629.67,9.53674e-006],270,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3245.41,1694.67,1.69835],268,"Up",[]],[[3246.2,1692.12,1.67216],208,"Up",[]],[[3248.84,1693.49,1.81814],175,"Up",[]],[[3229.04,1709.88,0.61423],277,"Up",[]],[[3228.05,1707.25,0.722856],239,"Middle",[]],[[3231.25,1708.17,0.581258],239,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 4: {

		/// Strongpoints 3
		[[[[3730.08,2131.84,0.129934],192,"Up",[]],[[3727.37,2133.1,0.257403],192,"Up",[]],[[3726.35,2138.65,0.191638],44,"Middle",[]],[[3747.77,2157.75,1.71661e-005],302,"Up",[]],[[3755.11,2144.16,9.53674e-007],233,"Up",[]]],[["rhs_bmp2k_msv",[3739.9,2174.17,0.00199986],210,[["driver",-1,[]],["gunner",-1,[0]],["gunner",-1,[0,0]]],[[6,["standard",1]],[7,["konkurs_hide_source",1,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3824.39,2057.58,-1.43051e-006],306,"Middle",[]],[[3808.47,2071.34,3.8147e-006],201,"Middle",[]],[[3785.8,2085.85,-4.76837e-007],27,"Middle",[]]],[["rhs_bmp1_msv",[3832.08,2047.57,0],266,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["rhs_bmp1_msv",[3782.35,2074.9,-0.0203376],227,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CW_SOV_O_LATE_T55",[3853.98,2107.28,-1.43051e-006],310,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["SOV",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		/// Surrounding Vehicles
		[[],[["rhs_btr80a_vdv",[4125.57,2283.87,9.53674e-007],207,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",1]]]],["rhs_bmp1_vmf",[4069.98,2500.56,0],248,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		/// Artillery Objective
		[[[[3805.49,2439.97,-2.38419e-006],234,"Auto",[]],[[3820.66,2431.9,0.0324478],219,"Auto",[]],[[3830.48,2429.26,0.232272],191,"Auto",[]],[[3836.45,2431.38,0.287222],222,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3841.44,2396.5,-2.38419e-006],227,"Auto",[]],[[3814.13,2401.16,0.194501],224,"Auto",[]],[[3809.28,2404.96,0.160106],187,"Auto",[]],[[3800.44,2425.17,-2.38419e-006],1,"Auto",[]],[[3851.54,2414.61,-1.90735e-006],227,"Auto",[]]],[["rhs_btr80a_vdv",[3887.15,2424.69,9.53674e-007],218,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		sleep 15;

		[	Trigger_3,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				20,		// Number of Patrolling Infantry
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

		// Artillery
		["HQ","side","1-1 be advised, the 101st Airborne are being pounded by artillery barrages, most likely from the 99th Artillery Battalion due south-west of their positions. Neutralize the artillery before they manage to wipe out the paratroopers. Godspeed, 1-Actual out."] remoteExec ["OKS_Chat",0];
		{[_X,east] call OKS_AddVehicleCrew} foreach [earty_1,earty_2,earty_3,earty_4]; sleep 10;
		while {
			{
				{Alive _X} count crew _X > 0 && Alive _X	
			} count [earty_1,earty_2,earty_3,earty_4] > 0
		} do {
			[earty_1,[getPos eartytarget_1,getPos eartytarget_2],5,10,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf"; sleep 3;
			[earty_2,[getPos eartytarget_5,getPos eartytarget_6],5,10,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf"; sleep 5;
			[earty_3,[getPos eartytarget_3,getPos eartytarget_4],5,10,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf"; sleep 3;
			[earty_4,[getPos eartytarget_7,getPos eartytarget_8],5,10,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf"; sleep 300;
		};
	};

	case 5: {

		/// Counter-Attack on HQ
		[[],[["rhs_btr80a_vdv",[3719.22,2139.33,4.76837e-007],211,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]],[[[3459.57,1882.62,1.43051e-006],[[0,"Move"]]],[[3443.98,1671.2,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CW_SOV_O_LATE_T55",[3743.45,2179.53,-9.53674e-007],210,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["SOV",1]]]]],[[[3459.57,1882.62,1.43051e-006],[[0,"Move"]]],[[3382.22,1757.16,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	
		// Infantry Attack
		[trenchrush_5,4,east,1000] spawn OKS_Rush_SpawnGroup;
		[trenchrush_6,4,east,1000] spawn OKS_Rush_SpawnGroup;
		[trenchrush_7,4,east,1000] spawn OKS_Rush_SpawnGroup;
		[trenchrush_8,4,east,1000] spawn OKS_Rush_SpawnGroup;

		/// Helicopter Attack
		[[],[["O_Heli_Light_02_dynamicLoadout_F",[6693.65,1340.7,0],271,[["driver",-1,[]]],[[6,["Black",1]],[8,["PylonWeapon_2000Rnd_65x39_belt","FIR_Hydra_M282_P_7rnd_M"]]]]],[[[3322.22,1581.59,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		/// SU-25 Attack
		[[],[["RHS_Su25SM_vvsc",[5883.87,7561.99,600],199,[["driver",-1,[]]],[[6,["Camo1",1]],[8,["","","","","","","","","","",""]]]]],[[[3392.16,1609.09,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	
	};

	case 6: {

		/// Artillery Counter-Attack
		[[],[["O_Heli_Light_02_dynamicLoadout_F",[6575.89,1342.7,0],271,[["driver",-1,[]]],[[6,["Black",1]],[8,["PylonWeapon_2000Rnd_65x39_belt","FIR_Hydra_M282_P_7rnd_M"]]]]],[]] call GW_Common_fnc_spawnGroup;
	};

	case 7: {
		/// Attack on Ruha and Friendly Forces
		[[[[4584.84,3791.67,0],351,[]],[[4590.58,3787.54,0],351,[]],[[4580.71,3785.93,9.53674e-007],351,[]],[[4596.33,3783.42,9.53674e-007],351,[]],[[4576.59,3780.18,-4.76837e-007],351,[]],[[4602.07,3779.29,0],351,[]],[[4572.46,3774.44,0],351,[]],[[4607.81,3775.17,0],351,[]]],[],[[[4552.71,4022.54,0],[[0,"Move"],[4,"LINE"],[5,"FULL"]]],[[4519.08,4212.76,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4474.39,3783.32,0],351,[]],[[4480.14,3779.19,4.76837e-007],351,[]],[[4470.27,3777.57,0],351,[]],[[4485.88,3775.06,1.90735e-006],351,[]],[[4466.14,3771.83,0],351,[]],[[4491.62,3770.94,0],351,[]],[[4462.02,3766.09,0],351,[]],[[4497.37,3766.81,9.53674e-007],351,[]]],[],[[[4442.27,4014.18,0],[[0,"Move"],[4,"LINE"],[5,"FULL"]]],[[4467.17,4220.75,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;	
		[[[[4928.43,4065.24,-0.00010252],288,[]],[[4934.72,4068.47,3.14713e-005],288,[]],[[4931.65,4058.95,1.14441e-005],288,[]],[[4941.01,4071.69,-3.48091e-005],288,[]],[[4934.87,4052.66,6.7234e-005],288,[]],[[4947.31,4074.91,5.19753e-005],288,[]],[[4938.1,4046.36,0.000169754],288,[]],[[4953.6,4078.14,-1.43051e-006],288,[]]],[],[[[4692.79,4186.8,0],[[0,"Move"],[4,"LINE"],[5,"FULL"]]],[[4541.62,4226.73,4.76837e-007],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4981.38,4415.78,9.53674e-007],261,[]],[[4985.57,4421.48,4.76837e-007],261,[]],[[4987.08,4411.6,9.53674e-007],261,[]],[[4989.76,4427.18,4.76837e-007],261,[]],[[4992.77,4407.41,4.76837e-007],261,[]],[[4993.95,4432.88,0],261,[]],[[4998.47,4403.22,0],261,[]],[[4998.13,4438.57,7.15256e-007],261,[]]],[],[[[4750.17,4386.23,4.76837e-007],[[0,"Move"],[4,"LINE"],[5,"FULL"]]],[[4655.93,4373.19,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4788.05,4499.57,2.38419e-007],263,[]],[[4792.45,4505.11,7.15256e-007],263,[]],[[4793.59,4495.18,1.90735e-006],263,[]],[[4796.84,4510.65,1.66893e-006],263,[]],[[4799.13,4490.78,2.38419e-007],263,[]],[[4801.23,4516.19,7.15256e-007],263,[]],[[4804.67,4486.39,7.15256e-007],263,[]],[[4805.63,4521.73,1.63913e-006],263,[]]],[],[[[4555.92,4478.44,4.76837e-007],[[0,"Move"],[4,"LINE"],[5,"FULL"]]],[[4416,4451.52,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4048.45,4813.22,0],141,[]],[[4041.42,4814,0],141,[]],[[4049.22,4820.25,1.43051e-006],141,[]],[[4034.39,4814.78,1.90735e-006],141,[]],[[4050,4827.28,0.151226],141,[]],[[4027.36,4815.55,3.56088],141,[]],[[4050.78,4834.31,0],141,[]],[[4020.33,4816.33,0.98663],141,[]]],[],[[[4189.73,4627.83,9.53674e-007],[[0,"Move"],[4,"LINE"],[5,"FULL"]]],[[4283.09,4512.29,4.76837e-007],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4123.12,4898.96,0],141,[]],[[4116.09,4899.73,0],141,[]],[[4123.9,4905.99,4.76837e-007],141,[]],[[4109.06,4900.51,9.53674e-007],141,[]],[[4124.67,4913.02,0.151224],141,[]],[[4102.03,4901.29,3.56088],141,[]],[[4125.45,4920.04,-9.53674e-007],141,[]],[[4095.01,4902.06,0.986629],141,[]]],[],[[[4264.4,4713.56,4.76837e-007],[[0,"Move"],[4,"LINE"],[5,"FULL"]]],[[4357.76,4598.03,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	
		[8,2,getPos friendly_1,west,true,["lot"]] spawn OKS_Rescue_Friendly;
		[8,2,getPos friendly_2,west,true,["lot"]] spawn OKS_Rescue_Friendly;
	
	};

	case 8: {

		// Air Assault Counter-Attack Ruha
		[east, "O_Heli_Light_02_unarmed_F", False, "unload", "air_1", land_1, "air_despawn", [2,1], ["land_1"],false,false,NEKY_Hunt_Trigger_1] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 20;
		[east, "O_Heli_Light_02_unarmed_F", False, "unload", "air_2", land_2, "air_despawn", [2,1], ["land_2"],false,false,NEKY_Hunt_Trigger_1] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 20;
		[east, "O_Heli_Light_02_unarmed_F", False, "unload", "air_3", land_3, "air_despawn", [2,1], ["land_3"],false,false,NEKY_Hunt_Trigger_1] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 20;
		[east, "O_Heli_Light_02_unarmed_F", False, "unload", "air_4", land_4, "air_despawn", [2,1], ["land_4"],false,false,NEKY_Hunt_Trigger_1] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 20;
		[east, "O_Heli_Light_02_unarmed_F", False, "unload", "air_5", land_5, "air_despawn", [2,1], ["land_5"],false,false,NEKY_Hunt_Trigger_1] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 20;
		[east, "O_Heli_Light_02_unarmed_F", False, "unload", "air_6", land_6, "air_despawn", [2,1], ["land_6"],false,false,NEKY_Hunt_Trigger_1] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 20;
		[east, "O_Heli_Light_02_unarmed_F", False, "unload", "air_7", land_7, "air_despawn", [2,1], ["land_7"],false,false,NEKY_Hunt_Trigger_1] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 20;
		[east, "O_Heli_Light_02_unarmed_F", False, "unload", "air_8", land_8, "air_despawn", [2,1], ["land_8"],false,false,NEKY_Hunt_Trigger_1] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 20;

		[[],[["O_Heli_Light_02_dynamicLoadout_F",[6605.78,1263.34,0],351,[["driver",-1,[]]],[[6,["Black",1]],[8,["PylonWeapon_2000Rnd_65x39_belt","FIR_Hydra_M282_P_7rnd_M"]]]]],[[[4553.4,4395.56,-4.76837e-007],[[0,"SAD"],[2,"RED"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 60;
		[[],[["O_Heli_Light_02_dynamicLoadout_F",[6635.63,1263.55,0],351,[["driver",-1,[]]],[[6,["Black",1]],[8,["PylonWeapon_2000Rnd_65x39_belt","FIR_Hydra_M282_P_7rnd_M"]]]]],[[[4358.74,4267.33,-4.76837e-007],[[0,"SAD"],[2,"RED"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 9: {
		/// Final Convoy Objective
		CONVOY_1 = [];
		[cspawn_1,cwaypoint_1,cend_1,east,[8,["rhs_btr60_msv"], 6, 25],[true,6],CONVOY_1,false] spawn OKS_Convoy_Spawn;

		// waitUntil convoy is spawned
		waitUntil{sleep 5; {{Alive _X} count units _X > 0} count CONVOY_1 == count CONVOY_1};

		// waitUntil convoy units are completely destroyed
		waitUntil{sleep 5; {{Alive _X} count units _X == 0} count CONVOY_1 == count CONVOY_1};

		// Delete all Phase 1 units to avoid friendly convoy combat
		{ if(_X inArea Phase1Trigger && side _X == east) then {deleteVehicle _X}} foreach allUnits;

		["HQ","side","1-1, be advised, lead elements of the 1st Armored Brigade are inbound from the south-west. Hold until relieved, clear the roads and let them advance past your positions, 1-Actual out."] remoteExec ["OKS_Chat",0];
		
		// Spawn Friendly Relief Convoy
		[cspawn_2,cwaypoint_2,cend_2,west,[4,["rhsusf_m1a2sep1tuskiiwd_usarmy"], 14, 40],[false,0],[],true] spawn OKS_Convoy_Spawn; 
  		[cspawn_3,cwaypoint_3,cend_3,west,[4,["rhsusf_m1a2sep1tuskiiwd_usarmy"], 14, 40],[false,0],[],true] spawn OKS_Convoy_Spawn;
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
