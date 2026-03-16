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



#include "\OKS_GOL_MISC\script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};

params [
	"_case"
];

private _Vehicles = [
	"I_C_Van_01_transport_F", 
	"I_C_Van_02_transport_F", 
	"I_C_Offroad_02_unarmed_F", 
	"I_C_Offroad_02_LMG_F", 
	"rhsgref_tla_offroad", 
	"rhsgref_tla_offroad_armed", 
	"UK3CB_KDF_I_Gaz66_Covered", 
	"UK3CB_KDF_I_Gaz66_Open", 
	"UK3CB_KDF_I_UAZ_Closed", 
	"UK3CB_KDF_I_UAZ_Open", 
	"UK3CB_TKM_I_Hilux_Open", 
	"UK3CB_TKM_I_LR_Closed", 
	"UK3CB_TKM_I_Pickup", 
	"UK3CB_TKM_I_Ural_Open"
];

switch (_case) do {

	case 0: {

		// AAA
		{
			[_X,east,false,1500,true] spawn OKS_fnc_Ambient_AAA; sleep 5;
		} foreach [aaa_1,aaa_2,aaa_3];

		// AA
		{
			[getPos _X,east,100,900,2000,90] spawn OKS_fnc_IR_AA; sleep 1;
		} foreach [aa_1,aa_2,aa_3];	

		{
			[Group _X,getMarkerPos "respawn_west",west,false,"Task_Hostage",true] spawn OKS_fnc_Evacuate_HVT;
		} foreach [hostage_1,hostage_2,hostage_3,hostage_4,hostage_5,hostage_6,hostage_7,hostage_8,hostage_9];

	};

	case 1: {

		// Cocaine Stash 1 
		[[[[4508.87,397.53,3.86049],360,"Up",[]],[[4498.85,395.445,3.92966],311,"Up",[]],[[4458.33,462.225,4.02139],345,"Up",[]],[[4470.14,463.17,4.26186],345,"Up",[]],[[4471.05,458.162,4.03867],284,"Up",[]],[[4461.75,458.017,3.93285],345,"Up",[]],[[4462.58,452.09,0.506594],262,"Up",[]],[[4470.08,452.055,0.477628],180,"Up",[]]],[["rhsgref_tla_offroad_armed",[4515.39,463.394,0],26,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_04",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",1,"HideDoor2",1,"HideDoor3",0,"HideBackpacks",1,"HideBumper1",1,"HideBumper2",0,"HideConstruction",1]]]],["rhsgref_tla_offroad_armed",[4216,435.343,1],94,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_02",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",1,"HideDoor2",1,"HideDoor3",1,"HideBackpacks",1,"HideBumper1",0,"HideBumper2",1,"HideConstruction",1]]]],["UK3CB_ADE_O_PKM_High",[4470.69,448.703,3.6361],80,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4380.06,441.66,0.77434],256,"Middle",[]],[[4393.36,443.263,0.875064],133,"Middle",[]],[[4396.01,448.233,0.87483],89,"Middle",[]],[[4395.05,458.207,0.858422],190,"Middle",[]],[[4389.24,461.487,0.781307],338,"Up",[]],[[4387.06,457.031,0.76224],299,"Up",[]],[[4391.22,448.197,0.842336],165,"Up",[]],[[4397.03,409.271,0.60543],83,"Up",[]],[[4392.85,409.881,0.571956],170,"Middle",[]],[[4386.11,405.511,0.534949],83,"Up",[]],[[4378.29,400.718,0.829062],83,"Up",[]],[[4378.18,404.666,0.715197],324,"Up",[]]],[["UK3CB_ADE_O_PKM_High",[4291.37,449.383,0.933411],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4538,414.359,0],22,"Middle",[]],[[4536.18,411.47,0],277,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[4537.42,413.276,0],293,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrol
		[[[[4509.14,646.761,3.2862],0,[]],[[4514.14,641.761,3.2862],0,[]],[[4504.14,641.761,3.2862],0,[]],[[4519.14,636.761,3.2862],0,[]]],[],[[[4588.95,606.535,0],[[0,"Move"],[1,"SAFE"]]],[[4583.73,507.902,4.76837e-07],[[0,"Move"]]],[[4582.42,396.203,0],[[0,"Move"]]],[[4536.69,361.583,0],[[0,"Move"]]],[[4573.27,419.718,4.76837e-07],[[0,"Move"]]],[[4565.44,513.779,4.76837e-07],[[0,"Move"]]],[[4570.66,606.078,0],[[0,"Move"]]],[[4493.13,636.842,0.707661],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4010.29,479.142,0],0,[]],[[4015.29,474.142,0],0,[]],[[4005.29,474.142,0],0,[]],[[4020.29,469.142,0],0,[]]],[],[[[4098.06,458.145,4.84224],[[0,"Move"],[1,"SAFE"]]],[[4188.49,398.541,1.3319],[[0,"Move"]]],[[4336.99,348.699,0],[[0,"Move"]]],[[4464.93,360.518,0],[[0,"Move"]]],[[4327.84,372.215,0],[[0,"Move"]]],[[4181.81,379.015,1.71772],[[0,"Move"]]],[[4067.74,412.414,4.84219],[[0,"Move"]]],[[3994.28,469.224,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4188.77,680.306,0],0,[]],[[4193.77,675.306,0],0,[]],[[4183.77,675.306,0],0,[]],[[4198.77,670.306,0],0,[]]],[],[[[4308.97,677.731,0],[[0,"Move"],[1,"SAFE"]]],[[4403.55,617.506,0],[[0,"Move"]]],[[4455.29,515.246,0],[[0,"Move"]]],[[4373.64,541.114,0],[[0,"Move"]]],[[4279.06,588,0],[[0,"Move"]]],[[4218.02,625.186,0],[[0,"Move"]]],[[4136.38,616.698,0],[[0,"Move"]]],[[4172.76,670.387,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3931.07,617.799,0],0,[]],[[3936.07,612.799,0],0,[]],[[3926.07,612.799,0],0,[]],[[3941.07,607.799,0],0,[]],[[3926.08,608.158,0],0,[]],[[3931.08,606.158,0],0,[]],[[3934.41,602.913,0],0,[]],[[3939.41,600.913,0],0,[]],[[3920.97,600.887,0],0,[]],[[3925.97,598.887,0],0,[]]],[],[[[4130.95,467.503,1.23099],[[0,"Move"],[1,"SAFE"]]],[[4327.06,416.307,0.742899],[[0,"Move"]]],[[4503.49,447.891,0],[[0,"Move"]]],[[4525.24,582.886,0],[[0,"Move"]]],[[4501.15,449.072,0],[[0,"Move"]]],[[4330.42,415.914,2.38419e-07],[[0,"Move"]]],[[4129.95,465.502,0],[[0,"Move"]]],[[3936.07,612.799,0.5],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		{
			[_X, _X, NEKY_Hunt_Trigger_1, 4,300,east,_Vehicles,120] spawn OKS_fnc_Huntbase; sleep 20;
		} foreach [spawn_1,spawn_2,spawn_3];

	};

	case 2: {

		// Airfield.
		[[[[1082.66,2521.27,14.467],227,"Up",[]],[[1075.21,2514.24,3.97411],336,"Up",[]],[[1069.13,2503.98,4.21112],336,"Up",[]],[[1063.12,2488.45,4.08422],235,"Up",[]],[[1071.24,2565.03,0],47,"Up",[]]],[["rhsgref_tla_offroad_armed",[981.846,2465.17,-7.62939e-06],92,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_01",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",1,"HideDoor3",0,"HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1]]]],["UK3CB_ADG_O_DSHKM",[1085.77,2521.89,15.1473],141,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1199.46,2604,15.0972],71,"Up",[]],[[1193.78,2598.55,15.0958],236,"Up",[]],[[1195.03,2600.85,18.8028],236,"Up",[]],[[1137.84,2604.42,0.434343],90,"Up",[]],[[1136.54,2580.56,0.0725322],97,"Up",[]],[[1163.85,2604.03,0.434344],267,"Up",[]],[[1125.34,2587.68,0.606133],336,"Up",[]],[[1125.97,2581.55,0.186976],199,"Up",[]]],[["rhsgref_tla_offroad_armed",[1272.04,2614.46,-6.67572e-06],51,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_04",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",1,"HideDoor3",1,"HideBackpacks",1,"HideBumper1",1,"HideBumper2",0,"HideConstruction",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1069.08,2611.43,0],191,"Middle",[]],[[1070.31,2614.62,0],86,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[1069.39,2612.61,0],101,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[818.828,2364.86,1.91743],0,[]],[[823.828,2359.86,1.91743],0,[]],[[813.828,2359.86,1.91743],0,[]],[[828.828,2354.86,1.91743],0,[]]],[],[[[832.044,2568.57,1.91743],[[0,"Move"],[1,"SAFE"]]],[[1028.01,2569.03,1.91743],[[0,"Move"]]],[[1034.39,2371.24,1.91743],[[0,"Move"]]],[[848.45,2358.48,1.91743],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1133,2430.19,7.03286],0,[]],[[1138,2425.19,7.03286],0,[]],[[1128,2425.19,5.93703],0,[]],[[1143,2420.19,7.03286],0,[]]],[],[[[1235.55,2583.47,7.03284],[[0,"Move"],[1,"SAFE"]]],[[1397.55,2530.56,7.0329],[[0,"Move"]]],[[1282.58,2360.07,7.03253],[[0,"Move"]]],[[1162.62,2423.81,7.03286],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1007.2,2784.15,1.58739],0,[]],[[1012.2,2779.15,1.58739],0,[]],[[1002.2,2779.15,0.491568],0,[]],[[1017.2,2774.15,1.58739],0,[]]],[],[[[918.349,2923.66,1.91711],[[0,"Move"],[1,"SAFE"]]],[[1307.8,2941.93,1.9174],[[0,"Move"]]],[[1234.73,2756.75,0],[[0,"Move"]]],[[1036.82,2777.77,1.58739],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[719.849,2642.58,0],0,[]],[[724.849,2637.58,0],0,[]],[[714.849,2637.58,0],0,[]],[[729.849,2632.58,0],0,[]],[[694.796,2635.3,0],0,[]],[[709.796,2630.3,0],0,[]],[[704.796,2635.3,0],0,[]]],[],[[[724.988,2693.96,0],[[0,"Move"],[1,"SAFE"]]],[[1442.81,2694.99,1.91708],[[0,"Move"]]],[[1452.06,2645.15,1.91708],[[0,"Move"]]],[[749.472,2636.2,1.91726],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1029.2,2562.61,1.91769],179,[]],[[1024.1,2567.5,1.91769],179,[]],[[1034.1,2567.71,0.821875],179,[]],[[1019,2572.4,2.96221],179,[]]],[],[[[1020.18,2358.67,1.9177],[[0,"Move"],[1,"SAFE"]]],[[824.265,2354.18,1.9177],[[0,"Move"]]],[[813.819,2551.8,1.9177],[[0,"Move"]]],[[999.453,2568.38,1.9177],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1402.04,2520.26,1.91771],212,[]],[[1400.5,2527.16,1.91771],212,[]],[[1408.94,2521.8,1.53984],212,[]],[[1398.95,2534.06,1.91771],212,[]]],[],[[[1281.82,2355.28,1.91771],[[0,"Move"],[1,"SAFE"]]],[[1118.88,2445.54,1.91787],[[0,"Move"]]],[[1225.17,2600.82,1.91754],[[0,"Move"]]],[[1380.44,2541.51,1.91771],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1246.53,2761.33,1.91736],284,[]],[[1252.6,2764.96,1.91736],284,[]],[[1250.16,2755.26,0.821538],284,[]],[[1258.67,2768.59,1.91736],284,[]]],[],[[[1029.28,2786.61,1.91719],[[0,"Move"],[1,"SAFE"]]],[[1115.02,2915.22,1.91763],[[0,"Move"]]],[[1293.46,2919.28,1.91753],[[0,"Move"]]],[[1259.94,2788.5,1.91736],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["rhsgref_tla_offroad_armed",[987.203,2419.92,0],58,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_01",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",1,"HideDoor2",0,"HideDoor3",1,"HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1]]]]],[[[1639.18,2653.61,0],[[0,"Move"],[1,"SAFE"]]],[[1013.14,3029.69,0],[[0,"Move"]]],[[1640.2,2649.23,0],[[0,"Move"]]],[[982.517,2416.94,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		{
			[_X, _X, NEKY_Hunt_Trigger_2, 4,300,east,_Vehicles,120] spawn OKS_fnc_Huntbase;  sleep 20;
		} foreach [spawn_4,spawn_5,spawn_6,spawn_7];
	
	};

	case 3: {

		// Cocaine Stash 2
		[[[[9101.92,9090.56,0.824157],294,"Up",[]],[[9096.56,9090.23,0.292468],356,"Up",[]],[[9087.42,9109.28,0.427751],231,"Up",[]],[[9078.65,9110.91,0.433852],36,"Up",[]],[[9086.04,9117.67,0.438503],349,"Up",[]],[[9088.57,9121.37,0.425015],159,"Up",[]],[[9102.41,9115.83,0.58321],278,"Up",[]],[[9107.38,9115.71,0.415964],112,"Up",[]],[[9109.6,9100.38,0.663134],224,"Up",[]],[[9109.68,9105.59,0.474296],41,"Up",[]],[[9128.43,9160.28,0],302,"Middle",[]],[[9130.98,9157.99,0],197,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[9129.5,9159.51,0],212,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[9011.07,8855.35,0],0,[]],[[9010.55,8852.12,0],0,[]],[[9009.32,8852.36,0],0,[]],[[9009.97,8854.03,0],0,[]]],[],[[[9079.15,8979.45,0],[[0,"Move"],[1,"SAFE"]]],[[8977.07,9024.85,0],[[0,"Move"]]],[[8904.32,8958.86,0],[[0,"Move"]]],[[8997.66,8867.77,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8852.05,8962.9,1.02512],70,[]],[[8848.83,8962.29,0.00101089],70,[]],[[8848.63,8963.54,0.00101089],70,[]],[[8850.43,8963.49,0.00101089],70,[]]],[],[[[8946.33,8972.39,0],[[0,"Move"],[1,"SAFE"]]],[[9009.23,9053.83,0.361551],[[0,"Move"]]],[[8933.64,9066.3,1.773],[[0,"Move"]]],[[8859.2,8979.73,0.72333],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9076,9010.56,0],0,[]],[[9075.48,9007.33,0],0,[]],[[9074.24,9007.57,0],0,[]],[[9074.89,9009.24,0],0,[]]],[],[[[9132.84,9071.74,0],[[0,"Move"],[1,"SAFE"]]],[[9057.56,9140.57,0],[[0,"Move"]]],[[9021.71,9095.76,1.90735e-06],[[0,"Move"]]],[[9062.58,9022.99,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9118.3,9220.55,0],171,[]],[[9118.29,9223.82,0],171,[]],[[9119.54,9223.79,0],171,[]],[[9119.17,9222.03,0],171,[]]],[],[[[9043.58,9168.17,0],[[0,"Move"],[1,"SAFE"]]],[[9164.75,9154.91,1.90735e-06],[[0,"Move"]]],[[9132.84,9226.61,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9000.96,9112.74,1.08362],138,[]],[[8999.19,9115.5,2.24751],138,[]],[[9000.28,9116.15,1.17134],138,[]],[[9000.9,9114.46,0],138,[]]],[],[[[8949.77,9043.34,0],[[0,"Move"],[1,"SAFE"]]],[[9047.38,8964.81,1.90735e-06],[[0,"Move"]]],[[9132.27,9027.44,0],[[0,"Move"]]],[[9019.24,9112.41,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 4: {

		// Cocaine Stash 3
		[[[[7484.2,9912.21,1.23462],41,"Up",[]],[[7480.86,9914.39,1.23462],353,"Up",[]],[[7494.12,9911.26,1.25905],74,"Up",[]],[[7491.38,9906.73,1.28102],350,"Up",[]],[[7471.79,9918.13,0.753132],71,"Up",[]],[[7467.51,9930.19,1.1395],71,"Up",[]],[[7462.83,9930.36,1.1395],71,"Up",[]],[[7463.28,9935.69,1.14848],71,"Up",[]],[[7469.7,9935.83,1.14051],71,"Up",[]],[[7464.54,9926.87,1.1395],175,"Up",[]],[[7469.23,9952.58,0],172,"Middle",[]],[[7470.84,9957.13,0],172,"Middle",[]],[[7469.17,9945.28,0],47,"Middle",[]],[[7433.24,9974.62,3.8147e-06],199,"Middle",[]],[[7434.92,9977.6,7.62939e-06],94,"Middle",[]],[[7433.28,9895.15,0],161,"Middle",[]],[[7432.76,9898.52,0],56,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[7433.72,9975.85,0],110,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_PKM_High",[7433.54,9896.31,0],71,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrol.
		[[[[7498.48,9858.51,0],0,[]],[[7503.48,9853.51,0],0,[]],[[7493.48,9853.51,0],0,[]],[[7508.48,9848.51,3.8147e-06],0,[]]],[],[[[7729.32,9779.79,0],[[0,"Move"],[1,"SAFE"]]],[[7813.61,9875.04,-0.000289917],[[0,"Move"]]],[[7606.92,9946.45,0.000652313],[[0,"Move"]]],[[7506.92,9861.68,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7512.4,9978.14,0],0,[]],[[7517.4,9973.14,0],0,[]],[[7507.4,9973.14,0],0,[]],[[7522.4,9968.14,0],0,[]]],[],[[[7701.1,10043.7,0],[[0,"Move"],[1,"SAFE"]]],[[7625.16,10149.2,0],[[0,"Move"]]],[[7469.74,10039.1,1.90735e-06],[[0,"Move"]]],[[7493.99,9978.39,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7627.97,9912.42,0],0,[]],[[7632.97,9907.42,0],0,[]],[[7622.97,9907.42,0],0,[]],[[7637.97,9902.42,0],0,[]]],[],[[[7773.66,9820.51,0],[[0,"Move"],[1,"SAFE"]]],[[7859.02,9890.85,0],[[0,"Move"]]],[[7736.41,10000.4,0],[[0,"Move"]]],[[7636.41,9915.59,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7650.86,10169.1,0],0,[]],[[7655.86,10164.1,0],0,[]],[[7645.86,10164.1,0],0,[]],[[7660.86,10159.1,0],0,[]]],[],[[[7892.39,10168.2,0],[[0,"Move"],[1,"SAFE"]]],[[7895.16,10265.1,0],[[0,"Move"]]],[[7754.48,10282.7,0],[[0,"Move"]]],[[7659.31,10172.2,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7801.96,9870.97,0],0,[]],[[7806.96,9865.97,0],0,[]],[[7796.96,9865.97,0],0,[]],[[7811.96,9860.97,0],0,[]]],[],[[[8032.81,9792.25,0],[[0,"Move"],[1,"SAFE"]]],[[8117.09,9887.5,0],[[0,"Move"]]],[[7910.41,9958.92,0.000652313],[[0,"Move"]]],[[7810.41,9874.14,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8113.9,10087.9,0],217,[]],[[8112.95,10094.9,0],217,[]],[[8120.91,10088.8,0],217,[]],[[8112.01,10101.9,0],217,[]]],[],[[[8008.04,10284.5,0],[[0,"Move"],[1,"SAFE"]]],[[7916.9,10216.2,0],[[0,"Move"]]],[[7974.34,10083.6,0.000652313],[[0,"Move"]]],[[8105.26,10090.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 5: {

		// Stronghold.
		[[[[3503.72,10624.3,0],119,"Up",[]],[[3497.96,10635.4,6.00815e-05],119,"Up",[]],[[3481.63,10606.2,0],329,"Up",[]],[[3485.1,10597.7,9.53674e-07],119,"Up",[]],[[3498.67,10586.1,0],305,"Middle",[]],[[3502.57,10582.6,0],176,"Up",[]],[[3512.51,10582.2,0],99,"Up",[]],[[3520.35,10590.6,0],119,"Up",[]],[[3521.55,10598.4,0],275,"Up",[]],[[3525.21,10596.4,0],119,"Up",[]],[[3546.28,10621.3,9.53674e-07],116,"Up",[]],[[3532.21,10622,0],206,"Up",[]],[[3509.25,10636.8,0],120,"Middle",[]],[[3506.65,10639,0],15,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[3508.25,10637.4,0],31,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3484.7,10640,4.76837e-07],116,"Up",[]],[[3462.34,10633.6,0],156,"Up",[]],[[3474.23,10619,0],119,"Up",[]],[[3449.23,10641.7,9.53674e-07],57,"Middle",[]],[[3421.39,10639.4,9.53674e-07],110,"Middle",[]],[[3412.81,10639.6,9.53674e-07],92,"Middle",[]],[[3417.43,10642.3,0.215435],197,"Middle",[]],[[3420.76,10642.1,0],157,"Middle",[]],[[3399.19,10630.8,9.53674e-07],56,"Middle",[]],[[3399.44,10617.5,9.53674e-07],107,"Middle",[]],[[3393.7,10625.8,0.260499],185,"Middle",[]],[[3395.75,10626.6,0],40,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3383.77,10591.2,0],189,"Up",[]],[[3386.93,10607.4,0],41,"Up",[]],[[3393.79,10593.7,0],120,"Down",[]],[[3391.19,10595.9,0],15,"Down",[]]],[["UK3CB_ADE_O_DSHKM",[3392.88,10594.1,0],31,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3314.91,10461.7,0.442801],189,"Up",[]],[[3314.8,10465.8,0.356251],20,"Up",[]],[[3316.07,10464.8,0.383369],125,"Up",[]],[[3311.54,10448.1,1.90735e-06],187,"Up",[]],[[3309.45,10445.9,1.90735e-06],150,"Up",[]],[[3308.2,10452.4,0.180658],111,"Up",[]],[[3308.32,10459.8,1.29714],233,"Up",[]],[[3313.85,10457.6,1.90735e-06],288,"Up",[]],[[3285,10460.5,0.0746288],122,"Up",[]],[[3282.84,10428.2,0.230544],122,"Up",[]],[[3293.33,10435.3,9.53674e-07],1,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3291.24,10409.5,9.53674e-07],122,"Middle",[]],[[3295.69,10381.7,9.53674e-07],330,"Middle",[]],[[3312.58,10369.4,9.53674e-07],79,"Middle",[]],[[3290.33,10376.7,0],122,"Up",[]],[[3311.82,10358.8,0.110315],45,"Up",[]],[[3321.18,10391.2,0],122,"Up",[]],[[3317.76,10393.3,0.152932],50,"Up",[]],[[3311.36,10390.8,0.467186],122,"Up",[]],[[3309.14,10394,0.335908],304,"Up",[]],[[3310.66,10397,0.000536919],319,"Up",[]],[[3317.86,10396.2,1.6735],324,"Middle",[]],[[3311.02,10393.9,3.08968],322,"Middle",[]],[[3312.64,10390.9,2.85012],216,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[3311.62,10392.8,2.95301],232,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["rhsgref_tla_g_offroad_armed",[3398.24,10467.7,2.7895e-05],333,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_08",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",1,"HideDoor3",1,"HideBackpacks",1,"HideBumper1",1,"HideBumper2",0,"HideConstruction",1]]]],["rhsgref_tla_g_offroad_armed",[3700.65,10556.3,-0.019341],116,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_05",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0,"HideBackpacks",1,"HideBumper1",0,"HideBumper2",1,"HideConstruction",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[3290.34,10195.7,0],0,[]],[[3295.34,10190.7,0],0,[]],[[3285.34,10190.7,0],0,[]],[[3300.34,10185.7,0],0,[]]],[],[[[3417.08,10212.4,0],[[0,"Move"],[1,"SAFE"]]],[[3392.8,10337.6,0],[[0,"Move"]]],[[3290.34,10338.4,0],[[0,"Move"]]],[[3285.79,10217.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3274.33,10495,10.0299],111,[]],[[3267.89,10492.1,11.2031],111,[]],[[3271.41,10501.4,9.8246],111,[]],[[3261.45,10489.2,12.0017],111,[]]],[],[[[3245.3,10370.5,17.0677],[[0,"Move"],[1,"SAFE"]]],[[3371.05,10349.1,14.1025],[[0,"Move"]]],[[3407.85,10444.7,15.0568],[[0,"Move"]]],[[3296.53,10491.5,9.1866],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3501.51,10437.7,0],111,[]],[[3495.07,10434.8,0],111,[]],[[3498.59,10444.1,-12.4807],111,[]],[[3488.63,10431.8,-10.7617],111,[]]],[],[[[3472.48,10313.2,3.604],[[0,"Move"],[1,"SAFE"]]],[[3598.23,10291.8,-1.33198],[[0,"Move"]]],[[3635.03,10387.4,-2.20544],[[0,"Move"]]],[[3523.71,10434.2,-10.7073],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3579.8,10584.4,0],111,[]],[[3573.36,10581.5,0],111,[]],[[3576.88,10590.9,-5.52462],111,[]],[[3566.92,10578.6,0],111,[]]],[],[[[3550.77,10459.9,0.65609],[[0,"Move"],[1,"SAFE"]]],[[3676.52,10438.5,1.27085],[[0,"Move"]]],[[3713.33,10534.2,1.44751],[[0,"Move"]]],[[3602,10580.9,-1.69647],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3429.2,10420.1,0.32771],356,[]],[[3434.51,10415.5,0.757659],356,[]],[[3424.53,10414.8,-0.100858],356,[]],[[3439.81,10410.8,1.28043],356,[]]],[],[[[3554.65,10444.7,0.133196],[[0,"Move"],[1,"SAFE"]]],[[3522.55,10568.2,4.38588],[[0,"Move"]]],[[3420.26,10562.5,-1.24278],[[0,"Move"]]],[[3423.28,10441.8,4.77413],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3332.09,10525,0],356,[]],[[3337.39,10520.3,0],356,[]],[[3327.41,10519.6,-0.910053],356,[]],[[3342.69,10515.6,0],356,[]]],[],[[[3457.53,10549.6,6.42336],[[0,"Move"],[1,"SAFE"]]],[[3425.44,10673,13.3217],[[0,"Move"]]],[[3323.14,10667.3,10.5039],[[0,"Move"]]],[[3326.16,10546.6,2.66399],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3490.81,10664,4.10863],166,[]],[[3484.75,10667.6,4.17325],166,[]],[[3494.45,10670.1,4.00652],166,[]],[[3478.69,10671.3,4.5887],166,[]]],[],[[[3367.6,10557.8,4.4196],[[0,"Move"],[1,"SAFE"]]],[[3457.01,10491.9,10.8334],[[0,"Move"]]],[[3528.46,10512.8,9.38665],[[0,"Move"]]],[[3563.54,10638.2,9.95347],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[mortar_1, east, "precise", "light", ["auto", 25],250,650,20] spawn OKS_fnc_Mortars;

		{
			[_X, _X, NEKY_Hunt_Trigger_3, 4,300,east,_Vehicles,120] spawn OKS_fnc_Huntbase; sleep 20;
		} foreach [spawn_8,spawn_9,spawn_10,spawn_11];		

	};

	case 6: {
		// Counter Strongpoint South
		{
			[getPos _X,"rush",8,east,1500,[]] spawn OKS_fnc_Lambs_SpawnGroup; sleep 10;
		} foreach [rush_1,rush_2,rush_3];
	};

	case 7: {
		// Counter Strongpoint North
		{
			[getPos _X,"rush",8,east,1500,[]] spawn OKS_fnc_Lambs_SpawnGroup;  sleep 10;
		} foreach [rush_4,rush_5,rush_6];
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*
	GOL SCRIPT EXAMPLES

	=======================================

	Creates a defuse explosive objective with 600 (10 minutes) seconds to complete on the "SatchelCharge" object with the name bomb_1.
	This can be replaced with a position to create an explosive on the position using getPos bomb_1.

	Code:
	[bomb_1,600] spawn OKS_fnc_DefuseExplosive;

	Params:
	[bomb_1,600,bombtarget_1,"BombDetonated","BombDefused"] spawn OKS_fnc_DefuseExplosive;
	Bomb Object or Position, Time Delay (Seconds), Target Object (Destroyed upon detonation), VariableName to set to true if failed, VariableName to set to true if succeeded.

	=======================================

	Sets up a generator to be disabled by action to turn off light sources in the area around it. 

	Code:
	[Generator_1,true,true,1000] spawn OKS_fnc_PowerGenerator;

	Params:
	Generator Object, Should Add Action to disable, Turn Off Lights when disabled, Range of disabled lights from Generator

    =======================================

	Setup a scripted AAA that fires randomly into the air until it finds a target and locks on. It has less accuracy than standard AAA positions for balance.

	Code:
	[aaa_1,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;

	Params:
	AAA Object, side of crew, Is an HMG, Range of AAA, Should be assisted by nearby radar

    =======================================

	Setup an artillery to fire into the sky until destroyed. Take note that it is supposed to delete the rounds from landing to save performance.
	This might fail, so make sure the target is not near friendly positions or bases.

	Code:
	[east,arty_1,getpos ArtyTarget_1,7,300,180,false] spawn OKS_fnc_CreateZone;

	Params:
	Side of Crew, Artillery Object, Artillery Target, Rounds per Salvo, Rearm Delay, Reload Delay, Should give full crew.

    =======================================

	Setup an active artillery barrage on specified targets until destroyed.

	Code:
	[livearty_1,[getPos ArtySuppress_1,getPos ArtySuppress_2,getPos ArtySuppress_3],east,1,1,true,true,300,true] spawn OKS_fnc_ArtySuppression;

	Params:
	Artillery Object, Array with Target positions, Side of Crew, Rounds per target, Delay per target, Unlimited Ammo, Should Loop until Destroyed, Delay per Salvo, Mark with Red Smoke on Target.

	=======================================

	Setup a destroy/kill objective on a target.

	Code:
	[officer_1,"Kill the Officer","Enemy Officer","You need to kill this %1 because it needs to happen","kill",nil,true,true] spawn OKS_fnc_DestroyTask;

	Params:
	Target Object, Task Title, Target Type, Task Description, Task Icon, Task Parent, Should Mark Position on Map, Should Show Popup when created/completed

	=======================================

	Setup a HVT Capture Objective. The last variable sets true/false if they target should be set to captive (tied hands). False for enemy officers, true for friendly captives.

	Code:
	[Group HVT_1,getMarkerPos "respawn_west",west,false,nil,true] spawn OKS_fnc_Evacuate_HVT;

	Params:
	Group of HVT, Exfil Position (Either pickup (Extract On) or dropoff (Extract off)), Side of Extract Helicopter, Should Send AI Helicopter Evac, Parent Task, Is Captive

	=======================================

	Setup Barricade Objective. Objective to destroy objects lined up as a blockade on a road. Make sure the object is destructible by testing it.

	Code:
	[[barricade_1,barricade_2]] spawn OKS_fnc_Destroy_Barricade;

	Params:
	Array with Barricade Objects

	=======================================

	Spawn a convoy that moves until engaged, they will dismount, armed vehicles will hunt and dismounts will rush.

	Code:
	[spawn_1,waypoint_1,end_1,west,[4,["rhs_btr60_msv"], 6, 25],[true,6],[], false, false] spawn OKS_fnc_Convoy_Spawn;

	Params:
	Spawn Position, First Waypoint, End Waypoint (Scattered formation), Side of Convoy, Convoy Array [](Number, [TypeArray]), Speed meters/second, dispersion]
	Dismount Array (Should have dismount, how many), ConvoyArray to populate variable, forced careless (ignore everything), delete on arrival.

	=======================================

	Spawns a team that either creep/rush/hunt based on LAMBS. Used for quick and intense counter-attacks by enemy infantry.

	Code:
	[SpawnPos,"rush",UnitsPerBase,Side,Range,[]] spawn OKS_fnc_Lambs_SpawnGroup;

	Params:
	Position, Type of Waypoint (rush,creep,hunt), Units to spawn, Side of units, Range of waypoint (around the spawn), unit array that gets populated with the units.

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
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_CreateZone")};

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
			] spawn OKS_fnc_CreateZone;
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

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn OKS_fnc_Huntbase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Huntbase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn OKS_fnc_Huntbase;
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

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};

