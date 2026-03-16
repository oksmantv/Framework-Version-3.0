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

		// Trench 1
		[[[[1051.21,2321.5,0.234646],19,"Middle",[]],[[1044.31,2316.3,2.36034e-005],19,"Middle",[]],[[1052.47,2313.97,-2.47955e-005],303,"Middle",[]],[[1046.14,2313.46,0.511557],93,"Middle",[]],[[1049.26,2312.79,3.02969],200,"Middle",[]],[[1044.79,2310.51,5.16825],203,"Up",[]],[[1047.81,2309.21,4.8885],199,"Up",[]],[[1046.05,2309.92,5.13369],199,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1083.27,2297.29,0],291,"Up",[]],[[1077.72,2300.73,0],58,"Up",[]],[[1083.59,2310.92,-4.76837e-007],304,"Up",[]],[[1064.6,2319.77,9.53674e-007],298,"Middle",[]]],[["UK3CB_CW_SOV_O_LATE_T80",[1070.4,2322,2.63879],201,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[7,["kshield_unhide",1,"kdeck_unhide",1,"sideskirt_unhide",0,"fbskirt_unhide",0,"ftskirt_unhide",1,"log_unhide",0,"snorkel_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1101.79,2305.76,0],198,"Middle",[]],[[1106.09,2317.23,1.95503e-005],179,"Up",[]],[[1108.96,2317.46,2.90871e-005],349,"Up",[]],[[1112.45,2324.26,0.16245],219,"Up",[]],[[1111.02,2326.24,0.13439],337,"Up",[]],[[1116.08,2325.49,0.152851],75,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1110.24,2287.97,0.082871],239,"Up",[]],[[1112.79,2286.34,6.67572e-006],209,"Up",[]],[[1115.11,2285.52,-9.53674e-007],209,"Up",[]],[[1116.18,2297.6,-0.00313616],137,"Middle",[]],[[1122.71,2301.79,-4.76837e-007],182,"Up",[]],[[1119.67,2303.15,0.00792789],25,"Up",[]],[[1125,2300.35,-9.53674e-007],100,"Up",[]],[[1126.26,2286.37,-0.0029397],291,"Up",[]],[[1117.17,2319.97,0.116041],73,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

	};

	case 2: {

		// Trench Counter
		[[[[1444.45,2495.38,0],242,[]],[[1446.54,2502.13,0],242,[]],[[1451.2,2493.29,-9.53674e-007],242,[]],[[1448.63,2508.89,9.53674e-007],242,[]],[[1457.96,2491.2,-9.53674e-007],242,[]],[[1450.72,2515.64,0],242,[]],[[1464.71,2489.1,0],242,[]],[[1452.81,2522.4,0],242,[]]],[],[[[1302.24,2405.66,2.86102e-006],[[0,"Move"]]],[[1136.9,2304.34,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1406.28,2534.89,0],242,[]],[[1408.37,2541.64,0],242,[]],[[1413.03,2532.8,0],242,[]],[[1410.46,2548.4,0],242,[]],[[1419.79,2530.71,0],242,[]],[[1412.55,2555.15,0],242,[]],[[1426.54,2528.62,0],242,[]],[[1414.64,2561.91,0],242,[]]],[],[[[1264.07,2445.18,0],[[0,"Move"]]],[[1087.03,2335.47,1.71661e-005],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		[[],[["rhsgref_ins_bmp1",[1789.09,2203.02,-9.53674e-007],262,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["chedaki",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[1388.26,2328.61,5.72205e-006],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["rhsgref_ins_bmp1",[1871.19,2233.85,0],251,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["chedaki",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[1339.84,2382.84,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;


	};

	case 3: {


		// Kamenka.
		[[[[1889.83,2252.42,1.01387],203,"Up",[]],[[1887.62,2253.73,0.927847],246,"Up",[]],[[1886.27,2259.32,0.526791],203,"Up",[]],[[1886.37,2257.33,0.665405],283,"Up",[]],[[1886.16,2264.29,0.309033],340,"Up",[]],[[1892.66,2265.85,0.152604],248,"Up",[]],[[1891.73,2258.94,3.46525],345,"Middle",[]]],[["UK3CB_CW_SOV_O_EARLY_T80",[1969.06,2254.24,0.00679207],266,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[7,["kshield_unhide",1,"kdeck_unhide",1,"sideskirt_unhide",0,"fbskirt_unhide",1,"ftskirt_unhide",1,"log_unhide",0,"snorkel_unhide",0]]]],["UK3CB_CW_SOV_O_EARLY_T80",[1904.33,2144.85,0],314,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[7,["kshield_unhide",1,"kdeck_unhide",1,"sideskirt_unhide",1,"fbskirt_unhide",0,"ftskirt_unhide",1,"log_unhide",1,"snorkel_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1968.89,2212.85,0],0,[]],[[1973.89,2207.85,0],0,[]],[[1963.89,2207.85,4.76837e-007],0,[]],[[1978.89,2202.85,4.76837e-007],0,[]]],[],[[[1872.56,2198.15,0],[[0,"Move"],[1,"SAFE"]]],[[1769.44,2163.93,-4.76837e-007],[[0,"Move"]]],[[1973.1,2215.48,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1951.8,2289.5,0.213062],0,[]],[[1956.8,2284.5,0.213062],0,[]],[[1946.8,2284.5,0.213062],0,[]],[[1961.8,2279.5,0.213062],0,[]]],[],[[[1855.42,2261.85,0],[[0,"Move"],[1,"SAFE"]]],[[1725.47,2218.5,0],[[0,"Move"]]],[[1956.01,2292.13,0.213062],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1916.48,2320.76,0],0,[]],[[1921.48,2315.76,0],0,[]],[[1911.48,2315.76,0],0,[]],[[1926.48,2310.76,0],0,[]]],[],[[[1732.19,2457.92,0],[[0,"Move"],[1,"SAFE"]]],[[1777.78,2327.56,8.58307e-006],[[0,"Move"]]],[[1920.68,2323.39,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Mortars.
		[mortar_1,[[1718.09,3686.8,0],[1668.12,3741.36,0],[1625.18,3807.38,0],[1657,3853.55,0],[1689.47,3905.43,0],[1653.61,3884.41,0]],east,1,1,true,true,30,false] spawn OKS_ArtySupression; sleep 4;
		[mortar_2,[[1718.09,3686.8,0],[1668.12,3741.36,0],[1625.18,3807.38,0],[1657,3853.55,0],[1689.47,3905.43,0],[1653.61,3884.41,0]],east,1,1,true,true,30,false] spawn OKS_ArtySupression;

	};

	case 4: {

		// Kamenka Counter
		[[[[1986.68,2380.04,0],210,[]],[[1984.86,2386.87,0],210,[]],[[1993.51,2381.87,0],210,[]],[[1983.03,2393.7,0],210,[]],[[2000.34,2383.69,0],210,[]],[[1981.2,2400.53,0],210,[]],[[2007.17,2385.52,0],210,[]],[[1979.38,2407.37,0],210,[]]],[],[[[1907.08,2245.07,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1941.61,2401.06,3.24249e-005],202,[]],[[1938.81,2407.56,3.43323e-005],202,[]],[[1948.1,2403.86,3.62396e-005],202,[]],[[1936.02,2414.05,3.43323e-005],202,[]],[[1954.6,2406.66,3.24249e-005],202,[]],[[1933.22,2420.55,3.43323e-005],202,[]],[[1961.09,2409.45,3.43323e-005],202,[]],[[1930.43,2427.04,3.43323e-005],202,[]]],[],[[[1882.39,2255.99,3.43323e-005],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CHD_O_T72A",[2966.99,2054.07,0],259,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["FIA",1]],[7,["Tanks_Hide",0]]]]],[[[1945.12,2248.04,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 5: {

		// Pavlovo.
		[[[[1697.06,3861.66,0],131,"Up",[]],[[1707.08,3870.65,0.285721],156,"Up",[]],[[1723.28,3794.45,2.22356],248,"Up",[]],[[1727.76,3798.31,2.32457],60,"Up",[]],[[1688.65,3820.98,0.137894],87,"Up",[]],[[1688.02,3823,0.137894],72,"Up",[]],[[1692.31,3790.05,2.19258],59,"Up",[]],[[1691.68,3792.17,2.17754],59,"Up",[]]],[["UK3CB_CHD_O_T72A",[2007.05,3814.07,-1.52588e-005],228,[["driver",-1,[]],["cargo",-1,[0]],["commander",-1,[0,0]]],[[6,["FIA",1]],[7,["Tanks_Hide",0]]]],["UK3CB_CHD_O_T72A",[1649.54,3946.11,-1.52588e-005],158,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["FIA",1]],[7,["Tanks_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrol.
		[[[[1955.22,3153.69,7.62939e-006],0,[]],[[1960.22,3148.69,0],0,[]],[[1950.22,3148.69,0],0,[]],[[1965.22,3143.69,0],0,[]]],[],[[[1791.66,3060.03,0],[[0,"Move"],[1,"SAFE"]]],[[1583.29,3085.12,0],[[0,"Move"]]],[[1793,3052.41,0],[[0,"Move"]]],[[1956.11,3140.69,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1820.95,3353.67,0],0,[]],[[1825.95,3348.67,0],0,[]],[[1815.95,3348.67,0],0,[]],[[1830.95,3343.67,0],0,[]]],[],[[[1746.91,3250.19,0.000411987],[[0,"Move"],[1,"SAFE"]]],[[1565.35,3304.21,0],[[0,"Move"]]],[[1748.25,3242.57,0.000411987],[[0,"Move"]]],[[1821.85,3340.68,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1675.3,3654.69,0.000183105],0,[]],[[1680.3,3649.69,0.000183105],0,[]],[[1670.3,3649.69,0.000183105],0,[]],[[1685.3,3644.69,0.000167847],0,[]]],[],[[[1787.09,3403.43,0.000198364],[[0,"Move"],[1,"SAFE"]]],[[1551.59,3477.27,0.000732422],[[0,"Move"]]],[[1460.39,3366.8,0.0001297],[[0,"Move"]]],[[1676.2,3641.7,0.000198364],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 6: {

		// Pavlovo Attack.
		[[[[1450.62,4036.75,0],133,[]],[[1443.55,4036.53,0],133,[]],[[1450.39,4043.82,0],133,[]],[[1436.49,4036.3,0],133,[]],[[1450.17,4050.89,0],133,[]],[[1429.42,4036.07,0],133,[]],[[1449.94,4057.96,0],133,[]],[[1422.35,4035.85,0],133,[]]],[],[[[1721.67,3825.54,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 30;
		[[[[1614.27,4148.27,0],165,[]],[[1608.17,4151.85,0],165,[]],[[1617.84,4154.38,0],165,[]],[[1602.07,4155.42,0],165,[]],[[1621.42,4160.48,0],165,[]],[[1595.97,4159,0],165,[]],[[1624.99,4166.58,0],165,[]],[[1589.86,4162.57,0],165,[]]],[],[[[1731.1,3825.12,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 30;
		[[[[2236.95,3822.37,0],274,[]],[[2242.25,3827.06,0],274,[]],[[2241.64,3817.07,0],274,[]],[[2247.55,3831.74,0],274,[]],[[2246.32,3811.78,0],274,[]],[[2252.85,3836.42,0],274,[]],[[2251.01,3806.48,0],274,[]],[[2258.14,3841.11,0],274,[]]],[],[[[1738.54,3835.72,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 30;
		[[[[2343.11,3743.68,0.000274658],253,[]],[[2346.41,3749.93,0.000274658],253,[]],[[2349.36,3740.37,0.000274658],253,[]],[[2349.72,3756.18,0.000274658],253,[]],[[2355.61,3737.07,0.000274658],253,[]],[[2353.03,3762.43,0.000274658],253,[]],[[2361.86,3733.76,0.000274658],253,[]],[[2356.33,3768.68,0.000259399],253,[]]],[],[[[1735.27,3821.26,6.10352e-005],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
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
		   6 - Cargo Split - [How many teams,Procent of Cargo] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
