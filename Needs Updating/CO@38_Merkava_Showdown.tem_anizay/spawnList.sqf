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

		/// Anti Air
		if({!isNil _X} count ["wecho1","wecho2","wecho3","wecho4","wecho5","wecho6","eecho1","eecho2","eecho3","eecho4","eecho5","eecho6"] > 0) then {			
			[[],[["UK3CB_ARD_O_MTLB_ZU23",[1124.86,5395.94,3.05176e-005],341,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[3]]],[[6,["ARD",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		};

		/// First line of defence
		[Trigger_1,false,[0,14,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;	

		// Ambush Blockhouse 1
		[[[[776.887,5113.2,2.93285],337,"Middle",[]],[[780.804,5113.5,2.00612],321,"Middle",[]],[[788.474,5113.24,1.10367],322,"Middle",[]],[[797.014,5104.88,2.47101],326,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Blockhouse 1
		[[[[805.324,5249.65,0],166,"Up",[]],[[796.484,5244.23,1.52588e-005],55,"Up",[]],[[791.265,5246.55,0],173,"Up",[]],[[809.234,5234.65,-1.52588e-005],343,"Up",[]],[[817.306,5237.02,0.349228],334,"Up",[]],[[821.963,5238.04,3.06876],353,"Up",[]],[[823.939,5237.64,0.479935],257,"Up",[]],[[821.137,5243.41,0],309,"Up",[]],[[827.243,5238.44,-1.52588e-005],355,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Blockhouse 2
		[[[[830.466,5602,0],186,"Up",[]],[[826.904,5590.55,0],323,"Middle",[]],[[822.135,5589.74,3.04827],14,"Up",[]],[[822.598,5588.02,0.420982],271,"Up",[]],[[817.572,5587.89,2.95525],232,"Up",[]],[[817.065,5593.96,0.190384],285,"Up",[]],[[808.957,5594.78,-7.62939e-006],299,"Up",[]],[[812.472,5606.4,0],68,"Up",[]],[[803.86,5603.14,7.62939e-006],203,"Up",[]],[[800.717,5604.72,7.62939e-006],68,"Middle",[]],[[796.804,5609.49,7.62939e-006],188,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Blockhouse 3
		[[[[1008.84,5274.58,0],0,"Up",[]],[[1018.9,5276.03,0.740845],0,"Up",[]],[[1022.2,5272.09,0],55,"Middle",[]],[[1016.25,5286.3,0],146,"Up",[]],[[1030.37,5287.01,0.525909],198,"Up",[]],[[1042.92,5293.53,-1.52588e-005],265,"Middle",[]],[[1039.5,5288.02,0.756561],285,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Anti-Air Strongpoint
		[[[[1033.43,5435.62,0],209,"Up",[]],[[1026.92,5442.46,3.03275],209,"Up",[]],[[1027.81,5445.99,3.18452],209,"Up",[]],[[1028.61,5442.07,0.391342],167,"Up",[]],[[1028,5448.42,0.486557],209,"Up",[]],[[1047.22,5466.94,3.35277],3,"Up",[]],[[1048.71,5455.74,3.51431],171,"Up",[]],[[1041.21,5457.38,3.64912],335,"Up",[]],[[1046.54,5457.24,0.899002],308,"Up",[]],[[1027.23,5466.31,0.843033],111,"Up",[]],[[1027.11,5461.16,0.537735],68,"Up",[]],[[1028.22,5455.72,3.43793],267,"Up",[]],[[1047.21,5466.69,0.312897],270,"Up",[]],[[1045.92,5449.6,0],293,"Up",[]],[[1033.18,5453.01,0],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Blockhouse 4 with Tank
		[[[[1220.63,5667.93,-1.52588e-005],24,"Up",[]],[[1242.91,5673.9,-7.62939e-006],257,"Up",[]],[[1243.37,5651.43,0],314,"Up",[]],[[1242.23,5647.27,-1.52588e-005],275,"Up",[]],[[1228.38,5662.51,1.04585],24,"Up",[]],[[1223.41,5664.21,1.7682],228,"Up",[]],[[1228.12,5653.96,0.51107],68,"Up",[]],[[1238.41,5664.76,-1.52588e-005],312,"Middle",[]]],[["UK3CB_ARD_O_T72A",[1293.71,5687.2,-1.52588e-005],272,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// HMG Construction Site
		[[[[1089.87,5173.18,0.0826874],300,"Middle",[]],[[1088.85,5169.04,3.45882],259,"Up",[]],[[1091.53,5176.52,3.77177],332,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Initial Tanks
		[[],[["UK3CB_ARD_O_T55",[1006.23,5283.83,1.52588e-005],260,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],["UK3CB_ARD_O_T55",[1012.92,5659.48,0],265,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],["UK3CB_ARD_O_T55",[1064.53,5447.76,0],357,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 2: {

		// Counter-Attack Block 1
		// Infantry
		[[1102.43,5115.81,0],3,east,1000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[1147.37,5245.02,0],3,east,1000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[1042.04,5382.1,0],3,east,1000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;

		// Flanking Vehicle
		[[1123.17,4887.66,0],nil,"UK3CB_ARD_O_BMP1",east,1000] spawn OKS_Hunt_SpawnGroup; sleep 30;

		// Front Vehicle
		[[1045.72,5480.58,0],nil,"UK3CB_ARD_O_BMP1",east,1000] spawn OKS_Hunt_SpawnGroup;


	};

	case 3: {

		// Counter-Attack Block 2
		// Infantry
		[[1073.6,5461.68,0],4,east,1000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[1053.17,5569.46,0],4,east,1000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[997.228,5723.64,0],4,east,1000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;

		// Flanking Vehicle
		[[980.573,6036.67,0],nil,"UK3CB_ARD_O_BMP1",east,1000] spawn OKS_Hunt_SpawnGroup; sleep 30;

		// Front Vehicle
		[[1192.67,5669.46,0],nil,"UK3CB_ARD_O_BMP1",east,1000] spawn OKS_Hunt_SpawnGroup;


	};

	case 4: {

		// Second Objective
		// Artillery 2.
		[[[[2250.69,5234.89,0],209,"Up",[]],[[2254.7,5224.35,0.39624],83,"Up",[]],[[2267.27,5230.71,-7.62939e-006],193,"Up",[]],[[2278.35,5231.79,-1.52588e-005],174,"Up",[]],[[2275.58,5212.31,0.790611],209,"Up",[]],[[2281.27,5213.99,0.438629],209,"Up",[]],[[2280.1,5220.76,0.163963],346,"Up",[]],[[2257.41,5213.28,3.07684],52,"Up",[]],[[2253.65,5210.47,0.611534],11,"Middle",[]],[[2257.28,5212.66,0.440712],109,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[east,arty_1,getpos target_1,6,300,180] spawn OKS_ArtyFire; sleep 7;
		[east,arty_2,getpos target_1,6,300,180] spawn OKS_ArtyFire; sleep 9;

		// Artillery 1
		[[[[2323.09,5505.78,-1.52588e-005],118,"Up",[]],[[2318.88,5501.76,1.52588e-005],88,"Up",[]],[[2326.75,5492.03,0],25,"Up",[]],[[2336.6,5490.52,-1.52588e-005],287,"Up",[]],[[2346.68,5489.11,3.02043],154,"Up",[]],[[2338.97,5488.26,2.99748],180,"Up",[]],[[2337.28,5494.68,3.20659],256,"Up",[]],[[2344.56,5490.38,0.341415],118,"Up",[]],[[2340.1,5494.69,0.314972],2,"Up",[]],[[2341.2,5489.51,0.339645],327,"Up",[]],[[2351.99,5505.22,0],207,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[east,arty_3,getpos target_1,6,300,180] spawn OKS_ArtyFire; sleep 6;
		[east,arty_4,getpos target_1,6,300,180] spawn OKS_ArtyFire; sleep 8;

		// Artillery HQ
		[[[[2401.48,5018.01,0],307,"Up",[]],[[2407.36,5025.1,0],345,"Up",[]],[[2427.54,5024.32,3.67394],325,"Up",[]],[[2425.27,5024.17,3.62134],307,"Up",[]],[[2415.56,5007.1,0],326,"Up",[]],[[2427.46,5011.58,0],269,"Up",[]],[[2425.71,5019.72,0.502434],307,"Up",[]],[[2426.26,5024.13,0.508522],257,"Up",[]],[[2430.12,5014.34,3.66811],40,"Up",[]],[[2424.78,5021.15,3.61572],115,"Middle",[]],[[2425.35,5014.35,3.66655],56,"Middle",[]],[[2430.38,5028.51,0],262,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[east,arty_5,getpos target_1,6,300,180] spawn OKS_ArtyFire;

		[officer_1,0.5,50,true,true] spawn OKS_Surrender;
		[officer_2,0.5,50,true,true] spawn OKS_Surrender;

		// Dynamic
		[Trigger_2,false,[0,24,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;	
		[Trigger_3,false,[0,10,false,false],east,0,2,1,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;	
	

		// HuntBases
		_Vehicles = [
			"UK3CB_ARD_O_BMP1", 
			"UK3CB_ARD_O_BMP2", 
			"UK3CB_ARD_O_BRM1K", 
			"UK3CB_ARD_O_MTLB_BMP", 
			"UK3CB_ARD_O_GAZ_Vodnik_Cannon", 
			"UK3CB_ARD_O_Hilux_Spg9", 
			"UK3CB_ARD_O_T34", 
			"UK3CB_ARD_O_T55"
		];
		[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,900,east,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[Base_5, Spawn_5, NEKY_Hunt_Trigger_1, 5,900,east,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[Base_7, Spawn_7, NEKY_Hunt_Trigger_1, 5,900,east,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[Base_3, Spawn_3, NEKY_Hunt_Trigger_1, 5,900,east,_Vehicles,300] spawn NEKY_Hunt_HuntBase;

	};

	case 5: {

		/// Finale Trench
		[[[[3159.15,5259.12,0.525314],186,"Middle",[]],[[3163.03,5264.36,1.63037],303,"Up",[]],[[3166.1,5271.77,2.38762],181,"Middle",[]],[[3159.12,5282.46,1.39828],134,"Middle",[]],[[3164.06,5290.48,1.13653],215,"Middle",[]],[[3144.83,5296.86,1.8102],126,"Middle",[]],[[3142.7,5303.08,1.36493],173,"Middle",[]],[[3141.6,5305.21,1.54918],126,"Up",[]],[[3137.77,5300.1,1.89106],228,"Up",[]],[[3151.98,5254.13,1.33791],229,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3158.6,5239.8,1.13312],183,"Middle",[]],[[3155.26,5225.77,1.6121],226,"Middle",[]],[[3172.69,5243,1.78645],269,"Middle",[]],[[3176.17,5246.86,2.49078],123,"Middle",[]],[[3177.72,5252.7,2.38338],184,"Middle",[]],[[3182.28,5251.21,2.21951],198,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3149.89,5216.99,1.72664],260,"Up",[]],[[3150.87,5215.09,1.05585],6,"Middle",[]],[[3174.02,5199.89,0.660118],300,"Middle",[]],[[3167.89,5182.3,0.161194],33,"Middle",[]],[[3160.48,5177.99,1.08412],233,"Up",[]],[[3163.9,5179.68,1.3805],65,"Middle",[]],[[3165.55,5174.85,1.01262],248,"Up",[]]],[["UK3CB_ARD_O_T72A",[3152,5209.57,3.01856],275,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3183.66,5203.69,1.76761],316,"Up",[]],[[3190.47,5209.12,0.707672],258,"Middle",[]],[[3202.88,5202.85,0.663033],298,"Middle",[]],[[3207.46,5197.14,1.32837],259,"Middle",[]],[[3217.79,5207.14,1.12428],186,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3216.98,5216.35,1.00263],174,"Middle",[]],[[3215.17,5227.5,1.83227],314,"Up",[]],[[3206.89,5221.74,0.351227],46,"Up",[]],[[3207.22,5227.37,1.15453],192,"Up",[]],[[3233.93,5205.98,0.783264],297,"Middle",[]],[[3246.21,5200.79,1.36353],264,"Middle",[]],[[3250.86,5209.85,0.410698],322,"Middle",[]]],[["UK3CB_ARD_O_T72A",[3243.49,5293.79,0.00274658],262,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;


		/// Hunt Finale
		_Vehicles = [
			"UK3CB_ARD_O_BMP1", 
			"UK3CB_ARD_O_BMP2", 
			"UK3CB_ARD_O_BRM1K", 
			"UK3CB_ARD_O_MTLB_BMP", 
			"UK3CB_ARD_O_GAZ_Vodnik_Cannon", 
			"UK3CB_ARD_O_Hilux_Spg9", 
			"UK3CB_ARD_O_T34", 
			"UK3CB_ARD_O_T55"
		];
		[Base_2, Spawn_2, NEKY_Hunt_Trigger_2, 5,900,east,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[Base_4, Spawn_4, NEKY_Hunt_Trigger_2, 5,900,east,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[Base_6, Spawn_6, NEKY_Hunt_Trigger_2, 5,900,east,_Vehicles,300] spawn NEKY_Hunt_HuntBase;

		[Trigger_4,false,[0,24,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
	};

	case 6: {

		// Trench Counter-Attack
		// Infantry
		[[3523.03,5263.73,0],4,east,1000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[3471.56,5342.01,0],4,east,1000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[3421.01,5416.96,0],4,east,1000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[3352.74,5486.35,0],4,east,1000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;

		// Flanking Vehicle
		[[3328.35,5856.82,0],nil,"UK3CB_ARD_O_BMP1",east,1000] spawn OKS_Hunt_SpawnGroup; sleep 60;

		// Front Vehicle
		[[3650.94,4880.41,0],nil,"UK3CB_ARD_O_BMP1",east,1000] spawn OKS_Hunt_SpawnGroup; sleep 60;

		// Final Boss Vehicle
		[[3802.13,5747.94,0],nil,"UK3CB_ADA_O_T72B",east,1000] spawn OKS_Hunt_SpawnGroup;
		

	};

	case 7:{

		// FOB Nauzad
		// Vehicles
		[[],[["UK3CB_ARD_O_BMP1",[4504.93,5758.17,1.52588e-005],265,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ARD_O_BMP1",[4561.8,5798.71,0],277,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ARD_O_T55",[4650.06,5746.52,0],278,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ARD_O_BMP1",[4536.79,5890.33,0],273,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ARD_O_BMP1",[4474.01,5838.72,0],1,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ARD_O_T55",[4565.93,6039.07,0],216,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		/// Infantry
		[[[[4518.28,5852.55,0.696045],104,"Up",[]],[[4518.29,5847.41,0.696045],133,"Up",[]],[[4518.27,5843.7,0.696045],86,"Middle",[]],[[4517.06,5876.15,0.69603],77,"Up",[]],[[4517.64,5872.01,0.696045],98,"Up",[]],[[4517.04,5867.22,0.69603],78,"Up",[]],[[4539.75,5850.73,0.762375],232,"Up",[]],[[4485.35,5892.09,6.79893],250,"Up",[]],[[4457.08,5856.7,1.24174],259,"Up",[]],[[4458.43,5827.21,1.34251],254,"Up",[]],[[4476.25,5860.09,0],254,"Up",[]],[[4503.24,5852.67,0],56,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4537.83,5852.4,4.09344],268,"Up",[]],[[4546.03,5851.06,4.10901],285,"Up",[]],[[4546.09,5851.87,0.762375],293,"Up",[]],[[4539.56,5862.34,0.762375],276,"Up",[]],[[4548.15,5857.07,4.10892],345,"Up",[]],[[4547.94,5812.15,0.536728],247,"Up",[]],[[4545.98,5820.53,0.535614],259,"Up",[]],[[4546.1,5824.03,0],269,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4530.65,5791.84,0],293,"Up",[]],[[4537.41,5771.91,0],242,"Up",[]],[[4532.08,5779.83,0],88,"Up",[]],[[4529.75,5774.59,0.536255],76,"Up",[]],[[4529.06,5783.42,0.536774],82,"Up",[]],[[4516.89,5819.4,0.536819],83,"Up",[]],[[4517.68,5810.89,0.536377],75,"Up",[]],[[4485.09,5757.55,6.79893],254,"Up",[]],[[4563.97,5754.67,6.53127],250,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4537.33,5874.09,4.09344],277,"Up",[]],[[4548.19,5859.65,0.762085],293,"Up",[]],[[4539.19,5874.1,0.762375],301,"Up",[]],[[4546.64,5875.13,0.762375],171,"Up",[]],[[4542.95,5869.75,0.762375],176,"Up",[]],[[4543.14,5867.38,4.10901],293,"Up",[]],[[4546.91,5865.85,4.10901],302,"Up",[]],[[4545.34,5872.32,4.10901],30,"Up",[]],[[4565.19,5892.59,6.45718],254,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		[officer_3,0.5,50,true,true] spawn OKS_Surrender;
		[officer_4,0.5,50,true,true] spawn OKS_Surrender;

	};


	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
