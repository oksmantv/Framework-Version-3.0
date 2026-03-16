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

		// Assault Objective 1
		[[[[2212.02,7700.85,4.31018],167,"Up",[]],[[2224.68,7704.86,0.405167],94,"Up",[]],[[2217.71,7693.88,0.550095],66,"Up",[]],[[2227.31,7693.64,0.510925],78,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2228.4,7706.41,8.35602],127,"Up",[]],[[2229.88,7712.53,8.35152],89,"Up",[]],[[2224.75,7708.17,4.30997],72,"Up",[]],[[2233.11,7713.18,12.316],229,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2239.85,7698.63,8.40732],341,"Up",[]],[[2231.48,7694.27,8.35768],81,"Up",[]],[[2239.88,7706.18,0.400177],169,"Up",[]],[[2244.56,7712.77,0.395309],342,"Up",[]],[[2245.89,7707.41,0.448608],331,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2236.33,7693.18,4.32185],252,"Up",[]],[[2249.82,7703.87,0.503723],254,"Up",[]],[[2248.74,7697.3,0.516403],333,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2244.02,7694.28,12.4327],171,"Middle",[]],[[2249.19,7706.86,8.40463],330,"Up",[]],[[2250.44,7705.88,4.37282],314,"Up",[]],[[2251.54,7699.57,4.36897],253,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// East Reinforce Sentry
		[[],[["UK3CB_ADG_O_PKM_High_ISL",[2711.78,7792.16,0],212,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_High_ISL",[2666.22,7589.76,1.52588e-005],212,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_High_ISL",[2772.56,7956.47,3.77249],212,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// South Reinforce Sentry
		[[],[["UK3CB_ADG_O_PKM_High_ISL",[2141.86,7118.4,0],15,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_High_ISL",[2141.4,7242.88,0],15,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_High_ISL",[2463.8,7144.04,0],15,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_High_ISL",[2198.24,6974.62,-1.52588e-005],15,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// North Reinforce Sentry
		[[],[["UK3CB_ADG_O_PKM_High_ISL",[2144.69,8395.13,0],150,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_High_ISL",[2031.44,8471.99,3.36314],57,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_High_ISL",[2174.06,8626.38,-1.52588e-005],1,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		{[_X,0.5,50,true,true] spawn OKS_Surrender} foreach [officer_7, officer_8, officer_9];

	};

	case 2: {

		// Assault Objective 2
		[[[[2540.82,8866.03,3.70834],38,"Up",[]],[[2542.72,8865.78,0.574997],77,"Up",[]],[[2550.64,8866.46,0.574997],353,"Up",[]],[[2545.76,8871.64,0.574997],165,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2546.32,8873.91,3.82526],130,"Up",[]],[[2544.56,8870.76,6.86258],285,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2545.43,8891.81,0.233032],199,"Up",[]],[[2538.42,8887.96,0.914841],72,"Up",[]],[[2538.64,8894.89,0.249893],195,"Up",[]],[[2535.99,8891.72,3.49745],235,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2557.78,8900.89,7.19891],221,"Up",[]],[[2551.05,8909.06,0.561096],114,"Up",[]],[[2549.77,8903.38,3.9653],75,"Up",[]],[[2554.22,8906.84,3.97903],124,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2559.3,8893.98,0.540695],345,"Up",[]],[[2554.15,8894.99,0.412506],104,"Up",[]],[[2554.6,8893.15,3.8028],72,"Up",[]],[[2537.92,8912.37,0.429901],151,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// West Reinforce Sentry
		[[],[["UK3CB_ADG_O_PKM_High_ISL",[2336.12,9100.58,0],150,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_High_ISL",[2236.85,9041.18,3.64296],150,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_High_ISL",[2312.35,9280.99,0],150,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		
		// East
		[[],[["UK3CB_ADG_O_PKM_High_ISL",[3149.78,9193.28,1.52588e-005],150,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_High_ISL",[2923.32,9093.56,3.06314],287,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_High_ISL",[3113.01,8873.14,1.52588e-005],291,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_High_ISL",[2499.43,9301.59,0],157,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		{[_X,0.5,50,true,true] spawn OKS_Surrender} foreach [officer_1, officer_3, officer_4, officer_5, officer_6, officer_2];
	};

	case 3: {

		sleep 180;
		_Vehicles = ["UK3CB_TKM_B_BRDM2", "UK3CB_TKM_B_BTR60", "UK3CB_TKM_B_MTLB_PKT", "UK3CB_TKM_B_Datsun_Pkm", "UK3CB_TKM_B_Hilux_Pkm", "UK3CB_TKM_B_Hilux_Open", "UK3CB_TKM_B_Pickup"];
		// Counter-Attack Objective 1
		[assault_1_1,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_1_2,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_1_3,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_vehicle_1_2,nil,_Vehicles,east,1500] spawn OKS_Rush_SpawnGroup;
		sleep 30;
		[assault_vehicle_1_2,nil,_Vehicles,east,1500] spawn OKS_Rush_SpawnGroup;
		sleep 200;

		[assault_1_4,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_1_5,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_1_6,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_vehicle_1_3,nil,_Vehicles,east,1500] spawn OKS_Rush_SpawnGroup;
		sleep 30;
		[assault_vehicle_1_3,nil,_Vehicles,east,1500] spawn OKS_Rush_SpawnGroup;
		sleep 200;

		[assault_1_7,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_1_8,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_1_9,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_vehicle_1_1,nil,_Vehicles,east,1500] spawn OKS_Rush_SpawnGroup;
		sleep 30;
		[assault_vehicle_1_1,nil,_Vehicles,east,1500] spawn OKS_Rush_SpawnGroup;
		
	};

	case 4: {

		sleep 180;
		_Vehicles = ["UK3CB_TKM_B_BRDM2", "UK3CB_TKM_B_BTR60", "UK3CB_TKM_B_MTLB_PKT", "UK3CB_TKM_B_Datsun_Pkm", "UK3CB_TKM_B_Hilux_Pkm", "UK3CB_TKM_B_Hilux_Open", "UK3CB_TKM_B_Pickup"];
		// Counter-Attack Objective 2
		[assault_2_1,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_2_2,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_2_3,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_vehicle_2_3,nil,_Vehicles,east,1500] spawn OKS_Rush_SpawnGroup;
		sleep 30;
		[assault_vehicle_2_3,nil,_Vehicles,east,1500] spawn OKS_Rush_SpawnGroup;
		sleep 200;

		[assault_2_4,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_2_5,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_2_6,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_vehicle_2_2,nil,_Vehicles,east,1500] spawn OKS_Rush_SpawnGroup;
		sleep 30;
		[assault_vehicle_2_2,nil,_Vehicles,east,1500] spawn OKS_Rush_SpawnGroup;
		sleep 200;

		[assault_1_7,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_1_8,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_1_9,nil,5,east,1500] spawn OKS_Rush_SpawnGroup;
		[assault_vehicle_2_1,nil,_Vehicles,east,1500] spawn OKS_Rush_SpawnGroup;
		sleep 30;
		[assault_vehicle_2_1,nil,_Vehicles,east,1500] spawn OKS_Rush_SpawnGroup;

	};

	case 5: {

		// Statics 
		[[[[8300.45,5071.08,3.8315],208,"Up",[]],[[8304.04,5079.06,0.184761],208,"Up",[]],[[8309.18,5069.88,3.83878],177,"Up",[]],[[8316.21,5081.57,2.97],184,"Up",[]],[[8317.18,5082.94,0.324997],208,"Up",[]]],[["UK3CB_ADR_O_PKM_High",[8301.27,5075,3.84436],236,[["gunner",-1,[0]]],[]],["UK3CB_TKM_O_BMP1",[8288.95,5130.65,0],232,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["Camo1",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[8299.67,5083.14,6.72795],184,"Up",[]],[[8303.32,5089.21,3.38657],208,"Up",[]],[[8300.56,5096.83,3.3875],123,"Up",[]],[[8301.28,5098.85,0.0891571],110,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8320.28,5121.51,3.19497],175,"Up",[]],[[8322.53,5124.12,0.117775],208,"Up",[]],[[8320.72,5128.46,3.3025],295,"Up",[]]],[["UK3CB_ADR_O_PKM_Low",[8323.76,5125.45,6.2849],205,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[8328.74,5082.96,2.97],155,"Up",[]],[[8330.47,5106.1,2.97],196,"Up",[]],[[8322.92,5092.61,2.97],122,"Up",[]],[[8321.94,5094.72,0.324997],208,"Up",[]],[[8335.09,5100.81,3.31297],208,"Up",[]],[[8331.29,5107.41,0.324997],208,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8299.68,5108.58,6.59047],208,"Up",[]],[[8307.55,5109.14,0.25795],271,"Up",[]],[[8310.34,5111.21,3.86267],208,"Up",[]],[[8302.53,5107.5,3.85394],86,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8370.22,5172.57,3.03742],227,"Up",[]],[[8375.28,5153.91,3.03788],293,"Up",[]],[[8359.25,5161.92,0],270,"Up",[]],[[8356.52,5172.71,0],173,"Up",[]],[[8360.48,5180.38,0],157,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8458.09,5184.4,0.0725861],255,"Up",[]],[[8452.25,5197.57,0.0600967],220,"Up",[]],[[8454.88,5201.05,0],183,"Up",[]],[[8442.18,5180.95,0],190,"Up",[]],[[8448.85,5169.77,1.4446],241,"Up",[]],[[8448.65,5175.56,3.03742],247,"Up",[]],[[8452.68,5153.37,3.06933],354,"Up",[]],[[8465.74,5160.52,0],269,"Up",[]],[[8469.8,5170.19,1.44505],257,"Middle",[]]],[["UK3CB_ADR_O_PKM_High",[8465.47,5154.41,3.0416],348,[["gunner",-1,[0]]],[]],["UK3CB_TKM_O_BMP1",[8485.15,5138.34,0],270,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["Camo1",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[8385.5,5223.75,3.0659],115,"Up",[]],[[8391.88,5205.75,3.04346],101,"Up",[]],[[8370.35,5205.55,3.04453],270,"Up",[]],[[8363.95,5223.35,3.02799],185,"Middle",[]],[[8381.18,5208.98,7.62939e-006],178,"Up",[]],[[8377.07,5218.71,0],189,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKM_O_BMP1",[8381.46,5276.31,0],222,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["Camo1",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKM_O_BMP1",[8472.94,5276.41,0],179,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["Camo1",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[8466.52,5340.8,3.38302],260,"Middle",[]],[[8470.62,5340.36,3.3558],65,"Middle",[]],[[8472.84,5346.39,3.36339],91,"Middle",[]],[[8473.7,5318.37,5.85432],160,"Middle",[]],[[8465,5320.07,5.92173],256,"Middle",[]],[[8466.03,5327.34,0],325,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8443.74,5347.85,6.72795],259,"Up",[]],[[8442.67,5337.53,6.72795],234,"Up",[]],[[8451.7,5332.49,6.71455],153,"Up",[]],[[8447.21,5337.49,3.50537],348,"Up",[]],[[8442.4,5339.18,3.38721],342,"Up",[]],[[8447.83,5349.41,3.38622],260,"Up",[]],[[8449.77,5338.95,0.0735016],114,"Middle",[]],[[8445.46,5333.4,0.085907],347,"Up",[]],[[8444.1,5349.68,0.0710297],178,"Up",[]]],[["UK3CB_TKM_O_BMP1",[8444.61,5361.05,7.62939e-006],251,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["Camo1",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[8437.01,5322.09,6.75317],240,"Up",[]],[[8445.01,5315.7,6.74715],109,"Up",[]],[[8445.53,5315.73,3.37294],334,"Middle",[]],[[8436.97,5317.79,6.75323],142,"Middle",[]],[[8442.47,5317.49,0.0331421],280,"Up",[]],[[8444.53,5324.37,3.374],21,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		/// Dynamic Triggers
		[Trigger_1,false,[0,25,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_2,false,[0,0,false,false],east,2,1,1,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_3,false,[0,0,false,false],east,1,2,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_4,false,[0,0,false,false],east,1,1,1,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
