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

		// Strongpoint Salam
		[[[[3776.58,6240.29,0],61,"Up",[]],[[3787.38,6259.68,1.18629],228,"Up",[]],[[3780.62,6262.92,0.694916],160,"Up",[]],[[3755.15,6240.55,0.91597],34,"Up",[]],[[3755.29,6254.49,0.230957],102,"Up",[]],[[3743.97,6257.03,3.62686],80,"Up",[]],[[3733.71,6259.47,3.33029],357,"Up",[]],[[3740.6,6237.41,0.449921],351,"Up",[]],[[3740.74,6258.89,0.947083],183,"Up",[]]],[["I_HMG_02_high_F",[3743.61,6259.34,3.59143],83,[["gunner",-1,[0]]],[[7,["Hide_Rail",0,"Hide_Shield",0]]]],["UK3CB_ADA_I_SPG9",[3746.02,6240.16,3.56967],135,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// OP 1
		[[[[3606.68,6045.92,0.283142],104,"Up",[]],[[3608.93,6051.9,0.14473],104,"Middle",[]],[[3607.33,6048.32,0.257645],116,"Middle",[]],[[3609.89,6054.06,0.17894],104,"Middle",[]]],[["UK3CB_ARD_O_SPG9",[3611.42,6057.42,0],116,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_Hilux_Dshkm",[3598.09,6040.04,0],106,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// OP 2
		[[[[3890.43,6393.11,0],228,"Up",[]],[[3889.44,6393.99,0],215,"Up",[]],[[3888.21,6394.91,0],212,"Up",[]],[[3892.84,6398.33,-1.52588e-005],262,"Up",[]],[[3899.04,6408.25,0],203,"Up",[]],[[3896.1,6416.86,-0.226303],125,"Up",[]],[[3885.89,6422.13,0.0317688],328,"Up",[]],[[3893.26,6421.72,0],166,"Up",[]]],[["rhs_SPG9M_MSV",[3892.98,6398.29,2.81267],210,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Arty OP 2
		[west,arty_1,getMarkerPos "target",7,300,30] spawn OKS_ArtyFire;

		// Patrol
		[[[[3988.92,6221.96,1.52588e-005],0,[]],[[3993.92,6216.96,0],0,[]],[[3983.92,6216.96,0],0,[]],[[3998.92,6211.96,-1.52588e-005],0,[]]],[],[[[3871.15,6197.38,0],[[0,"Move"]]],[[3798.29,6375.83,-4.57764e-005],[[0,"Move"]]],[[3862.94,6462.59,0],[[0,"Move"]]],[[3962.68,6391.06,-4.57764e-005],[[0,"Move"]]],[[3986.97,6229.78,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3700.8,5944.74,0],0,[]],[[3705.8,5939.74,0],0,[]],[[3695.8,5939.74,0],0,[]],[[3710.8,5934.74,0],0,[]]],[],[[[3583.03,5920.16,0],[[0,"Move"]]],[[3570.11,6078.85,0],[[0,"Move"]]],[[3575.05,6139.15,0],[[0,"Move"]]],[[3677.68,6112.89,0],[[0,"Move"]]],[[3698.86,5952.56,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3893.8,6029.87,0],0,[]],[[3898.8,6024.87,0],0,[]],[[3888.8,6024.87,0],0,[]],[[3903.8,6019.87,0],0,[]]],[],[[[3776.03,6005.29,0],[[0,"Move"]]],[[3646.5,6274.3,0],[[0,"Move"]]],[[3757.32,6304.47,0],[[0,"Move"]]],[[3803.98,6281,0],[[0,"Move"]]],[[3891.85,6037.69,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		// Hunt Base
		_Vehicles = [
			"UK3CB_ADA_O_LR_SPG9", 
			"UK3CB_ADM_O_BTR40_MG", 
			"UK3CB_ADM_O_MTLB_KPVT", 
			"UK3CB_ADM_O_MTLB_PKT", 
			"UK3CB_ADM_O_BRDM2", 
			"UK3CB_ADM_O_Hilux_Spg9", 
			"UK3CB_ADM_O_LR_SPG9", 
			"UK3CB_ADM_O_LR_SF_M2", 
			"UK3CB_ADM_O_Pickup_SPG9"
		];
		[HSpawn_1, HSpawn_1, NEKY_Hunt_Trigger_1, 3,900,east,_Vehicles,240] spawn NEKY_Hunt_HuntBase;
		[HSpawn_2, HSpawn_2, NEKY_Hunt_Trigger_1, 3,1000,east,_Vehicles,240] spawn NEKY_Hunt_HuntBase;
		[HSpawn_3, HSpawn_3, NEKY_Hunt_Trigger_1, 3,1100,east,_Vehicles,240] spawn NEKY_Hunt_HuntBase;
		[HSpawn_4, HSpawn_4, NEKY_Hunt_Trigger_1, 3,1200,east,_Vehicles,240] spawn NEKY_Hunt_HuntBase;

	
	};

	case 2: {

		// Counter Attack at Salam
		[[[[3337.17,6524.19,-1.7643],116,[]],[[3330.48,6521.91,-0.759232],116,[]],[[3334.89,6530.88,-2.10031],116,[]],[[3323.79,6519.62,0.409378],116,[]],[[3332.6,6537.58,-2.01923],116,[]],[[3317.1,6517.33,1.25346],116,[]],[[3330.31,6544.27,-2.06589],116,[]],[[3310.41,6515.05,1.6723],116,[]]],[],[[[3559.46,6398.89,-3.05176e-005],[[0,"Move"]]],[[3720.57,6321.62,-9.15527e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3264.17,6406.71,1.52588e-005],116,[]],[[3257.48,6404.42,1.52588e-005],116,[]],[[3261.88,6413.4,1.52588e-005],116,[]],[[3250.79,6402.13,1.52588e-005],116,[]],[[3259.6,6420.09,1.52588e-005],116,[]],[[3244.1,6399.85,1.52588e-005],116,[]],[[3257.31,6426.78,1.52588e-005],116,[]],[[3237.41,6397.56,1.52588e-005],116,[]]],[],[[[3482.52,6318,0],[[0,"Move"]]],[[3723.77,6271.34,1.52588e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3204.54,6259.55,0],116,[]],[[3197.85,6257.26,0],116,[]],[[3202.26,6266.24,0],116,[]],[[3191.16,6254.97,0],116,[]],[[3199.97,6272.93,0],116,[]],[[3184.47,6252.69,0.060791],116,[]],[[3197.68,6279.62,0],116,[]],[[3177.78,6250.4,0.47963],116,[]]],[],[[[3500.09,6155.8,0],[[0,"Move"]]],[[3659.6,6127.53,1.52588e-005],[[0,"Move"]]],[[3787.82,6232.21,6.10352e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		
		sleep 30;
		
		[[],[["UK3CB_ADA_O_BTR80a",[3240.79,6671.29,3.05176e-005],170,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[[[3306.91,6448.21,0],[[0,"Move"]]],[[3495.54,6381.31,0],[[0,"Move"]]],[[3549.95,6280.8,-0.000167847],[[0,"Move"]]],[[3621.74,6265.66,-3.05176e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADA_O_Hilux_Spg9",[3456.53,5602.19,3.05176e-005],358,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[[[3454.41,5717.25,1.52588e-005],[[0,"Move"]]],[[3558.6,5954.92,6.10352e-005],[[0,"Move"]]],[[3713.76,6050.48,3.05176e-005],[[0,"Move"]]],[[3728.75,6163.99,1.52588e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {

		// Hostage Rescue
		[Group Officer_1,getPos ExfilSite_1,east,true,nil] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";

		/// AAA
		[aaa_1,west,false,1500,true] spawn GW_Ambient_AAA;

		// Strongpoints Outskirts
		[[[[3087.69,6521.28,3.80426],131,"Up",[]],[[3089.1,6527.9,3.606],114,"Up",[]],[[3081.76,6520.07,3.5479],167,"Up",[]],[[3088.47,6525.09,0.221939],138,"Middle",[]],[[3079.7,6528.83,3.61269],275,"Up",[]],[[3088.47,6534.36,3.39716],91,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2825.35,6531.79,4.20335],101,"Up",[]],[[2825.5,6529.89,4.26147],86,"Up",[]],[[2821.23,6534.54,4.14351],24,"Up",[]],[[2817.33,6534.47,4.2429],30,"Up",[]],[[2816.52,6529.49,4.34068],278,"Up",[]]],[["UK3CB_CW_SOV_O_EARLY_BMP2",[2819.99,6549.05,1.52588e-005],91,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2914.92,6834.18,0],3,"Up",[]],[[2897.07,6834.64,0],82,"Up",[]],[[2902.2,6830.7,2.26401],93,"Up",[]],[[2912.41,6830.01,0.384735],3,"Up",[]]],[["UK3CB_CW_SOV_O_EARLY_BMP2",[3126.15,6837.05,0],167,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2856.49,6842.06,0],316,"Up",[]],[[2845.28,6839.95,0],81,"Up",[]],[[2841.8,6830.17,0],271,"Up",[]],[[2852.28,6831.29,0.30278],316,"Up",[]],[[2846.26,6831.32,0.325287],316,"Middle",[]]],[["RHS_ZU23_VDV",[2852.17,6832.6,3.17946],111,[["gunner",-1,[0]],["cargo",0,[1]]],[[7,["Unfold",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2803.48,6771.08,0.515839],179,"Up",[]],[[2797.33,6774.13,0.0579987],179,"Up",[]],[[2798.94,6773.89,3.259],130,"Middle",[]]],[["UK3CB_KDF_O_SPG9",[2807.84,6772.97,3.60321],120,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		/// Arty 2
		[[[[2648.18,6749.66,-1.52588e-005],206,"Up",[]],[[2624.21,6752.52,0],115,"Up",[]],[[2632.53,6775.95,0],208,"Up",[]],[[2634.39,6770.59,0.829422],179,"Up",[]],[[2642.76,6768.34,0.324371],179,"Up",[]],[[2650.63,6761.27,0.293854],275,"Up",[]],[[2648.89,6755.69,0.625366],263,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		/// Arty 3-5
		[[[[2657.62,6914.24,4.07391],268,"Up",[]],[[2667.14,6913.17,3.93764],89,"Up",[]],[[2660.67,6917.41,0.703629],98,"Up",[]],[[2647.17,6911.73,0],359,"Up",[]]],[["UK3CB_KDF_O_SPG9",[2666,6913.91,6.94534],120,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_KORD_high",[2658.7,6912.42,7.15695],118,[["gunner",-1,[0]]],[]],["UK3CB_CW_SOV_O_EARLY_BMP2",[2520.78,6813.75,0],112,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1]]]],["UK3CB_CW_SOV_O_EARLY_BMP2",[2542.03,6952.5,0],128,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2666.12,6916.9,6.86594],98,"Up",[]],[[2660.65,6923.02,3.73573],333,"Up",[]],[[2663.85,6923.17,0.538956],98,"Up",[]],[[2651.59,6932.71,0],88,"Up",[]],[[2645.56,6939.02,0],5,"Up",[]],[[2667.21,6945.87,0.338745],276,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2659.71,6970.04,3.00552],96,"Up",[]],[[2653.4,6965,3.03171],164,"Up",[]],[[2672.86,6953.97,2.8166],77,"Up",[]],[[2673.28,6946.78,2.7316],120,"Up",[]],[[2650.09,6969.43,0],198,"Up",[]]],[["UK3CB_LNM_O_KORD_high",[2672.35,6950.26,2.79771],107,[["gunner",-1,[0]]],[]],["UK3CB_CW_SOV_O_EARLY_BMP2",[2642.14,7169.5,-1.52588e-005],180,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1]]]],["UK3CB_CW_SOV_O_EARLY_BMP2",[2805.92,7076.53,0],178,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		
		// Patrols
		[[[[2443.94,6856.38,1.52588e-005],0,[]],[[2448.94,6851.38,1.52588e-005],0,[]],[[2438.94,6851.38,0],0,[]],[[2453.94,6846.38,-1.52588e-005],0,[]],[[2433.94,6846.38,0],0,[]],[[2458.94,6841.38,1.52588e-005],0,[]],[[2428.94,6841.38,0],0,[]],[[2463.94,6836.38,0],0,[]]],[],[[[2443.37,6608.98,0],[[0,"Move"],[1,"SAFE"]]],[[2547.75,6604.77,0],[[0,"Move"]]],[[2673.64,6818.75,0],[[0,"Move"]]],[[2565.14,7045.09,0.000106812],[[0,"Move"]]],[[2438.94,6866.09,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2568,6547.58,0],0,[]],[[2573,6542.58,0],0,[]],[[2563,6542.58,0],0,[]],[[2578,6537.58,0],0,[]],[[2558,6537.58,0],0,[]],[[2583,6532.58,0],0,[]],[[2553,6532.58,0],0,[]],[[2588,6527.58,0],0,[]]],[],[[[2567.43,6300.17,0],[[0,"Move"],[1,"SAFE"]]],[[2671.81,6295.96,0],[[0,"Move"]]],[[2797.7,6509.94,0],[[0,"Move"]]],[[2689.2,6736.28,0],[[0,"Move"]]],[[2563,6557.29,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2786.9,6821.51,0],0,[]],[[2791.9,6816.51,0],0,[]],[[2781.9,6816.51,0],0,[]],[[2796.9,6811.51,0],0,[]],[[2776.9,6811.51,0],0,[]],[[2801.9,6806.51,0],0,[]],[[2771.9,6806.51,0],0,[]],[[2806.9,6801.51,0],0,[]]],[],[[[2786.33,6574.11,0],[[0,"Move"],[1,"SAFE"]]],[[2890.7,6569.89,0],[[0,"Move"]]],[[3016.6,6783.87,0],[[0,"Move"]]],[[2908.09,7010.22,0],[[0,"Move"]]],[[2781.89,6831.22,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2687.69,6866.84,4.36914],231,[]],[[2688.4,6873.87,4.36913],231,[]],[[2694.72,6866.13,4.36913],231,[]],[[2689.11,6880.91,4.36914],231,[]],[[2701.76,6865.41,4.36914],231,[]],[[2689.83,6887.94,4.36913],231,[]],[[2708.79,6864.7,4.36913],231,[]],[[2690.54,6894.98,4.36914],231,[]]],[],[[[2879.73,7022.81,4.36914],[[0,"Move"],[1,"SAFE"]]],[[2817,7106.35,4.36913],[[0,"Move"]]],[[2571.62,7068.6,4.36911],[[0,"Move"]]],[[2464.86,6841.43,4.36923],[[0,"Move"]]],[[2683.33,6856.82,4.36911],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[west,arty_2,getMarkerPos "target",7,300,30] spawn OKS_ArtyFire; sleep 4;
		[west,arty_3,getMarkerPos "target",7,300,30] spawn OKS_ArtyFire; sleep 4;
		[west,arty_4,getMarkerPos "target",7,300,30] spawn OKS_ArtyFire; sleep 4;
		[west,arty_5,getMarkerPos "target",7,300,30] spawn OKS_ArtyFire;
	};

	case 4: {

		{
			[_X,5,1,1,west,2000,"evacclear"] spawn OKS_Rush_Wavespawn; sleep 5;
		} foreach [spawn_1,spawn_2,spawn_3,spawn_4,spawn_5];

		// Evac Attack
		[[],[["rhs_bmp1_tv",[2021.59,7312.98,0],88,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[[[2315.17,7112.81,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 60;
		[[],[["rhs_bmp2e_tv",[1937.53,6666.41,-1.52588e-005],357,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[[[2277.5,7069.75,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 60;
		[[],[["rhs_btr80a_vdv",[1751.11,6994.98,-3.05176e-005],71,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]],[[[2296.68,7092.27,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
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
