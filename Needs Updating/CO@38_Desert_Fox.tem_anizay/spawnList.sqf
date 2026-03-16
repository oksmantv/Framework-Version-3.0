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

	case 0: {

		["HQ","Side","Be advised, large armored column heading in from the north-west, looks to be 7 vehicles in total supported by Infantry. Good luck, out."] remoteExec ["OKS_Chat",0];
		// Counter-Attack
		[convoy_1,convoy_2,convoy_3,east,[7,["UK3CB_TKA_O_T72A","UK3CB_TKA_O_T55", "UK3CB_TKA_O_T55", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_BMP1", "UK3CB_TKM_O_MTLB_PKT", "UK3CB_TKM_O_MTLB_PKT"], 10, 30],[true,4]] spawn OKS_Convoy_Spawn;
	};

	case 1: {

		/// Push-through 1
		[[[[2274.51,1027.57,0],271,"Up",[]],[[2286.89,986.175,0],226,"Middle",[]],[[2265.6,1035.79,0],278,"Up",[]],[[2220.12,1024.42,0],98,"Up",[]],[[2226.41,1012.46,0],9,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2239.02,1100.94,0],53,"Up",[]],[[2272.01,1095.31,0],272,"Up",[]],[[2265.92,1082.92,0],228,"Up",[]],[[2293.19,1069.61,0],256,"Up",[]],[[2265.66,1123.02,0],231,"Up",[]],[[2299.45,1125.97,0],276,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2215.36,1122.05,0],221,"Up",[]],[[2212.75,1147.18,0.253128],253,"Up",[]],[[2244.74,1144.97,0],151,"Up",[]],[[2270.14,1148.12,0],218,"Middle",[]],[[2285.19,1159.57,0],304,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {
		/// Push-through 2
		[[[[2021.18,2196.03,7.67416],156,"Up",[]],[[2020.46,2194.92,1.7097],201,"Up",[]],[[1939.9,2221.21,0.000564575],72,"Up",[]],[[1985.77,2273.31,3.62273],225,"Up",[]],[[1990.05,2273.32,6.82051],161,"Middle",[]],[[1987.23,2275.43,6.79092],224,"Up",[]],[[1980.05,2277,0.000564575],244,"Up",[]]],[["UK3CB_TKA_O_BMP1",[2084.73,2216.95,1.52588e-005],268,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1961.63,2316.03,3.73979],243,"Up",[]],[[1954.58,2323.69,0.000549316],233,"Up",[]],[[1932.32,2312.15,0.000564575],106,"Middle",[]],[[1928.58,2325.75,0.000564575],77,"Middle",[]],[[1920.29,2301.79,5.26685],156,"Up",[]],[[1908.88,2292.44,0],111,"Up",[]],[[1899.86,2335.87,1.52588e-005],97,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1925.19,2408.4,0.000564575],166,"Middle",[]],[[1942.7,2380.59,0.000564575],221,"Middle",[]],[[1910.1,2421.48,0],135,"Middle",[]],[[1922.28,2432.73,-1.52588e-005],184,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1910.19,2416.27,0.000564575],160,"Middle",[]],[[1903.95,2412.49,0.000549316],283,"Middle",[]],[[1914.73,2396.76,0.000549316],344,"Middle",[]],[[1894.56,2391.17,0.898788],76,"Middle",[]],[[1888.57,2384.84,0.000549316],102,"Up",[]],[[1891.64,2393.97,1.85536],43,"Middle",[]],[[1890.24,2400.86,2.3842],156,"Middle",[]],[[1887.33,2401.93,0.000564575],9,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2067.57,2208.52,0],134,"Up",[]],[[2076.87,2209.72,0],83,"Up",[]],[[2073.66,2192.67,1.52588e-005],6,"Up",[]],[[2085.1,2191.86,3.07607],198,"Up",[]],[[2085.98,2197.53,0.41011],327,"Up",[]],[[2087.24,2194.11,0.334747],265,"Up",[]],[[2090.7,2191.91,0.142609],275,"Up",[]],[[2095.59,2204.73,1.52588e-005],294,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

			//// START OF ZONE /////
			[	Trigger_3,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					16,		// Number of Patrolling Infantry
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

	case 3: {

		[[[[1830.93,3526.94,0],200,"Auto",[]],[[1829.7,3500.2,0],123,"Middle",[]],[[1827.95,3491.94,0],188,"Auto",[]],[[1826.02,3491.81,0],192,"Auto",[]],[[1822.53,3500.29,0],325,"Middle",[]],[[1815.78,3494.21,0],180,"Auto",[]],[[1809.65,3494.74,0],164,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1780.08,3496.41,0],178,"Auto",[]],[[1781.8,3496.27,0],166,"Auto",[]],[[1781.56,3501.05,0],283,"Auto",[]],[[1772.86,3533.15,0],200,"Auto",[]],[[1770.39,3539.85,0],228,"Auto",[]],[[1755.86,3524.84,-1.52588e-005],284,"Auto",[]],[[1762.18,3515.49,0],2,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1759.45,3513.97,0.841583],271,"Auto",[]],[[1753.79,3520.33,0.840973],166,"Auto",[]],[[1751.47,3522.18,0.837357],84,"Auto",[]],[[1747.25,3509.27,0],179,"Auto",[]],[[1743.06,3509.22,-1.52588e-005],180,"Auto",[]],[[1754.73,3503.15,1.03046],166,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Artillery Base
		[[[[1755.85,3551.43,2.9798],196,"Up",[]],[[1760.34,3553.85,0],199,"Up",[]],[[1756.01,3568.39,0],87,"Up",[]],[[1744.77,3565.04,0.527664],192,"Up",[]],[[1738.31,3567.84,0.572205],157,"Up",[]],[[1739.35,3566.13,3.60272],205,"Up",[]],[[1736.15,3572.71,0],179,"Up",[]],[[1732.72,3549.09,0],330,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_BTR80a",[1728.34,3555.63,0],187,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]]]],["UK3CB_TKA_O_BTR80a",[1886.83,3679.17,-1.52588e-005],253,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]],["UK3CB_TKA_O_BMP1",[1956.91,3792.25,0],227,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		Trigger_1 setVariable ["OKS_Disable_Dynamic_Civilians",true,true];

					//// START OF ZONE /////
			[	Trigger_4,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					16,		// Number of Patrolling Infantry
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
				,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;
			//// END OF ZONE ////	
	};

	case 4: {

		Trigger_2 setVariable ["OKS_Disable_Dynamic_Civilians",true,true];

		/// Final Objective.
		[[[[1346.76,4525.3,0.659683],201,"Up",[]],[[1358.25,4531.83,1.52588e-005],194,"Up",[]],[[1345.1,4520.77,3.95155],190,"Middle",[]],[[1354.49,4534.2,1.10201],210,"Up",[]],[[1340.82,4526.51,1.12123],282,"Up",[]],[[1341.46,4510.53,4.36287],167,"Up",[]],[[1334.74,4513.34,1.52588e-005],32,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1359.41,4522.01,3.44745],190,"Middle",[]],[[1363.36,4533.14,1.26688],32,"Up",[]],[[1367.56,4526.95,0],176,"Middle",[]],[[1361.99,4513.64,1.06006],324,"Up",[]],[[1356.78,4523.33,1.28464],324,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1372.5,4516.43,4.4261],140,"Up",[]],[[1361.48,4494.9,1.00102],126,"Up",[]],[[1362.11,4503.4,0.755234],34,"Up",[]],[[1346.45,4501.6,1.04581],155,"Up",[]],[[1359.54,4498.78,1.09924],315,"Middle",[]],[[1356.53,4499.9,4.60014],190,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1314.73,4669.88,0],189,"Auto",[]],[[1312.04,4672,4.80628],189,"Auto",[]],[[1321.71,4677.19,3.50765],189,"Auto",[]],[[1313.09,4693.16,0.712166],6,"Middle",[]],[[1308.11,4695.28,0.973381],189,"Middle",[]],[[1322.5,4677.64,0.836906],83,"Auto",[]],[[1321.16,4683.17,0.597038],109,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1336.02,4677.28,0],189,"Auto",[]],[[1329.81,4666.76,1.17162],189,"Auto",[]],[[1323.62,4700.49,1.15321],146,"Middle",[]],[[1337.74,4696.15,4.2342],189,"Auto",[]],[[1338.14,4689.34,0.550652],83,"Auto",[]],[[1337.72,4684.73,0.601677],189,"Auto",[]],[[1340.36,4683.94,0.665718],27,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 5: {
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
