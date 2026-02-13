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

systemChat format ["SpawnList: Case %1", _case];

switch (_case) do {

	case 0: {
		// Anti-AIr MGs.
		[[],[
			["rhs_KORD_high_VDV",[5729.56,2952.01,8.93851],220,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[5614.62,2942.32,11.1187],220,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[5768.04,2990.62,11.2775],220,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[3811.72,1971.42,11.7177],220,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[3873.22,2005.76,8.52617],115,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[3883.25,2116.03,17.2086],142,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[4242.45,2134.17,8.66321],220,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[6684.7,2121.19,0],220,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[6721.99,1972.92,0],291,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[6871.5,1866.23,0],220,[["gunner",-1,[0]]],[]]
		],[]] call GW_Common_fnc_spawnGroup;

		[[[[6052.5,1963.43,1.19209e-07],0,"Middle",[]],[[6041.81,1970.26,0],94,"Middle",[]],[[6041.83,1963.19,0],91,"Middle",[]]],[
			["UK3CB_CSAT_F_O_BTR60",[6045.76,1967.27,1],0.256319,[["driver",-1,[]],["gunner",-1,[0]]],
			[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]
		]]],["rhs_KORD_high_MSV",[6050.41,1964.39,0],353,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[
			["UK3CB_CSAT_F_O_BTR60",[6218.73,1854.11,1],216,[["driver",-1,[]],["gunner",-1,[0]]],
			[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;		
		
	};

	case 1: {

		// Objective 1 - Hera
		[getpos fire_6] spawn OKS_Fire;
		[getpos fire_4] spawn OKS_Fire;

		[getpos fire_1] spawn OKS_Fire;

		// Patrols.
		[[[[6121.98,1887.15,2.38419e-07],0,[]],[[6125.18,1885.27,2.38419e-07],0,[]],[[6120.59,1884.67,0.0718485],0,[]],[[6123.81,1882.76,0.0756917],0,[]]],[],[[[6059.56,1902.05,0],[[0,"Move"],[1,"SAFE"]]],[[6048.54,1918.18,1.19209e-07],[[0,"Move"]]],[[6040.32,2059.51,-1.54972e-06],[[0,"Move"]]],[[6047.72,1921.5,1.19209e-07],[[0,"Move"]]],[[6059.35,1903.82,1.19209e-07],[[0,"Move"]]],[[6118.12,1886.95,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6143.88,1958.27,2.38419e-07],0,[]],[[6147.08,1956.39,2.38419e-07],0,[]],[[6142.49,1955.79,0.0718485],0,[]],[[6145.71,1953.88,0.0756917],0,[]]],[],[[[6049.25,1951.04,0],[[0,"Move"],[1,"SAFE"]]],[[6137.89,1956.77,0],[[0,"Move"]]],[[6203.99,1906.4,1.19209e-07],[[0,"Move"]]],[[6129.11,1934.36,1.19209e-07],[[0,"Move"]]],[[6115.62,1894.05,0],[[0,"Move"]]],[[6140.02,1958.07,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6081.08,2074.19,2.38419e-07],272,[]],[[6083.05,2077.34,2.38419e-07],272,[]],[[6083.52,2072.73,1.54972e-06],272,[]],[[6085.51,2075.9,0.00384474],272,[]]],[],[[[6040.79,2062.41,3.57628e-07],[[0,"Move"],[1,"SAFE"]]],[[6045.23,1950.56,0],[[0,"Move"]]],[[6120.28,1955.26,0],[[0,"Move"]]],[[6045.29,1951.61,0],[[0,"Move"]]],[[6039.01,2062.25,3.57628e-07],[[0,"Move"]]],[[6081.16,2070.33,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6205.43,1906.38,2.38419e-07],0,[]],[[6208.63,1904.5,2.38419e-07],0,[]],[[6204.04,1903.9,3.57628e-07],0,[]],[[6207.26,1901.99,0.00384367],0,[]]],[],[[[6180.98,1885.29,0],[[0,"Move"],[1,"SAFE"]]],[[6113.92,1885.51,1.19209e-07],[[0,"Move"]]],[[6083.27,1950.61,1.19209e-07],[[0,"Move"]]],[[6131.17,1940.73,0],[[0,"Move"]]],[[6142.8,1923.05,0.0673552],[[0,"Move"]]],[[6201.57,1906.18,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Statics.
		[[[[6037.63,1926.22,0.126105],122,"Up",[]],[[6080.57,1920.27,4.76837e-07],148,"Up",[]],[[6100.59,1939.39,4.22796],237,"Middle",[]],[[6066.72,1907.22,3.94385],245,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6075.13,1888.94,3.73028],122,"Up",[]],[[6074.23,1885.4,5.0753],21,"Up",[]],[[6078.19,1884.28,5.21007],46,"Up",[]],[[6074.33,1884.56,1.92359],358,"Up",[]],[[6078.92,1883.13,2.06324],316,"Up",[]],[[6080.16,1889.26,0.301486],239,"Up",[]],[[6070.63,1885.55,3.62887],47,"Up",[]],[[6067.99,1888.76,3.36355],111,"Up",[]],[[6072.04,1889.11,3.6845],139,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6150.98,1871.37,0.0960428],301,"Up",[]],[[6157.54,1878.73,0.096043],241,"Up",[]],[[6164.94,1874.96,0.0960435],23,"Up",[]],[[6159.83,1869.97,0.0960439],170,"Middle",[]],[[6152.89,1875.41,0.0960439],290,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6169.65,1872.31,0.316331],258,"Middle",[]],[[6173.68,1876.91,0.321341],232,"Up",[]],[[6179.48,1871.21,0.321341],286,"Up",[]],[[6172.17,1862.66,0.321341],6,"Up",[]],[[6176.64,1859.13,0.321341],356,"Up",[]],[[6165.19,1862.97,0.321341],47,"Up",[]],[[6168.52,1862.97,0.321341],358,"Up",[]],[[6174.76,1868.82,0.321341],288,"Up",[]],[[6173.53,1860.32,0.321342],16,"Up",[]],[[6168.7,1872.36,3.44135],102,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6124.53,1896.7,4.21015],261,"Up",[]],[[6126.39,1899.52,4.20014],14,"Up",[]],[[6135.06,1891.68,0.137047],200,"Up",[]],[[6140.12,1887.39,4.01094],170,"Up",[]],[[6102.9,1900.08,4.12145],170,"Up",[]],[[6078.5,1907.56,4.10509],122,"Up",[]],[[6085.79,1908.4,0.126104],205,"Up",[]],[[6106.59,1905.41,0.232104],208,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6109.65,1934.94,4.05827],153,"Up",[]],[[6102.45,1934.3,3.91788],223,"Up",[]],[[6069.97,1972.61,7.56433],201,"Middle",[]],[[6068.29,1976.23,7.53266],25,"Middle",[]],[[6084.02,1992.98,-0.0346587],18,"Up",[]],[[6087.44,1992.37,0.3006],18,"Middle",[]],[[6083.51,1981.91,1.38283e-05],164,"Middle",[]],[[6072.34,1976.82,2.06502],241,"Up",[]],[[6080.86,1992.26,1.43051e-05],168,"Middle",[]],[[6141.98,1963.61,3.49945],251,"Up",[]],[[6143.21,1962.11,3.49945],195,"Up",[]]],[
			["rhs_KORD_MSV",[6068.52,1974.26,7.75381],187.358,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_PKM_High",[6146.87,1963.28,3.60846],203,[["gunner",-1,[0]]],[]]
		],[]] call GW_Common_fnc_spawnGroup;

		/// AA MGs.
		// Objective 2.
		[[],[
			["UK3CB_CSAT_F_O_BTR80",[8949.78,3649.02,0],171,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_CSAT_F_O_BTR80",[8701.92,3567.64,0],139,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_CSAT_F_O_BTR80",[9151.79,3802.34,0],184,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_CSAT_F_O_BTR80",[8751.23,3398.51,0],221,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_CSAT_F_O_BTR80",[7745.35,3589.18,0],121,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_CSAT_F_O_BTR80",[7512.21,3654.1,-9.53674e-07],129,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_CSAT_F_O_BTR80",[7449.65,3840.42,0],153,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;
		
		sleep 15;
		[Trigger_1,0,12,0,0,false,true] spawn OKS_fnc_Civilians;
	};

	case 2: {
		// Objective 1 - Hera
		// Reinforcements
		private _Vehicles = [
			"UK3CB_CSAT_F_O_BTR40_MG", 
			"UK3CB_CSAT_F_O_BTR60", 
			"UK3CB_CSAT_F_O_BTR40", 
			"UK3CB_CSAT_F_O_BMD1", 
			"UK3CB_CSAT_F_O_BRDM2", 
			"UK3CB_CSAT_F_O_Tigr", 
			"UK3CB_CSAT_F_O_Tigr", 
			"UK3CB_CSAT_F_O_Tigr", 
			"UK3CB_CSAT_F_O_GAZ_Vodnik", 
			"UK3CB_CSAT_F_O_GAZ_Vodnik_PKT", 
			"UK3CB_CSAT_F_O_Kamaz_Covered", 
			"UK3CB_CSAT_F_O_Kamaz_Covered", 
			"UK3CB_CSAT_F_O_MAZ_Transport_Closed", 
			"UK3CB_CSAT_F_O_MAZ_Transport_Closed", 
			"UK3CB_CSAT_F_O_Offroad_Covered", 
			"UK3CB_CSAT_F_O_Offroad_Covered", 
			"UK3CB_CSAT_F_O_LSV_02", 
			"UK3CB_CSAT_F_O_LSV_02", 
			"UK3CB_CSAT_F_O_LSV_02", 
			"UK3CB_CSAT_F_O_LSV_02"
		];

		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 10,300,independent,5,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 10,300,independent,5,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 10,300,independent,5,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_1, 10,300,independent,5,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_1, 10,300,independent,5,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_1, 10,300,independent,_Vehicles,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_1, 10,300,independent,_Vehicles,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_19, Spawn_19, NEKY_Hunt_Trigger_1, 10,300,independent,5,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_20, Spawn_20, NEKY_Hunt_Trigger_1, 10,300,independent,5,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_21, Spawn_21, NEKY_Hunt_Trigger_1, 10,300,independent,5,90] spawn OKS_fnc_Huntbase;
	};

	case 3: {

		// Objective 2 - Achilles
		[getpos fire_2] spawn OKS_Fire;
		[getpos fire_3] spawn OKS_Fire;
		[getpos fire_4] spawn OKS_Fire;

		// Patrols.
		[[[[8237.39,2606.87,0],0,[]],[[8242.39,2601.87,0],0,[]],[[8237.98,2601.93,0],0,[]],[[8240.35,2603.84,0],0,[]],[[8235.98,2599.98,0],0,[]],[[8236.33,2604.13,0],0,[]],[[8238.47,2598.46,5.96046e-08],0,[]],[[8241.33,2599.13,0],0,[]]],[],[[[8209.54,2673.67,0],[[0,"Move"],[1,"SAFE"]]],[[8131.67,2595.96,0],[[0,"Move"]]],[[8230.87,2590.68,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8335.2,2588.45,1.19209e-07],57,[]],[[8333.72,2581.53,1.19209e-07],57,[]],[[8331.37,2585.27,1.19209e-07],57,[]],[[8334.27,2584.32,1.19209e-07],57,[]],[[8328.65,2585.88,5.96046e-08],57,[]],[[8332.32,2587.84,5.96046e-08],57,[]],[[8328.73,2582.97,1.19209e-07],57,[]],[[8330.85,2580.93,5.96046e-08],57,[]]],[],[[[8376.1,2648.16,1.19209e-07],[[0,"Move"],[1,"SAFE"]]],[[8268.53,2671.22,1.19209e-07],[[0,"Move"]]],[[8318.06,2585.12,1.19209e-07],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8308.74,2690.91,0],57,[]],[[8307.26,2684,0],57,[]],[[8304.91,2687.74,0],57,[]],[[8307.81,2686.79,0],57,[]],[[8302.2,2688.35,0],57,[]],[[8305.87,2690.31,0],57,[]],[[8302.27,2685.45,0],57,[]],[[8304.38,2683.4,0],57,[]]],[],[[[8349.74,2750.56,0],[[0,"Move"],[1,"SAFE"]]],[[8242.21,2773.79,0],[[0,"Move"]]],[[8291.61,2687.61,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8201.33,2739.44,0],63,[]],[[8199.16,2732.71,1.19209e-07],63,[]],[[8197.2,2736.67,0],63,[]],[[8199.99,2735.43,0],63,[]],[[8194.56,2737.55,0],63,[]],[[8198.41,2739.13,5.96046e-08],63,[]],[[8194.34,2734.65,-5.96046e-08],63,[]],[[8196.24,2732.4,5.96046e-08],63,[]]],[],[[[8248.09,2794.68,5.96046e-08],[[0,"Move"],[1,"SAFE"]]],[[8143.43,2828.56,0],[[0,"Move"]]],[[8183.95,2737.87,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8003.31,2809.17,0],148,[]],[[7996.41,2810.74,1.19209e-07],148,[]],[[8000.18,2813.04,0],148,[]],[[7999.19,2810.15,0],148,[]],[[8000.82,2815.75,0.0378894],148,[]],[[8002.74,2812.05,0.237984],148,[]],[[7997.92,2815.71,0],148,[]],[[7995.85,2813.62,0],148,[]]],[],[[[8062.48,2767.5,0],[[0,"Move"],[1,"SAFE"]]],[[8086.93,2874.77,0],[[0,"Move"]]],[[8000.2,2826.34,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8421.58,2768.12,0],63,[]],[[8419.41,2761.39,0],63,[]],[[8417.46,2765.35,0],63,[]],[[8420.24,2764.11,0],63,[]],[[8414.81,2766.24,0],63,[]],[[8418.66,2767.82,0],63,[]],[[8414.59,2763.33,0],63,[]],[[8416.49,2761.09,0],63,[]]],[],[[[8468.34,2823.37,0],[[0,"Move"],[1,"SAFE"]]],[[8363.68,2857.24,0],[[0,"Move"]]],[[8404.2,2766.55,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8237.59,2905.3,0],173,[]],[[8232.02,2909.65,1.19209e-07],173,[]],[[8236.4,2910.13,0],173,[]],[[8234.29,2907.94,0],173,[]],[[8238.14,2912.31,0],173,[]],[[8238.31,2908.15,0],173,[]],[[8235.49,2913.51,0],173,[]],[[8232.73,2912.5,0],173,[]]],[],[[[8273.46,2842.43,5.96046e-08],[[0,"Move"],[1,"SAFE"]]],[[8341.16,2929.14,0],[[0,"Move"]]],[[8242.08,2922.17,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

			
		[[
			[[8176.79,2785.77,3.57628e-06],164,"Up",[]],
			[[8189.52,2781.18,0],232,"Up",[]],
			[[8175.95,2715.95,1.23382e-05],50,"Middle",[]],
			[[8180.99,2715.64,-3.36766e-06],287,"Middle",[]],
			[[8180.47,2714.48,2.77694],195,"Up",[]]
		],
		[
			["UK3CB_CSAT_F_O_BTR60",[8183.09,2786.22,0.458325],204,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",0]]]],
			["UK3CB_MEE_O_KORD",[8176.38,2715.8,2.67906],197,[["gunner",-1,[0]]],[]],
			["UK3CB_CSAT_F_O_BTR60",[8073.45,2740.4,0.503356],138,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		sleep 15;
		[Trigger_2,0,12,0,0,false,true] spawn OKS_fnc_Civilians;
	};

	case 4: {

		[DeleteTrigger_1] spawn OKS_fnc_DeleteDeadAndObjects;
		{
			deleteVehicle _X;
		} foreach [Spawn_1,Spawn_2,Spawn_3,Spawn_4,Spawn_4,Spawn_5,Spawn_6,Spawn_19,Spawn_20,Spawn_21];

		// Statics.
		[[[[8141.43,2701.21,0.23489],16,"Up",[]],[[8138.71,2668.16,0.0503466],14,"Up",[]],[[8129.54,2670.63,0.0968374],305,"Up",[]],[[8108.2,2685.26,0.280401],91,"Up",[]],[[8140.83,2695.21,0.273988],111,"Up",[]],[[8118.83,2702.69,0.364498],171,"Up",[]],[[8119.99,2704.58,0.507792],256,"Up",[]],[[8122.31,2706.13,0.667587],159,"Middle",[]],[[8114.97,2703.3,0.107311],115,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8089.43,2704.55,0.409613],69,"Up",[]],[[8074.45,2723.75,0.169757],54,"Up",[]],[[8121.73,2722.87,0.232319],323,"Up",[]],[[8127.37,2725.33,0.272253],309,"Up",[]],[[8090.66,2763.87,0.697636],178,"Up",[]],[[8086.73,2769.12,0.690499],135,"Up",[]],[[8082.6,2768.36,5.96046e-08],173,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8101.57,2769.54,0.77401],178,"Up",[]],[[8099.68,2768.36,0.754276],310,"Up",[]],[[8096.48,2765.81,0.700102],102,"Up",[]],[[8094.88,2763.77,0.690786],113,"Up",[]],[[8093.58,2772.76,0.648025],175,"Up",[]],[[8095.74,2776.28,0.65867],178,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8108.03,2777.5,-5.96046e-08],167,"Up",[]],[[8121.51,2775.62,0.828975],123,"Up",[]],[[8118.78,2772.89,0.793103],178,"Up",[]],[[8103.48,2771.34,0.777639],178,"Up",[]],[[8102.75,2776.94,0.742885],40,"Up",[]],[[8100.02,2779.56,0.721034],188,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8142.55,2732.79,0.35357],171,"Up",[]],[[8140.08,2730.83,0.302694],171,"Up",[]],[[8136.29,2728.66,0.237581],178,"Up",[]],[[8132.42,2733.53,0.248794],171,"Up",[]],[[8139.2,2737.24,0.377925],7,"Up",[]],[[8142.83,2739.49,0.182975],104,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8114.97,2782.25,0.635715],227,"Up",[]],[[8111.24,2777.63,0.0564817],227,"Up",[]],[[8117.65,2773.5,0.763678],227,"Up",[]],[[8121.07,2775.72,0.821776],227,"Up",[]],[[8117.02,2778.37,0.714663],154,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Objective 2 Achilles
		// Reinforcements
		private _Vehicles = [
			"UK3CB_CSAT_F_O_BTR40_MG", 
			"UK3CB_CSAT_F_O_BTR60", 
			"UK3CB_CSAT_F_O_BTR60", 
			"UK3CB_CSAT_F_O_BTR60", 
			"UK3CB_CSAT_F_O_BTR40", 
			"UK3CB_CSAT_F_O_BMD1", 
			"UK3CB_CSAT_F_O_BRDM2", 
			"UK3CB_CSAT_F_O_Tigr", 
			"UK3CB_CSAT_F_O_Tigr", 
			"UK3CB_CSAT_F_O_Tigr", 
			"UK3CB_CSAT_F_O_GAZ_Vodnik", 
			"UK3CB_CSAT_F_O_GAZ_Vodnik_PKT", 
			"UK3CB_CSAT_F_O_Kamaz_Covered", 
			"UK3CB_CSAT_F_O_Kamaz_Covered", 
			"UK3CB_CSAT_F_O_MAZ_Transport_Closed", 
			"UK3CB_CSAT_F_O_MAZ_Transport_Closed", 
			"UK3CB_CSAT_F_O_Offroad_Covered", 
			"UK3CB_CSAT_F_O_Offroad_Covered", 
			"UK3CB_CSAT_F_O_LSV_02", 
			"UK3CB_CSAT_F_O_LSV_02", 
			"UK3CB_CSAT_F_O_LSV_02", 
			"UK3CB_CSAT_F_O_LSV_02"
		];
		[Spawn_7, Spawn_7, NEKY_Hunt_Trigger_2, 10,180,east,7,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_8, Spawn_8, NEKY_Hunt_Trigger_2, 10,180,east,7,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_9, Spawn_9, NEKY_Hunt_Trigger_2, 10,180,east,7,90] spawn OKS_fnc_Huntbase;  sleep 10;
		[Spawn_17, Spawn_17, NEKY_Hunt_Trigger_2, 10,180,independent,7,90] spawn OKS_fnc_Huntbase;  sleep 10;
		[Spawn_18, Spawn_18, NEKY_Hunt_Trigger_2, 10,180,independent,7,90] spawn OKS_fnc_Huntbase;  sleep 10;
		[Spawn_10, Spawn_10, NEKY_Hunt_Trigger_2, 10,180,east,_Vehicles,90] spawn OKS_fnc_Huntbase;  sleep 10;
		[Spawn_11, Spawn_11, NEKY_Hunt_Trigger_2, 10,180,east,_Vehicles,90] spawn OKS_fnc_Huntbase;  sleep 30;


	};

	case 5: {

		// Objective 3 - Valkyrie
		// Patrols.
		{ 
			deleteVehicle _X 
		} foreach [spawn_8, spawn_9, spawn_7, spawn_10, spawn_11, spawn_17, spawn_18];

		[DeleteTrigger_2] spawn OKS_fnc_DeleteDeadAndObjects;


		[getpos fire_5] spawn OKS_Fire;
		[getpos fire_7] spawn OKS_Fire;
		[[[[2388.58,6925.33,0],0,[]],[[2388.4,6923.98,1.19209e-07],0,[]],[[2386.83,6929.86,0],0,[]],[[2386.31,6926.72,0],0,[]]],[],[[[2284.54,6994.19,0],[[0,"Move"],[1,"SAFE"],[3,15]]],[[2323.11,7116.78,0],[[0,"Move"],[3,15]]],[[2394.56,7101.33,5.96046e-08],[[0,"Move"],[3,15]]],[[2403.25,6965.67,0],[[0,"Cycle"],[3,15]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2604.49,6936.24,0],0,[]],[[2604.32,6934.89,0],0,[]],[[2602.74,6940.77,0],0,[]],[[2602.22,6937.62,0],0,[]]],[],[[[2511.31,7021.01,0],[[0,"Move"],[1,"SAFE"],[3,15]]],[[2513.58,7088.99,5.96046e-08],[[0,"Move"],[3,15]]],[[2602.83,7081.39,0],[[0,"Move"],[3,15]]],[[2619.16,6976.58,0],[[0,"Cycle"],[3,15]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2740.04,7112.11,0],0,[]],[[2739.87,7110.76,0],0,[]],[[2738.29,7116.64,0],0,[]],[[2737.77,7113.49,0],0,[]]],[],[[[2648.14,7132.24,0],[[0,"Move"],[1,"SAFE"],[3,15]]],[[2646.79,7203.98,0],[[0,"Move"],[3,15]]],[[2729.31,7183.77,0],[[0,"Move"],[3,15]]],[[2737.65,7128.16,0],[[0,"Cycle"],[3,15]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2438.29,7336.49,0],101,[]],[[2437,7336.93,0],101,[]],[[2443.08,7337.31,0],101,[]],[[2440.1,7338.44,0],101,[]]],[],[[[2528.86,7414.77,1.19209e-07],[[0,"Move"],[1,"SAFE"],[3,15]]],[[2585.07,7346.04,0],[[0,"Move"],[3,15]]],[[2588.11,7295.52,0],[[0,"Move"],[3,15]]],[[2474.93,7314.13,0],[[0,"Cycle"],[3,15]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2745.1,7313.93,0],0,[]],[[2744.92,7312.58,0],0,[]],[[2743.35,7318.46,0],0,[]],[[2742.83,7315.31,0],0,[]]],[],[[[2641.06,7382.79,0],[[0,"Move"],[1,"SAFE"],[3,15]]],[[2633.12,7432.08,1.19209e-07],[[0,"Move"],[3,15]]],[[2716.32,7430.39,0],[[0,"Move"],[3,15]]],[[2759.77,7354.27,0],[[0,"Cycle"],[3,15]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2611.17,7370.92,0],0,[]],[[2616.17,7368.92,5.96046e-08],0,[]],[[2613.02,7368.23,-5.96046e-08],0,[]]],[],[[[2598.07,7376.75,0],[[0,"Move"],[1,"SAFE"]]],[[2608.29,7450.93,-2.98023e-07],[[0,"Move"]]],[[2654,7418.86,5.96046e-08],[[0,"Move"]]],[[2646.92,7394.11,1.78814e-07],[[0,"Move"]]],[[2608.83,7373.38,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2623.53,7430.93,0],0,[]],[[2628.53,7428.93,7.15256e-07],0,[]],[[2625.39,7428.24,4.76837e-07],0,[]]],[],[[[2589.59,7471.73,0],[[0,"Move"],[1,"SAFE"]]],[[2601.7,7515.3,0],[[0,"Move"]]],[[2624.26,7483.61,0],[[0,"Move"]]],[[2596.61,7464.94,0],[[0,"Move"]]],[[2621.2,7433.4,5.96046e-07],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2610.4,7475.32,0],0,[]],[[2615.4,7473.32,0],0,[]],[[2612.25,7472.62,0],0,[]]],[],[[[2584.58,7484.17,0],[[0,"Move"],[1,"SAFE"]]],[[2614.93,7557.42,0],[[0,"Move"]]],[[2644,7508.09,0],[[0,"Move"]]],[[2621.76,7482.4,0],[[0,"Move"]]],[[2612.25,7472.62,0.5],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2653.49,7434.11,0],0,[]],[[2658.49,7432.11,0],0,[]],[[2655.35,7431.42,0],0,[]]],[],[[[2645.35,7445.3,0],[[0,"Move"],[1,"SAFE"]]],[[2647.88,7457.98,0],[[0,"Move"]]],[[2676.28,7472.91,0],[[0,"Move"]]],[[2689.24,7457.29,1.19209e-07],[[0,"Move"]]],[[2659.1,7433.64,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2646.12,7512.29,0],198,[]],[[2641.98,7515.73,0],198,[]],[[2645.19,7515.42,0],198,[]]],[],[[[2675.62,7478.02,0],[[0,"Move"],[1,"SAFE"]]],[[2645.3,7457.64,0],[[0,"Move"]]],[[2622.45,7489.82,0],[[0,"Move"]]],[[2631.88,7499.91,0],[[0,"Move"]]],[[2647.59,7509.23,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[2607.3,7519.08,-1.19209e-07],0,[]],[[2612.3,7514.08,0],0,[]],[[2602.3,7514.08,0],0,[]],[[2617.3,7509.08,-1.19209e-07],0,[]],[[2597.3,7509.08,0],0,[]],[[2619.54,7499.65,0],0,[]],[[2592.3,7504.08,0],0,[]],[[2627.3,7499.08,0],0,[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2668.03,7465.73,0],222,[]],[[2667.7,7472.79,0],222,[]],[[2675.1,7466.06,0],222,[]],[[2667.37,7479.86,0],222,[]],[[2682.16,7466.39,0.414486],222,[]],[[2672.06,7488.34,0],222,[]],[[2689.22,7466.72,0],222,[]],[[2666.72,7493.98,0],222,[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Statics.
		[[[[2621.23,7381.28,3.73133],287,"Up",[]],[[2626.51,7384.34,3.70041],321,"Up",[]],[[2639.52,7390.41,3.6206],237,"Up",[]],[[2622.6,7381.33,0.378358],167,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2657.38,7438.25,3.51598],210,"Up",[]],[[2670.51,7447.05,7.42916],210,"Up",[]],[[2666.9,7447.07,7.43084],210,"Up",[]],[[2662.6,7452.88,7.35822],210,"Up",[]],[[2661.15,7481.16,0.776011],192,"Up",[]]],[["UK3CB_ADM_O_PKM_Low",[2668.45,7445.14,7.73237],207,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2635.42,7484.88,0],210,"Middle",[]],[[2641.27,7474.13,4.17233e-07],92,"Middle",[]],[[2640.18,7482.88,8.46904],215,"Up",[]],[[2642.35,7492.68,0.754657],26,"Up",[]],[[2655.87,7495.98,0.0130999],210,"Up",[]],[[2652.52,7500,4.76837e-07],210,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2608.5,7466.33,4.76837e-07],210,"Up",[]],[[2596.74,7458.06,4.76837e-07],83,"Up",[]],[[2611.28,7481.35,0.0435411],233,"Up",[]],[[2600.32,7485.96,0.0436205],210,"Up",[]],[[2598.31,7473.61,0.0435869],358,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2596.11,7476.53,0.0437137],67,"Up",[]],[[2594.75,7479.07,0.0436472],48,"Up",[]],[[2593.41,7483.21,0.0436431],136,"Up",[]],[[2597.78,7489.61,0.0435735],228,"Up",[]],[[2591.91,7491.51,4.76837e-07],215,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		[[],[
			["UK3CB_ADM_O_PKM_nest",[2705.35,7453.06,0.274996],241,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],
			["UK3CB_ADM_O_PKM_nest",[2601.16,7467.59,0.274997],167.518,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		[[],[
			["UK3CB_MEE_O_KORD",[2666.69,7452.09,8.42325],231,[["gunner",-1,[0]]],[]],
			["UK3CB_CSAT_F_O_BTR60",[2613.36,7561.64,0.7],144,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]]]],
			["UK3CB_CSAT_F_O_BTR60",[2599.92,7522.11,0.7],144,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		// Objective 3 
		// Ambush HLS
		[getpos ambush_1, "ambushrush", 6, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos ambush_2, "ambushrush", 6, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos ambush_3, "ambushrush", 6, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos ambush_4, "ambushrush", 6, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos ambush_5, "ambushrush", 6, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
	};

	case 6: {

		// AA MG Objective 3.
		[[],[
			["rhs_KORD_high_VDV",[3155.31,7034.46,0.116759],0,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[3154.87,7026.36,0.126001],0,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[3168.64,6999.1,2.54553],215,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[2999.98,7622.23,0],197,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[2629.07,7700.02,0.0119313],150,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[3231.73,7493.48,0.0119312],0,[["gunner",-1,[0]]],[]],
			["rhs_KORD_high_VDV",[3228.4,7477.42,0.0119313],0,[["gunner",-1,[0]]],[]]
		],[]] call GW_Common_fnc_spawnGroup;			

	};

	case 7: {

		// Objective 3 Valkyrie
		// Reinforcements
		private _Vehicles = [
			"UK3CB_CSAT_F_O_BTR40_MG", 
			"UK3CB_CSAT_F_O_BTR60", 
			"UK3CB_CSAT_F_O_BTR60", 
			"UK3CB_CSAT_F_O_BTR60", 
			"UK3CB_CSAT_F_O_BTR60", 
			"UK3CB_CSAT_F_O_BTR40", 
			"UK3CB_CSAT_F_O_BMD1", 
			"UK3CB_CSAT_F_O_BMD1", 
			"UK3CB_CSAT_F_O_BMD1", 
			"UK3CB_CSAT_F_O_BRDM2", 
			"UK3CB_CSAT_F_O_Tigr", 
			"UK3CB_CSAT_F_O_Tigr", 
			"UK3CB_CSAT_F_O_Tigr", 
			"UK3CB_CSAT_F_O_GAZ_Vodnik", 
			"UK3CB_CSAT_F_O_GAZ_Vodnik_PKT", 
			"UK3CB_CSAT_F_O_Kamaz_Covered", 
			"UK3CB_CSAT_F_O_Kamaz_Covered", 
			"UK3CB_CSAT_F_O_MAZ_Transport_Closed", 
			"UK3CB_CSAT_F_O_MAZ_Transport_Closed", 
			"UK3CB_CSAT_F_O_Offroad_Covered", 
			"UK3CB_CSAT_F_O_Offroad_Covered", 
			"UK3CB_CSAT_F_O_LSV_02", 
			"UK3CB_CSAT_F_O_LSV_02", 
			"UK3CB_CSAT_F_O_LSV_02", 
			"UK3CB_CSAT_F_O_LSV_02"
		];
		[Spawn_12, Spawn_12, NEKY_Hunt_Trigger_3, 10,240,east,6,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_13, Spawn_13, NEKY_Hunt_Trigger_3, 10,240,east,6,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_14, Spawn_14, NEKY_Hunt_Trigger_3, 10,300,east,_Vehicles,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_15, Spawn_15, NEKY_Hunt_Trigger_3, 10,300,east,_Vehicles,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_16, Spawn_16, NEKY_Hunt_Trigger_3, 10,300,east,_Vehicles,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_22, Spawn_12, NEKY_Hunt_Trigger_1, 10,300,independent,5,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_23, Spawn_23, NEKY_Hunt_Trigger_1, 10,300,independent,5,90] spawn OKS_fnc_Huntbase; sleep 10;
		[Spawn_24, Spawn_24, NEKY_Hunt_Trigger_1, 10,300,independent,5,90] spawn OKS_fnc_Huntbase; sleep 10;
	};

	case 8:{

		[getPos LambsGroupSpawn_1, "ambushrush", 4, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_2, "ambushrush", 4, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_3, "ambushrush", 4, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_4, "ambushrush", 4, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;

	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
