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

private ["_Vehicles","_MG","_AT"];

params [
	"_case"
];

OKS_Difficulty = ["OKS_Dynamic",1] call BIS_fnc_getParamValue;
if(OKS_Difficulty isEqualTo 1) then {
	_Vehicles = [
		"UK3CB_CW_SOV_O_EARLY_BMP1", "UK3CB_CW_SOV_O_EARLY_MTLB_BMP", "UK3CB_CW_SOV_O_LATE_MTLB_BMP","UK3CB_CW_SOV_O_EARLY_BMP1", "UK3CB_CW_SOV_O_EARLY_MTLB_BMP", "UK3CB_CW_SOV_O_LATE_MTLB_BMP",
		"UK3CB_CW_SOV_O_EARLY_BMP1", "UK3CB_CW_SOV_O_EARLY_MTLB_BMP", "UK3CB_CW_SOV_O_LATE_MTLB_BMP",
		"UK3CB_CW_SOV_O_LATE_BMD1", "UK3CB_CW_SOV_O_LATE_BMD1", "UK3CB_CW_SOV_O_LATE_BMD2", "UK3CB_CW_SOV_O_LATE_BMD1"
	];		
	_MG = ["UK3CB_CHD_O_KORD_high"];
	_AT = ["UK3CB_ARD_O_SPG9"];
	missionNamespace setVariable ["GOL_SelectedComposition",1,true];
	missionNamespace setVariable ["LAT_Chance",0.6,true];
	missionNamespace setVariable ["MAT_Chance",0.4,true];
	missionNamespace setVariable ["GOL_SelectedComposition",1,true];
} else {
	_Vehicles = [
		"UK3CB_CW_SOV_O_LATE_MTLB_KPVT", "UK3CB_CW_SOV_O_LATE_MTLB_PKT", "UK3CB_CHD_O_Hilux_M2", "UK3CB_CHD_O_Hilux_Pkm","UK3CB_CHD_O_Hilux_M2", "UK3CB_CHD_O_Hilux_Pkm",
		"UK3CB_CW_SOV_O_EARLY_UAZ_MG","UK3CB_CCM_O_Hilux_Pkm","UK3CB_CCM_O_Datsun_Pkm","UK3CB_KDF_O_UAZ_MG","UK3CB_CHD_O_Hilux_M2", "UK3CB_CHD_O_Hilux_Pkm"
	];
	_MG = ["UK3CB_AAF_O_PKM_High"];
	_AT = ["UK3CB_AAF_O_KORD"];
	missionNamespace setVariable ["GOL_SelectedComposition",0,true];
	missionNamespace setVariable ["LAT_Chance",0.2,true];
	missionNamespace setVariable ["MAT_Chance",0.1,true];
	missionNamespace setVariable ["GOL_SelectedComposition",0,true];	
};

