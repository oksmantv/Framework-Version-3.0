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

		/// Oil Platform
		[[[[10900.7,1423.97,50.1025],127,"Up",[]],[[10897.6,1421.95,50.2442],137,"Up",[]],[[10894.8,1425.61,50.3627],231,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10895.7,1418.92,41.8248],114,"Up",[]],[[10898.8,1416.27,38.2101],225,"Up",[]],[[10899.5,1413.52,38.1166],35,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10895,1408.74,46.0508],136,"Up",[]],[[10892.4,1421.06,37.6304],229,"Up",[]],[[10891.3,1414.64,38.9527],49,"Up",[]]],[["UK3CB_AAF_O_PKM_High",[10895,1419.02,50.479],138,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10886.3,1401.72,47.2898],124,"Up",[]],[[10892.4,1404.54,42.9374],137,"Up",[]],[[10912.2,1395.57,27.3125],142,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10885.8,1401.13,43.582],135,"Up",[]],[[10883.5,1404.99,40.1603],49,"Up",[]],[[10878.6,1404.85,40.4077],67,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10907.5,1393.4,41.135],241,"Middle",[]],[[10897.3,1383.18,30.3963],319,"Up",[]],[[10908,1365.46,26.6642],94,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10946.9,1359.78,27.8173],252,"Up",[]],[[10925.1,1383.19,28.9058],234,"Up",[]],[[10925.4,1370.4,36.3122],284,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10912.4,1364.98,39.59],200,"Up",[]],[[10933.4,1337.61,28.2881],284,"Up",[]],[[10948.3,1351.18,28.7777],310,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10941.5,1344.17,52.8345],356,"Up",[]],[[10935.9,1343.85,52.8044],254,"Up",[]],[[10929,1363.36,43.8452],313,"Middle",[]],[[10944.5,1355.33,38.0813],237,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		/// Objective 2.
		[Trigger_1,false,[0,12,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

		/// Objective 3.
		[Trigger_2,false,[0,12,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		/// Sentries 1
		[[[[10873.6,2028.35,5.00679e-005],143,"Up",[]],[[10875.7,2030.6,-0.0172029],103,"Up",[]],[[10901.8,2037.56,0.85684],207,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10888.5,2089.26,0.706738],170,"Up",[]],[[10915,2086,0],255,"Middle",[]],[[10819.1,2127.68,0.36367],164,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10825.4,2113.65,1.06396],93,"Middle",[]],[[10825.1,2111.75,1.05854],120,"Middle",[]],[[10818.6,2112.15,0.857906],192,"Middle",[]],[[10813.3,2111.42,0.000354767],170,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Sentries 2
		[[[[10406.5,2697.75,2.31412],146,"Up",[]],[[10421.9,2695.73,0.216238],267,"Up",[]],[[10406.3,2713.4,2.23854],146,"Up",[]],[[10401.9,2713.22,-4.76837e-007],184,"Up",[]],[[10407.7,2703.38,0.17741],271,"Middle",[]],[[10404.8,2696.94,0.120067],207,"Up",[]],[[10400.8,2697.29,0.109048],233,"Up",[]],[[10402.3,2701.58,0.169924],146,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10359.8,2645.82,0],146,"Up",[]],[[10355.2,2636.46,0],146,"Up",[]],[[10353.5,2646.66,0],146,"Up",[]],[[10336.8,2671.29,0],110,"Up",[]],[[10331,2665.87,0],146,"Up",[]],[[10328.4,2661.99,0],114,"Up",[]],[[10362,2675.13,0],58,"Up",[]],[[10374.6,2642.03,0],218,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10318.8,2634.48,0],21,"Up",[]],[[10317.1,2630.09,0],103,"Up",[]],[[10324.7,2632.9,0],6,"Up",[]],[[10352.9,2618.73,0.162222],132,"Up",[]],[[10214.9,2683.3,4.76837e-007],88,"Up",[]],[[10218.4,2642.02,-2.38419e-007],70,"Up",[]],[[10218.4,2645.11,0],74,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Hunt
		[moto_3, motospawn_3, NEKY_Hunt_Trigger_1, 3,600,east,["I_C_Offroad_02_unarmed_F", "I_C_Offroad_02_LMG_F", "I_C_Offroad_02_AT_F",  "UK3CB_LSM_I_BTR40_MG", "UK3CB_LSM_I_BTR40", "UK3CB_LSM_I_Datsun_Pkm", "UK3CB_LSM_I_Hilux_M2", "UK3CB_LSM_I_Hilux_Open", "UK3CB_LSM_I_Pickup"],30] spawn NEKY_Hunt_HuntBase;
		[moto_2, motospawn_2, NEKY_Hunt_Trigger_2, 3,600,east,["I_C_Offroad_02_unarmed_F", "I_C_Offroad_02_LMG_F", "I_C_Offroad_02_AT_F",  "UK3CB_LSM_I_BTR40_MG", "UK3CB_LSM_I_BTR40", "UK3CB_LSM_I_Datsun_Pkm", "UK3CB_LSM_I_Hilux_M2", "UK3CB_LSM_I_Hilux_Open", "UK3CB_LSM_I_Pickup"],30] spawn NEKY_Hunt_HuntBase;
		[moto_1, motospawn_1, NEKY_Hunt_Trigger_2, 3,600,east,["I_C_Offroad_02_unarmed_F", "I_C_Offroad_02_LMG_F", "I_C_Offroad_02_AT_F",  "UK3CB_LSM_I_BTR40_MG", "UK3CB_LSM_I_BTR40", "UK3CB_LSM_I_Datsun_Pkm", "UK3CB_LSM_I_Hilux_M2", "UK3CB_LSM_I_Hilux_Open", "UK3CB_LSM_I_Pickup"],30] spawn NEKY_Hunt_HuntBase;
	};

	case 3: {

		/// Objective Jungle
		[Trigger_3,false,[0,12,false,false],east,1,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_5,false,[0,12,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		/// Camp 1 2 3
		[[[[10213.2,3333.06,-1.52588e-005],172,"Up",[]],[[10209.3,3326.39,0],215,"Up",[]],[[10202.8,3341.62,0],171,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9635.16,3323.54,7.62939e-005],172,"Up",[]],[[9631.38,3312.73,0],215,"Up",[]],[[9627.94,3320.21,7.62939e-005],171,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9303.42,3077.55,-3.8147e-006],172,"Up",[]],[[9295.7,3073.07,0],125,"Up",[]],[[9292.13,3084.12,-3.8147e-006],171,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Mortar Sentries
		[[[[9326.74,3637.28,0.674994],185,"Up",[]],[[9323.96,3638.3,0.593786],185,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Jungle Hunters
		[jungle_1, junglespawn_1, NEKY_Hunt_Trigger_3, 3,600,east,6,30] spawn NEKY_Hunt_HuntBase;
		[jungle_2, junglespawn_2, NEKY_Hunt_Trigger_3, 3,600,east,6,30] spawn NEKY_Hunt_HuntBase;
		[jungle_3, junglespawn_3, NEKY_Hunt_Trigger_3, 3,600,east,6,30] spawn NEKY_Hunt_HuntBase;

		[mortar_1, east, "precise", "light", ["auto", 50],150,500,30] execVM "Scripts\NEKY_Mortars\NEKY_Mortars.sqf";
	};

	case 4: {

		[officer_1,0.5,50,true,true] spawn OKS_Surrender;
		[officer_2,0.5,50,true,true] spawn OKS_Surrender;
		[officer_3,0.5,50,true,true] spawn OKS_Surrender;
		[officer_4,0.5,50,true,true] spawn OKS_Surrender;

		/// Objective 4.
		[Trigger_4,false,[0,12,false,false],east,1,1,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

		/// Final Sentries
		[[[[8989.46,3570.86,0.512133],194,"Up",[]],[[8996.55,3563.85,1.00187],194,"Up",[]],[[8994.91,3562.54,1.13049],177,"Up",[]],[[9000.02,3572.29,0.440116],189,"Up",[]],[[8994.79,3573.48,0.34135],176,"Up",[]],[[8976.14,3567.74,0.651455],109,"Up",[]],[[8957.78,3543.52,1.04199],54,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8872.4,3601.34,0.284166],2,"Up",[]],[[8871.76,3622.32,0.687008],194,"Up",[]],[[8866.42,3617.24,1.02794],194,"Up",[]],[[8866.14,3624.8,1.05774],109,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8831.43,3712.08,0.296439],163,"Up",[]],[[8818.59,3713.87,0.633006],126,"Up",[]],[[8831.89,3719.9,0.123685],3,"Up",[]],[[8826.55,3720.39,0.190857],178,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8782.57,3727.03,1.39434],223,"Up",[]],[[8782.29,3736.86,1.14209],200,"Up",[]],[[8792.2,3733.58,0.554607],194,"Up",[]],[[8789.44,3736.67,0.605638],194,"Up",[]],[[8791.74,3727.66,1.00848],245,"Up",[]],[[8786.33,3731.64,1.07856],198,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Last Hunter
		[jungle_4, junglespawn_4, NEKY_Hunt_Trigger_4, 3,600,east,6,30] spawn NEKY_Hunt_HuntBase;
		[Moto_4, motospawn_4, NEKY_Hunt_Trigger_4, 3,600,east,["I_C_Offroad_02_unarmed_F", "I_C_Offroad_02_LMG_F", "I_C_Offroad_02_AT_F",  "UK3CB_LSM_I_BTR40_MG", "UK3CB_LSM_I_BTR40", "UK3CB_LSM_I_Datsun_Pkm", "UK3CB_LSM_I_Hilux_M2", "UK3CB_LSM_I_Hilux_Open", "UK3CB_LSM_I_Pickup"],30] spawn NEKY_Hunt_HuntBase;
		[Moto_5, motospawn_5, NEKY_Hunt_Trigger_4, 3,600,east,["I_C_Offroad_02_unarmed_F", "I_C_Offroad_02_LMG_F", "I_C_Offroad_02_AT_F",  "UK3CB_LSM_I_BTR40_MG", "UK3CB_LSM_I_BTR40", "UK3CB_LSM_I_Datsun_Pkm", "UK3CB_LSM_I_Hilux_M2", "UK3CB_LSM_I_Hilux_Open", "UK3CB_LSM_I_Pickup"],30] spawn NEKY_Hunt_HuntBase;

	};

	case 5: {


	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
