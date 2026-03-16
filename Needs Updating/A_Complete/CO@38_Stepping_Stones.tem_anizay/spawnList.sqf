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

switch (_case) do {

	case 0: {

		// Hunters
		_Vehicles = ["UK3CB_TKA_O_BMP2","UK3CB_TKA_O_BTR80a", "UK3CB_TKA_O_T55", "UK3CB_TKA_O_T72A", "UK3CB_TKA_O_T72B"];
		[Spawn_8, Spawn_8, NEKY_Hunt_Trigger_3, 9,600,east,_Vehicles,300] spawn OKS_fnc_HuntBase;
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_3, 9,600,east,_Vehicles,300] spawn OKS_fnc_HuntBase;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_3, 9,600,east,_Vehicles,300] spawn OKS_fnc_HuntBase;		
		[Spawn_7, Spawn_7, NEKY_Hunt_Trigger_3, 9,600,east,_Vehicles,300] spawn OKS_fnc_HuntBase;	
		[[],[
			["UK3CB_TKA_O_Ural_Zu23",[3418.84,3005.02,4],208,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]],
			["UK3CB_TKA_O_Ural_Zu23",[6442.81,2376.29,4],70,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]],
			["UK3CB_TKA_O_Ural_Zu23",[1742.43,3555.12,4],208,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]],
			["UK3CB_TKA_O_Ural_Zu23",[4091.42,1108.8,4],208,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]],
			["UK3CB_TKA_O_Ural_Zu23",[4927.88,2309.99,4],208,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]
		],[]] call GW_Common_fnc_spawnGroup;
		{
			[_X, ["UK3CB_TKA_O_Ural_Zu23"], 3000, 4000, 100] spawn OKS_fnc_Radar;
		} foreach [radar_1,radar_2];

		{
			[getPos _X, east, 50, 500, 2500, 30] spawn OKS_fnc_IR_AA;
		} foreach [aa_1, aa_2, aa_3, aa_4];

		[helicopterbase_1, helicopterspawn_1, NEKY_Hunt_Trigger_1,EAST,"UK3CB_TKA_O_UH1H_M240","Unload",[1,1], 900, 100, 120, 5] spawn OKS_fnc_Airbase;
		[helicopterbase_2, helicopterspawn_2, NEKY_Hunt_Trigger_1,EAST,"UK3CB_TKA_O_UH1H_M240","Unload",[1,1], 900, 100, 120, 5] spawn OKS_fnc_Airbase;
		[helicopterbase_3, helicopterspawn_3, NEKY_Hunt_Trigger_2,EAST,"UK3CB_TKA_O_UH1H_M240","Unload",[1,1], 900, 100, 120, 5] spawn OKS_fnc_Airbase;
		[helicopterbase_4, helicopterspawn_4, NEKY_Hunt_Trigger_2,EAST,"UK3CB_TKA_O_UH1H_M240","Unload",[1,1], 900, 100, 120, 5] spawn OKS_fnc_Airbase;
	};

	case 1: {

		// Objective 1
		[[[[1801.7,1353.97,3.87224],0,"Up",[]],[[1798.49,1346.32,3.85374],0,"Up",[]],[[1794.65,1356.25,0.411926],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1762,1366.73,3.50951],0,"Up",[]],[[1761.65,1363.71,3.38878],0,"Up",[]],[[1741.08,1367.76,0.00143433],0,"Up",[]],[[1762.05,1363.38,0.0882721],0,"Up",[]],[[1755.67,1373.65,3.38774],0,"Up",[]],[[1767.09,1368.14,6.72939],0,"Up",[]],[[1727.34,1376,0.00143433],0,"Up",[]],[[1766.94,1369.26,3.70567],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1771.6,1381.69,3.82669],0,"Up",[]],[[1787.72,1400.46,0.412277],0,"Up",[]],[[1778.03,1387.61,3.82161],0,"Up",[]],[[1770.47,1391.07,0.576431],0,"Up",[]],[[1776,1387.07,0.576431],0,"Up",[]],[[1766.49,1388.52,3.70953],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1760.65,1405.91,0.00141907],0,"Up",[]],[[1756.31,1402.35,0.00143433],0,"Up",[]],[[1742.83,1399.64,0.744614],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// AT Threats
		[[],[["UK3CB_ADG_O_SPG9",[1696.4,1401.05,0],111,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_SPG9",[1796.29,1345.74,0.388718],99,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_SPG9",[1779.55,1422.32,0],56,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_BMP1",[1779.55,1304.15,0],40,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Dynamic
		[Trigger_0,false,[0,35,false,false],east,0,2,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		//_FuelObjective = [[],[["UK3CB_TKA_O_MAZ_543_Refuel",[1729.29,1406.42,1.52588e-05],210,[],[[6,["TKA",1]]]],["UK3CB_TKA_O_Ural_Fuel",[1734.02,1395.02,0],124,[],[[6,["TKA",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]],["UK3CB_TKA_O_Ural_Fuel",[1741.53,1389.76,0],127,[],[[6,["TKA",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]],["UK3CB_TKA_O_MAZ_543_Refuel",[1716.51,1388.47,0],78,[],[[6,["TKA",1]]]],["UK3CB_TKA_O_MAZ_543_Refuel",[1713.48,1396.75,1.52588e-05],103,[],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		{
			[getPos _X, "ambushrush", 6, independent, 400, []] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [ambush_4, ambush_5];
	
	};

	case 2: {

		// Trench
		[[[[1134,1111,0.000106812],183,"Up",[]],[[1142.24,1116.32,0],183,"Up",[]],[[1139.6,1128.56,0],183,"Up",[]],[[1142.08,1133.27,0],3,"Middle",[]],[[1161.44,1161.29,0.411423],183,"Up",[]],[[1165.84,1164.23,1.05728],183,"Up",[]],[[1165.68,1159.82,0.977737],183,"Up",[]],[[1163.37,1157.97,0.71286],183,"Up",[]],[[1167.36,1156.9,1.31525],183,"Up",[]],[[1168.75,1157.99,1.79312],183,"Up",[]],[[1170.11,1161.39,2.45801],183,"Up",[]],[[1170.44,1163.53,2.37088],183,"Up",[]],[[1168.66,1161,2.04089],183,"Middle",[]],[[1167.15,1165.95,1.44762],21,"Up",[]],[[1196.27,1185.3,0],183,"Middle",[]],[[1196.3,1177.04,0],183,"Middle",[]],[[1193.77,1166.91,1.52588e-05],183,"Up",[]],[[1192.46,1160.25,0],183,"Up",[]],[[1197.18,1168.93,0.180481],183,"Up",[]],[[1202.93,1174.31,0.178345],183,"Up",[]],[[1204.31,1171.24,0.178345],183,"Up",[]],[[1203.3,1167.86,0.178345],183,"Up",[]],[[1198.38,1168.51,0.181335],183,"Up",[]]],[["UK3CB_ARD_O_BRM1K",[1142.21,1119,0.570496],108,[["driver",-1,[]],["gunner",0,[0]],["turret",-1,[1]]],[[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		
		// Objective 2
		[[[[1038.84,1166.52,0.974472],0,"Up",[]],[[1047.79,1168.48,3.30888],0,"Up",[]],[[1039.66,1164.43,3.63847],0,"Up",[]],[[1032.77,1173.78,0.00143433],0,"Up",[]],[[1038.84,1166.52,0.974472],0,"Up",[]],[[1047.79,1168.48,3.30888],0,"Up",[]],[[1039.66,1164.43,3.63847],0,"Up",[]],[[1032.77,1173.78,0.00143433],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1058.56,1174.67,1.64101],0,"Up",[]],[[1058.56,1174.67,1.64101],0,"Up",[]],[[1037.49,1187.4,0.229523],0,"Up",[]],[[1062.75,1192.96,0.35144],0,"Up",[]],[[1070.93,1191.6,0.327072],0,"Up",[]],[[1061.17,1192.68,3.14143],0,"Up",[]],[[1036.84,1198.87,0.898041],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1085.19,1225.33,0.738449],0,"Up",[]],[[1075.49,1206.57,0.826675],0,"Up",[]],[[1085.19,1225.33,0.738449],0,"Up",[]],[[1075.49,1206.57,0.826675],0,"Up",[]],[[1073.97,1216.64,0.156891],0,"Up",[]],[[1065.64,1212.67,0.504761],0,"Up",[]],[[1079.37,1213.44,0.431808],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1089.32,1160.12,0.570847],0,"Up",[]],[[1085.99,1153.43,0.52655],0,"Up",[]],[[1105.87,1189.52,3.63344],0,"Up",[]],[[1100.33,1180.6,0.00143433],0,"Up",[]],[[1089.32,1160.12,0.570847],0,"Up",[]],[[1085.99,1153.43,0.52655],0,"Up",[]],[[1105.87,1189.52,3.63344],0,"Up",[]],[[1100.33,1180.6,0.00143433],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1105.6,1208.97,3.31932],0,"Up",[]],[[1117.28,1212.74,3.72433],0,"Up",[]],[[1108.84,1203.62,0.00143433],0,"Up",[]],[[1105.6,1208.97,3.31932],0,"Up",[]],[[1117.28,1212.74,3.72433],0,"Up",[]],[[1108.84,1203.62,0.00143433],0,"Up",[]],[[1109.74,1215.88,0.972366],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// AT Threats
		[[],[["UK3CB_TKA_O_BMP1",[1136.28,1187.84,0],174,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[1019.7,1128.49,0],53,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[1101.76,1270.45,0],192,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ADE_O_SPG9",[1052.97,1188.23,1.52588e-005],104,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		[Trigger_1,false,[0,25,false,false],east,0,1,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		[Trigger_2,false,[0,25,false,false],east,0,1,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

		[[[[977.106,782.724,0],0,"Middle",[]],[[958.239,771.048,0.127411],250,"Middle",[]],[[821.652,624.988,1.52588e-05],31,"Middle",[]],[[802.931,613.774,1.52588e-05],228,"Up",[]],[[1004.81,1046.72,1.52588e-05],0,"Middle",[]],[[1006.5,1027.03,0],183,"Middle",[]]],[["UK3CB_TKA_O_T55",[813.612,614.001,0.296387],151,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Barrels_Hide",0]]]],["UK3CB_TKA_O_T55",[969.555,771.16,0.296371],158,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Barrels_Hide",0]]]],["UK3CB_TKA_O_T55",[1002.07,1038.55,0.296387],270,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Barrels_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		{
			[east,_X,[3543.85,2886.22,0],7,300,120] spawn OKS_fnc_ArtyFire;
		} foreach [arty_1,arty_3];		

		{
			[getPos _X, "ambushrush", 6, independent, 400, []] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [ambush_1, ambush_2, ambush_3];		
	};

	case 3: {

		// Objective 3
		[[[[3477.38,635.169,0.00132751],0,"Up",[]],[[3487.02,622.286,3.23959],0,"Up",[]],[[3489.96,616.114,0.426514],0,"Up",[]],[[3527.82,653.893,0.194748],0,"Up",[]],[[3485.33,614.635,3.2484],0,"Up",[]],[[3502.36,630.527,0.0018158],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3585.24,653.307,3.3203],0,"Up",[]],[[3585.46,655.198,0.775085],0,"Up",[]],[[3541.16,700.359,1.20158],0,"Up",[]],[[3566.1,673.608,0.82373],0,"Up",[]],[[3580.48,668.587,0.62204],0,"Up",[]],[[3583.63,656.175,3.55978],0,"Up",[]],[[3572.62,662.653,0.618164],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3607.1,667.785,0.384949],0,"Up",[]],[[3573.76,697.748,0.00119019],0,"Up",[]],[[3602.61,685.894,0.584015],0,"Up",[]],[[3601.24,663.493,0.686798],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// AT Threats
		[[],[["UK3CB_TKA_O_BMP1",[3636.05,783.033,0],303,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[3530.75,633.763,0],266,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[3673.69,660.905,0],251,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ADM_O_SPG9",[3450.1,634.133,0],306,[["gunner",-1,[0]]],[]],["UK3CB_ADM_O_SPG9",[3532.21,702.87,0],151,[["gunner",-1,[0]]],[]],["UK3CB_ADM_O_SPG9",[3740.4,661.862,0],263,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		[Trigger_3,false,[0,12,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

		{
			[east,_X,[3543.85,2886.22,0],7,300,120] spawn OKS_fnc_ArtyFire;
		} foreach [arty_4,arty_2];

		[[[[3811.59,746.744,0],236,"Up",[]],[[3804.09,764.101,0],236,"Up",[]],[[3800.57,770.717,0],236,"Up",[]],[[3774.67,804.324,1.52588e-05],236,"Up",[]],[[3766.92,824.628,0],324,"Up",[]],[[3512.65,526.164,0],236,"Up",[]],[[3528.38,539.539,-1.52588e-05],40,"Up",[]],[[3533.37,542.679,-1.52588e-05],236,"Up",[]]],[["UK3CB_ARD_O_BRM1K",[3801.86,754.098,-0.0032196],232,[["driver",-1,[]],["gunner",0,[0]],["turret",-1,[1]]],[[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1]]]],["UK3CB_TKA_O_T55",[3764.76,811.265,0.553055],249,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Barrels_Hide",0]]]],["UK3CB_ARD_O_BRM1K",[3517.59,538.163,0.330429],322,[["driver",-1,[]],["gunner",0,[0]],["turret",-1,[1]]],[[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		{
			[getPos _X, "ambushrush", 6, independent, 400, []] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [ambush_9, ambush_10, ambush_11];

		_Vehicles = ["UK3CB_TKA_O_BMP2","UK3CB_TKA_O_BTR80a", "UK3CB_TKA_O_T55", "UK3CB_TKA_O_T72A", "UK3CB_TKA_O_T72B","UK3CB_TKA_O_BMP1","UK3CB_TKA_O_BMP1"];
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 9,180,east,_Vehicles,90] spawn OKS_fnc_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 9,180,east,_Vehicles,90] spawn OKS_fnc_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_2, 9,180,east,_Vehicles,90] spawn OKS_fnc_HuntBase;

	};

	case 4: {

		// Objective 4
		[[[[2083.39,2198.92,3.48108],0,"Up",[]],[[2087.87,2193.83,0.307678],0,"Up",[]],[[2088.92,2193.63,2.90689],0,"Up",[]],[[2070.72,2208.69,0.00141907],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2021.02,2195.05,4.76793],0,"Up",[]],[[2031.04,2197.93,0.00164795],0,"Up",[]],[[2019.95,2195.52,7.69208],0,"Up",[]],[[2015.39,2177.75,0.0014801],0,"Up",[]],[[2021.61,2201.78,4.58932],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1910.74,2355.03,1.20485],0,"Up",[]],[[1920.67,2365.19,0.00187683],0,"Up",[]],[[1912.64,2349.27,1.12152],0,"Up",[]],[[1912.6,2365.35,0.00172424],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1943.51,2390.99,0.881699],0,"Up",[]],[[1931.99,2404.74,0.261734],0,"Up",[]],[[1932.23,2386.51,0.00128174],0,"Up",[]],[[1940.02,2395.89,0.55867],0,"Up",[]],[[1941.67,2402.94,0.287643],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[Trigger_4,false,[0,12,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		[Trigger_5,false,[0,12,false,false],east,0,1,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

		// AT Threats
		[[],[["UK3CB_TKA_O_BMP1",[2094.6,2217.16,0],265,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[1939.57,2334.07,-1.52588e-005],161,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[1871.86,2428.56,1.52588e-005],79,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ADM_O_SPG9",[1921.62,2433.59,-1.52588e-005],175,[["gunner",-1,[0]]],[]],["UK3CB_ADM_O_SPG9",[1865.18,2307.16,0],62,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		{
			[east,_X,[3543.85,2886.22,0],8,300,120] spawn OKS_fnc_ArtyFire;
		} foreach [arty_5,arty_6];

		{
			[getPos _X, "ambushrush", 6, independent, 400, []] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [ambush_6, ambush_7, ambush_8];
	};

	case 5: {

		[counter_1,NEKY_HUNT_TRIGGER_2,"UK3CB_TKA_O_BMP1",6,east,1555] spawn OKS_fnc_Mechanized_Spawn; sleep 5;
		[counter_2,NEKY_HUNT_TRIGGER_2,"UK3CB_TKA_O_BMP1",6,east,1555] spawn OKS_fnc_Mechanized_Spawn; sleep 30;
		[counter_1,NEKY_HUNT_TRIGGER_2,"UK3CB_TKA_O_BMP1",6,east,1555] spawn OKS_fnc_Mechanized_Spawn; sleep 5;
		[counter_2,NEKY_HUNT_TRIGGER_2,"UK3CB_TKA_O_BMP1",6,east,1555] spawn OKS_fnc_Mechanized_Spawn;
	};

	case 6: {

		[counter_3,NEKY_HUNT_TRIGGER_1,"UK3CB_TKA_O_BMP1",6,east,1555] spawn OKS_fnc_Mechanized_Spawn; sleep 5;
		[counter_4,NEKY_HUNT_TRIGGER_1,"UK3CB_TKA_O_BMP1",6,east,1555] spawn OKS_fnc_Mechanized_Spawn; sleep 30;
		[counter_3,NEKY_HUNT_TRIGGER_1,"UK3CB_TKA_O_BMP1",6,east,1555] spawn OKS_fnc_Mechanized_Spawn; sleep 5;
		[counter_4,NEKY_HUNT_TRIGGER_1,"UK3CB_TKA_O_BMP1",6,east,1555] spawn OKS_fnc_Mechanized_Spawn;
	};

	case 7: {

		[counter_5,NEKY_HUNT_TRIGGER_2,"UK3CB_TKA_O_BMP1",6,east,1555] spawn OKS_fnc_Mechanized_Spawn; sleep 5;
		[counter_6,NEKY_HUNT_TRIGGER_2,"UK3CB_TKA_O_BMP1",6,east,1555] spawn OKS_fnc_Mechanized_Spawn; sleep 30;
		[counter_5,NEKY_HUNT_TRIGGER_2,"UK3CB_TKA_O_BMP1",6,east,1555] spawn OKS_fnc_Mechanized_Spawn; sleep 5;
		[counter_6,NEKY_HUNT_TRIGGER_2,"UK3CB_TKA_O_BMP1",6,east,1555] spawn OKS_fnc_Mechanized_Spawn;
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
		   6 - gunner Split - [How many teams,Procent of gunner] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};

