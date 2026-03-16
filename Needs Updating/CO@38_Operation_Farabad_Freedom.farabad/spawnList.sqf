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



#include "\OKS_GOL_Misc\script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};

params [
	"_case"
];

switch (_case) do {

	case 1: {

		[[barricade_1],"Task_Blockade",true] spawn OKS_fnc_Destroy_Barricade;
		[[barricade_2],"Task_Blockade",true] spawn OKS_fnc_Destroy_Barricade;
		[[barricade_3],"Task_Blockade",true] spawn OKS_fnc_Destroy_Barricade;
		[[barricade_4],"Task_Blockade",true] spawn OKS_fnc_Destroy_Barricade;
		[[barricade_5],"Task_Blockade",true] spawn OKS_fnc_Destroy_Barricade;

		// Mortar Objective.
		[[
			[[2370.17,497.994,6.08271],285,"Middle",[]],
			//[[2372.39,502.091,6.10728],285,"Middle",[]],
			//[[2375.23,509.637,6.10728],285,"Middle",[]],
			[[2378.57,512.758,6.10728],2,"Middle",[]],
			//[[2463.81,480.803,3.437],46,"Up",[]],
			[[2465.52,479.538,3.45566],42,"Up",[]],
			[[2459,481.482,3.437],256,"Up",[]],
			//[[2411.44,536.809,3.43038],353,"Middle",[]],
			[[2413,536.306,3.43038],353,"Middle",[]],
			//[[2417.53,533.674,3.43038],353,"Up",[]],
			[[2411.19,541.79,-2.38419e-07],86,"Middle",[]],
			//[[2412.1,531.004,0.37288],2,"Middle",[]],
			[[2419.04,532.418,0.549076],320,"Middle",[]],
			//[[2449.32,462.504,-7.15256e-07],276,"Middle",[]],
			//[[2450.61,468.777,0],271,"Middle",[]],
			//[[2463.01,480.138,0.499722],231,"Middle",[]],
			[[2459.62,484.732,0.491222],188,"Middle",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			//[[2388.17,638.443,6.09996],109,"Middle",[]],
			[[2383.97,639.259,6.09996],333,"Middle",[]],
			//[[2387.96,632.578,6.09997],161,"Middle",[]],
			//[[2384.07,632.463,6.09997],193,"Middle",[]],
			//[[2375.09,635.877,3.12276],180,"Middle",[]],
			[[2424.08,576.71,3.44764],200,"Up",[]],
			//[[2419.22,574.128,3.44767],200,"Up",[]],
			[[2416.45,579.327,3.44727],238,"Middle",[]],
			//[[2420.18,584.528,3.53327],337,"Up",[]],
			[[2433.16,591.955,3.53327],333,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[2478.7,640.61,1.90735e-06],226,"up",[]],
			//[[2460.32,681.986,3.43826],226,"up",[]],
			[[2454.69,683.182,3.43266],267,"up",[]],
			//[[2455.19,689.091,6.78845],274,"up",[]],
			[[2463.9,695.055,6.78337],17,"up",[]],
			[[2401.96,668.429,-6.31809e-06],250,"Middle",[]],
			//[[2404.95,665.114,0.00513744],250,"Middle",[]],
			[[2407.14,658.062,0.0907961],250,"Middle",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[2409.74,734.826,2.85281],141,"up",[]],
			//[[2404.16,737.124,2.84536],234,"up",[]],
			[[2403,742.405,2.67688],248,"up",[]],
			//[[2408.18,752.17,2.83757],131,"up",[]],
			[[2402.05,758.081,3.2611],248,"up",[]],
			//[[2452.98,736.171,3.84035],188,"up",[]],
			//[[2450.61,736.281,3.84174],180,"up",[]],
			[[2446.76,738.998,3.84409],238,"up",[]],
			//[[2439.26,751.306,-2.38419e-07],162,"up",[]],
			//[[2449,746.851,-0.00356913],106,"up",[]],
			[[2456.49,747.866,0.131503],356,"up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			//[[2451.78,749.55,6.76919],204,"up",[]],
			[[2460.71,752.154,6.95604],106,"up",[]],
			[[2455.78,756.793,6.74919],44,"up",[]],
			//[[2450.46,754.39,2.06194],135,"up",[]],
			[[2450.2,757.573,0.0880561],106,"up",[]],
			//[[2445.38,761.06,0.0758691],197,"up",[]],
			//[[2459.38,751.5,3.41909],277,"up",[]],
			[[2446.85,754.13,3.41823],290,"up",[]],
			//[[2450.31,758.12,3.40957],270,"up",[]],
			[[2451.67,748.713,3.42843],344,"up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[2470.07,774.387,6.93984],254,"up",[]],
			//[[2474.19,770.906,6.95334],185,"up",[]],
			[[2479.78,773.291,6.93349],138,"up",[]],
			//[[2459.05,781.412,2.38419e-07],163,"up",[]],
			[[2489.3,792.595,0.0820732],298,"up",[]],
			//[[2479.55,783.381,0.155622],254,"up",[]],
			[[2471.1,775.344,2.38419e-07],2,"up",[]],
			//[[2479.28,786.545,4.83629],314,"up",[]],
			[[2465.94,787.383,3.14061],228,"up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[2490.67,792.957,8.46726],176,"up",[]],
			//[[2463.89,798.947,3.13186],186,"up",[]],
			[[2460.51,801.575,3.13187],220,"up",[]],
			//[[2479.2,807.796,6.70143],174,"up",[]],
			[[2494.62,801.929,8.81555],134,"up",[]],
			[[2486.46,795.813,3.64237],320,"up",[]],
			//[[2464.99,810.231,0.0430388],349,"up",[]],
			//[[2470.61,819.429,0.0195487],180,"up",[]],
			[[2465.73,818.644,3.38958],163,"up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			//[[2537.61,863.216,3.73],249,"up",[]],
			[[2538.89,861.049,3.73],205,"up",[]],
			//[[2542.81,857.307,3.73407],249,"up",[]],
			[[2547.86,857.429,3.7336],214,"up",[]],
			//[[2548.09,859.622,0.421691],24,"up",[]],
			[[2539.45,861.348,0.264577],192,"up",[]],
			//[[2551.99,870.796,3.81055],249,"up",[]],
			[[2557.79,866.376,3.68137],190,"up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[2508.94,892.562,0.140388],292,"up",[]],
			//[[2512.15,898.841,0.140388],151,"up",[]],
			[[2512.68,900.063,3.34042],280,"up",[]],
			//[[2510.71,894.439,3.27302],202,"up",[]],
			[[2509.92,891.274,3.27333],202,"up",[]],
			//[[2507.04,892.555,3.2744],202,"up",[]],
			//[[2506.51,896.503,6.61956],282,"up",[]],
			//[[2514.44,888.759,0.107215],222,"up",[]],
			[[2508.31,904.965,0.0736003],115,"up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[2499.77,887.53,0.0455952],202,"up",[]],
			//[[2496.49,889.493,0.0455949],180,"up",[]],
			//[[2496.36,897.576,0.0455952],170,"up",[]],
			[[2502.74,889.759,0.0455952],307,"up",[]],
			//[[2500.09,897.161,0],27,"up",[]],
			//[[2501.89,912.314,0.151725],201,"up",[]],
			[[2492.06,909.845,0.151725],222,"up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;

		// Vehicle.
		[[],[
			["UK3CB_TKA_O_BTR40_MG",[2280.32,458.484,1.5],303,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["Camo1",1]]]],
			["UK3CB_TKA_O_BTR40_MG",[2425.78,608.888,1.5],243,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["Camo1",1]]]],
			["UK3CB_TKA_O_BTR40_MG",[2449.47,716.414,1.5],209,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["Camo1",1]]]],
			["UK3CB_TKA_O_BTR40_MG",[2575.92,727.668,1.5],320,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["Camo1",1]]]],
			["UK3CB_TKM_O_MTLB_PKT",[2285.09,467.958,4.76837e-06],302,[["driver",-1,[]],["commander",-1,[0]]],[[6,["Camo1",1]]]],
			["UK3CB_TKM_O_MTLB_PKT",[2511.34,986.369,4.76837e-06],209,[["driver",-1,[]],["commander",-1,[0]]],[[6,["Camo1",1]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		// Mortars.
		{
			[_X, east, "precise", "light", ["auto", 50], 150, 400, 20] spawn OKS_fnc_Mortars;
		} foreach [mortar_1,mortar_2,mortar_3];

		// Dynamic Zone.
		[ Trigger_1, false, [0,22,false,false], east, 0, 0, 0, [0,true,false,0], [0,false], [0,false], [0,0,0,0,0], false ] spawn OKS_fnc_CreateZone;

		_Vehicles = [
			"UK3CB_TKM_O_MTLB_ZU23", "UK3CB_TKM_O_BTR60", "UK3CB_TKM_O_BTR40_MG", "UK3CB_TKM_O_MTLB_KPVT", 
			"UK3CB_TKM_O_MTLB_PKT", "UK3CB_TKM_O_BRDM2", "UK3CB_TKM_O_Datsun_Pkm", "UK3CB_TKM_O_Hilux_Pkm", 
			"UK3CB_TKM_O_Pickup_M2", "UK3CB_TKM_O_T34"
		];
		[Spawn_1, Spawn_1, HuntTrigger_1, 10, 240, east, _Vehicles, 120, false, "AWARE"] spawn OKS_fnc_HuntBase;
		[Spawn_2, Spawn_2, HuntTrigger_1, 10, 240, east, _Vehicles, 120, false, "AWARE"] spawn OKS_fnc_HuntBase;
		[Spawn_3, Spawn_3, HuntTrigger_1, 10, 240, east, _Vehicles, 120, false, "AWARE"] spawn OKS_fnc_HuntBase;
		[Spawn_4, Spawn_4, HuntTrigger_1, 10, 240, east, _Vehicles, 120, false, "AWARE"] spawn OKS_fnc_HuntBase;
		[Spawn_5, Spawn_5, HuntTrigger_1, 10, 240, east, _Vehicles, 120, false, "AWARE"] spawn OKS_fnc_HuntBase;

		// Camp
		{
			[getpos _X, east, 25, 1000, 2000, 30] spawn OKS_fnc_IR_AA;
		} foreach [aa_1,aa_2,aa_3]
	};

	case 2: {

		// Radars.
		[[
			[[4009.52,3938.34,3.78967],217,"Up",[]],
			//[[4008.47,3939.57,3.70527],255,"Up",[]],
			[[4007.42,3941.91,3.52338],248,"Up",[]],
			[[4006.75,3943.58,3.38589],217,"Up",[]],
			//[[4006.2,3945.7,3.22314],244,"Up",[]],
			[[4014.99,3940.13,3.80841],327,"Up",[]],
			[[4015.19,3940.88,0.720167],271,"Up",[]],
			//[[4008.39,3939.29,0.667148],28,"Up",[]],
			[[4013.12,3951.4,1.33514e-05],296,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[4054.35,3932.94,0.513557],133,"Up",[]],
			[[4052,3926.88,0.343615],16,"Up",[]],
			//[[4058.59,3923.33,1.66893e-06],317,"Up",[]],
			[[4069.92,3940.2,-3.09944e-06],273,"Middle",[]],
			[[4051.98,3927.08,2.99534],301,"Middle",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[4181.73,4068.52,0],246,"Middle",[]],
			[[4127.45,4024.44,2.14577e-06],264,"Middle",[]],
			[[4097.73,4055.16,0],217,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[4051.13,4178.97,0.0441937],146,"Middle",[]],
			[[4063.1,4197.3,4.76837e-07],164,"Middle",[]],
			[[4019.4,4159.25,4.76837e-07],144,"Middle",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoints Radar.
		[[
			[[3693.16,3190.65,2.76336],207,"Auto",[]],
			[[3690.56,3191.86,2.6833],0,"Auto",[]],
			[[3694.93,3197.68,2.75523],0,"Auto",[]]
			],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[3840.31,3538.85,7.59074],260,"Auto",[]],
			//[[3838.14,3547.46,4.07704],260,"Auto",[]],
			[[3843.74,3550.47,4.23128],317,"Auto",[]],
			[[3850.12,3549.74,7.12434],294,"Auto",[]],
			//[[3852.14,3553.94,7.18711],314,"Auto",[]],
			[[3859.41,3555.69,7.20113],329,"Auto",[]],
			[[3897.55,3592.16,6.95844],315,"Middle",[]],
			//[[3897.09,3558.77,2.97],315,"Middle",[]],
			[[3889.37,3553.92,2.97],315,"Middle",[]],
			//[[3892.85,3586.21,3.62505],279,"Up",[]],
			[[3895.12,3595.04,3.49657],308,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[4081.06,3620.29,3.61007],279,"Up",[]],
			[[4079.91,3617.1,3.7255],282,"Up",[]],
			//[[4078.81,3610.94,3.75203],257,"Up",[]],
			//[[4132.92,3753.59,0.159518],329,"Up",[]],
			[[4130.92,3750.38,2.14577e-06],298,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;


		[ Trigger_3, false, [0,12,false,false], east, 0, 0, 0, [0,true,false,0], [0,false], [0,false], [0,0,0,0,0], false ] spawn OKS_fnc_CreateZone;

		_Vehicles = [
			"UK3CB_TKM_O_MTLB_ZU23", "UK3CB_TKM_O_BTR60", "UK3CB_TKM_O_BTR40_MG", "UK3CB_TKM_O_MTLB_KPVT", 
			"UK3CB_TKM_O_MTLB_PKT", "UK3CB_TKM_O_BRDM2", "UK3CB_TKM_O_Datsun_Pkm", "UK3CB_TKM_O_Hilux_Pkm", 
			"UK3CB_TKM_O_Pickup_M2", "UK3CB_TKM_O_T34"
		];

		[Spawn_14, Spawn_14, HuntTrigger_3, 5, 180, east, 5, 60, false, "AWARE"] spawn OKS_fnc_HuntBase;
		[Spawn_12, Spawn_12, HuntTrigger_3, 5, 180, east, 5, 60, false, "AWARE"] spawn OKS_fnc_HuntBase;
		[Spawn_13, Spawn_13, HuntTrigger_3, 5, 180, east, 5, 60, false, "AWARE"] spawn OKS_fnc_HuntBase;
		[Spawn_16, Spawn_16, HuntTrigger_3, 5, 180, east, 5, 60, false, "AWARE"] spawn OKS_fnc_HuntBase;
		[Spawn_17, Spawn_17, HuntTrigger_3, 5, 180, east, 5, 60, false, "AWARE"] spawn OKS_fnc_HuntBase;	
		[Spawn_18, Spawn_18, HuntTrigger_3, 5, 180, east, _Vehicles, 60, false, "SAFE"] spawn OKS_fnc_HuntBase;	
		[Spawn_19, Spawn_19, HuntTrigger_3, 5, 180, east, _Vehicles, 60, false, "SAFE"] spawn OKS_fnc_HuntBase;	
		[Spawn_20, Spawn_20, HuntTrigger_3, 5, 180, east, _Vehicles, 60, false, "SAFE"] spawn OKS_fnc_HuntBase;	

	};

	case 3: {

		// Counter-Attacks Radars.
		_Vehicles = [
			"UK3CB_TKM_O_MTLB_ZU23", "UK3CB_TKM_O_BTR60", "UK3CB_TKM_O_BTR40_MG", "UK3CB_TKM_O_MTLB_KPVT", 
			"UK3CB_TKM_O_MTLB_PKT", "UK3CB_TKM_O_BRDM2", "UK3CB_TKM_O_Datsun_Pkm", "UK3CB_TKM_O_Hilux_Pkm", 
			"UK3CB_TKM_O_Pickup_M2", "UK3CB_TKM_O_T34"
		];
		[Spawn_6, Spawn_6, HuntTrigger_2, 10, 240, east, _Vehicles, 60, false, "AWARE"] spawn OKS_fnc_HuntBase;
		[Spawn_7, Spawn_7, HuntTrigger_2, 10, 240, east, _Vehicles, 60, false, "AWARE"] spawn OKS_fnc_HuntBase;
		[Spawn_8, Spawn_8, HuntTrigger_2, 10, 240, east, _Vehicles, 60, false, "AWARE"] spawn OKS_fnc_HuntBase;
		[Spawn_9, Spawn_9, HuntTrigger_2, 10, 240, east, _Vehicles, 60, false, "AWARE"] spawn OKS_fnc_HuntBase;
		[Spawn_10, Spawn_10, HuntTrigger_2, 10, 240, east, _Vehicles, 60, false, "AWARE"] spawn OKS_fnc_HuntBase;
		[Spawn_11, Spawn_11, HuntTrigger_2, 10, 240, east, _Vehicles, 60, false, "AWARE"] spawn OKS_fnc_HuntBase;

		// Main City Guards - Group 1
		{
			[2,getPos _X,independent] spawn OKS_fnc_Garrison_Rooftops;
		} foreach [
			rooftops_1, 
			rooftops_16, 
			rooftops_17, 
			rooftops_18, 
			rooftops_19, 
			rooftops_2, 
			rooftops_20, 
			rooftops_21, 
			rooftops_22, 
			rooftops_23, 
			rooftops_3, 
			rooftops_33, 
			rooftops_34, 
			rooftops_4
		];
		
		// Western Trenches.
		[[
			[[3982.18,5001.38,3.74931],168,"Middle",[]],
			//[[3999.15,5008.75,0],110,"Middle",[]],
			[[4004.55,5011.65,0],258,"Middle",[]],
			//[[4015.78,5015.55,0],168,"Up",[]],
			[[4030.18,5021.25,0],168,"Up",[]],
			[[4057.31,5030.78,2.38419e-07],168,"Up",[]],
			//[[4077.21,5037.85,0],168,"Up",[]],
			[[4088.73,5040.33,0],168,"Up",[]],
			[[4084.96,5040.13,0],168,"Up",[]],
			//[[4106.48,5038.73,0],232,"Up",[]],
			[[4110.18,5033.63,-2.38419e-07],259,"Up",[]],
			[[4108.98,5021.99,0.0470939],165,"Up",[]],
			//[[4107.74,5023.21,0.0947189],194,"Up",[]],
			[[4106.59,5025.78,0.179464],206,"Up",[]]
		],[["UK3CB_ADE_O_PKM_High",[4021.93,5017.52,0],151,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_BMP1",[4127.97,5017.46,0],239,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[3986.58,5010.47,0],66,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ADE_O_PKM_High",[4066.32,5033.66,0],151,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[4143.19,5037.78,0],185,"Up",[]],[[4151.57,5037.83,0],145,"Up",[]],[[4162.29,5038.08,0],170,"Up",[]],[[4187.12,5038.04,0],166,"Up",[]],[[4204.83,5038.34,0],168,"Up",[]],[[4226.23,5038.42,0],168,"Up",[]],[[4245.27,5051.2,0.440899],145,"Up",[]],[[4242.28,5050.46,0.440899],183,"Up",[]],[[4248.31,5050.75,0.440899],146,"Up",[]],[[4263.76,5048.71,13.62],192,"Up",[]],[[4262.73,5049.12,9.73],168,"Up",[]],[[4261.69,5050.01,5.82],200,"Up",[]],[[4263.78,5048.55,1.88218],200,"Up",[]]],[["UK3CB_TKA_O_BMP1",[4302.11,5011.6,0.202986],287,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ADE_O_PKM_High",[4165.43,5037.77,0],151,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_PKM_High",[4214.87,5038.07,0],151,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Vehicles.
		[[],[
			["UK3CB_MEI_O_Datsun_Pkm",[4476,5451.19,1],174,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_3",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]],
			["UK3CB_MEI_O_Datsun_Pkm",[4315.74,5473.08,1],116,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_3",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]],
			["UK3CB_MEI_O_Datsun_Pkm",[4462.63,5584.67,1],274,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_3",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]],
			["UK3CB_MEI_O_Hilux_Pkm",[4426.57,5015.57,1],131,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],
			["UK3CB_MEI_O_Hilux_Pkm",[4566,5080.52,1],206,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],
			["UK3CB_MEI_O_Hilux_Pkm",[4426.35,5105.72,1],118,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],
			["UK3CB_MEI_O_Hilux_Pkm",[4451.34,5209.03,1],126,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],
			["UK3CB_MEI_O_Hilux_Pkm",[4568.03,5234.56,1],262,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],
			["UK3CB_MEI_O_Hilux_Pkm",[4551.08,5302.97,1],214,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],
			["UK3CB_MEI_O_Hilux_Pkm",[4405.5,5336.33,1],125,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;
		[[],[
			["UK3CB_TKA_O_BMP1",[4132.39,5350.29,0],193,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],
			["UK3CB_TKA_O_BMP1",[4036.63,5453.82,0],166,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],
			["UK3CB_TKA_O_BMP1",[3939.15,5324.26,0],177,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;	


		[Trigger_4, false, [0,12,false,false], east, 0, 0, 0, [0,true,false,0], [0,false], [0,false], [0,0,0,0,0], false ] spawn OKS_fnc_CreateZone;

		sleep 15;

		if({Alive _X} count [wecho1,wecho2,wecho3,wecho4,wecho5,wecho6] >= 2) then {
			{
				_X setMarkerAlpha 1;
			} foreach ["mountain_1", "mountain_2", "mountain_3", "mountain_4"];

			/// Rear Threat.

			["hq","side","1st Platoon, be advised, the mountain forces due north of the staging point are moving south. They are likely to attack the rear of your position. Beware your rear security, proceed on mission! HQ out."] call OKS_fnc_Chat;
			_Tanks = ["UK3CB_TKA_O_T34", "UK3CB_TKA_O_T55", "UK3CB_TKA_O_T72A", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_M113_M2"];
			[Spawn_21, Spawn_21, HuntTrigger_4, 4, 300, east, _Tanks, 60, false, "SAFE"] spawn OKS_fnc_HuntBase;
			[Spawn_22, Spawn_22, HuntTrigger_4, 4, 300, east, _Tanks, 60, false, "SAFE"] spawn OKS_fnc_HuntBase;
			[Spawn_23, Spawn_23, HuntTrigger_4, 4, 300, east, _Tanks, 60, false, "SAFE"] spawn OKS_fnc_HuntBase;	
		};
	};

	case 4: {

		// Main City Guards - Group 2
		{
			[2,getPos _X,independent] spawn OKS_fnc_Garrison_Rooftops;
		} foreach [
			rooftops_11, 
			rooftops_12, 
			rooftops_13, 
			rooftops_24, 
			rooftops_25, 
			rooftops_26, 
			rooftops_27, 
			rooftops_28, 
			rooftops_29, 
			rooftops_30, 
			rooftops_31, 
			rooftops_32, 
			rooftops_35, 
			rooftops_5, 
			rooftops_6, 
			rooftops_7, 
			rooftops_8, 
			rooftops_9, 
			rooftops_10
		];		

		{
			[_X,"rhs_ammo_3of56",20,1200,150] spawn OKS_fnc_RandomArtillery;
			(str _X) setMarkerAlpha 1;
			((str _X) + "A") setMarkerAlpha 1;
			sleep 3 + (random 3);
		} foreach [artillery_1, artillery_2, artillery_3, artillery_4];

		{
			[_X,independent,false,1500,true] spawn OKS_fnc_Ambient_AAA;
			sleep 3 + (random 3);
		} foreach [aaa_1, aaa_2, aaa_3, aaa_4];
		{
			[_X,independent,true,1500,true] spawn OKS_fnc_Ambient_AAA;
			sleep 3 + (random 3);
		} foreach [hmg_1, hmg_2, hmg_3, hmg_4, hmg_5];		
	};

	case 5: {

		// Objective Guards
		[[
			[[4424.51,5440.48,0],282,"Up",[]],
			[[4408.07,5455.03,0],224,"Up",[]],
			[[4426.84,5465.91,0],266,"Up",[]],
			[[4451.68,5555.13,-4.76837e-07],282,"Up",[]],
			[[4432.88,5571.13,0],184,"Up",[]],
			[[4417.28,5569.56,0],118,"Up",[]],
			[[4424.93,5574.69,3.72381],168,"Up",[]],
			[[4433.22,5580.07,3.73],124,"Up",[]],[[4455.53,5577.17,0],255,"Middle",[]],
			[[4457.59,5569.74,3.20038],300,"Up",[]],[[4416.52,5545.92,3.29313],54,"Up",[]],
			[[4487.84,5557.69,6.86026],260,"Up",[]],[[4396.31,5539.65,6.8931],127,"Up",[]],
			[[4404.22,5422.83,3.38523],71,"Up",[]],[[4376.6,5422.82,3.49348],69,"Up",[]],
			[[4379.36,5478.82,3.73922],147,"Up",[]],[[4453.46,5467.57,6.87598],169,"Up",[]],
			[[4443.6,5444.43,3.37516],299,"Up",[]]
		],[],[]] spawn GW_Common_fnc_spawnGroup;

		// Main City Guards - Group 3
		{
			[3,getPos _X,independent] spawn OKS_fnc_Garrison_Rooftops;
		} foreach [
			rooftops_14, 
			rooftops_15, 
			rooftops_36, 
			rooftops_37, 
			rooftops_38, 
			rooftops_39, 
			rooftops_40, 
			rooftops_41, 
			rooftops_42, 
			rooftops_43, 
			rooftops_44, 
			rooftops_45
		];		

	};

	case 6: {

		// Guards at Northern City
		{
			[4,getPos _X,independent] spawn OKS_fnc_Garrison_Rooftops;
		} foreach [
			rooftops_38, rooftops_39, rooftops_40, rooftops_41,
			rooftops_42, rooftops_43, rooftops_44, rooftops_45
		];		

		[[],[
			["UK3CB_TKA_O_GAZ_Vodnik_PKT",[4123.52,6195.07,1.5227],113,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_3",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]],
			["UK3CB_TKA_O_GAZ_Vodnik_PKT",[4121.11,6190.37,1.02412],113,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_3",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]],
			["UK3CB_TKA_O_GAZ_Vodnik_PKT",[4319.79,6163.25,0.685301],150,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_3",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]],
			["UK3CB_TKA_O_GAZ_Vodnik_PKT",[4559.54,6094.21,2.88294],188,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_3",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		// City Crossing.
		[[[[4181.74,6266.13,10.5514],135,"Up",[]],[[4188.04,6275.53,10.5591],135,"Up",[]],[[4229.96,6258.91,3.33033],172,"Up",[]],[[4262.97,6248.11,6.89049],110,"Up",[]],[[4062.39,6250.45,0],117,"Up",[]],[[4063.35,6255.2,4.76837e-07],117,"Up",[]],[[4063.83,6259.57,0],111,"Up",[]]],[],[]] spawn GW_Common_fnc_spawnGroup;
		[[[[4161.29,6302.7,28.6521],135,"Up",[]],[[4163.97,6303.89,28.6521],155,"Up",[]]],[],[]] spawn GW_Common_fnc_spawnGroup;
	
	};

	case 7: {

		// Mortar Air Counter
		[east, "UK3CB_TKA_O_UH1H_M240", False, "paradrop", "helicopter_1", "dz_1", "helicopter_exit", [2,1], ["dz_1"]] spawn OKS_fnc_AirDrop; sleep 5;
		[east, "UK3CB_TKA_O_UH1H_M240", False, "paradrop", "helicopter_2", "dz_2", "helicopter_exit", [2,1], ["dz_2"]] spawn OKS_fnc_AirDrop; sleep 5;
		[east, "UK3CB_TKA_O_UH1H_GUNSHIP", true, "paradropthenpatrol", "helicopter_3", "dz_3", "helicopter_exit", [2,1], ["dz_3"]] spawn OKS_fnc_AirDrop;
	};

	case 8: {

		// Radar Station Counter
		[east, "UK3CB_TKA_O_UH1H_M240", False, "paradrop", "helicopter_1", "dz_4", "helicopter_exit", [2,1], ["dz_4"]] spawn OKS_fnc_AirDrop; sleep 5;
		[east, "UK3CB_TKA_O_UH1H_M240", False, "paradrop", "helicopter_2", "dz_5", "helicopter_exit", [2,1], ["dz_5"]] spawn OKS_fnc_AirDrop; sleep 5;
		[east, "UK3CB_TKA_O_UH1H_GUNSHIP", true, "unload", "helicopter_3", "dz_6", "helicopter_exit", [2,1], ["dz_6"]] spawn OKS_fnc_AirDrop;

	};

	case 9: {

		// Bridge Counter
		[east, "UK3CB_TKA_O_UH1H_M240", False, "paradrop", "helicopter_1", "dz_7", "helicopter_exit", [2,1], ["dz_7"]] spawn OKS_fnc_AirDrop; sleep 5;
		[east, "UK3CB_TKA_O_UH1H_M240", False, "paradrop", "helicopter_2", "dz_8", "helicopter_exit", [2,1], ["dz_8"]] spawn OKS_fnc_AirDrop; sleep 5;
		[east, "UK3CB_TKA_O_UH1H_GUNSHIP", true, "paradropthenpatrol", "helicopter_3", "dz_9", "helicopter_exit", [2,1], ["dz_9"]] spawn OKS_fnc_AirDrop;

	};

	case 10: {

		// Camp Guards
		[[
			//[[2997.17,2733.99,5.38826e-05],227,"up",[]],
			[[2997.39,2741.52,5.45979e-05],142,"up",[]],
			[[2977.25,2757.49,0],227,"up",[]],
			//[[2973.64,2751.72,5.43594e-05],227,"Middle",[]],
			[[3020.75,2669.45,5.53131e-05],227,"up",[]],
			[[3017.65,2666.33,5.43594e-05],227,"up",[]],
			//[[3021.81,2679.67,5.43594e-05],227,"up",[]],
			[[3013.51,2702.31,5.43594e-05],227,"up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[2939.83,2719.67,5.43594e-05],14,"Middle",[]],
			//[[2933.59,2716.42,5.43594e-05],268,"up",[]],
			[[2933.41,2697.54,5.43594e-05],65,"up",[]],
			[[2928.75,2689,5.48363e-05],239,"up",[]],
			//[[2929.28,2678.43,5.48363e-05],337,"up",[]],
			[[2933.72,2666.69,5.43594e-05],203,"up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[2903.98,2762.56,5.43594e-05],153,"up",[]],
			[[2898.93,2766.58,5.42402e-05],258,"up",[]],
			//[[2908.61,2774.09,5.43594e-05],143,"up",[]],
			[[2971.52,2801.27,5.43594e-05],264,"up",[]],
			[[2964.37,2815.54,5.43594e-05],213,"Middle",[]],
			//[[2982.88,2794.45,2.38887],227,"Middle",[]],
			[[2980.37,2796.95,3.0418],227,"Middle",[]],
			[[2955.65,2816.84,1.71592],227,"Middle",[]],
			//[[3027.88,2770.02,1.98051],227,"up",[]],
			[[3027.84,2773.51,1.62339],258,"up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;

		// Dynamic Zone.
		[ Trigger_2, false, [0,12,false,false], east, 0, 0, 0, [0,true,false,0], [0,false], [0,false], [0,0,0,0,0], false ] spawn OKS_fnc_CreateZone;	
	};

	case 11: {

		{
			deleteVehicle _X;
		} foreach [BLOCK_1, BLOCK_2, BLOCK_3, BLOCK_4];

		// Relief Force
		["hq","side","1st Platoon, be advised, the 1st Marines broke through the city, friendly relief force inbound. Hold your position and clear the southern road, your mission is completed, HQ out."] call OKS_fnc_Chat;
		[reinforce_1,reinforce_2,reinforce_3,west,[8,["rhsusf_m1a2sep1tuskiid_usarmy","rhsusf_m1a2sep1tuskiid_usarmy", "rhsusf_m1a2sep1tuskid_usarmy", "rhsusf_m1a2sep1tuskid_usarmy", "rhsusf_m1a1aim_tuski_d", "rhsusf_m1a1aim_tuski_d", "rhsusf_m1a2sep1tuskiid_usarmy"], 15, 60],[true,0], [], true, true] spawn OKS_fnc_Convoy_Spawn;
		sleep 100;
		[reinforce_1,reinforce_2,reinforce_3,west,[6,["RHS_M2A2_BUSKI"], 15, 60],[true,0], [], true, true] spawn OKS_fnc_Convoy_Spawn;
		sleep 100;
		[reinforce_1,reinforce_2,reinforce_3,west,[7,["UK3CB_B_MTVR_Closed_USMC_DES", "UK3CB_B_MTVR_Closed_USMC_DES", "UK3CB_B_MTVR_Reammo_USMC_DES", "UK3CB_B_MTVR_Refuel_USMC_DES", "UK3CB_B_MTVR_Repair_USMC_DES", "UK3CB_B_MTVR_Open_USMC_DES", "UK3CB_B_MTVR_Open_USMC_DES"], 15, 60],[true,8], [], true, true] spawn OKS_fnc_Convoy_Spawn;

	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*
	GOL SCRIPT EXAMPLES:
	Link to README: https://github.com/oksmantv/Guerrillas-of-Liberations-Misc-Addon?tab=readme-ov-file#readme 
*/ 