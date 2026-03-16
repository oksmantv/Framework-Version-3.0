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
		/// Compound 1
		[[[[3056.3,876.376,0.344878],207,"Auto",[]],[[3053.93,879.324,0.589567],272,"Auto",[]],[[3068.58,849.882,0.366157],66,"Auto",[]],[[3077.84,847.696,0.237259],94,"Auto",[]],[[3038.75,867.909,0.242454],36,"Up",[]]],[["UK3CB_AAF_O_PKM_High",[3001.38,894.948,0.00997257],95,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3038.77,871.405,0.394719],57,"Up",[]],[[3026.78,878.034,0.29092],295,"Middle",[]],[[3016.82,880.626,0.703662],95,"Middle",[]],[[3027.51,890.596,0],124,"Middle",[]],[[3022.51,895.76,0.719601],209,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2999.29,886.907,0.651852],279,"Up",[]],[[3005.03,888.122,0.5045],98,"Up",[]],[[3034.63,874.124,0.647923],36,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Compound 3
		[Trigger_2,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
		[[[[3015.81,1635.38,0.68779],191,"Auto",[]],[[3017.15,1640.82,0.664085],191,"Auto",[]],[[3019.02,1638.14,0.841137],246,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		/// Compound 1 Counter-Attack
		//[[3005.83,696.466,0],Compound_1,4,independent,true] spawn OKS_Attack_SpawnGroup;
		[[2935.61,700.444,0],Compound_1,4,independent,true] spawn OKS_Attack_SpawnGroup;
		[[2817.19,732.381,0],Compound_1,4,independent,true] spawn OKS_Attack_SpawnGroup;
		//[[3134.35,692.221,0],Compound_1,4,independent,true] spawn OKS_Attack_SpawnGroup;

		//[[3292.31,974.999,0],Compound_1,4,east,true] spawn OKS_Attack_SpawnGroup;
		[[3156.67,1120.84,0],Compound_1,4,east,true] spawn OKS_Attack_SpawnGroup;
		[[3046.99,1142.63,0],Compound_1,4,east,true] spawn OKS_Attack_SpawnGroup;
	};

	case 3: {

		// Compound 2 Convoy Attack
		[convoy_1,convoy_2,convoy_3,east,[4,["Land_HelipadEmpty_F", "UK3CB_ADM_O_BTR40_MG", "UK3CB_ADM_O_Datsun_Pkm", "UK3CB_ADM_O_Datsun_Open", "UK3CB_ADM_O_Hilux_Open"], 8, 35],[true,4],[], false, false] spawn OKS_Convoy_Spawn;
		sleep 160;

		/// Compound 2 Counter-Attack
		[[2895.34,1857.97,0],[3008.8,1668.88,0],4,independent,true] spawn OKS_Attack_SpawnGroup;
		[[2829.28,1756.13,0],[3008.8,1668.88,0],4,independent,true] spawn OKS_Attack_SpawnGroup;
		[[2816.41,1659.94,0],[3008.8,1668.88,0],4,independent,true] spawn OKS_Attack_SpawnGroup;

		[[3275.31,1716.49,0],[3008.8,1668.88,0],4,east,true] spawn OKS_Attack_SpawnGroup;
		[[3225.18,1777.64,0],[3008.8,1668.88,0],4,east,true] spawn OKS_Attack_SpawnGroup;
		[[3176.86,1825.45,0],[3008.8,1668.88,0],4,east,true] spawn OKS_Attack_SpawnGroup;
		
	};

	case 4: {

		[Trigger_3,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

		/// Compound 3
		[[[[2775.9,2452.39,0.777521],235,"Auto",[]],[[2773.17,2455.58,0.610926],40,"Middle",[]],[[2768.39,2454.25,1.38112],211,"Middle",[]],[[2758.86,2455.81,0.782282],188,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2756.11,2459.29,4.41123],166,"Middle",[]],[[2754.45,2458.28,1.35559],208,"Auto",[]],[[2742.03,2440.59,0.905954],127,"Auto",[]],[[2741.5,2438.23,4.11993],122,"Auto",[]],[[2733.18,2439.79,1.09212],359,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2733.31,2445.68,4.70718],156,"Auto",[]],[[2739.78,2461.08,3.61412],128,"Middle",[]],[[2744.17,2466.83,3.52044],84,"Auto",[]],[[2740.02,2468.95,3.72253],185,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Compound 4
		[[[[2389.46,2367.62,0.755337],148,"Auto",[]],[[2386.01,2370.75,0.572609],16,"Auto",[]],[[2381.77,2402.97,0.728987],107,"Auto",[]],[[2376.98,2399.19,0.307549],224,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2366.94,2417.04,0.570238],215,"Auto",[]],[[2366.3,2411.98,0.443523],16,"Auto",[]],[[2362.54,2417.56,0.422817],122,"Auto",[]],[[2364.63,2422.66,0.0331001],89,"Auto",[]]],[["UK3CB_AAF_O_PKM_Low",[2359.58,2415.85,0],141,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2357.83,2422.26,0],163,"Middle",[]],[[2358.83,2425.7,0.155737],241,"Auto",[]],[[2340.75,2412.05,0],115,"Auto",[]],[[2336.76,2430.98,0.0331001],73,"Auto",[]]],[["UK3CB_AAF_O_PKM_High",[2334.93,2437.45,1.90735e-006],141,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2347.37,2443.64,0.390574],148,"Auto",[]],[[2359.68,2447.82,0.583256],166,"Auto",[]],[[2365.66,2439.97,0],258,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {

		/// Counter-attack Compound 3
		[[],[["UK3CB_ADM_O_BTR40",[3440.34,2307.62,0],261,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]]],[[6,["ADM",1]],[7,["Hull_Flag_Hide",1,"Beacons_Hide",1]]]]],[[[3101.88,2502.45,1.52588e-005],[[0,"Move"]]],[[2793.66,2438.72,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADM_O_BTR40",[2684.21,3011.08,0],173,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]]],[[6,["ADM",1]],[7,["Hull_Flag_Hide",1,"Beacons_Hide",1]]]]],[[[2715.62,2613.58,0],[[0,"Move"]]],[[2731.93,2456.66,0.500002],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADM_O_BTR40",[3607.33,2630.91,7.62939e-006],222,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]]],[[6,["ADM",1]],[7,["Hull_Flag_Hide",1,"Beacons_Hide",1]]]]],[[[3130.6,2502.25,0],[[0,"Move"]]],[[2737.18,2452.6,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADM_O_BTR40",[2596.27,3345.66,0],160,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]]],[[6,["ADM",1]],[7,["Hull_Flag_Hide",1,"Beacons_Hide",1]]]]],[[[2713.24,2648.29,0],[[0,"Move"]]],[[2757.38,2444.43,0.5],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 6: {

		/// Counter-Attack Compound 4
		[[2197.44,2223.89,0],[2352.38,2418.41,0],4,independent,true] spawn OKS_Attack_SpawnGroup;
		[[2303.69,2101.13,0],[2352.38,2418.41,0],4,independent,true] spawn OKS_Attack_SpawnGroup;
		[[2447.63,2077.59,0],[2352.38,2418.41,0],4,independent,true] spawn OKS_Attack_SpawnGroup;
		[[2098.72,1987.74,0],[2352.38,2418.41,0],"UK3CB_ADM_I_MTLB_KPVT",independent,true] spawn OKS_Attack_SpawnGroup;

		/// Vehicle Counter East
		[[],[["UK3CB_ADM_O_MTLB_PKT",[1942.93,2629.48,0],128,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["commander",-1,[0]],["cargo",-1,[1]],["cargo",-1,[2]]],[[6,["ADM",1]]]]],[[[2266.74,2536.97,0],[[0,"Move"],[1,"SAFE"]]],[[2336.71,2461.72,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADM_O_MTLB_AMB",[1915.3,2655.59,-3.8147e-006],142,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]],["commander",-1,[0]]],[[6,["ADM",1]]]]],[[[2266.74,2536.97,0],[[0,"Move"],[1,"SAFE"]]],[[2324.12,2441.05,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		
	};

	case 7: {

		[Trigger_4,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

		// Compound 5
		[[[[1876.49,1834.25,3.61486],288,"Auto",[]],[[1875.09,1840.5,3.85286],38,"Auto",[]],[[1877.74,1845.68,3.79055],83,"Auto",[]],[[1871.69,1844.35,0.724085],77,"Auto",[]],[[1870.89,1844.62,4.16639],96,"Auto",[]],[[1870.76,1842.37,4.1535],95,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1876.07,1861.72,1.01668],178,"Auto",[]],[[1885.49,1860.17,0.130777],125,"Auto",[]],[[1883.82,1862.28,0.543501],61,"Auto",[]],[[1878.26,1862.18,0.927572],73,"Auto",[]],[[1886.2,1869.18,0.77569],182,"Auto",[]],[[1878.46,1869.36,1.25895],150,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 8:{

		// Compound 5 Counter-Attack
		[[1748.33,1550.79,0],[1862.95,1853.59,0],4,independent,true] spawn OKS_Attack_SpawnGroup;
		[[2001.35,1579.37,0],[1862.95,1853.59,0],4,independent,true] spawn OKS_Attack_SpawnGroup;
		[[1546.58,1586.93,0],[1862.95,1853.59,0],4,independent,true] spawn OKS_Attack_SpawnGroup;
		[[1946.66,1290.26,0],[1862.95,1853.59,0],"UK3CB_ADM_I_MTLB_KPVT",independent,true] spawn OKS_Attack_SpawnGroup;
	};

	case 9:{

		// Final Village
		[[[[1148.41,1660.62,0.615578],333,"Auto",[]],[[1145.49,1655.65,0.532333],333,"Auto",[]],[[1155.03,1660.81,0],340,"Auto",[]],[[1142.31,1651.9,0],327,"Auto",[]],[[1158.91,1664.61,0.392578],6,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1161.09,1673.04,0.648228],283,"Auto",[]],[[1159.03,1671.18,0.711044],323,"Auto",[]],[[1167.27,1669.93,0.744118],283,"Auto",[]],[[1167.82,1678.1,0.947701],283,"Auto",[]],[[1177.94,1680.15,-3.8147e-006],283,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1165.56,1695.25,0.55862],128,"Auto",[]],[[1162.87,1701.59,0.575893],98,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 10: {

		/// Final Village Attack
		[[987.87,1409.32,0],[1136.55,1680.35,0],4,independent,true] spawn OKS_Attack_SpawnGroup;
		[[1194.89,1333.08,0],[1136.55,1680.35,0],4,independent,true] spawn OKS_Attack_SpawnGroup;
		[[1405.51,1364.24,0],[1136.55,1680.35,0],4,independent,true] spawn OKS_Attack_SpawnGroup;
		[[997.234,1248.38,0],[1136.55,1680.35,0],"UK3CB_ADM_I_MTLB_KPVT",independent,true] spawn OKS_Attack_SpawnGroup;


		[[900.66,2024.94,0],[1136.55,1680.35,0],4,east,true] spawn OKS_Attack_SpawnGroup;
		[[1032.04,2041.6,0],[1136.55,1680.35,0],4,east,true] spawn OKS_Attack_SpawnGroup;
		[[1095.37,2037.22,0],[1136.55,1680.35,0],4,east,true] spawn OKS_Attack_SpawnGroup;
		[[821.174,2030.22,0],[1136.55,1680.35,0],"UK3CB_ADM_I_MTLB_KPVT",east,true] spawn OKS_Attack_SpawnGroup;

	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
