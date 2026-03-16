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

		// Trench 1.
		[[[[2870.97,613.741,0.0166321],173,"Up",[]],[[2853.92,601.44,0.04599],265,"Up",[]],[[2862.65,623.431,0.566162],130,"Down",[]],[[2856.99,637.052,0.00115967],137,"Up",[]],[[2853.35,637.637,3.05176e-05],259,"Up",[]],[[2865.78,647.466,0.525757],146,"Up",[]],[[2853.31,654.922,0],219,"Up",[]],[[2843.69,658.601,-3.05176e-05],265,"Middle",[]],[[2844.38,644.623,3.05176e-05],151,"Up",[]],[[2884.53,629.18,6.10352e-05],150,"Middle",[]]],[["UK3CB_ARD_O_SPG9",[2849.91,608.886,-3.05176e-05],231,[["gunner",-1,[0]]],[]],["UK3CB_ARD_O_SPG9",[2842.1,646.248,0],259,[["gunner",-1,[0]]],[]],["rhs_bmp1_msv",[2811.72,676.054,3.05176e-05],145,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2922.87,586.556,0],164,"Middle",[]],[[2896.4,602.578,0.832703],139,"Middle",[]],[[2903.97,612.304,0.587006],97,"Up",[]],[[2892.35,605.596,0.0334167],215,"Middle",[]],[[2882.92,587.166,0],129,"Up",[]],[[2886.18,590.589,0],130,"Up",[]],[[2884.61,612.673,0.0518799],128,"Up",[]],[[2864.23,582.958,1.03152],193,"Up",[]],[[2865.61,585.016,0.394806],71,"Middle",[]],[[2939.78,572.506,0],149,"Middle",[]],[[2941.86,576.885,0.14978],305,"Middle",[]],[[2935.51,584.46,0.561188],139,"Middle",[]],[[2907.89,579.121,-0.00222778],44,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[2528.61,45.0844,0],0,[]],[[2533.61,40.0844,0],0,[]],[[2523.61,40.0844,0],0,[]],[[2538.61,35.0844,0],0,[]],[[2518.61,35.0844,0],0,[]],[[2543.61,30.0844,0],0,[]],[[2513.61,30.0844,0],0,[]],[[2548.61,25.0844,0],0,[]]],[],[[[2525.55,227.796,0],[[0,"Move"],[1,"SAFE"]]],[[2521.75,439.723,0],[[0,"Move"]]],[[2524.98,626.126,0],[[0,"Move"]]],[[2512.24,441.476,-3.05176e-05],[[0,"Move"]]],[[2511.27,227.92,-3.05176e-05],[[0,"Move"]]],[[2513.74,42.194,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2201.38,1193.77,0],143,[]],[[2194.37,1194.7,0],143,[]],[[2202.31,1200.78,0],143,[]],[[2187.36,1195.62,0],143,[]],[[2203.23,1207.79,0],143,[]],[[2180.35,1196.55,0],143,[]],[[2204.16,1214.8,0],143,[]],[[2173.34,1197.48,0],143,[]]],[],[[[2314.31,981.241,0],[[0,"Move"],[1,"SAFE"]]],[[2388.49,822.282,0],[[0,"Move"]]],[[2518.62,684.734,0],[[0,"Move"]]],[[2397.11,826.68,0],[[0,"Move"]]],[[2325.72,989.831,0],[[0,"Move"]]],[[2211.42,1205.11,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2481.12,1257.42,3.05176e-05],152,[]],[[2474.35,1259.45,3.05176e-05],152,[]],[[2483.15,1264.2,6.10352e-05],152,[]],[[2467.57,1261.47,6.10352e-05],152,[]],[[2485.17,1270.97,3.05176e-05],152,[]],[[2460.8,1263.49,3.05176e-05],152,[]],[[2487.19,1277.75,3.05176e-05],152,[]],[[2454.02,1265.52,6.10352e-05],152,[]]],[],[[[2578.03,1067.24,3.05176e-05],[[0,"Move"],[1,"SAFE"]]],[[2674.69,913.447,3.05176e-05],[[0,"Move"]]],[[2859.48,654.138,0],[[0,"Move"]]],[[2683.89,916.426,3.05176e-05],[[0,"Move"]]],[[2590.66,1073.91,0],[[0,"Move"]]],[[2492.83,1267.03,3.05176e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		{
			[east,_X,[4700.16,2312.57,0],7,300,120] spawn OKS_ArtyFire;
		} foreach [arty_1,arty_2];

		[true, ["arty_1","task_2"], ["You have been tasked with destroying Artillery, bring explosives and destroy the two SPGs.", "Destroy Artillery", "Arty"], [2283.37,1027.29,0], "ASSIGNED", 2, true, "destroy"] call BIS_fnc_taskCreate;
		waitUntil {sleep 10; { getDammage _X < 0.5 || Alive _X} count [arty_1,arty_2] == 0};
		["arty_1","SUCCEEDED"] call BIS_fnc_taskSetState;

		{
			[_X select 0,_X select 1,"sniper",east,"middle"] spawn OKS_Static_Spawner;
		} foreach [
			[[2423.41,1260.49,17.19],150],
			[[1995.88,1063.47,17.1839],127],
			[[1694.83,1310.95,17.1404],125],
			[[1662.34,1035.41,17.3184],54]
		];

		// Anti-Air
		[[],[["UK3CB_ADE_O_DSHKM",[1333.87,1280.8,25.3727],92,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[1431.48,1564.97,17.19],92,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[1503.05,2091.38,17.19],195,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[1624.11,3344.57,17.19],154,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[2195.79,2123.16,17.1617],224,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[2233.99,2110.28,17.1881],178,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[1612.77,1011.83,17.1551],349,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[1387.98,1193.14,17.19],72,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[1619.25,1416.3,9.25853],92,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		{
			[_X,east,false,2000,true] spawn GW_Ambient_AAA;
		} foreach [aaa_1,aaa_2,aaa_3];
		{
			[getPos _X,east,50,500,2500,60] spawn OKS_IR_AA;
		} foreach [AA_1,AA_2,AA_3];

	};

	case 2: {

		// Trench 2.
		[[[[2432.59,855.718,0],147,"Up",[]],[[2381.94,832.224,0],113,"Up",[]],[[2346.19,836.459,3.05176e-05],54,"Up",[]],[[2354.66,880.241,3.05176e-05],156,"Up",[]],[[2371.58,907.895,3.05176e-05],148,"Up",[]],[[2363.62,927.262,0],176,"Up",[]],[[2391.94,949.252,0],129,"Up",[]],[[2389.59,944.041,0.0297546],132,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2335.61,954.904,0.348328],136,"Up",[]],[[2338.43,956.919,0.223389],120,"Up",[]],[[2321.68,950.232,0.318207],113,"Up",[]],[[2294.71,943.068,3.05176e-05],162,"Up",[]],[[2304.9,961.794,0.015625],120,"Up",[]],[[2323.74,983.281,3.05176e-05],158,"Middle",[]],[[2330.77,973.726,0],62,"Up",[]],[[2347.38,972.054,0.509369],137,"Middle",[]],[[2363.93,973.043,0],172,"Up",[]],[[2359.55,944.83,0.228851],210,"Middle",[]],[[2313.9,950.448,0.440338],241,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2312.94,983.504,3.05176e-05],179,"Middle",[]],[[2283.96,994.032,-1.52588e-05],135,"Up",[]],[[2294.52,1039.06,-1.52588e-05],117,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2259.97,1074.44,1.52588e-05],137,"Up",[]],[[2256.72,1069.82,0],131,"Up",[]],[[2265.3,1075.05,0.415009],129,"Middle",[]],[[2252.65,1084.46,0.810013],66,"Middle",[]],[[2250.56,1081.94,0.788391],161,"Up",[]],[[2222.76,1089,0.152069],156,"Up",[]],[[2228.25,1104.92,0.0118256],150,"Middle",[]],[[2243.01,1101.18,0],147,"Up",[]],[[2212.3,1071.13,0.40361],171,"Up",[]],[[2219.33,1065.53,0.399979],132,"Middle",[]],[[2236.91,1071.47,-1.52588e-05],247,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[2275.13,1013.81,0],0,[]],[[2276.05,1015.84,0],0,[]],[[2276.89,1012.15,0],0,[]],[[2278.67,1014.63,0],0,[]]],[],[[[2332.13,1000.65,0],[[0,"Move"],[1,"SAFE"]]],[[2394.88,976.502,0],[[0,"Move"]]],[[2350.54,951.673,0],[[0,"Move"]]],[[2269.7,1000.67,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2321.76,902.526,1.02823],0,[]],[[2322.68,904.557,0.735138],0,[]],[[2323.52,900.866,0.636719],0,[]],[[2325.3,903.34,1.11023],0,[]]],[],[[[2384.67,930.156,0],[[0,"Move"],[1,"SAFE"]]],[[2417.43,877.722,0],[[0,"Move"]]],[[2359.55,859.989,3.05176e-05],[[0,"Move"]]],[[2316.32,889.38,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2362.19,832.784,6.10352e-05],0,[]],[[2363.11,834.815,6.10352e-05],0,[]],[[2363.95,831.124,3.05176e-05],0,[]],[[2365.73,833.598,6.10352e-05],0,[]]],[],[[[2417.19,856.609,0],[[0,"Move"],[1,"SAFE"]]],[[2420.5,798.381,0],[[0,"Move"]]],[[2398.92,796.002,0],[[0,"Move"]]],[[2356.76,819.639,6.10352e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2193.43,1100.37,0],0,[]],[[2194.35,1102.4,1.52588e-05],0,[]],[[2195.19,1098.71,0],0,[]],[[2196.97,1101.19,1.52588e-05],0,[]]],[],[[[2247.93,1131.44,0],[[0,"Move"],[1,"SAFE"]]],[[2303.71,1054.01,0],[[0,"Move"]]],[[2220.46,1043.7,0],[[0,"Move"]]],[[2188,1087.23,1.52588e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {
		[mech_1,NEKY_Hunt_Trigger_1,"rhs_bmp1_msv",5,east,1500] spawn OKS_Mechanized_Spawn; sleep 30;
		[mech_2,NEKY_Hunt_Trigger_1,"rhs_bmp1_msv",5,east,1500] spawn OKS_Mechanized_Spawn;
	};

	case 4: {

		counter1=false;
		counter2=false;
		counter3=false;

		[true, ["counter_2","task_2"], ["A russian infantry section is massing to counter-attack. They potentially have vehicles in support. They will attempt to retake the trenches, repel the attackers!", "Repel Counter-Attack", "Counter"], nil, "ASSIGNED", 2, true, "defend"] call BIS_fnc_taskCreate;
		["hq","side","1-1 be advised, a large section of infantry is massing for a counter-attack along your treeline. They are potentially supported by vehicles. Prepare to repel the attack! ETA momentarily! HQ out."] remoteExec ["OKS_Chat",0];
		sleep 90;

		// Trench 2 Counter-Attack.
		[rush_1,5,1,east,1500,"counter1"] spawn OKS_Lambs_ChargeSpawn; sleep 4;
		[rush_2,5,1,east,1500,"counter2"] spawn OKS_Lambs_ChargeSpawn; sleep 4;
		[rush_3,5,1,east,1500,"counter3"] spawn OKS_Lambs_ChargeSpawn;

		[mech_3,NEKY_Hunt_Trigger_1,"rhs_bmp1_msv",5,east,1500] spawn OKS_Mechanized_Spawn; sleep 30;
		[mech_4,NEKY_Hunt_Trigger_1,"rhs_bmp1_msv",5,east,1500] spawn OKS_Mechanized_Spawn;		

		waitUntil {sleep 10; counter1 && counter2 && counter3};	
		["counter_2","SUCCEEDED"] call BIS_fnc_taskSetState;

	};

	case 5: {

		// Supply Depot
		[[[[1753.18,1130.01,3.80688],125,"Middle",[]],[[1751.93,1121.34,3.93594],96,"Up",[]],[[1750.96,1118.1,3.99673],96,"Up",[]],[[1746.34,1119.27,3.99341],229,"Middle",[]],[[1746.82,1124.61,3.68323],196,"Middle",[]],[[1750.58,1118.01,0.546478],102,"Up",[]],[[1752.01,1124.02,0.423279],102,"Up",[]],[[1753.21,1128.36,1.10004],97,"Middle",[]],[[1747.81,1126.5,0.213837],163,"Up",[]]],[["UK3CB_CSAT_A_O_SPG9",[1749.13,1128.46,3.91161],97,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1687.94,1142.98,3.26526],114,"Up",[]],[[1688.38,1149.21,3.24661],66,"Up",[]],[[1686.67,1152.83,3.49524],108,"Middle",[]],[[1693.63,1145.13,3.10532],96,"Up",[]],[[1693.97,1146.55,3.13715],96,"Up",[]],[[1686.73,1152.72,0],83,"Up",[]],[[1684.26,1154.59,0.136688],178,"Up",[]],[[1691.44,1148.39,0],273,"Up",[]],[[1689.88,1143.6,0],174,"Up",[]],[[1683.52,1145.34,0],159,"Up",[]]],[["UK3CB_ARD_O_SPG9",[1686.26,1151.18,3.96664],90,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1733.22,1221.89,0.650909],47,"Up",[]],[[1732.23,1226.11,3.18796],146,"Up",[]],[[1735.07,1225.16,8.79803],110,"Middle",[]],[[1728.99,1224.26,8.66342],223,"Middle",[]],[[1710.98,1226.97,0.286591],39,"Middle",[]],[[1719.92,1233.09,0.752563],200,"Middle",[]],[[1698.65,1228.78,0.410675],44,"Middle",[]],[[1682.13,1240.08,0.694092],99,"Middle",[]],[[1684.62,1235.72,3.02811],93,"Middle",[]],[[1684.23,1234.93,8.5643],121,"Down",[]],[[1683.45,1239.39,8.72284],113,"Down",[]]],[["UK3CB_CSAT_A_O_SPG9",[1682.69,1237.68,8.65341],120,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Vehicle
		[[],[["rhs_bmp1_msv",[1650.8,1176.32,0],105,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[1669.97,1307.73,1.52588e-05],150,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[1774.12,1265.76,0],0,[]],[[1774.95,1262.07,0],0,[]],[[1776.73,1264.55,3.05176e-05],0,[]],[[1773.2,1263.73,0],0,[]]],[],[[[1821.3,1270.67,0],[[0,"Move"],[1,"SAFE"]]],[[1887.47,1229.61,0],[[0,"Move"]]],[[1844.83,1178.84,0],[[0,"Move"]]],[[1767.76,1250.59,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1784.72,1136.32,0],199,[]],[[1783.2,1134.69,0],199,[]],[[1783.6,1138.45,0],199,[]],[[1781.11,1136.69,0],199,[]]],[],[[[1740.51,1133.44,0],[[0,"Move"],[1,"SAFE"]]],[[1753.67,1208.62,0],[[0,"Move"]]],[[1789.83,1218.07,0],[[0,"Move"]]],[[1788.25,1141.03,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1767.95,1065.6,0],185,[]],[[1766.87,1063.65,0],185,[]],[[1766.33,1067.39,0],185,[]],[[1764.36,1065.07,0],185,[]]],[],[[[1712.16,1038.74,0],[[0,"Move"],[1,"SAFE"]]],[[1652.32,1082.66,0],[[0,"Move"]]],[[1673.92,1158.84,0],[[0,"Move"]]],[[1774.42,1078.27,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1673.56,1285.33,0],98,[]],[[1675.43,1284.12,0],98,[]],[[1671.66,1283.84,0],98,[]],[[1673.84,1281.71,0],98,[]]],[],[[[1648.35,1165.2,0],[[0,"Move"],[1,"SAFE"]]],[[1616.11,1044.1,0],[[0,"Move"]]],[[1649.18,1168.13,0],[[0,"Move"]]],[[1678.05,1280.36,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1620.59,1065.54,0],0,[]],[[1621.51,1067.57,0],0,[]],[[1622.35,1063.88,0.570404],0,[]],[[1624.13,1066.35,0],0,[]]],[],[[[1640.49,1130.78,0],[[0,"Move"],[1,"SAFE"]]],[[1736.92,1077.5,0],[[0,"Move"]]],[[1698.41,998.897,0],[[0,"Move"]]],[[1609.5,1035.56,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1564.12,1297.81,0],0,[]],[[1565.04,1299.84,1.52588e-05],0,[]],[[1565.88,1296.15,0],0,[]],[[1567.66,1298.63,0],0,[]]],[],[[[1511.01,1178.99,0],[[0,"Move"],[1,"SAFE"]]],[[1475.62,1065.14,0],[[0,"Move"]]],[[1510.85,1175.4,0],[[0,"Move"]]],[[1562.67,1292.49,0.720001],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};

	case 6: {

		// Roadblock
		[[[[1673.73,1819.92,0.327164],235,"Up",[]],[[1670.83,1824.59,0.511261],235,"Up",[]],[[1627,1855.23,0.582153],49,"Up",[]],[[1625.94,1858.6,0.773758],49,"Up",[]],[[1649.41,1867.81,0],243,"Up",[]],[[1632.46,1893.53,0.335098],165,"Up",[]],[[1636.54,1900.26,8.10263],159,"Middle",[]],[[1620.32,1854.85,8.12656],137,"Middle",[]],[[1666.73,1845.68,6.12727],206,"Middle",[]],[[1620.29,1867.52,0.476212],69,"Up",[]],[[1607.8,1889.99,0.524963],69,"Up",[]],[[1608.13,1884.99,0.351944],339,"Up",[]],[[1601.73,1884.84,0.512436],28,"Up",[]],[[1594.7,1908.97,3.7514],338,"Up",[]],[[1601.57,1907.04,0.742981],87,"Middle",[]],[[1596.64,1939.68,1.52588e-05],287,"Up",[]],[[1599.94,1934.77,0.235214],204,"Up",[]],[[1580.87,1931.2,0],48,"Middle",[]],[[1640.19,1928.78,0],220,"Up",[]],[[1659.91,1849.23,-1.52588e-05],232,"Up",[]],[[1570.8,1923.68,0],95,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Vehicle 
		[[],[["rhs_bmp1_msv",[1564.43,1977.21,0],150,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrol
		[[[[1585.55,1999.15,0],0,[]],[[1590.55,1994.15,0],0,[]],[[1580.55,1994.15,0],0,[]],[[1595.55,1989.15,0],0,[]]],[],[[[1649.78,2022.89,1.52588e-05],[[0,"Move"]]],[[1812.46,1909.24,1.52588e-05],[[0,"Move"]]],[[1888.57,1826.79,-1.52588e-05],[[0,"Move"]]],[[1798.26,1903.43,0],[[0,"Move"]]],[[1647.38,2000.46,0],[[0,"Move"]]],[[1580.14,1983.47,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1885.69,1809.05,0],116,[]],[[1878.99,1806.8,0],116,[]],[[1883.45,1815.75,0],116,[]],[[1872.28,1804.56,0],116,[]]],[],[[[1967.86,1678.73,0],[[0,"Move"]]],[[1983.82,1548.83,0],[[0,"Move"]]],[[1875.29,1524.94,0],[[0,"Move"]]],[[1818.81,1661.35,1.52588e-05],[[0,"Move"]]],[[1824.37,1787.54,0],[[0,"Move"]]],[[1874.07,1820.89,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1535.87,1756.62,0],0,[]],[[1540.87,1751.62,0],0,[]],[[1530.87,1751.62,0],0,[]],[[1545.87,1746.62,0],0,[]]],[],[[[1595.43,1786.86,0],[[0,"Move"]]],[[1604.87,1697.87,1.52588e-05],[[0,"Move"]]],[[1705.28,1722.48,1.52588e-05],[[0,"Move"]]],[[1621.83,1640.41,0],[[0,"Move"]]],[[1515.28,1651.87,0],[[0,"Move"]]],[[1530.46,1740.94,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1480.47,1883.2,0],0,[]],[[1485.47,1878.2,1.52588e-05],0,[]],[[1475.47,1878.2,0],0,[]],[[1490.47,1873.2,0],0,[]]],[],[[[1464.23,1980.8,0],[[0,"Move"]]],[[1501.71,2046.68,0],[[0,"Move"]]],[[1580.28,2051.22,0],[[0,"Move"]]],[[1540.65,1934.5,0],[[0,"Move"]]],[[1546.36,1864.59,1.52588e-05],[[0,"Move"]]],[[1475.06,1867.52,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 7:{
		// HQ
		[[[[1731.29,2468.05,6.10352e-05],266,"Middle",[]],[[1736.15,2470.76,-1.52588e-05],8,"Middle",[]],[[1737.32,2465.43,0],190,"Middle",[]],[[1726.96,2484.6,6.69014],171,"Up",[]],[[1719.46,2487.67,-1.52588e-05],136,"Up",[]],[[1724.07,2489.53,0.320328],347,"Up",[]],[[1727.02,2484.07,0.130981],45,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1737.02,2490.11,7.02534],171,"Up",[]],[[1746.84,2495.49,7.25392],171,"Up",[]],[[1744.3,2507.2,0],143,"Up",[]],[[1749.82,2496.63,3.05176e-05],171,"Up",[]],[[1734.45,2495.49,0.707169],179,"Up",[]],[[1740.69,2498.77,0.833344],126,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1730.74,2486.11,6.91463],171,"Up",[]],[[1778.98,2513.77,0.656616],222,"Up",[]],[[1792.65,2513.78,1.24828],184,"Up",[]],[[1788.71,2516.59,1.45779],185,"Up",[]],[[1720.74,2499.84,3.05176e-05],187,"Up",[]],[[1727.65,2495.56,0.628296],239,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;


		// Vehicles
		[[],[["rhs_bmp1_msv",[1715.89,2241.28,0],235,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[1596.31,2442.83,0],133,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[1744.99,2470.16,0],215,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[1521.3,2334.7,1.52588e-05],0,[]],[[1526.3,2329.7,1.52588e-05],0,[]],[[1516.3,2329.7,1.52588e-05],0,[]],[[1531.3,2324.7,1.52588e-05],0,[]]],[],[[[1467.36,2448.33,1.52588e-05],[[0,"Move"]]],[[1525.6,2485.03,1.52588e-05],[[0,"Move"]]],[[1588.38,2506.77,1.52588e-05],[[0,"Move"]]],[[1675.81,2397.52,1.52588e-05],[[0,"Move"]]],[[1583.27,2355.74,1.52588e-05],[[0,"Move"]]],[[1515.88,2319.02,1.52588e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1639.07,2464.28,1.52588e-05],0,[]],[[1644.07,2459.28,1.52588e-05],0,[]],[[1634.07,2459.28,1.52588e-05],0,[]],[[1649.07,2454.28,1.52588e-05],0,[]]],[],[[[1585.13,2577.91,1.52588e-05],[[0,"Move"]]],[[1643.37,2614.61,1.52588e-05],[[0,"Move"]]],[[1706.15,2636.35,0],[[0,"Move"]]],[[1793.58,2527.1,1.52588e-05],[[0,"Move"]]],[[1701.04,2485.32,1.52588e-05],[[0,"Move"]]],[[1633.65,2448.6,1.52588e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1711.52,2392.89,0],0,[]],[[1716.52,2387.89,0],0,[]],[[1706.52,2387.89,0],0,[]],[[1721.52,2382.89,0],0,[]]],[],[[[1657.58,2506.53,0],[[0,"Move"]]],[[1715.82,2543.23,0],[[0,"Move"]]],[[1778.6,2564.96,0.959885],[[0,"Move"]]],[[1866.02,2455.71,0],[[0,"Move"]]],[[1773.48,2413.93,0],[[0,"Move"]]],[[1706.1,2377.21,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1456.7,2438.09,0],123,[]],[[1449.79,2436.61,1.52588e-05],123,[]],[[1455.23,2445.01,0],123,[]],[[1442.87,2435.14,1.52588e-05],123,[]]],[],[[[1581.4,2421.56,1.52588e-05],[[0,"Move"]]],[[1580.53,2352.73,0],[[0,"Move"]]],[[1564.63,2288.22,0],[[0,"Move"]]],[[1425.4,2274.26,0],[[0,"Move"]]],[[1440.66,2374.65,0],[[0,"Move"]]],[[1446.49,2451.16,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1662.88,2168.76,0],0,[]],[[1667.88,2163.76,0],0,[]],[[1657.88,2163.76,0],0,[]],[[1672.88,2158.76,0],0,[]]],[],[[[1608.94,2282.39,1.52588e-05],[[0,"Move"]]],[[1667.18,2319.09,0],[[0,"Move"]]],[[1729.96,2340.83,0],[[0,"Move"]]],[[1817.39,2231.58,1.52588e-05],[[0,"Move"]]],[[1724.85,2189.8,1.52588e-05],[[0,"Move"]]],[[1657.47,2153.07,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
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
		   6 - gunner Split - [How many teams,Procent of gunner] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
