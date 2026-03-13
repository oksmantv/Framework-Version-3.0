/*
	AUTHOR: GuzzenVonLidl
	Description:
	What case tha should be called for the zone player is in
	Usage:
	null = [1] spawn GW_Fnc_spawnList;
	Parameters:
	#0: Number:Activate zone
	Returning Value:
	None
*/

#include "\OKS_GOL_Misc\script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {
	false
};

params [
	"_case"
];

systemChat format ["Spawn Case Activated: %1", _case];

switch (_case) do {
	case 0: {
		// Beach Assault.
		[[[[1576.74,2072.91,2.6226e-06],148,"Up",[[301,0]],"sl"],[[1574.66,2074.87,1.43051e-06],195,"Middle",[[301,1]],"ag"],[[1579.62,2074.43,1.43051e-06],112,"Middle",[[301,0]],"mat"],[[1582.68,2073.11,7.15256e-07],195,"Up",[[301,0]],"lr"],[[1542.48,2087.73,4.31538e-05],195,"Up",[[301,0]],"r"],[[1539.59,2089.54,2.00272e-05],195,"Middle",[[301,1]],"ag"],[[1546.02,2089.21,0],112,"Middle",[[301,0]],"mat"],[[1546.95,2087.37,0],195,"Up",[[301,0]],"lr"],[[1572.86,2073.34,2.40803e-05],164,"Up",[[301,0]],"lr"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[1693.41,2048.6,0],195,"Up",[[301,0]],"sl"],[[1690.3,2049.58,0],195,"Up",[[301,0]],"r"],[[1695.56,2050.69,0],112,"Middle",[[301,0]],"mat"],[[1696.5,2048.85,0],195,"Up",[[301,0]],"lr"],[[1661.56,2055.14,7.15256e-07],195,"Up",[[301,0]],"sl"],[[1658.18,2055.43,4.29153e-05],187,"Up",[[301,0]],"r"],[[1656.56,2057.59,2.38419e-07],252,"Middle",[[301,0]],"lr"],[[1664.64,2055.4,2.38419e-07],195,"Up",[[301,0]],"lr"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[1724.78,2136.06,0],195,"Up",[[301,0]],"r"],[[1712.74,2139.41,0],195,"Up",[[301,0]],"mat"],[[1700.43,2143.45,0],195,"Up",[[301,0]],"lr"],[[1718.87,2136.97,0],195,"Up",[[301,0]],"lr"],[[1619.21,2128.44,0],195,"Up",[[301,0]],"sl"],[[1637.75,2122.57,0],195,"Up",[[301,0]],"r"],[[1625.72,2125.92,0],195,"Up",[[301,0]],"mat"],[[1614.13,2128.64,-0.00365591],195,"Up",[[301,0]],"lr"],[[1568.6,2163.21,0],195,"Up",[[301,0]],"r"],[[1548.84,2169.26,0],195,"Up",[[301,1]],"ag"],[[1556.56,2166.55,0],195,"Up",[[301,0]],"mat"],[[1544.25,2170.6,0],195,"Up",[[301,0]],"lr"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[1855.35,2247.87,0.170165],7,"Up",[[301,0]],"sl"],[[1844.22,2239.29,0.549549],91,"Up",[[301,0]],"g"],[[1845.25,2245.38,0.348008],10,"Up",[[301,0]],"mmg"],[[1840.56,2239.73,0.495225],192,"Up",[[301,0]],"mat"],[[1863.52,2252,0.101523],143,"Up",[[301,0]],"lr"],[[1840.2,2245.29,0.340143],174,"Up",[[301,0]],"r"],[[1890.38,2226.97,3.28818],166,"Up",[[301,0]],"ftl"],[[1884.04,2220.9,0.168781],319,"Up",[[301,0]],"mat"],[[1870.91,2225.23,0.255544],323,"Up",[[301,0]],"mmg"],[[1868.37,2219.91,0.258849],125,"Up",[[301,0]],"mat"]],[],[],east] call GW_Common_fnc_spawnGroup;
				
		[[],[
			["rhs_bmp1_msv",[1728.6,2337.91,0.469009],192,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]],[351,false]]],
			//["rhs_bmp1_msv",[1673.27,2335.69,0.688135],192,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]],[351,false]]],
			["rhs_bmp1_msv",[1596.7,2347.74,0.630538],192,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]],[351,false]]]
		],[],east] call GW_Common_fnc_spawnGroup;
		[[],[
			//["rhs_btr80_msv",[1582.08,2115.77,0.471418],194,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",1]],[351,false]]],
			//["rhs_btr80_msv",[1664.87,2097.6,0.471418],194,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]],[351,false]]],
			["rhs_btr80_msv",[1699.15,2342.52,0.471418],194,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]],[351,false]]]
		],[],east] call GW_Common_fnc_spawnGroup;
		
		waitUntil {sleep 0.2; triggerActivated rampOpenTrigger};
		["USS Concord","side","Landing Party this is the USS Concord. Standby, ramp is opening. Marine Raiders will take the lead, support them as best you can. Good luck, Concord out."] remoteExec ["OKS_fnc_Chat",0];
		sleep 5;
		[mortarZone, 7] spawn OKS_fnc_MortarZone;
		private _LHA_Aft = ((LHA_1 getVariable ["bis_carrierparts", []]) select {
			(typeOf (_x #0)) isEqualTo "LHA_Aft"
		}) #0#0;
		_LHA_Aft animateSource ["ramp",1];
		sleep 4;
		null = [beachLandingSpawn_1, beachLandingTarget_1, "RHICC_GREEN", 4, west, "rush", 1500, ""] spawn OKS_fnc_BeachLanding; sleep 0.5;
		//null = [beachLandingSpawn_2, beachLandingTarget_2, "RHICC_GREEN", 4, west, "rush", 1500, ""] spawn OKS_fnc_BeachLanding; sleep 0.5;
		null = [beachLandingSpawn_3, beachLandingTarget_3, "RHICC_GREEN", 4, west, "rush", 1500, ""] spawn OKS_fnc_BeachLanding; sleep 0.5;
		//null = [beachLandingSpawn_4, beachLandingTarget_4, "RHICC_GREEN", 4, west, "rush", 1500, ""] spawn OKS_fnc_BeachLanding; sleep 0.5;
		sleep 2;
		LHA_1 enableSimulation false;
		sleep 8;

		[getpos jetspawn_1, jetstrike_1,getpos jetexit_1,selectRandom ["B_Plane_Fighter_01_Stealth_F"],west,100] spawn OKS_fnc_AirStrike; sleep 3;
		[getpos jetspawn_2, jetstrike_2,getpos jetexit_2,selectRandom ["B_Plane_Fighter_01_Stealth_F"],west,100] spawn OKS_fnc_AirStrike;
	};

	case 21: {
		[ConvoySpawn_1,ConvoyWP_1,ConvoyEnd_1,east,[3,["rhs_bmp1_msv", "rhs_brm1k_msv", "rhs_bmp1_msv"],40,35],[true,3],[],false,false,["rush"],"convoystop"] spawn OKS_fnc_Convoy_Spawn; sleep 180;
		//[ConvoySpawn_2,ConvoyWP_2,ConvoyEnd_2,east,[3,["rhs_bmp1_msv", "rhs_brm1k_msv", "rhs_bmp1_msv"],35,50],[true,3],[],false,false,["rush"],"convoystop"] spawn OKS_fnc_Convoy_Spawn; sleep 180;
		[ConvoySpawn_3,ConvoyWP_3,ConvoyEnd_3,east,[3,["rhs_bmp1_msv", "rhs_brm1k_msv", "rhs_bmp1_msv"],35,50],[true,3],[],false,false,["rush"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;
	};

	case 1: {

		// Trench east 1.
		[[
			[[2023.22, 3062.14, 0.356453], 136, "Up", []], [[2050.24, 3097.83, 0.909592], 128, "Middle", []], [[2009.93, 3062.04, 0.565353], 172, "Up", []], 
			[[2008.69, 3062.02, 0.242455], 172, "Up", []], [[2007.65, 3061.99, 0.0831909], 187, "Middle", []], [[2014.62, 3064.96, 1.0388], 224, "Middle", []], 
			[[2014.22, 3067.44, 0.0777206], 152, "Middle", []], [[2016.16, 3067.46, 1.15195], 172, "Middle", []], [[2018.7, 3064.77, 0.970589], 105, "Middle", []],
			[[2022.47, 3061.96, 0.488556], 172, "Up", []], [[2049.17, 3099.26, 0.235031], 110, "Middle", []], [[2037.77, 3055.22, 3.46955], 207, "Up", []],
			[[2038.96, 3055.43, 3.38303], 149, "Up", []], [[2024.49, 3073.54, 0], 187, "Middle", []], [[2052.9, 3095.72, 0.409157], 130, "Up", []],
			[[2027.38, 3073.41, 0], 187, "Middle", []], [[2052.21, 3095.05, 0.591438], 180, "Up", []]
		], [["rhs_SPG9M_MSV", [2026.06, 3073.95, -7.62939e-06], 193, [["gunner", -1, [0]]], []]], [], east] call GW_Common_fnc_spawnGroup;
		[[
			[[2006.08, 3165.62, -0.0355682], 223, "Middle", []], [[2001.59, 3174.59, 0.0470963], 180, "Middle", []], [[2023.39, 3161.02, 2.28882e-05], 223, "Up", []],
			 [[2033.6, 3164.47, -1.52588e-05], 223, "Middle", []], [[2050.76, 3173.01, -2.28882e-05], 223, "Middle", []], [[2059.45, 3182.42, 4.57764e-05], 239, "Middle", []],
			  [[2056.37, 3193.62, -7.62939e-06], 223, "Middle", []], [[2009.92, 3162.6, -7.62939e-06], 180, "Up", []], [[2058.48, 3177.44, 0.116806], 150, "Up", []],
			   [[2014.18, 3165.03, -4.57764e-05], 299, "Middle", []]
		], [
			["rhs_bmp1_msv", [2030.96, 3177.68, -0.0308914], 134, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 0, "crate_l3_unhide", 0, "crate_r1_unhide", 1, "crate_r2_unhide", 1, "crate_r3_unhide", 1, "wood_1_unhide", 0, "maljutka_hide_source", 0]]]]
		], [], east] call GW_Common_fnc_spawnGroup;

		// Trench west 1.
		[[[[1460.23,3229.13,0]	,162,"Up",[[301,0]],"g"],[[1462.91,3230.24,0],162,"Up",[[301,0]],"r"]],[["rhs_SPG9M_MSV",[1461.47,3230.09,-0.000198364],161,[["gunner",-1,[0]]],[[351,false]]],["rhs_bmp1_msv",[1402.43,3291.17,7.62939e-06],145,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		
		// Mortar Trench.
		[mortar_1, east, "precise", "light", ["auto", 50], 150, 500, 30] spawn OKS_fnc_Mortars;
		[[[[1860,3392.05,0.274597],256,"Up",[[301,0]],"sl"],[[1848.49,3388.18,-0.000106812],176,"Up",[[301,0]],"r"],[[1849.14,3394.16,8.39233e-05],266,"Up",[[301,0]],"g"],[[1846.17,3400.31,7.62939e-06],151,"Up",[[301,0]],"r"],[[1842.27,3389.63,0.259064],259,"Up",[[301,1]],"ag"],[[1841.33,3383.06,0.808571],44,"Up",[[301,0]],"r"]],[["rhs_bmp1_msv",[1827.23,3391.3,0.366066],152,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]],[351,false]]],["UK3CB_ARD_O_SPG9",[1854.54,3389.78,0.489433],167,[["gunner",-1,[0]]],[[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		
		// Trench Mid.
		[[[[1781.41, 3249.01, -3.05176e-05], 0, "Middle", []], [[1780.36, 3246.41, -3.05176e-05], 186, "Up", []], [[1776.24, 3243.98, 0], 167, "Up", []], [[1772.75, 3243, 0.497757], 167, "Up", []], [[1771.74, 3242.87, 0.514946], 167, "Up", []], [[1765.97, 3241.96, -3.05176e-05], 271, "Middle", []], [[1769.33, 3244.68, -3.05176e-05], 209, "Middle", []], [[1741.46, 3235.16, 3.20106], 146, "Up", []], [[1740.27, 3234.62, 3.39729], 179, "Up", []], [[1739.08, 3234.07, 3.39661], 230, "Up", []]], [["rhs_bmp1_msv", [1787.29, 3304.04, 0], 120, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 0, "crate_l3_unhide", 0, "crate_r1_unhide", 1, "crate_r2_unhide", 1, "crate_r3_unhide", 1, "wood_1_unhide", 0, "maljutka_hide_source", 0]]]]], [], east] call GW_Common_fnc_spawnGroup;

		// AAA MGs.
		[[], [["rhs_KORD_high_MSV", [2578.38, 3442.96, 0.00645447], 204, [["gunner", -1, [0]]], []], ["rhs_KORD_high_MSV", [2608.42, 3473.42, 0.108658], 80, [["gunner", -1, [0]]], []], ["rhs_KORD_high_MSV", [1723.68, 4019.03, 0.00640869], 204, [["gunner", -1, [0]]], []], ["rhs_KORD_high_MSV", [1317.82, 4044.02, 0.190048], 204, [["gunner", -1, [0]]], []], ["rhs_KORD_high_MSV", [2176.05, 3356.46, 11.0513], 204, [["gunner", -1, [0]]], []], ["rhs_KORD_high_MSV", [2156.79, 3360.92, 10.9596], 204, [["gunner", -1, [0]]], []], ["rhs_KORD_high_MSV", [3327.53, 3922.91, 0.0878296], 204, [["gunner", -1, [0]]], []], ["rhs_KORD_high_MSV", [3352.22, 4558.04, 0.0716858], 230, [["gunner", -1, [0]]], []]], []] call GW_Common_fnc_spawnGroup;

		// / AAA Green Mountain.
		[[], [["UK3CB_CHD_O_Gaz66_ZU23", [3701.27, 5962.62, 0], 312, [["gunner", -1, [0]]], [[6, ["CHDKZ", 1]], [7, ["cover_hide", 0, "spare_hide", 0, "bench_hide", 0, "rear_numplate_hide", 1, "light_hide", 0]]]], ["UK3CB_CHD_O_Gaz66_ZU23", [3694.24, 6010.97, 0], 188, [["gunner", -1, [0]]], [[6, ["CHDKZ", 1]], [7, ["cover_hide", 0, "spare_hide", 0, "bench_hide", 0, "rear_numplate_hide", 1, "light_hide", 0]]]]], []] call GW_Common_fnc_spawnGroup;
	};

	case 22: {

		// Mechanized Village + Farm + Ambush west
		[[], [
			["rhs_bmp1_msv", [1531.81, 3435.64, 7.62939e-06], 156, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 0, "crate_l3_unhide", 0, "crate_r1_unhide", 1, "crate_r2_unhide", 1, "crate_r3_unhide", 1, "wood_1_unhide", 0, "maljutka_hide_source", 0]]]],
			["rhs_bmp1_msv", [1353.96, 3877, 0.451431], 181, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 0, "crate_l3_unhide", 0, "crate_r1_unhide", 1, "crate_r2_unhide", 1, "crate_r3_unhide", 1, "wood_1_unhide", 0, "maljutka_hide_source", 0]]]],
			["rhs_bmp1_msv", [1199.4, 3877.7, 0.544075], 240, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 0, "crate_l3_unhide", 0, "crate_r1_unhide", 1, "crate_r2_unhide", 1, "crate_r3_unhide", 1, "wood_1_unhide", 0, "maljutka_hide_source", 0]]]],
			["rhs_bmp1_msv", [1551.46, 3948.24, 0.64032], 137, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 0, "crate_l3_unhide", 0, "crate_r1_unhide", 1, "crate_r2_unhide", 1, "crate_r3_unhide", 1, "wood_1_unhide", 0, "maljutka_hide_source", 0]]]],
			["rhs_brm1k_tv", [1663.09, 3910.36, 1.52588e-05], 155, [["driver", -1, []], ["gunner", 0, [0]], ["turret", -1, [1]]], [[6, ["standard", 1]], [7, ["konkurs_hide_source", 0, "crate_l1_unhide", 1, "crate_l2_unhide", 0, "crate_l3_unhide", 1, "crate_r1_unhide", 1, "crate_r2_unhide", 1, "crate_r3_unhide", 0, "wood_1_unhide", 1]]]],
			["rhs_brm1k_tv", [1688.8, 3873.55, 0], 163, [["driver", -1, []], ["gunner", 0, [0]], ["turret", -1, [1]]], [[6, ["standard", 1]], [7, ["konkurs_hide_source", 0, "crate_l1_unhide", 1, "crate_l2_unhide", 0, "crate_l3_unhide", 1, "crate_r1_unhide", 1, "crate_r2_unhide", 1, "crate_r3_unhide", 0, "wood_1_unhide", 1]]]]
		], []] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[1554.71, 3475.71, 0], 0, []], [[1559.71, 3470.71, 0], 0, []], [[1549.71, 3470.71, 0], 0, []], [[1564.71, 3465.71, 0], 0, []], [[1544.71, 3465.71, 0], 0, []], [[1569.71, 3460.71, 0], 0, []], [[1539.71, 3460.71, 0], 0, []], [[1574.71, 3455.71, 0], 0, []]], [], [[[1487.46, 3410.16, 0], [[0, "Move"], [1, "SAFE"]]], [[1384.1, 3320.84, 0], [[0, "Move"]]], [[1393.86, 3224.77, 0], [[0, "Move"]]], [[1455.62, 3132.17, 0], [[0, "Move"]]], [[1513.44, 3066.33, 0], [[0, "Move"]]], [[1457.87, 3134.87, 0], [[0, "Move"]]], [[1395.13, 3225.88, 0], [[0, "Move"]]], [[1381.19, 3321.93, 0], [[0, "Move"]]], [[1489.96, 3412.7, 0], [[0, "Move"]]], [[1556.5, 3476.64, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1664.52, 3623.17, 0], 0, []], [[1669.52, 3618.17, 0], 0, []], [[1659.52, 3618.17, 0], 0, []], [[1674.52, 3613.17, 0], 0, []], [[1654.52, 3613.17, 0], 0, []], [[1679.52, 3608.17, 3.05176e-05], 0, []], [[1649.52, 3608.17, 1.52588e-05], 0, []], [[1684.52, 3603.17, 1.52588e-05], 0, []]], [], [[[1786.14, 3463.76, 1.52588e-05], [[0, "Move"], [1, "SAFE"]]], [[1937.6, 3124.22, 7.62939e-06], [[0, "Move"]]], [[1809.7, 3062.78, 0], [[0, "Move"]]], [[1659.5, 3052.58, 0], [[0, "Move"]]], [[1569.43, 3100.5, 0], [[0, "Move"]]], [[1661.76, 3055.28, 0], [[0, "Move"]]], [[1810.96, 3063.88, 0], [[0, "Move"]]], [[1934.69, 3125.31, 0], [[0, "Move"]]], [[1788.65, 3466.31, 1.52588e-05], [[0, "Move"]]], [[1666.31, 3624.1, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {
		// Counter Trench.
		[getpos LambsGroupSpawn_1, "hunt", 4, east, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_2, "hunt", 4, east, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_3, "hunt", 4, east, 500] spawn OKS_fnc_Lambs_SpawnGroup;

		// Village Hostages.
		{
			[Group _X] spawn OKS_fnc_Hostage;
		} foreach [hostage_1,hostage_6];

		[[[[1612.69, 3862.96, 0], 0, []], [[1617.69, 3857.96, 0], 0, []], [[1607.69, 3857.96, 0], 0, []], [[1622.69, 3852.96, 0], 0, []], [[1602.69, 3852.96, 0], 0, []], [[1627.69, 3847.96, 1.52588e-05], 0, []], [[1597.69, 3847.96, 1.52588e-05], 0, []], [[1632.69, 3842.96, 0], 0, []]], [], [[[1554.45, 3937.89, 0], [[0, "Move"], [1, "SAFE"]]], [[1413.95, 3989.34, 0], [[0, "Move"]]], [[1313.85, 3858.2, 0], [[0, "Move"]]], [[1146, 3930.63, 0], [[0, "Move"]]], [[1053.17, 4002.2, 0], [[0, "Move"]]], [[1148.25, 3933.33, 0], [[0, "Move"]]], [[1315.12, 3859.3, 0], [[0, "Move"]]], [[1411.04, 3990.42, 0], [[0, "Move"]]], [[1556.96, 3940.44, 0], [[0, "Move"]]], [[1614.48, 3863.88, 0], [[0, "Cycle"]]]], east] call GW_Common_fnc_spawnGroup;
		[[[[1676.25, 3952.16, 0], 0, []], [[1681.25, 3947.16, 0], 0, []], [[1671.25, 3947.16, 0], 0, []], [[1686.25, 3942.16, 0], 0, []], [[1666.25, 3942.16, 0], 0, []], [[1691.25, 3937.16, 0], 0, []], [[1661.25, 3937.16, 0], 0, []], [[1696.25, 3932.16, 0], 0, []]], [], [[[1664.31, 4017, 0], [[0, "Move"], [1, "SAFE"]]], [[1543.03, 3987.6, 0], [[0, "Move"]]], [[1440.25, 4028.52, 0], [[0, "Move"]]], [[1456.53, 4127.55, 0], [[0, "Move"]]], [[1310.84, 4221.04, 0], [[0, "Move"]]], [[1458.78, 4130.25, 0], [[0, "Move"]]], [[1441.51, 4029.63, 0], [[0, "Move"]]], [[1540.12, 3988.68, 0], [[0, "Move"]]], [[1666.82, 4019.55, 0], [[0, "Move"]]], [[1678.04, 3953.08, 0], [[0, "Cycle"]]]], east] call GW_Common_fnc_spawnGroup;

		[[[[1721.58, 3803.03, 0.0782471], 221, "Middle", []], [[1740.75, 3793.97, -0.0211334], 228, "Middle", []], [[1682.56, 3761.91, 0], 76, "Middle", []], [[1682.17, 3772.17, 0], 246, "Up", []], [[1687.28, 3797.18, 0], 67, "Middle", []], [[1669.66, 3776.22, -1.52588e-05], 240, "Up", []], [[1664.99, 3791.03, 0.0765533], 341, "Up", []], [[1655.77, 3744.34, 1.52588e-05], 74, "Middle", []], [[1647.89, 3779.06, 0.402969], 36, "Up", []]], [], [], east] call GW_Common_fnc_spawnGroup;
		[[[[1712.93, 3823.89, 0], 237, "Middle", []], [[1682.44, 3829.08, 0], 74, "Up", []], [[1675.23, 3821.88, 0], 222, "Up", []], [[1656.91, 3819.19, 0.115662], 262, "Up", []], [[1662.12, 3818.45, 0.136627], 272, "Up", []], [[1656.68, 3824.86, 0.116531], 329, "Up", []], [[1664.17, 3824.52, 0.158661], 67, "Up", []], [[1660.86, 3826.12, 0.142212], 351, "Up", []], [[1667.38, 3812.56, 0.161423], 262, "Up", []], [[1658.96, 3811.36, 0.12822], 3, "Up", []], [[1663.73, 3813.08, 0.140945], 218, "Up", []], [[1636.38, 3815.12, 1.52588e-05], 88, "Middle", []], [[1640.47, 3805.58, 3.42953], 90, "Up", []], [[1640.15, 3806.43, 3.42906], 90, "Up", []]], [["UK3CB_ADE_O_PKM_High", [1712.23, 3824.51, 0], 238, [["gunner", -1, [0]]], []]], [], east] call GW_Common_fnc_spawnGroup;
		[[[[1649.81, 3846.65, 5.28227], 181, "Up", []], [[1653.5, 3847.91, 5.27103], 144, "Up", []]], [["rhs_KORD_high_VDV", [1652.22, 3847.71, 5.29765], 162, [["gunner", -1, [0]]], []]], [], east] call GW_Common_fnc_spawnGroup;
		[[[[1314.62, 3835.28, -2.28882e-05], 165, "Up", []], [[1307.93, 3836.48, -3.8147e-05], 165, "Up", []], [[1298.64, 3840.28, 0], 236, "Up", []], [[1291.19, 3843.26, -9.15527e-05], 242, "Up", []], [[1304.66, 3839.59, -6.10352e-05], 292, "Middle", []], [[1312.26, 3834.93, -9.91821e-05], 298, "Middle", []]], [], [], east] call GW_Common_fnc_spawnGroup;
	};

	case 3: {
		// Counter Ambush west.
		[getpos LambsGroupSpawn_4, "ambushrush", 5, east, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_5, "ambushrush", 5, east, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_6, "ambushrush", 5, east, 500] spawn OKS_fnc_Lambs_SpawnGroup;
	};

	case 4: {
		// Ambush east.
		[[[[2579.44, 3450.13, 0], 63, "Up", []], [[2578.09, 3459.68, 3.01004], 70, "Up", []], [[2578.78, 3457.66, 3.04193], 61, "Up", []], [[2581.65, 3457.56, 0], 106, "Middle", []], [[2607.05, 3479.38, 0], 351, "Up", []], [[2603.78, 3469.75, 0], 241, "Up", []], [[2625.52, 3488.22, 0], 236, "Middle", []], [[2724.23, 3373.2, 0], 292, "Up", []], [[2724.16, 3378.73, 1.52588e-05], 292, "Up", []], [[2722.28, 3386.42, 0], 306, "Up", []], [[2775.41, 3522.41, 0], 269, "Up", []], [[2775.2, 3521.25, -1.52588e-05], 253, "Up", []], [[2724.21, 3613.12, 0], 234, "Middle", []], [[2726.54, 3608.07, 0], 234, "Middle", []], [[2725.96, 3601.92, 1.52588e-05], 234, "Middle", []], [[2727.12, 3598.21, 0], 277, "Middle", []]], [], []] call GW_Common_fnc_spawnGroup;
		[[[[2773.24, 3290.86, 0], 0, []], [[2778.24, 3285.86, 0], 0, []], [[2768.24, 3285.86, 0], 0, []], [[2783.24, 3280.86, 0], 0, []]], [], [[[2736.94, 3401.65, 0], [[0, "Move"], [1, "SAFE"]]], [[2532.33, 3410.92, 0], [[0, "Move"]]], [[2635.55, 3313.72, 0], [[0, "Move"]]], [[2762.65, 3278.83, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2873.87, 3700.15, 1.66148], 0, []], [[2878.87, 3695.15, 1.66147], 0, []], [[2868.87, 3695.15, 1.66148], 0, []], [[2883.87, 3690.15, 1.66148], 0, []]], [], [[[2838.14, 3756, 0], [[0, "Move"], [1, "SAFE"]]], [[2673.86, 3680.69, -0.00012207], [[0, "Move"]]], [[2732.96, 3619.06, 0], [[0, "Move"]]], [[2863.28, 3688.13, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {
		// Village Hostages Counter-Attack.
		[convoy_4, convoy_5, convoy_6, east, [4, ["UK3CB_CHD_O_BMD1", "UK3CB_CHD_O_Hilux_Open", "UK3CB_CHD_O_Hilux_Closed", "UK3CB_CHD_O_Pickup_SPG9"], 60, 50], [true, 6], [], false, false, ["hunt"], "convoystop"] spawn OKS_fnc_Convoy_Spawn;

		_sleep = 240;
		if (hasInterface && isServer) then {
			_sleep = 15;
		};
		sleep _sleep;

		[convoy_1, convoy_2, convoy_3, east, [4, ["UK3CB_CHD_O_T55", "rhs_bmp1_msv", "UK3CB_CHD_O_Pickup", "UK3CB_CHD_O_Pickup"], 35, 45], [true, 6], [], false, false, ["hunt"]] spawn OKS_fnc_Convoy_Spawn;
	};

	case 6: {
		// Bor
		[[[[3329.99, 3875.06, 0], 214, "Middle", []], [[3345.22, 3900.34, 1.52588e-05], 214, "Middle", []], [[3344.88, 3918.2, 0], 167, "Middle", []], [[3364.28, 3934.23, 1.52588e-05], 236, "Up", []], [[3405.65, 3927.65, 1.52588e-05], 290, "Middle", []], [[3321.2, 3959.24, 1.52588e-05], 165, "Middle", []], [[3329.62, 3964.86, 1.52588e-05], 139, "Up", []], [[3301.16, 3940.02, 1.52588e-05], 118, "Middle", []]], [], []] call GW_Common_fnc_spawnGroup;
		[[], [["UK3CB_CW_SOV_O_EARLY_UAZ_SPG9", [2850.46, 4286.91, 0.0500183], 135, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["SOV", 1]], [7, ["light_hide", 0, "spare_hide", 0]]]], ["UK3CB_CW_SOV_O_EARLY_UAZ_SPG9", [2893.54, 4362.44, 0], 135, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["SOV", 1]], [7, ["light_hide", 0, "spare_hide", 0]]]]], []] call GW_Common_fnc_spawnGroup;

		[[[[3395.12, 3842.78, 0], 0, []], [[3400.12, 3837.78, 0], 0, []], [[3390.12, 3837.78, 0], 0, []], [[3405.12, 3832.78, 0], 0, []], [[3385.12, 3832.78, 0], 0, []], [[3410.12, 3827.78, 1.52588e-05], 0, []], [[3380.12, 3827.78, -1.52588e-05], 0, []], [[3415.12, 3822.78, 0], 0, []]], [], [[[3459.89, 3958.11, 0], [[0, "Move"], [1, "SAFE"]]], [[3233.53, 3967.91, 1.52588e-05], [[0, "Move"]]], [[3381.14, 3840.5, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 7: {
		// Zelenogorsk
		[[[[2679.85, 5306.5, 0], 0, []], [[2684.85, 5301.5, 0], 0, []], [[2677.85, 5303.26, 0], 0, []], [[2681.06, 5302.1, 0], 0, []]], [], [[[2709.73, 5337.53, 0], [[0, "Move"], [1, "SAFE"]]], [[2762.88, 5320.09, -4.57764e-05], [[0, "Move"]]], [[2752.95, 5274.03, 0], [[0, "Move"]]], [[2695.77, 5285.09, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2781.74, 5249.02, 0], 0, []], [[2786.74, 5244.02, 0], 0, []], [[2779.75, 5245.78, 0], 0, []], [[2782.95, 5244.62, 0], 0, []]], [], [[[2785.53, 5295.8, 0], [[0, "Move"], [1, "SAFE"]]], [[2837.58, 5289.55, 1.52588e-05], [[0, "Move"]]], [[2839.3, 5248.64, 0], [[0, "Move"]]], [[2802.69, 5212.33, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2672.37, 5192.33, 0], 0, []], [[2677.37, 5187.33, 0], 0, []], [[2670.37, 5189.09, 0], 0, []], [[2673.57, 5187.93, 0], 0, []]], [], [[[2691.34, 5252.38, 0], [[0, "Move"], [1, "SAFE"]]], [[2738.04, 5221.99, 0], [[0, "Move"]]], [[2732.88, 5154.93, 1.52588e-05], [[0, "Move"]]], [[2669.27, 5185.29, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Statics.
		[[[[2733.54, 5269.39, 0.144638], 66, "Up", []], [[2801.54, 5301.07, 0], 222, "Up", []], [[2838.45, 5263.53, 0.198166], 281, "Middle", []], [[2720.38, 5243.31, 3.28648], 146, "Up", []], [[2735.58, 5244.91, 6.3112], 167, "Up", []], [[2758.39, 5225.38, 2.10146], 246, "Up", []], [[2775.34, 5301.83, 0], 203, "Middle", []], [[2723.27, 5296.71, 4.62846], 139, "Up", []], [[2778.39, 5296.13, 4.55313], 210, "Up", []], [[2736.09, 5304.21, 1.52588e-05], 168, "Middle", []]], [], []] call GW_Common_fnc_spawnGroup;

		[[], [
			["UK3CB_CHD_W_O_Pickup_SPG9", [2813.74, 5232.23, 0], 196, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["CHDKZ", 1]], [7, ["Beacons_Hide", 1, "Bonnet_Armour_Hide", 1, "Central_Armour_Hide", 1, "Front_Armour_Hide", 1, "Rear_Armour_Hide", 1, "Roof_Armour_Hide", 1, "Wheel_Armour_Hide", 1, "Windscreen_Armour_Hide", 1]]]],
			["UK3CB_CHD_W_O_Pickup_SPG9", [2916.83, 5276.34, 0.0106964], 170, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["CHDKZ", 1]], [7, ["Beacons_Hide", 1, "Bonnet_Armour_Hide", 1, "Central_Armour_Hide", 1, "Front_Armour_Hide", 1, "Rear_Armour_Hide", 1, "Roof_Armour_Hide", 1, "Wheel_Armour_Hide", 1, "Windscreen_Armour_Hide", 1]]]],
			["UK3CB_CHD_W_O_Pickup_SPG9", [2765.1, 5334.38, -0.000900269], 191, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["CHDKZ", 1]], [7, ["Beacons_Hide", 1, "Bonnet_Armour_Hide", 1, "Central_Armour_Hide", 1, "Front_Armour_Hide", 1, "Rear_Armour_Hide", 1, "Roof_Armour_Hide", 1, "Wheel_Armour_Hide", 1, "Windscreen_Armour_Hide", 1]]]],
			["rhs_bmp1_msv", [2698.39, 5290.71, 0.0684052], 192, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 1, "crate_l2_unhide", 0, "crate_l3_unhide", 0, "crate_r1_unhide", 1, "crate_r2_unhide", 0, "crate_r3_unhide", 1, "wood_1_unhide", 1, "maljutka_hide_source", 0]]]]
		], []] call GW_Common_fnc_spawnGroup;
	};

	case 8: {
		// Phase 2 Shared.
		[[[[3339.01, 4534.83, 0], 153, "Middle", []], [[3332.07, 4535.2, 0], 153, "Up", []], [[3321.33, 4537.25, 0], 224, "Up", []], [[3315.08, 4538.67, 0], 230, "Middle", []], [[3329.42, 4537.2, 0], 281, "Middle", []], [[3335.63, 4533.98, 0], 286, "Middle", []]], [["rhs_bmp1_tv", [3322.75, 4548.59, 0.509094], 278, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 0, "crate_l3_unhide", 1, "crate_r1_unhide", 1, "crate_r2_unhide", 1, "crate_r3_unhide", 0, "wood_1_unhide", 0, "maljutka_hide_source", 0]]]], ["rhs_bmp1_tv", [3356.59, 4593.4, 0.565643], 333, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 0, "crate_l3_unhide", 1, "crate_r1_unhide", 1, "crate_r2_unhide", 1, "crate_r3_unhide", 0, "wood_1_unhide", 0, "maljutka_hide_source", 0]]]], ["UK3CB_CHD_W_O_Pickup_SPG9", [3194.6, 5179.34, 0], 168, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["CHDKZ", 1]], [7, ["Beacons_Hide", 1, "Bonnet_Armour_Hide", 1, "Central_Armour_Hide", 1, "Front_Armour_Hide", 1, "Rear_Armour_Hide", 1, "Roof_Armour_Hide", 1, "Wheel_Armour_Hide", 1, "Windscreen_Armour_Hide", 1]]]], ["rhs_bmp1_msv", [3155.64, 5197.1, 1.52588e-05], 233, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 1, "crate_l3_unhide", 1, "crate_r1_unhide", 1, "crate_r2_unhide", 0, "crate_r3_unhide", 1, "wood_1_unhide", 1, "maljutka_hide_source", 0]]]]], []] call GW_Common_fnc_spawnGroup;

		private _Vehicles = [
			"UK3CB_CHD_O_BMD1",
			"UK3CB_CHD_O_BMD1P",
			"UK3CB_CHD_O_BMP1",
			"UK3CB_CHD_O_MTLB_Cannon",
			"UK3CB_CHD_O_T34",
			"UK3CB_CHD_O_Hilux_Spg9",
			"UK3CB_CHD_O_LR_Opentop_SPG9"
		];
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 15, 300, east, _Vehicles, 120] spawn OKS_fnc_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 15, 300, east, _Vehicles, 120] spawn OKS_fnc_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 15, 300, east, _Vehicles, 120] spawn OKS_fnc_HuntBase;
	};

	case 9: {
		// Artillery Objective
		[[[[3368.45, 4911.48, 0], 18, "Middle", []], [[3380.48, 4889.56, 0], 330, "Middle", []], [[3428.51, 4899.16, 0], 290, "Middle", []], [[3446.3, 4936.32, 0], 227, "Middle", []], [[3435.62, 4921.33, 0], 214, "Middle", []], [[3405.53, 4886.98, 0], 338, "Middle", []], [[3423.5, 4906.61, 0.343033], 215, "Up", []], [[3400.3, 4919.81, 0.243805], 224, "Up", []], [[3393.97, 4926.03, 0.625809], 300, "Up", []]], [["rhs_bmp1_msv", [3463.13, 4912.97, 0.691299], 204, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 1, "crate_l2_unhide", 1, "crate_l3_unhide", 0, "crate_r1_unhide", 0, "crate_r2_unhide", 1, "crate_r3_unhide", 0, "wood_1_unhide", 1, "maljutka_hide_source", 0]]]], ["rhs_bmp1_msv", [3392.29, 4996.67, 0.691299], 303, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 1, "crate_l2_unhide", 1, "crate_l3_unhide", 0, "crate_r1_unhide", 0, "crate_r2_unhide", 1, "crate_r3_unhide", 0, "wood_1_unhide", 1, "maljutka_hide_source", 0]]]]], []] call GW_Common_fnc_spawnGroup;
		[[[[3295.98, 4920.31, 0], 53, "Middle", []], [[3294.65, 4944.32, 0], 126, "Middle", []], [[3280.64, 4941.48, 0.046875], 238, "Middle", []], [[3326.96, 4939.11, 0.110199], 181, "Up", []], [[3323.52, 4896.59, 0.446945], 341, "Up", []], [[3361.71, 4954.26, 0], 224, "Middle", []], [[3322.84, 4967.19, 0], 197, "Middle", []], [[3323.47, 4975.53, 0], 273, "Middle", []]], [["rhs_bmp1_msv", [3341.52, 4922.01, 0.691299], 224, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 1, "crate_l2_unhide", 1, "crate_l3_unhide", 0, "crate_r1_unhide", 0, "crate_r2_unhide", 1, "crate_r3_unhide", 0, "wood_1_unhide", 1, "maljutka_hide_source", 0]]]]], []] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[3483.79, 4955.74, 0], 0, []], [[3488.79, 4950.74, 0], 0, []], [[3478.79, 4950.74, 0], 0, []], [[3493.79, 4945.74, 0], 0, []]], [], [[[3439.52, 4860.04, 0], [[0, "Move"], [1, "SAFE"]]], [[3338.26, 4883.42, 4.57764e-05], [[0, "Move"]]], [[3442.06, 4990.95, -1.52588e-05], [[0, "Move"]]], [[3481.99, 4964.45, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3392.22, 4978.43, 0], 0, []], [[3397.22, 4973.43, 1.52588e-05], 0, []], [[3387.22, 4973.43, 0], 0, []], [[3402.22, 4968.43, 0], 0, []]], [], [[[3347.95, 4882.73, 0], [[0, "Move"], [1, "SAFE"]]], [[3252.1, 4917.98, 0], [[0, "Move"]]], [[3350.49, 5013.64, 0], [[0, "Move"]]], [[3390.41, 4987.13, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		{
			[east, _X, [2247.48, 2417.16, 0], 7, 300, 30] spawn OKS_fnc_ArtyFire;
			sleep 3;
		} forEach [arty_1, arty_2, arty_3, arty_4];
	};

	case 10: {
		// AA Objective.
		[[], [
			["rhs_bmd1", [4341.45, 4601.44, 0], 282, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["maljutka_hide_source", 0, "crate_l1_unhide", 0, "crate_l2_unhide", 0, "crate_l3_unhide", 0, "crate_r1_unhide", 1, "crate_r2_unhide", 0, "crate_r3_unhide", 1, "wood_1_unhide", 1, "wood_2_unhide", 1, "antena2_hide", 1]]]],
			["rhs_bmd1", [4352.94, 4712.67, 0], 340, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["maljutka_hide_source", 0, "crate_l1_unhide", 0, "crate_l2_unhide", 0, "crate_l3_unhide", 0, "crate_r1_unhide", 1, "crate_r2_unhide", 0, "crate_r3_unhide", 1, "wood_1_unhide", 1, "wood_2_unhide", 1, "antena2_hide", 1]]]],
			["rhs_bmd1", [4426.43, 4676.2, 0], 303, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["maljutka_hide_source", 0, "crate_l1_unhide", 0, "crate_l2_unhide", 0, "crate_l3_unhide", 0, "crate_r1_unhide", 1, "crate_r2_unhide", 0, "crate_r3_unhide", 1, "wood_1_unhide", 1, "wood_2_unhide", 1, "antena2_hide", 1]]]],
			["rhs_bmd1", [4438.77, 4666.5, 1], 309, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["maljutka_hide_source", 0, "crate_l1_unhide", 0, "crate_l2_unhide", 0, "crate_l3_unhide", 0, "crate_r1_unhide", 1, "crate_r2_unhide", 0, "crate_r3_unhide", 1, "wood_1_unhide", 1, "wood_2_unhide", 1, "antena2_hide", 1]
			]]]], []] call GW_Common_fnc_spawnGroup;

			// Statics
			[[[[4421.66, 4689.04, 0], 194, "Up", []], [[4375.49, 4705.59, 0], 352, "Up", []], [[4368.64, 4724.25, 0], 288, "Up", []], [[4432.05, 4654.3, 1.52588e-05], 281, "Up", []], [[4416.38, 4655.49, 0], 194, "Up", []], [[4388.99, 4610.51, 0], 321, "Up", []], [[4374.46, 4625.13, 0], 215, "Up", []], [[4373.57, 4603.98, 0], 229, "Up", []], [[4392.37, 4623.89, 0.43161], 250, "Up", []], [[4395.79, 4621.17, 0.433365], 228, "Up", []], [[4349.05, 4648.19, 3.33736], 105, "Up", []], [[4410.81, 4690.55, 0], 226, "Middle", []], [[4431.81, 4683.75, 0.325317], 198, "Middle", []], [[4434.55, 4681.19, 0.332153], 231, "Middle", []]], [["UK3CB_CHD_O_SPG9", [4435.18, 4685.92, 0.325317], 207, [["gunner", -1, [0]]], []], ["UK3CB_CHD_O_SPG9", [4372.91, 4712.87, 0], 196, [["gunner", -1, [0]]], []]], []] call GW_Common_fnc_spawnGroup;

			// Patrols.
			[[[[4387.61, 4720.05, 0], 0, []], [[4392.61, 4715.05, 0], 0, []], [[4382.61, 4715.05, 1.52588e-05], 0, []]], [], [[[4504.3, 4637.86, -0.000183105], [[0, "Move"]]], [[4507, 4717.21, -6.10352e-05], [[0, "Move"]]], [[4395.56, 4725.63, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[4406.04, 4666.07, 0], 0, []], [[4411.04, 4661.07, 0], 0, []], [[4401.04, 4661.07, 0], 0, []]], [], [[[4522.73, 4583.88, 0], [[0, "Move"]]], [[4525.42, 4663.23, 0], [[0, "Move"]]], [[4413.99, 4671.65, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[4417.6, 4524.17, 0], 247, []], [[4420.28, 4530.71, 0], 247, []], [[4424.14, 4521.48, 0], 247, []]], [], [[[4447.12, 4602.12, 0], [[0, "Move"]]], [[4371.21, 4591.89, 1.52588e-05], [[0, "Move"]]], [[4409.38, 4529.36, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[4307.03, 4559.29, 0], 280, []], [[4312.8, 4563.37, 0], 280, []], [[4311.11, 4553.51, 0], 280, []]], [], [[[4407.81, 4660.36, 0], [[0, "Move"]]], [[4330.06, 4676.46, 0], [[0, "Move"]]], [[4302.88, 4568.07, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		};

		case 11: {
			// Counter Artillery.
			_sleep = 180;
			if (hasInterface && isServer) then {
				_sleep = 15;
			};
			sleep _sleep;
			[convoy_16, convoy_17, convoy_18, east, [4, ["UK3CB_CHD_O_T55", "rhs_bmp1_msv", "UK3CB_CHD_O_Pickup", "UK3CB_CHD_O_Pickup"], 35, 45], [true, 6], [], false, false, ["hunt"]] spawn OKS_fnc_Convoy_Spawn;

			[[[[3458.02, 5237.73, 0], 207, []], [[3455.81, 5244.45, 0], 207, []], [[3464.74, 5239.94, -3.05176e-05], 207, []], [[3462.27, 5241.06, 0], 207, []], [[3467.82, 5243.46, 0], 207, []], [[3460.06, 5247.77, 0], 207, []], [[3463.71, 5245.51, 0], 207, []], [[3459.89, 5243.26, 0], 207, []]], [], [[[3470.92, 5094.03, 0], [[0, "Move"]]], [[3415.3, 4914.89, 0], [[0, "SAD"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[3381.59, 5300.53, 3.05176e-05], 207, []], [[3379.38, 5307.25, 3.05176e-05], 207, []], [[3388.31, 5302.74, 0], 207, []], [[3385.85, 5303.86, 6.10352e-05], 207, []], [[3391.4, 5306.26, 6.10352e-05], 207, []], [[3383.63, 5310.58, 3.05176e-05], 207, []], [[3387.29, 5308.31, 6.10352e-05], 207, []], [[3383.47, 5306.06, 3.05176e-05], 207, []]], [], [[[3384.59, 5192.97, 0], [[0, "Move"]]], [[3334.66, 4958.66, 0], [[0, "SAD"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[3667.67, 5164.99, 0], 207, []], [[3665.46, 5171.7, 0], 207, []], [[3674.39, 5167.2, 0], 207, []], [[3671.93, 5168.31, 0], 207, []], [[3677.47, 5170.71, 3.05176e-05], 207, []], [[3669.71, 5175.03, 3.05176e-05], 207, []], [[3673.37, 5172.77, 3.05176e-05], 207, []], [[3669.55, 5170.52, 0], 207, []]], [], [[[3590.4, 5004.71, 0.637421], [[0, "Move"]]], [[3396.94, 4933.66, 1.52588e-05], [[0, "SAD"]]]]] call GW_Common_fnc_spawnGroup;
		};

		case 12: {
			// Counter AA.
			_sleep = 180;
			if (hasInterface && isServer) then {
				_sleep = 15;
			};
			sleep _sleep;
			[convoy_19, convoy_20, convoy_21, east, [4, ["UK3CB_CHD_O_T55", "rhs_bmp1_msv", "UK3CB_CHD_O_Pickup", "UK3CB_CHD_O_Pickup"], 35, 45], [true, 6], [], false, false, ["hunt"]] spawn OKS_fnc_Convoy_Spawn;

			[[[[4611.8, 4951.24, 0], 207, []], [[4609.59, 4957.95, 0], 207, []], [[4618.51, 4953.45, 0], 207, []], [[4616.05, 4954.56, 0], 207, []], [[4621.6, 4956.96, 0], 207, []], [[4613.84, 4961.28, 0], 207, []], [[4617.49, 4959.02, 0], 207, []], [[4613.67, 4956.77, 0], 207, []]], [], [[[4630.54, 4807.75, 0], [[0, "Move"]]], [[4450.46, 4615.4, 0], [[0, "SAD"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[4487.2, 5076.61, 0], 207, []], [[4484.99, 5083.32, 0], 207, []], [[4493.92, 5078.82, 0], 207, []], [[4491.46, 5079.94, 0], 207, []], [[4497.01, 5082.34, 3.05176e-05], 207, []], [[4489.25, 5086.65, 3.05176e-05], 207, []], [[4492.9, 5084.39, 3.05176e-05], 207, []], [[4489.08, 5082.14, 0], 207, []]], [], [[[4422.96, 4965.3, 0.637238], [[0, "Move"]]], [[4361.14, 4666.72, 0], [[0, "SAD"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[4926.06, 4628.06, 0], 246, []], [[4928.65, 4634.64, 0], 246, []], [[4932.64, 4625.47, 0], 246, []], [[4931.46, 4627.9, 0], 246, []], [[4937.26, 4626.21, 3.05176e-05], 246, []], [[4934.04, 4634.48, 3.05176e-05], 246, []], [[4935.41, 4630.41, 3.05176e-05], 246, []], [[4931.03, 4631.11, 0], 246, []]], [], [[[4676.14, 4679.57, 0.63739], [[0, "Move"]]], [[4434.12, 4628.45, 0], [[0, "SAD"]]]]] call GW_Common_fnc_spawnGroup;
		};

		case 13: {
			// Green Mountain 
			[[[[3660.53, 5939.54, -3.05176e-05], 0, []], [[3665.53, 5934.54, 3.05176e-05], 0, []], [[3655.53, 5934.54, 0], 0, []], [[3670.53, 5929.54, -3.05176e-05], 0, []]], [], [[[3814.42, 5898.56, 0], [[0, "Move"], [1, "SAFE"]]], [[3749.77, 5839.86, -0.00012207], [[0, "Move"]]], [[3658.1, 5927.38, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[3632.74, 6024.16, 0], 342, []], [[3639.05, 6020.97, 0], 342, []], [[3629.55, 6017.85, 0], 342, []], [[3645.36, 6017.79, 0], 342, []]], [], [[[3723.36, 6086.64, 0], [[0, "Move"], [1, "SAFE"]]], [[3660.76, 5970.48, 0], [[0, "Move"]]], [[3634.24, 6011.86, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[3764.91, 6076.02, 0], 64, []], [[3762.59, 6069.34, 0], 64, []], [[3758.23, 6078.35, 0], 64, []], [[3760.27, 6062.67, 0], 64, []]], [], [[[3840.39, 5984.2, 0], [[0, "Move"], [1, "SAFE"]]], [[3711.13, 5915.85, 3.05176e-05], [[0, "Move"]]], [[3762.05, 6050.68, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;

			[[[[3685.97, 5987.56, 0.69162], 63, "Up", []], [[3681.87, 5982.98, 0.69162], 99, "Up", []], [[3681.48, 5990.69, 0.69162], 176, "Up", []], [[3674.08, 5991.69, 0.69162], 78, "Up", []], [[3675.72, 5987.15, 0.69162], 14, "Up", []], [[3679, 5993.25, 4.76163], 145, "Up", []], [[3682, 5983.54, 4.76163], 347, "Up", []]], [], []] call GW_Common_fnc_spawnGroup;
			[[[[3700.46, 6011.74, 0], 212, "Up", []], [[3703.18, 6009.76, 0.345276], 141, "Up", []], [[3701.05, 6007.73, 0.345276], 178, "Up", []], [[3703.93, 6005.05, 0.338715], 325, "Up", []], [[3708.74, 6007.25, 0.345276], 101, "Up", []], [[3722.1, 5989.33, 20.6568], 120, "Up", []], [[3721.92, 5989.11, 25.7056], 119, "Up", []], [[3719.13, 5977.45, 20.6578], 124, "Up", []]], [], []] call GW_Common_fnc_spawnGroup;
			[[[[3704.26, 5952.84, 0.0769958], 67, "Up", []], [[3716.85, 5956.85, 0.0900574], 299, "Up", []], [[3717.45, 5951.32, 0.135193], 331, "Up", []], [[3714.38, 5950.14, 0.145508], 212, "Up", []], [[3710.81, 5948.43, 0.145386], 3, "Up", []]], [], []] call GW_Common_fnc_spawnGroup;

			[[], [["rhs_bmd1", [3730.79, 6013, 0], 145, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["maljutka_hide_source", 0, "crate_l1_unhide", 1, "crate_l2_unhide", 1, "crate_l3_unhide", 0, "crate_r1_unhide", 0, "crate_r2_unhide", 1, "crate_r3_unhide", 1, "wood_1_unhide", 1, "wood_2_unhide", 1, "antena2_hide", 1]]]], ["rhs_bmd1", [3812.01, 5954.87, 0], 145, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["maljutka_hide_source", 0, "crate_l1_unhide", 1, "crate_l2_unhide", 1, "crate_l3_unhide", 0, "crate_r1_unhide", 0, "crate_r2_unhide", 1, "crate_r3_unhide", 1, "wood_1_unhide", 1, "wood_2_unhide", 1, "antena2_hide", 1]]]]], []] call GW_Common_fnc_spawnGroup;
		};

		case 14: {
			// Green Mountain Counter
			_sleep = 180;
			if (hasInterface && isServer) then {
				_sleep = 15;
			};
			sleep _sleep;
			[convoy_7, convoy_8, convoy_9, east, [4, ["rhs_bmp1_msv", "rhs_bmp1_msv", "UK3CB_CHD_O_Pickup", "UK3CB_CHD_O_Pickup"], 35, 45], [true, 6], [], false, false, ["hunt"]] spawn OKS_fnc_Convoy_Spawn;

			[[[[3406.61, 6180.28, 0], 207, []], [[3404.4, 6186.99, 0], 207, []], [[3413.33, 6182.49, 0], 207, []], [[3410.86, 6183.6, 0], 207, []], [[3416.41, 6186, 3.05176e-05], 207, []], [[3408.65, 6190.32, 3.05176e-05], 207, []], [[3412.31, 6188.05, 3.05176e-05], 207, []], [[3408.49, 6185.8, 0], 207, []]], [], [[[3593.71, 6141.77, 0.637115], [[0, "Move"]]], [[3716.63, 6004.71, 0], [[0, "SAD"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[3329.96, 6093.32, 0], 207, []], [[3327.74, 6100.04, 0], 207, []], [[3336.67, 6095.53, 0], 207, []], [[3334.21, 6096.65, 0], 207, []], [[3339.76, 6099.05, 0], 207, []], [[3332, 6103.36, 0], 207, []], [[3335.65, 6101.1, 3.05176e-05], 207, []], [[3331.83, 6098.85, 0], 207, []]], [], [[[3517.05, 6054.81, 0.637085], [[0, "Move"]]], [[3711.57, 5983.97, 0], [[0, "SAD"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[3273.84, 6015.11, 0], 207, []], [[3271.63, 6021.83, 0], 207, []], [[3280.56, 6017.32, 0], 207, []], [[3278.09, 6018.44, 0], 207, []], [[3283.64, 6020.84, 3.05176e-05], 207, []], [[3275.88, 6025.16, 0], 207, []], [[3279.54, 6022.89, 6.10352e-05], 207, []], [[3275.72, 6020.64, 0], 207, []]], [], [[[3641.01, 5755.06, 0.637604], [[0, "Move"]]], [[3818.76, 5944.5, 0], [[0, "SAD"]]]]] call GW_Common_fnc_spawnGroup;
		};

		case 15: {
			// Final Objective
			[[[[4458.1, 6466.33, 6.10352e-05], 166, "Up", []], [[4443.14, 6457.61, 6.10352e-05], 150, "Middle", []], [[4447.98, 6473.39, 6.10352e-05], 175, "Middle", []], [[4438.56, 6402.23, 6.10352e-05], 359, "Middle", []], [[4429.58, 6436.38, 0.293091], 132, "Up", []], [[4356.53, 6403.89, 3.90033], 80, "Up", []], [[4356.42, 6406.87, 3.96439], 71, "Up", []], [[4410.97, 6393.54, 0.00592041], 265, "Up", []], [[4417.85, 6393.95, 0.024353], 94, "Up", []]], [["rhs_bmp1_msv", [4405.65, 6388.49, 0], 181, [["driver", -1, []], ["cargo", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 1, "crate_l3_unhide", 0, "crate_r1_unhide", 0, "crate_r2_unhide", 0, "crate_r3_unhide", 1, "wood_1_unhide", 0, "maljutka_hide_source", 0]]]], ["rhs_bmp1_msv", [4376.74, 6462.58, 0], 312, [["driver", -1, []], ["cargo", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 1, "crate_l3_unhide", 0, "crate_r1_unhide", 0, "crate_r2_unhide", 0, "crate_r3_unhide", 1, "wood_1_unhide", 0, "maljutka_hide_source", 0]]]]], []] call GW_Common_fnc_spawnGroup;
			[[[[4504.71, 6485.36, 6.10352e-05], 256, "Up", []], [[4473.13, 6449.23, 9.15527e-05], 292, "Up", []], [[4532.96, 6468.32, 0.139618], 180, "Up", []], [[4537.24, 6468.42, 0.175476], 197, "Up", []], [[4488.31, 6462.92, 1.07788], 279, "Up", []], [[4483.62, 6468.73, 1.07788], 219, "Up", []], [[4474.63, 6458.79, 1.07788], 2, "Up", []], [[4471.51, 6464.97, 0.874451], 121, "Up", []]], [["rhs_bmp1_msv", [4551.31, 6443.02, 0], 230, [["driver", -1, []], ["cargo", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 1, "crate_l3_unhide", 0, "crate_r1_unhide", 0, "crate_r2_unhide", 0, "crate_r3_unhide", 1, "wood_1_unhide", 0, "maljutka_hide_source", 0]]]], ["rhs_bmp1_msv", [4466.37, 6485.41, 0], 192, [["driver", -1, []], ["cargo", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 1, "crate_l3_unhide", 0, "crate_r1_unhide", 0, "crate_r2_unhide", 0, "crate_r3_unhide", 1, "wood_1_unhide", 0, "maljutka_hide_source", 0]]]]], []] call GW_Common_fnc_spawnGroup;
			[[[[4482.83, 6376.42, 6.10352e-05], 344, "Middle", []], [[4491.82, 6402.27, 3.07797], 312, "Up", []], [[4482.26, 6427.67, 6.10352e-05], 267, "Middle", []], [[4475.27, 6378.23, 3.69363], 335, "Up", []], [[4516.35, 6407.73, 6.10352e-05], 160, "Up", []], [[4547.15, 6411.67, 6.10352e-05], 289, "Middle", []], [[4541.86, 6402.61, 1.22546], 17, "Up", []], [[4548.66, 6404.25, 1.22546], 279, "Up", []], [[4555.39, 6397.91, 1.22546], 296, "Up", []], [[4546.78, 6386.89, 1.17654], 356, "Up", []], [[4542.91, 6393.32, 1.22205], 31, "Up", []], [[4557.67, 6394.36, 1.22546], 286, "Up", []], [[4551.71, 6385.11, 1.44757], 21, "Up", []]], [], []] call GW_Common_fnc_spawnGroup;

			// Patrol.
			[[[[4577.72, 6388.87, 3.05176e-05], 0, []], [[4582.72, 6383.87, 0], 0, []], [[4572.72, 6383.87, 0], 0, []], [[4587.72, 6378.87, 0], 0, []]], [], [[[4418.15, 6372.8, 0], [[0, "Move"], [1, "SAFE"]]], [[4508.78, 6396.01, 0], [[0, "Move"]]], [[4574.18, 6398.48, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[4518.41, 6490.25, 0], 0, []], [[4523.41, 6485.25, 0], 0, []], [[4513.41, 6485.25, 0], 0, []], [[4528.41, 6480.25, 0], 0, []]], [], [[[4378.75, 6482.52, 0], [[0, "Move"], [1, "SAFE"]]], [[4449.47, 6497.38, 0], [[0, "Move"]]], [[4514.86, 6499.85, 0], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[4363.57, 6372.07, 0], 132, []], [[4356.51, 6371.71, 0], 132, []], [[4363.21, 6379.13, 0], 132, []], [[4349.44, 6371.36, 0], 132, []]], [], [[[4522.64, 6424.3, 0], [[0, "Move"], [1, "SAFE"]]], [[4402.57, 6418.12, 0], [[0, "Move"]]], [[4373.07, 6368.25, 3.05176e-05], [[0, "Cycle"]]]]] call GW_Common_fnc_spawnGroup;

			// Pulkovo
			[[[[4965.98, 5600.67, 0.160278], 11, "Up", [[301, 0]], "ftl"], [[4971.39, 5602.58, 0.245056], 328, "Up", [[301, 0]], "r"], [[4962.63, 5600.79, -0.0866699], 69, "Up", [[301, 0]], "g"], [[4970.65, 5611.14, 0.231445], 148, "Up", [[301, 0]], "mmg"], [[4963.63, 5606.52, 0.157257], 215, "Up", [[301, 0]], "ar"], [[4964.55, 5611.35, 0.224274], 187, "Up", [[301, 0]], "r"], [[4955.88, 5615.44, 3.05176e-05], 231, "Middle", [[301, 0]], "g"], [[4991.24, 5564.84, 3.29294], 37, "Up", [[301, 0]], "sl"], [[4995.12, 5559.17, 0.00863647], 246, "Up", [[301, 0]], "r"], [[4983.56, 5560.62, 0.154999], 252, "Up", [[301, 0]], "g"], [[4987.08, 5559.18, 0.0141907], 99, "Up", [[301, 1]], "ag"], [[4991.21, 5564.06, 0], 324, "Up", [[301, 0]], "g"], [[4994.21, 5564.06, 0], 231, "Up", [[301, 0]], "r"]], [["rhs_bmp1_msv", [4941.64, 5577.18, -3.05176e-05], 312, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 1, "crate_l3_unhide", 0, "crate_r1_unhide", 0, "crate_r2_unhide", 0, "crate_r3_unhide", 0, "wood_1_unhide", 0, "maljutka_hide_source", 0]], [351, false]]]], [], east] call GW_Common_fnc_spawnGroup;
			[[[[4920.5, 5637.96, 2.1756], 253, "Up", [[301, 0]], "sl"], [[4922.11, 5641.46, 2.33017], 68, "Up", [[301, 1]], "ag"], [[4915.42, 5639.9, 1.87939], 230, "Up", [[301, 1]], "ag"], [[4933.08, 5640.4, 0], 293, "Middle", [[301, 0]], "r"], [[4943.15, 5623.2, 0.262695], 219, "Up", [[301, 0]], "r"]], [["rhs_bmp1_msv", [4920.95, 5653, 0], 318, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 1, "crate_l3_unhide", 0, "crate_r1_unhide", 0, "crate_r2_unhide", 0, "crate_r3_unhide", 0, "wood_1_unhide", 0, "maljutka_hide_source", 0]], [351, false]]]], [], east] call GW_Common_fnc_spawnGroup;
			[[[[4877.53, 5633.77, 0.171387], 169, "Up", [[301, 0]], "sl"], [[4885.06, 5636.62, 3.43011], 204, "Up", [[301, 0]], "r"], [[4886.24, 5634.91, 0.33316], 177, "Up", [[301, 0]], "lr"], [[4885.28, 5624.74, 0.260223], 80, "Middle", [[301, 0]], "mmg"], [[4868, 5660.71, 1.35004], 237, "Middle", [[301, 0]], "r"], [[4873.18, 5665, 2.07306], 25, "Up", [[301, 0]], "lr"]], [["rhs_bmp1_msv", [4862.74, 5647.29, 3.05176e-05], 297, [["driver", -1, []], ["gunner", -1, [0]]], [[6, ["standard", 1]], [7, ["crate_l1_unhide", 0, "crate_l2_unhide", 1, "crate_l3_unhide", 0, "crate_r1_unhide", 0, "crate_r2_unhide", 0, "crate_r3_unhide", 0, "wood_1_unhide", 0, "maljutka_hide_source", 0]], [351, false]]]], [], east] call GW_Common_fnc_spawnGroup;
		};

		case 16: {
			// Final Objective Counter
			_sleep = 300;
			if (hasInterface && isServer) then {
				_sleep = 15;
			};
			sleep _sleep;

			[[[[4529.52, 6755.37, 0], 0, []], [[4532.52, 6752.37, 0], 0, []], [[4534.52, 6752.37, 0], 0, []], [[4536.52, 6752.37, 0], 0, []], [[4538.52, 6752.37, 0], 0, []], [[4540.52, 6752.37, 0], 0, []], [[4542.52, 6752.37, 0], 0, []], [[4544.52, 6752.37, 0], 0, []]], [], [[[4439.7, 6562.22, 3.05176e-05], [[0, "Move"]]], [[4418.72, 6418.79, 0], [[0, "SAD"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[4630.17, 6681.66, 3.05176e-05], 0, []], [[4633.17, 6678.66, 0], 0, []], [[4635.17, 6678.66, 0], 0, []], [[4637.17, 6678.66, 0], 0, []], [[4639.17, 6678.66, 0], 0, []], [[4641.17, 6678.66, 0], 0, []], [[4643.17, 6678.66, 0], 0, []], [[4645.17, 6678.66, 0], 0, []]], [], [[[4527.96, 6528.06, 0], [[0, "Move"]]], [[4471.14, 6421.93, 0], [[0, "SAD"]]]]] call GW_Common_fnc_spawnGroup;
			[[[[4751.73, 6563.73, 0], 0, []], [[4754.73, 6560.73, 0], 0, []], [[4756.73, 6560.73, 0], 0, []], [[4758.73, 6560.73, 0], 0, []], [[4760.73, 6560.73, 0], 0, []], [[4762.73, 6560.73, 0], 0, []], [[4764.73, 6560.73, 0], 0, []], [[4766.73, 6560.73, 0], 0, []]], [], [[[4612.4, 6461.34, 0], [[0, "Move"]]], [[4492.39, 6414.97, 0], [[0, "SAD"]]]]] call GW_Common_fnc_spawnGroup;
			sleep 60;

			[convoy_10, convoy_11, convoy_12, east, [5, ["rhs_bmp1_msv", "rhs_bmp1_msv", "UK3CB_CHD_O_Pickup", "UK3CB_CHD_O_Pickup", "UK3CB_CHD_O_T55"], 35, 45], [true, 6], [], false, false, ["hunt"]] spawn OKS_fnc_Convoy_Spawn;
			sleep 10;
			sleep 15;

			[convoy_13, convoy_14, convoy_15, east, [5, ["UK3CB_CHD_O_T55", "rhs_bmp1_msv", "UK3CB_CHD_O_Pickup", "UK3CB_CHD_O_Pickup", "rhs_bmp1_msv"], 35, 45], [true, 6], [], false, false, ["hunt"]] spawn OKS_fnc_Convoy_Spawn;
		};

		case 17:{
			// Counter Bor
			// Bor Convoy.
			_sleep = 120;
			if (hasInterface && isServer) then {
				_sleep = 15;
			};
			sleep _sleep;

			[convoy_22, convoy_23, convoy_24, east, [4, ["rhs_bmp1_msv", "rhs_bmp1_msv", "UK3CB_CHD_O_Pickup", "UK3CB_CHD_O_Pickup"], 35, 45], [true, 6], [], false, false, ["hunt"]] spawn OKS_fnc_Convoy_Spawn;
		};

		default {
			ERROR(FORMAT_1("Case missing: %1", _case));
		};
	};
	/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
		
	/*
		GOL SCRIPT EXAMPLES:
	Link to README: https// github.com/oksmantv/Guerrillas-of-Liberations-Misc-Addon?tab=readme-ov-file#readme 
	*/