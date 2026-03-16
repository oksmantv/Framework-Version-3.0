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

	case 1: {

		// Military Base
		[[[[2725.59,6661.86,5.01931],231,"Up",[]],[[2746.72,6661.3,5.11476],200,"Up",[]],[[2744.95,6683.3,5.08593],352,"Up",[]],[[2742.74,6679.65,-3.8147e-006],167,"Middle",[]],[[2725.55,6664.29,0],87,"Middle",[]],[[2726.56,6672.43,0.570374],94,"Middle",[]],[[2732.26,6681.47,0.50983],150,"Middle",[]],[[2725.78,6678.32,0.554302],80,"Middle",[]],[[2793.5,6672.41,0],104,"Middle",[]],[[2793.38,6674.01,0],81,"Middle",[]],[[2795.07,6677.44,0],80,"Up",[]],[[2792.42,6681.09,0],57,"Middle",[]],[[2786.74,6682.82,0],351,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2776.75,6832.79,0.446011],155,"Up",[]],[[2773.62,6832.83,0.206955],174,"Up",[]],[[2773.6,6837.99,-3.8147e-006],232,"Middle",[]],[[2777.94,6839.07,0.260406],277,"Middle",[]],[[2789.2,6838.98,0],145,"Up",[]],[[2791.97,6841.94,0],116,"Up",[]],[[2785.99,6856.19,0.323616],100,"Up",[]],[[2782.69,6857.15,0.115555],329,"Up",[]],[[2779.3,6852.55,0.0524635],232,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2619.59,6691.89,5.05557],272,"Up",[]],[[2625.06,6718.12,5.04962],272,"Up",[]],[[2645.78,6713.85,5.05298],40,"Up",[]],[[2654.34,6706.24,-3.8147e-006],76,"Up",[]],[[2655.22,6701.17,0],101,"Up",[]],[[2653.57,6696.72,3.8147e-006],127,"Up",[]],[[2650.51,6674.86,0],358,"Middle",[]],[[2639.87,6698.86,0.202175],128,"Up",[]],[[2641.99,6710.07,0.344963],191,"Up",[]],[[2636.38,6704.09,0.214539],262,"Up",[]],[[2637.14,6709.44,0.2827],63,"Up",[]],[[2630.39,6708.98,0.253098],180,"Up",[]],[[2625.87,6710.92,0.285301],71,"Up",[]],[[2624.18,6703.09,0.207478],22,"Up",[]],[[2619.61,6680.51,0.200615],12,"Up",[]],[[2625.04,6681.36,0.272671],266,"Up",[]],[[2624.33,6677.95,0.205681],275,"Middle",[]],[[2623.69,6675.92,0.151882],115,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Patrol
		[[[[2793.54,6561.38,0],314,[]],[[2800.61,6561.55,0],314,[]],[[2793.71,6554.31,0],314,[]],[[2807.67,6561.73,0],314,[]]],[],[[[2462.89,6542.88,0],[[0,"Move"],[1,"SAFE"]]],[[2662.97,6401.63,0],[[0,"Move"]]],[[2873.02,6453.05,3.8147e-006],[[0,"Move"]]],[[2802.41,6548.62,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2700.93,7028.44,0],296,[]],[[2707.6,7030.79,0],296,[]],[[2703.29,7021.77,0],296,[]],[[2714.27,7033.15,0],296,[]]],[],[[[2482.63,6909.99,0],[[0,"Move"],[1,"SAFE"]]],[[2258.82,6732.41,0],[[0,"Move"]]],[[2614.88,6762.52,0],[[0,"Move"]]],[[2713.32,7019.05,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2759.21,6850.65,0],216,[]],[[2758.05,6857.62,0],216,[]],[[2766.19,6851.81,0],216,[]],[[2756.88,6864.6,0],216,[]]],[],[[[2768.21,6667.83,0],[[0,"Move"],[1,"SAFE"]]],[[2662.31,6680.06,0],[[0,"Move"]]],[[2684.01,6856.9,3.8147e-006],[[0,"Move"]]],[[2764.44,6858.35,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2943.4,6831.95,-3.8147e-006],0,[]],[[2948.4,6826.95,3.8147e-006],0,[]],[[2938.4,6826.95,0],0,[]],[[2953.4,6821.95,0],0,[]]],[],[[[2795.5,6950.88,0],[[0,"Move"],[1,"SAFE"]]],[[2730.39,6856.14,0],[[0,"Move"]]],[[2873.74,6725.53,5.72205e-005],[[0,"Move"]]],[[2940.27,6816.73,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3137.06,6562.78,0],0,[]],[[3132.1,6569.14,1.09908],0,[]],[[3122.1,6569.14,0],0,[]],[[3137.1,6564.14,0.84531],0,[]]],[],[[[2911.84,6620.77,0],[[0,"Move"],[1,"SAFE"]]],[[2729.82,6630.29,0],[[0,"Move"]]],[[3060.2,6556.01,0],[[0,"Move"]]],[[3123.97,6558.92,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// HMGs
		[[],[
			["UK3CB_TKM_O_UAZ_Dshkm",[2462.22,6955.66,-3.8147e-06],238,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_TKM_O_UAZ_Dshkm",[2908.73,7249.13,-0.00328827],205,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["rhs_KORD_high_MSV",[3280.51,6642.31,0],0,[["gunner",-1,[0]]],[]]
		],[]] call GW_Common_fnc_spawnGroup;

		// Hunt Military Base
		_Vehicles = ["UK3CB_MEI_O_Offroad", "UK3CB_MEI_O_V3S_Closed", "UK3CB_MEI_O_Pickup", "UK3CB_MEI_O_LR_Closed", "UK3CB_MEI_O_Hilux_Open", "UK3CB_MEI_O_Datsun_Civ_Closed", "UK3CB_MEI_O_Datsun_Open", "UK3CB_MEI_O_Hilux_M2"];
		[Hunt_1, Hunt_1, NEKY_Hunt_Trigger_1, 10,120,east,_Vehicles,30] spawn OKS_fnc_Huntbase;
		[Hunt_2, Hunt_2, NEKY_Hunt_Trigger_1, 10,120,east,_Vehicles,30] spawn OKS_fnc_Huntbase;
		[Hunt_3, Hunt_3, NEKY_Hunt_Trigger_1, 10,120,east,_Vehicles,30] spawn OKS_fnc_Huntbase;
	};

	case 2: {

		// Snipers
		[[[[8645.19,2370.71,4.16619],29,"Up",[]],[[8659.01,2401.01,4.16971],145,"Up",[]],[[8606.89,2466.33,3.94944],175,"Up",[]],[[8600.98,2379.91,1.90735e-006],347,"Middle",[]],[[8629.47,2520.72,3.79966],189,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8693.15,2425.32,3.28857],268,"Up",[]],[[8724.93,2433.76,4.23004],264,"Up",[]],[[8740.96,2431.17,6.20029],244,"Up",[]],[[8682.54,2377.01,0],9,"Middle",[]],[[8800.54,2490.06,6.59253],231,"Up",[]],[[8770.59,2342.62,6.62632],291,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Main Compound
		[[[[8785.13,2416.79,7.73714],231,"Up",[]],[[8788.96,2433.53,7.24503],243,"Up",[]],[[8782.68,2423.78,0.298351],186,"Up",[]],[[8794.7,2433.09,3.8023],204,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8781.69,2442.97,7.31884],264,"Up",[]],[[8788.78,2436.89,0.208725],256,"Up",[]],[[8790.78,2446.15,0.361084],226,"Up",[]],[[8788.87,2438.37,3.80978],75,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8798.88,2450.14,0.413284],235,"Up",[]],[[8796.78,2447.85,3.99462],266,"Up",[]],[[8793.78,2457.95,3.99612],139,"Up",[]],[[8792.26,2453,3.99612],159,"Up",[]],[[8799.1,2451.61,3.99612],319,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8789.99,2454.19,0.413509],141,"Up",[]],[[8790.13,2461.43,0.413326],289,"Up",[]],[[8789.59,2462.31,3.99612],193,"Up",[]],[[8786,2459.02,3.99612],124,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[8803.52,2365.68,0],0,[]],[[8808.52,2363.68,-1.90735e-006],0,[]]],[],[[[8731.93,2367.92,0],[[0,"Move"],[1,"SAFE"]]],[[8736.17,2421.47,1.90735e-005],[[0,"Move"]]],[[8802.38,2373.66,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8707.08,2354.52,1.90735e-006],0,[]],[[8712.08,2352.52,3.8147e-006],0,[]]],[],[[[8635.49,2356.75,1.90735e-006],[[0,"Move"],[1,"SAFE"]]],[[8637.23,2385.47,0],[[0,"Move"]]],[[8705.94,2362.49,3.8147e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8604.97,2420.98,0],192,[]],[[8600.48,2423.95,0],192,[]]],[],[[[8619.75,2516.45,0],[[0,"Move"],[1,"SAFE"]]],[[8629.73,2449.23,0],[[0,"Move"]]],[[8604.47,2412.94,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8740.34,2455.34,0],0,[]],[[8745.34,2453.34,0],0,[]]],[],[[[8664.92,2459.65,0],[[0,"Move"],[1,"SAFE"]]],[[8670.92,2532.42,0],[[0,"Move"]]],[[8739.19,2463.31,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8828.68,2504.87,0],0,[]],[[8833.68,2502.87,0],0,[]]],[],[[[8753.05,2492.36,0],[[0,"Move"],[1,"SAFE"]]],[[8721.29,2561.02,0],[[0,"Move"]]],[[8827.54,2512.84,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// HMGs.
		[[],[["rhs_KORD_high_MSV",[7735.43,9125.15,-0.00056839],120,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[7745.97,9170.23,-3.24249e-05],149,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[7892.84,8818.4,-9.63211e-05],214,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[8064.52,8770.69,-2.57492e-05],138,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[8255.01,8830.33,-8.86917e-05],294,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[8254.33,9164.81,-0.00545406],194,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[
			["rhs_KORD_high_MSV",[8738.93,2501.01,-3.43323e-05],154,[["gunner",-1,[0]]],[]],		
			["rhs_KORD_high_VDV",[8768.52,1933.24,3],197,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[8789.65,2125.67,0.4],42,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[9128.73,2757.34,0.4],237,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[8597.37,2910.27,0.4],174,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[8486.74,2666.85,2],164,[["gunner",-1,[0]]],[]]
		],[]] call GW_Common_fnc_spawnGroup;

		// Hunt Military Base
		_Vehicles = ["UK3CB_MEI_O_Offroad", "UK3CB_MEI_O_V3S_Closed", "UK3CB_MEI_O_Pickup", "UK3CB_MEI_O_LR_Closed", "UK3CB_MEI_O_Hilux_Open", "UK3CB_MEI_O_Datsun_Civ_Closed", "UK3CB_MEI_O_Datsun_Open", "UK3CB_MEI_O_Hilux_M2"];
		[Hunt_4, Hunt_4, NEKY_Hunt_Trigger_2, 10,120,east,_Vehicles,30] spawn OKS_fnc_Huntbase;
		[Hunt_5, Hunt_5, NEKY_Hunt_Trigger_2, 10,120,east,_Vehicles,30] spawn OKS_fnc_Huntbase;
		[Hunt_6, Hunt_6, NEKY_Hunt_Trigger_2, 10,120,east,_Vehicles,30] spawn OKS_fnc_Huntbase;

	};

	case 3: {

		// Stronghold.
		[[[[8088.68,9025.28,0.231257],185,"Up",[]],[[8084.76,9030.11,1.90735e-006],170,"Up",[]],[[8077.9,9024.5,1.90735e-006],175,"Up",[]],[[8077.08,9055.89,1.90735e-006],185,"Up",[]],[[8085.43,9050.23,6.59146],269,"Up",[]],[[8086.53,9046.47,3.65049],11,"Up",[]],[[8090.84,9046.44,0.571357],258,"Up",[]],[[8090.34,9045.36,6.60073],282,"Up",[]],[[8099.1,9051.22,0.662429],146,"Up",[]],[[8106.43,9051.05,0.681292],81,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8142.07,9042.48,4.17],177,"Up",[]],[[8143.55,9045.53,0.437269],185,"Up",[]],[[8136.52,9044.94,0.642644],185,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8183.98,9030.66,0.0964527],272,"Up",[]],[[8185.09,9020.74,0.0964508],272,"Up",[]],[[8181.99,8982.5,0.0517035],283,"Up",[]],[[8197.22,9033.41,0.0964518],299,"Up",[]],[[8206.53,9035.27,0.0964518],299,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8199.32,9080.17,6.58271],283,"Up",[]],[[8198.03,9074.64,3.6466],76,"Up",[]],[[8201.34,9073.9,6.5978],95,"Up",[]],[[8204.18,9075.08,0.568597],120,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8213.65,9052.15,6.60519],189,"Up",[]],[[8208.29,9052.47,0.571357],168,"Up",[]],[[8206.96,9057.42,3.64954],185,"Up",[]],[[8210.93,9052.68,3.65072],191,"Up",[]],[[8210.44,9051.07,6.60072],185,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8227.53,9057.64,0.32245],262,"Up",[]],[[8230.33,9049.34,0.350002],185,"Up",[]],[[8231.35,9050.12,3.14],318,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8242.38,9039.94,3.725],270,"Up",[]],[[8249.79,9046.25,0.384122],259,"Up",[]],[[8246.97,9037.02,0.851863],345,"Up",[]],[[8250.49,9038.62,1.00527],276,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8235.88,9008.77,6.57522],276,"Up",[]],[[8235.65,9012.4,6.58905],283,"Up",[]],[[8235.92,9010.79,3.66454],267,"Up",[]],[[8241.09,9014.44,0.572504],175,"Up",[]],[[8241.67,9007.76,0.574635],276,"Up",[]],[[8241.28,9007.78,3.6522],276,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[8252.71,9192.94,-9.53674e-007],0,[]],[[8257.71,9187.94,9.53674e-007],0,[]],[[8247.71,9187.94,-9.53674e-007],0,[]],[[8262.71,9182.94,0],0,[]]],[],[[[8077,9192.78,0],[[0,"Move"],[1,"SAFE"]]],[[8072.86,9102.85,-2.67029e-005],[[0,"Move"]]],[[8269.2,9126.08,1.90735e-006],[[0,"Move"]]],[[8269.38,9188.42,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8381.39,9108.9,0],0,[]],[[8386.39,9103.9,0],0,[]],[[8376.39,9103.9,0],0,[]],[[8391.39,9098.9,0],0,[]]],[],[[[8268.23,9052.09,9.53674e-007],[[0,"Move"],[1,"SAFE"]]],[[8327.87,8831.73,0],[[0,"Move"]]],[[8429.55,9012.74,0],[[0,"Move"]]],[[8398.05,9104.38,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8109.2,9170.51,0],0,[]],[[8114.2,9165.51,0],0,[]],[[8104.2,9165.51,0],0,[]],[[8119.2,9160.51,0],0,[]]],[],[[[7933.49,9170.35,0],[[0,"Move"],[1,"SAFE"]]],[[7929.35,9080.41,0],[[0,"Move"]]],[[8125.69,9103.64,9.53674e-007],[[0,"Move"]]],[[8125.87,9165.99,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8139.17,9079.2,0],0,[]],[[8144.17,9074.2,0.3241],0,[]],[[8134.17,9074.2,9.53674e-007],0,[]],[[8149.17,9069.2,9.53674e-007],0,[]]],[],[[[7963.45,9079.04,9.53674e-007],[[0,"Move"],[1,"SAFE"]]],[[7959.32,8989.1,0],[[0,"Move"]]],[[8155.66,9012.33,1.90735e-006],[[0,"Move"]]],[[8155.83,9074.68,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8230.26,8960.43,0],0,[]],[[8235.26,8955.43,0],0,[]],[[8225.26,8955.43,0],0,[]],[[8240.26,8950.43,0],0,[]]],[],[[[8054.54,8960.27,0],[[0,"Move"],[1,"SAFE"]]],[[8050.41,8870.34,0.5187],[[0,"Move"]]],[[8246.75,8893.57,1.90735e-006],[[0,"Move"]]],[[8246.93,8955.91,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8162.48,8838.98,0],0,[]],[[8167.48,8833.98,9.53674e-007],0,[]],[[8157.48,8833.98,0],0,[]],[[8172.48,8828.98,9.53674e-007],0,[]]],[],[[[7986.77,8838.81,0],[[0,"Move"],[1,"SAFE"]]],[[7980.89,8735.67,0],[[0,"Move"]]],[[8178.97,8772.11,9.53674e-007],[[0,"Move"]]],[[8179.15,8834.45,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7928.65,8925.1,0.207969],0,[]],[[7933.65,8920.1,0.207969],0,[]],[[7923.65,8920.1,0.207969],0,[]],[[7938.65,8915.1,0.207969],0,[]]],[],[[[7752.93,8924.94,0.207969],[[0,"Move"],[1,"SAFE"]]],[[7748.8,8835.01,0.207942],[[0,"Move"]]],[[7945.13,8858.24,0.207971],[[0,"Move"]]],[[7945.31,8920.58,0.20797],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// HMGs.
		[[],[["rhs_KORD_high_MSV",[8792.46,2145.82,-7.62939e-06],348,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[8817.75,2322.07,-2.67029e-05],343,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[8902.13,2415.92,-3.43323e-05],265,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[8694.66,2649.93,-6.86646e-05],206,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["rhsgref_ins_DSHKM",[8668.89,8712.05,-0.000547409],197,[["gunner",-1,[0]]],[]],["rhsgref_ins_DSHKM",[8451.04,8768.91,9.53674e-07],197,[["gunner",-1,[0]]],[]],["rhsgref_ins_DSHKM",[8864.36,9105.82,2.68443],284,[["gunner",-1,[0]]],[]],["rhsgref_ins_DSHKM",[8067.75,9439.87,10.047],197,[["gunner",-1,[0]]],[]],["rhsgref_ins_DSHKM",[7854.76,9157.57,-2.76566e-05],153,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Hunt Military Base
		_Vehicles = ["UK3CB_MEI_O_Offroad", "UK3CB_MEI_O_V3S_Closed", "UK3CB_MEI_O_Pickup", "UK3CB_MEI_O_LR_Closed", "UK3CB_MEI_O_Hilux_Open", "UK3CB_MEI_O_Datsun_Civ_Closed", "UK3CB_MEI_O_Datsun_Open", "UK3CB_MEI_O_Hilux_M2"];
		[Hunt_7, Hunt_7, NEKY_Hunt_Trigger_3, 10,120,east,_Vehicles,30] spawn OKS_fnc_Huntbase;
		[Hunt_8, Hunt_8, NEKY_Hunt_Trigger_3, 10,120,east,_Vehicles,30] spawn OKS_fnc_Huntbase;
		[Hunt_9, Hunt_9, NEKY_Hunt_Trigger_3, 10,120,east,_Vehicles,30] spawn OKS_fnc_Huntbase;
		[Hunt_10, Hunt_10, NEKY_Hunt_Trigger_3, 10,120,east,_Vehicles,30] spawn OKS_fnc_Huntbase;

	};

	case 4: {
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