switch (_case) do {

	case 1: {

		[Trigger_1,false,[0,18,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		[Trigger_2,false,[0,18,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

		// Ambush 1 & 2
		[[[[1453.51,6295.73,0],284,"Middle",[]],[[1454.36,6298.46,0],284,"Middle",[]],[[1455.32,6303.77,0],284,"Middle",[]],[[1456.95,6307.78,-6.10352e-005],284,"Middle",[]],[[1458.78,6311.55,6.10352e-005],284,"Middle",[]],[[1460.02,6313.52,0],284,"Middle",[]],[[1518.01,6431.41,0],270,"Middle",[]],[[1515.89,6411.7,0.00012207],270,"Middle",[]],[[1516.74,6415.8,6.10352e-005],270,"Middle",[]],[[1517.51,6426.58,0],270,"Middle",[]],[[1453.16,6292.24,0],284,"Middle",[]]],[[selectRandom _MG,[1452.98,6294.1,-0.00012207],306,[["gunner",-1,[0]]],[]],[selectRandom _AT,[1516.74,6418.65,0],272,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 1
		[[[[607.244,5891.8,6.10352e-005],183,"Middle",[]],[[588.177,5895.26,0],145,"Middle",[]],[[593.042,5871.02,6.10352e-005],66,"Up",[]],[[582.444,5874.42,0],260,"Middle",[]],[[592.861,5878.14,0.66394],183,"Up",[]],[[586.033,5879.11,0.414246],183,"Up",[]],[[587.272,5885.06,0.473938],292,"Up",[]],[[593.038,5884.25,0.689392],153,"Middle",[]]],[[selectRandom _Vehicles,[603.541,5892.45,0],8,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[584.993,5892.64,0],324,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _AT,[590.451,5880.99,3.79596],335,[["gunner",-1,[0]]],[]],[selectRandom _MG,[594.08,5890.4,0.3],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		
		// Strongpoitn 2
		[[[[389.573,5623.96,0.384521],141,"Up",[]],[[383.631,5634.15,0.486816],195,"Up",[]],[[403.427,5643.71,0],187,"Middle",[]],[[397.892,5626.16,0.138977],68,"Up",[]],[[393.7,5634.35,0.632019],164,"Up",[]],[[390.826,5630.31,0.686707],85,"Up",[]],[[388.957,5628.7,0.712036],342,"Middle",[]]],[[selectRandom _Vehicles,[406.355,5641.35,0],32,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[388.717,5643.38,-0.401672],334,[["driver",-1,[]],["gunner",-1,[0]],["gunner",-1,[1]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],[selectRandom _AT,[393.106,5631.97,3.87268],346,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 3
		[[[[1467.64,5900.29,0],147,"Up",[]],[[1463.13,5892.89,0],114,"Up",[]],[[1460.32,5880.43,0],133,"Up",[]],[[1449.44,5883.98,6.10352e-005],147,"Up",[]],[[1454.18,5883.91,0.754517],223,"Up",[]],[[1455.46,5891.07,0.887451],349,"Up",[]],[[1459.07,5889.12,0.733765],147,"Up",[]],[[1460.79,5891.39,0.746216],58,"Up",[]]],[[selectRandom _AT,[1458.19,5887.23,3.9295],340,[["gunner",-1,[0]]],[]],[selectRandom _Vehicles,[1471.46,5897.51,0],18,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[1454.05,5898.93,6.10352e-005],326,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		// Strongpoint 4
		[[[[2867.64,6362.04,0],91,"Middle",[]],[[2858.48,6363.12,0],145,"Middle",[]],[[2861.65,6385.42,0.0643311],138,"Middle",[]],[[2871.38,6369.79,0],19,"Middle",[]],[[2862.43,6371.94,0.786499],114,"Middle",[]],[[2864.31,6368.15,0.496582],35,"Middle",[]],[[2864.33,6365.72,0.362488],293,"Middle",[]],[[2864.89,6377.37,0],317,"Middle",[]]],[[selectRandom _Vehicles,[2865.47,6387.72,0],317,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[2853.6,6374.67,0],284,[["driver",-1,[]],["gunner",-1,[0]],["gunner",-1,[1]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],[selectRandom _AT,[2863.88,6369.91,3.82129],296,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 5
		[[[[2046.44,5507.11,0],91,"Middle",[]],[[2037.29,5508.19,0.139099],145,"Middle",[]],[[2040.46,5530.49,0],138,"Middle",[]],[[2051.26,5514.74,0],19,"Middle",[]],[[2039.81,5516.05,1.677],114,"Middle",[]],[[2042.17,5513.07,1.41669],35,"Middle",[]],[[2043.14,5510.79,1.2981],293,"Middle",[]],[[2043.7,5522.43,0],317,"Middle",[]]],[[selectRandom _Vehicles,[2044.39,5532.68,0],317,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[2033.6,5517.26,6.10352e-005],284,[["driver",-1,[]],["gunner",-1,[0]],["gunner",-1,[1]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],[selectRandom _AT,[2043.69,5515.64,4.57361],296,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Anti-Air Nest 2
		[aaa_2,east,false,2000,true] spawn OKS_fnc_Ambient_AAA;
		[DestroyObject_31, east, 2] call OKS_fnc_AddVehicleCrew;
		[DestroyObject_32, east, 2] call OKS_fnc_AddVehicleCrew;
		[[[[1584.85,5611.45,0.0124512],27,"Middle",[]],[[1581.65,5612.83,0.216431],27,"Middle",[]],[[1575.31,5614.3,0.647766],0,"Up",[]],[[1566.49,5617.48,0],0,"Up",[]],[[1570.38,5616.53,0.472229],0,"Middle",[]],[[1554.6,5616.21,0],351,"Middle",[]],[[1555.63,5615.93,0],24,"Up",[]],[[1547.01,5615.76,0],351,"Middle",[]],[[1579.46,5595.36,0],258,"Middle",[]],[[1584.5,5583.54,0],261,"Middle",[]],[[1596.67,5607.44,0.0904541],2,"Middle",[]],[[1590.51,5593.04,0.0904541],271,"Up",[]],[[1565.28,5571.03,0],323,"Middle",[]]],[[selectRandom _MG,[1583.41,5611.76,0],27,[["gunner",-1,[0]]],[]],[selectRandom _AT,[1527.44,5549.99,0.357849],234,[["gunner",-1,[0]]],[]],[selectRandom _AT,[1613.84,5600.87,0.383972],13,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Trench 1
		[[[[1743.76,6966.31,6.10352e-005],359,"Up",[]],[[1745.63,6966.97,6.10352e-005],359,"Up",[]],[[1753.35,6960.28,0],298,"Up",[]],[[1756.66,6964.62,0.298767],359,"Up",[]],[[1759.37,6965.85,0.464966],13,"Up",[]],[[1760.33,6959.84,0.308533],359,"Up",[]],[[1767.63,6942.47,6.10352e-005],359,"Up",[]],[[1770.38,6929.88,6.10352e-005],358,"Up",[]],[[1783.85,6937.62,-6.10352e-005],216,"Up",[]],[[1799,6928.17,0],312,"Up",[]],[[1806.77,6912.73,0],262,"Up",[]],[[1798.46,6903.71,0.0045166],358,"Up",[]],[[1806.49,6906.61,0.428467],81,"Up",[]],[[1806.26,6901.5,0.302002],168,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Trench 2
		[[[[2016.7,6603.28,0],0,"Middle",[]],[[2018.85,6604.56,0],335,"Middle",[]],[[2022.12,6600.5,0],344,"Middle",[]],[[2030.4,6589.72,-6.10352e-005],321,"Up",[]],[[2040.72,6596.29,0],333,"Middle",[]],[[2041.51,6596.58,0],333,"Middle",[]],[[2037.59,6591.3,6.10352e-005],333,"Middle",[]],[[2013.98,6563.01,6.10352e-005],23,"Middle",[]],[[2010.76,6563.66,-6.10352e-005],300,"Up",[]],[[2016.44,6581.56,0.123413],340,"Up",[]],[[2012.5,6576.86,0.0446777],333,"Up",[]],[[2018.5,6577.99,0.16217],333,"Middle",[]],[[2053.65,6619.27,6.10352e-005],254,"Up",[]],[[2065.16,6626.5,0],233,"Up",[]],[[2078.71,6644.37,0],13,"Up",[]],[[2079.87,6637.02,0.847412],254,"Up",[]],[[2083.78,6633.08,0.907898],194,"Up",[]],[[2085.11,6642.09,0.735168],356,"Up",[]],[[2086.35,6638.55,0.816162],254,"Up",[]]],[[selectRandom _AT,[2045.75,6588.33,0.00506592],13,[["gunner",-1,[0]]],[]],[selectRandom _AT,[2072.55,6613.13,-0.0750122],256,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Ambush 3 & 4
		[[[[2236.91,6375.28,0.201782],303,"Up",[]],[[2232.46,6365.9,0],303,"Up",[]],[[2236.24,6370.96,0],303,"Up",[]],[[2231.8,6361.24,0],273,"Up",[]],[[2228.84,6356.03,6.10352e-005],301,"Up",[]],[[2100.44,6179.46,0.201782],358,"Up",[]],[[2090.18,6177.8,0],358,"Up",[]],[[2096.5,6177.56,0],358,"Up",[]],[[2085.98,6175.71,6.10352e-005],328,"Up",[]],[[2080,6175.19,6.10352e-005],356,"Up",[]],[[2082.71,6208.45,0.201782],0,"Up",[]],[[2072.41,6207.09,0],0,"Up",[]],[[2078.72,6206.67,0],0,"Up",[]],[[2068.15,6205.11,0.00012207],330,"Up",[]],[[2062.16,6204.77,0.00012207],358,"Up",[]]],[[selectRandom _Vehicles,[2092.12,6169.78,0],27,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[2231.17,6348.33,0],270,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Huntbase
		[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 8,1200,east,_Vehicles,300] spawn OKS_fnc_Huntbase; sleep 60;
		[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 8,1400,east,_Vehicles,300] spawn OKS_fnc_Huntbase; sleep 60;
		[Base_3, Spawn_3, NEKY_Hunt_Trigger_1, 8,1600,east,_Vehicles,300] spawn OKS_fnc_Huntbase; sleep 60;
		[Base_4, Spawn_4, NEKY_Hunt_Trigger_1, 8,1800,east,_Vehicles,300] spawn OKS_fnc_Huntbase; sleep 60;
		[Base_5, Spawn_5, NEKY_Hunt_Trigger_1, 8,1800,east,_Vehicles,300] spawn OKS_fnc_Huntbase;

	};

	case 2: {

		// Hostage Objective
		[[[[572.793,5643.98,8.91693],0,"Up",[]],[[561.729,5640.86,8.91693],0,"Up",[]],[[564.955,5628.86,8.91693],245,"Up",[]],[[578.731,5632.78,4.90137],259,"Up",[]],[[565.15,5633.27,4.95752],88,"Up",[]],[[565.364,5642.53,4.90137],88,"Up",[]],[[561.028,5640.17,4.90137],354,"Up",[]],[[575.114,5644.52,0.885803],171,"Up",[]],[[561.418,5639.36,0.885803],266,"Up",[]],[[566.539,5628.92,0.885803],335,"Up",[]],[[577.35,5633.4,0.885803],99,"Up",[]],[[574.123,5631.65,0.885803],88,"Up",[]]],[[selectRandom _MG,[563.375,5634.87,8.91693],275,[["gunner",-1,[0]]],[]],[selectRandom _MG,[574.706,5644.02,8.91693],357,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[615.28,5649.53,8.91144],74,"Middle",[]],[[617.469,5644.12,8.91144],89,"Middle",[]],[[645.096,5624.58,10.1199],37,"Middle",[]],[[658.308,5695.6,8.91718],339,"Middle",[]],[[650.199,5688.87,8.91718],74,"Middle",[]],[[697.821,5728.16,8.91034],44,"Middle",[]],[[716.769,5725.09,6.24304],30,"Middle",[]],[[710.152,5730.8,6.24176],18,"Middle",[]],[[561.783,5669.46,10.12],343,"Middle",[]],[[574.012,5613.61,0],352,"Middle",[]],[[588.957,5631.93,0],209,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;	

		// Motor Pool Objective
		[[[[1796.26,5627.57,-6.10352e-005],0,"Up",[]],[[1812.31,5637.51,-6.10352e-005],0,"Up",[]],[[1805.5,5639.77,0.0601196],0,"Up",[]],[[1797.7,5683.36,0],267,"Up",[]],[[1801.09,5685.9,4.19647],0,"Up",[]],[[1805.91,5686.05,5.1803],0,"Up",[]],[[1795.99,5640.46,0],287,"Up",[]],[[1801.65,5647.47,-6.10352e-005],352,"Middle",[]]],[[selectRandom _Vehicles,[1780.74,5674.44,0],24,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1780.59,5624.49,0.258179],32,"Up",[]],[[1776.33,5621.71,0.238159],290,"Up",[]],[[1755.85,5654.02,0.542114],110,"Up",[]],[[1755.4,5656.61,0.504333],43,"Up",[]],[[1754.77,5642.95,0],89,"Middle",[]],[[1756.3,5646.17,-6.10352e-005],116,"Middle",[]],[[1789.62,5604.97,-6.10352e-005],7,"Middle",[]]],[[selectRandom _AT,[1748.64,5631.54,0.0736084],55,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Supply Dump Objective
		[[[[1976.46,5891.21,8.94751],35,"Up",[]],[[1996.94,5914.15,0],35,"Up",[]],[[1994.12,5889.78,0.526001],35,"Up",[]],[[1959.02,5923.94,-6.10352e-005],35,"Up",[]],[[1996.43,5922.82,0.208069],35,"Up",[]],[[1972.05,5922.59,0.48468],238,"Up",[]],[[1964.99,5906.17,0.409241],314,"Up",[]]],[[selectRandom _AT,[2012.77,5935.78,0.0893555],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1947.23,5887.19,0.0263672],35,"Up",[]],[[1905.63,5901.5,0],284,"Up",[]],[[1922.06,5915.1,0],38,"Up",[]],[[1930.81,5897.48,1.08173],351,"Up",[]],[[1928.75,5896.24,1.12079],4,"Up",[]],[[1933.01,5896.07,0],58,"Up",[]]],[[selectRandom _Vehicles,[1866.48,5873.45,0],66,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Trench 3
		[[[[2959.83,5692.5,0],64,"Up",[]],[[2956.69,5688.36,0],64,"Up",[]],[[2978.21,5709.49,0.164856],64,"Up",[]],[[2981.42,5713.82,0.186523],64,"Up",[]],[[2976.44,5717.06,0.418518],238,"Up",[]],[[2963.19,5717.43,0.312683],64,"Up",[]],[[2965.92,5722.19,0.223022],64,"Up",[]],[[2968.98,5719.87,0.024231],64,"Middle",[]],[[2980.24,5727.12,0],64,"Middle",[]]],[[selectRandom _Vehicles,[2951.4,5703.53,0],315,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]],[selectRandom _MG,[2978.4,5726.67,0],309,[],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Strongpoint 15
		[[[[401.587,4933.94,-0.116577],37,"Up",[]],[[405.161,4946.6,0.0985107],124,"Up",[]],[[550.771,4957.71,0],119,"Up",[]],[[564.364,4957.68,-0.00012207],233,"Up",[]],[[637.231,4965.32,0],245,"Up",[]],[[626.738,4960.58,0],80,"Up",[]],[[623.396,4965.17,-6.10352e-005],80,"Up",[]]],[[selectRandom _AT,[403.418,4943.03,-0.0167847],327,[["gunner",-1,[0]]],[]],[selectRandom _MG,[402.245,4941.17,0.00488281],311,[["gunner",-1,[0]]],[]],[selectRandom _AT,[559.585,4958.29,0],355,[["gunner",-1,[0]]],[]],[selectRandom _AT,[632.48,4966.47,0],346,[["gunner",-1,[0]]],[]],[selectRandom _MG,[556.567,4957.49,0.00012207],355,[["gunner",-1,[0]]],[]],[selectRandom _MG,[629.832,4965.27,6.10352e-005],346,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 7
		[[[[1722.03,5120.24,0],291,"Up",[]],[[1717.72,5109.48,0.237427],102,"Up",[]],[[1699.72,5105.21,0],291,"Up",[]],[[1698.69,5116.24,0],291,"Up",[]],[[1702.75,5107.94,0],142,"Up",[]],[[1709.7,5122.86,0],45,"Up",[]],[[1707.36,5115.5,0.599182],56,"Up",[]],[[1707.16,5111.74,3.91052],98,"Up",[]],[[1701.99,5114.77,0.698364],291,"Up",[]]],[[selectRandom _Vehicles,[1720.52,5100.57,0],94,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]],[selectRandom _MG,[1707.05,5113.04,3.91052],63,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 8
		[[[[2061.19,4899.28,6.10352e-005],143,"Up",[]],[[2070.28,4899.94,0],143,"Up",[]],[[2078.46,4885.75,0],143,"Up",[]],[[2074.43,4873.35,0],143,"Up",[]],[[2064.6,4872.54,0],143,"Up",[]],[[2059.51,4875.64,0],257,"Up",[]],[[2065.06,4879.46,0.695435],268,"Up",[]],[[2068.1,4883.03,0.556641],311,"Up",[]],[[2070.34,4878.37,0.580322],143,"Up",[]]],[[selectRandom _Vehicles,[2056.53,4885.02,0],278,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]],[selectRandom _MG,[2067.61,4881.94,3.73981],275,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Trench 5
		[[[[2997.41,4908.32,0.10144],277,"Up",[]],[[3005.32,4906.01,0.406616],277,"Up",[]],[[3008.61,4908,6.10352e-005],277,"Up",[]],[[3019.38,4922.53,0],277,"Up",[]],[[3028.17,4939.57,0],277,"Up",[]],[[3033.1,4939.67,0.162537],20,"Up",[]],[[3034.98,4937.77,0],40,"Up",[]],[[3029.37,4934.74,0],74,"Up",[]],[[3031.46,4908.27,0],202,"Up",[]],[[3035.02,4917.66,6.10352e-005],20,"Up",[]],[[3041.78,4922.01,0.61261],53,"Up",[]],[[3042.75,4920.95,0.529907],53,"Up",[]],[[3044.79,4915.29,6.10352e-005],349,"Up",[]]],[[selectRandom _AT,[2999.53,4907.51,3.79608],353,[["gunner",-1,[0]]],[]],[selectRandom _AT,[3039.96,4916.19,3.54132],52,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Anti Air Nest 1
		[[[[2679.62,5023.28,0],0,"Up",[[301,0]],"sl"],[[2677.03,5022.35,0],0,"Up",[[301,0]],"mmg"],[[2683.02,5011.95,0],0,"Up",[[301,0]],"r"],[[2699.56,5007.85,0],59,"Up",[[301,0]],"g"],[[2696.94,5009.01,0],3,"Up",[[301,0]],"r"],[[2697.07,4993.92,-6.10352e-05],310,"Up",[[301,0]],"g"],[[2705.69,4986.94,0],298,"Up",[[301,0]],"r"],[[2704.5,4980.52,0],158,"Up",[[301,0]],"r"],[[2701.56,4979.48,0],132,"Up",[[301,0]],"mmg"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[Trigger_3,false,[0,18,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		[Trigger_4,false,[0,18,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

	};



	case 3: {

		// Strongpoint 11
		[[[[659.08,4124.51,-6.10352e-005],190,"Up",[]],[[646.301,4123.73,-0.00012207],218,"Up",[]],[[645.577,4139.51,0],301,"Up",[]],[[647.352,4145.19,0],190,"Up",[]],[[658.228,4130.15,0.888855],190,"Up",[]],[[654.932,4135.95,1.08606],190,"Up",[]],[[656.06,4129.92,4.06982],257,"Up",[]]],[[selectRandom _Vehicles,[653.626,4146.94,0],305,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[642.222,4133.04,0],260,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _AT,[656.627,4131.68,4.35089],281,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Strongpoint 6
		[[[[905.478,4219.58,0],252,"Up",[]],[[893.626,4232.42,0],193,"Up",[]],[[907.16,4246.71,0],2,"Up",[]],[[918.036,4239.76,0],252,"Up",[]],[[910.019,4223.02,0.133423],252,"Up",[]],[[902.421,4230.69,0.795776],252,"Up",[]],[[901.958,4232.06,3.76746],319,"Up",[]],[[903.487,4236.97,1.39526],252,"Up",[]],[[904.197,4227.86,0.268005],252,"Up",[]]],[[selectRandom _Vehicles,[921.98,4234.8,0],6,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[903.88,4242.94,6.10352e-005],354,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _AT,[904.749,4232.06,3.92865],342,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 10
		[[[[1513.82,4228.42,0],149,"Up",[]],[[1503.77,4215.76,0],90,"Up",[]],[[1486.98,4224.1,0],260,"Up",[]],[[1491.37,4236.23,0],149,"Up",[]],[[1510.04,4235.05,0],149,"Up",[]],[[1503.65,4222.99,2.297],149,"Up",[]],[[1504.96,4223.61,3.84039],216,"Up",[]],[[1495.23,4218.49,0],149,"Up",[]],[[1508.35,4224.74,0.475769],149,"Up",[]],[[1499.79,4223.96,0.811218],149,"Up",[]],[[1505.57,4224.72,0.562561],149,"Up",[]]],[[selectRandom _Vehicles,[1494.81,4240.9,0],263,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[1491.36,4221.83,0.417358],252,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _AT,[1503.11,4226.16,3.79584],240,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 9
		[[[[1834.94,4342.04,0],285,"Up",[]],[[1830.17,4334.56,0],285,"Up",[]],[[1814.94,4341.74,0],285,"Up",[]],[[1810.46,4353.98,0],285,"Up",[]],[[1817.68,4360.69,0],285,"Up",[]],[[1823.6,4361.4,0.21051],39,"Up",[]],[[1818.54,4353.27,3.76135],50,"Up",[]],[[1821.41,4350.28,3.64539],93,"Up",[]]],[[selectRandom _Vehicles,[1831.64,4355.71,6.10352e-005],60,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]],[selectRandom _MG,[1820.13,4351.43,3.67279],57,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 14
		[[[[2525.17,4334.83,0],142,"Up",[]],[[2533.07,4338.66,0],172,"Up",[]],[[2518.83,4326.33,0],312,"Up",[]],[[2517.13,4318.23,0],142,"Up",[]],[[2533.35,4312.73,0],142,"Up",[]],[[2537.97,4321.26,0],360,"Up",[]],[[2533.69,4321.55,1.19373],142,"Up",[]],[[2527.45,4320.56,1.12585],256,"Up",[]],[[2530.02,4322.58,1.13287],184,"Up",[]]],[[selectRandom _Vehicles,[2529.37,4336.63,0],323,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0]]]],[selectRandom _AT,[2531.44,4320.71,4.34491],293,[["gunner",-1,[0]]],[]],[selectRandom _Vehicles,[2519.49,4322.37,0],277,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Anti-Air Nest 3
		[[[[1683.52,4257.79,0],0,"Up",[]],[[1690.11,4259.27,0.140381],0,"Up",[]],[[1680.07,4275.62,0],66,"Up",[]],[[1666.56,4273.1,0],282,"Middle",[]],[[1672.04,4259.68,4.43591],264,"Middle",[]],[[1681.91,4258.56,3.60522],26,"Middle",[]]],[[selectRandom _AT,[1670.42,4256.06,3.62683],283,[["gunner",-1,[0]]],[]],[selectRandom _AT,[1678.82,4260.55,3.61816],4,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 17
		[[[[251.494,4389.37,0],0,"Up",[]],[[241.707,4387.35,6.10352e-005],93,"Up",[]],[[242.327,4382.08,6.10352e-005],60,"Middle",[]],[[253.508,4381.43,0],302,"Middle",[]]],[[selectRandom _AT,[246.165,4387.07,0],335,[["gunner",-1,[0]]],[]],[selectRandom _MG,[248.716,4387.52,-0.00585938],351,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		// MLRS Battery.
		[[[[218.774,4657.48,0.775635],33,"Auto",[[301,0]],"sl"],[[212.762,4670.22,4.51801],339,"Auto",[[301,0]],"r"],[[227.525,4690.73,0.00158691],45,"Auto",[[301,0]],"r"],[[220.934,4668.85,4.56042],198,"Auto",[[301,0]],"r"],[[225.574,4661.55,4.1734],325,"Auto",[[301,0]],"r"],[[227.796,4715.34,0.000549316],222,"Auto",[[301,0]],"sl"],[[220.245,4700.65,0.507141],211,"Auto",[[301,0]],"r"],[[221.435,4700.33,3.94702],221,"Auto",[[301,0]],"mmg"],[[240.032,4644.59,0.00195313],23,"Auto",[[301,0]],"g"],[[217.74,4715.16,0.00708008],152,"Auto",[[301,0]],"r"],[[235.48,4706.04,3.6535],135,"Auto",[[301,0]],"mat"]],[["rhsgref_ins_bmp1",[200.043,4704.32,0],304,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["chedaki",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]],[351,false]]],["rhsgref_ins_bmp1",[238.05,4661.15,0],28,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["chedaki",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 4: {

		// Strongpoint 12
		[[[[200.954,3692.24,0],224,"Up",[]],[[205.774,3684.9,6.10352e-005],254,"Up",[]],[[191.713,3697.43,0],35,"Up",[]],[[183.457,3698.07,0],224,"Up",[]],[[180.1,3681.27,6.10352e-005],224,"Up",[]],[[189.152,3677.79,0],82,"Up",[]],[[188.48,3680.91,0.0635986],224,"Up",[]],[[186.847,3689.08,0.889709],338,"Up",[]],[[188.737,3686.24,0.591858],267,"Up",[]]],[[selectRandom _Vehicles,[203.032,3688.25,0],45,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0]]]],[selectRandom _AT,[187.042,3685.28,3.70947],15,[["gunner",-1,[0]]],[]],[selectRandom _Vehicles,[187.585,3696.2,0],360,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 13
		[[[[1077.81,3478.79,0],231,"Up",[]],[[1080.79,3471.38,6.10352e-005],261,"Up",[]],[[1068.5,3486.53,0],42,"Up",[]],[[1060.38,3488.16,6.10352e-005],231,"Up",[]],[[1054.07,3472.41,0],231,"Up",[]],[[1062.99,3466.47,0.441589],89,"Up",[]],[[1062.7,3469.65,1.47614],231,"Up",[]],[[1062.07,3477.95,0.948975],345,"Up",[]],[[1063.6,3474.91,0.799622],274,"Up",[]]],[[selectRandom _Vehicles,[1077.56,3474.4,0],52,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0]]]],[selectRandom _AT,[1062.4,3475.2,3.97217],22,[["gunner",-1,[0]]],[]],[selectRandom _Vehicles,[1064.59,3485.7,0],7,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 16
		[[[[3066.63,3736.31,0],231,"Up",[]],[[3080.03,3729.08,0],261,"Up",[]],[[3057.32,3744.05,0],42,"Up",[]],[[3029.96,3747.56,0],231,"Up",[]],[[3077.74,3741.73,0],88,"Up",[]],[[3061.98,3723.09,0.441589],89,"Up",[]],[[3048.37,3720.17,0.377808],231,"Up",[]],[[3023.74,3731.41,0.317139],345,"Up",[]],[[3052.43,3732.43,0],274,"Up",[]]],[[selectRandom _Vehicles,[3075.04,3751,0],25,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0]]]],[selectRandom _AT,[3079.97,3716.71,0],120,[["gunner",-1,[0]]],[]],[selectRandom _Vehicles,[3023.95,3756.92,0],14,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Artillery Objective
		[[[[2452.63,3405.18,-6.10352e-005],0,"Up",[]],[[2447.14,3398.11,-6.10352e-005],124,"Up",[]],[[2445.93,3412.44,6.10352e-005],0,"Up",[]],[[2429.9,3410.92,0],50,"Up",[]],[[2416.06,3404.35,-6.10352e-005],0,"Up",[]],[[2418.54,3401.8,-6.10352e-005],158,"Up",[]],[[2431.26,3438.71,-6.10352e-005],333,"Middle",[]],[[2433.34,3439.82,-0.00012207],326,"Middle",[]],[[2436.06,3432.96,-6.10352e-005],193,"Middle",[]],[[2455.01,3426.87,-6.10352e-005],233,"Up",[]],[[2463.18,3424.68,-6.10352e-005],272,"Up",[]],[[2463.44,3431.06,-0.00012207],73,"Up",[]]],[[selectRandom _Vehicles,[2376.37,3415.39,-6.10352e-005],6,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0]]]],[selectRandom _Vehicles,[2513.42,3328.21,-6.10352e-005],1,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		
		// Fuel Station Objective
		[[[[654.568,3065.21,0],96,"Up",[]],[[646.331,3065.35,0],96,"Up",[]],[[633.946,3069.25,0],179,"Up",[]],[[614.033,3060.84,0],96,"Up",[]],[[601.669,3060.97,0],5,"Up",[]],[[595.026,3081.08,0],96,"Up",[]],[[614.048,3092,0.244568],67,"Up",[]],[[605.917,3092.47,0.244568],292,"Up",[]],[[604.527,3083.4,0.244568],96,"Up",[]],[[595.481,3085.03,0.244568],96,"Up",[]],[[598.648,3095.67,0.237793],169,"Up",[]],[[600.721,3090.71,3.66022],328,"Up",[]],[[607.663,3090.32,3.66022],104,"Up",[]],[[652.134,3075.64,0],73,"Up",[]],[[650.855,3068.49,0.0519409],43,"Up",[]]],[[selectRandom _Vehicles,[605.517,3114.39,0],272,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[749.581,3080.82,0],113,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Headquarters Objective
		[[[[3088.23,3604.65,0.242676],165,"Up",[]],[[3076.61,3608.88,0.242676],165,"Up",[]],[[3093.14,3581.45,0.242676],21,"Up",[]],[[3081.45,3587.91,0.242676],263,"Up",[]],[[3076.09,3575.57,0.242676],28,"Up",[]],[[3075.16,3563.48,0.242676],165,"Up",[]],[[3092.73,3565.2,0.242676],165,"Up",[]],[[3086.22,3576.41,0.242676],3,"Up",[]],[[3064.4,3605.34,0],11,"Up",[]],[[3055.03,3602.74,0],353,"Up",[]],[[3070.5,3562.98,0],165,"Up",[]],[[3094.56,3560.04,11.2727],165,"Up",[]],[[3098.41,3595.89,0],359,"Up",[]]],[[selectRandom _Vehicles,[3038.15,3595.9,-6.10352e-005],359,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;	};

	case 5: {
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};