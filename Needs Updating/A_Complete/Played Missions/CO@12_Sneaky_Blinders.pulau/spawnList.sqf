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

		[Group officer_1,getMarkerPos "respawn_west",east,false,nil,false] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";
		[Group officer_2,getMarkerPos "respawn_west",east,false,nil,false] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";

		[Trigger_1,false,[0,0,false,false],east,3,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		[[[[1826.03,1030.54,4.76837e-007],273,[]],[[1826.84,1031.59,0],273,[]],[[1826.59,1029.07,0],273,[]],[[1828.12,1031.87,0],273,[]],[[1827.23,1030.2,0],273,[]],[[1828.43,1030.22,4.76837e-007],273,[]],[[1828.18,1029.08,4.76837e-007],273,[]],[[1827.97,1028.2,0],273,[]]],[],[[[1744.91,1053.82,0],[[0,"Move"],[1,"SAFE"],[4,"WEDGE"]]],[[1542.2,1110.86,4.29153e-006],[[0,"Move"]]],[[1468.27,1192.88,-9.53674e-007],[[0,"Move"]]],[[1558.31,1238.86,1.62125e-005],[[0,"Move"]]],[[1729.23,1200.37,-1.95503e-005],[[0,"Move"]]],[[1818.96,1127.13,0.000135422],[[0,"Move"]]],[[1831.49,1028.48,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1259.26,1246.86,0],316,[]],[[1260.57,1247.07,0],316,[]],[[1258.67,1245.41,0],316,[]],[[1261.7,1246.4,0],316,[]],[[1259.91,1245.8,0],316,[]],[[1260.79,1244.99,4.76837e-007],316,[]],[[1259.83,1244.33,4.76837e-007],316,[]],[[1259.07,1243.83,0],316,[]]],[],[[[1212.23,1296.22,1.37547],[[0,"Move"],[1,"SAFE"],[4,"WEDGE"]]],[[1134.77,1456.12,0],[[0,"Move"]]],[[1164.9,1557.45,0],[[0,"Move"]]],[[1242.32,1481.94,0],[[0,"Move"]]],[[1270.19,1392.95,0],[[0,"Move"]]],[[1404.42,1275.46,0],[[0,"Move"]]],[[1261.82,1241.63,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2091.66,1081.56,0],305,[]],[[2092.9,1082.03,0],305,[]],[[2091.36,1080.02,0],305,[]],[[2094.14,1081.59,0],305,[]],[[2092.5,1080.64,0],305,[]],[[2093.52,1080.02,0],305,[]],[[2092.72,1079.19,0],305,[]],[[2092.07,1078.55,0],305,[]]],[],[[[2018.15,1099.98,0],[[0,"Move"],[1,"SAFE"],[4,"WEDGE"]]],[[1940.07,1226.64,0],[[0,"Move"]]],[[1961.59,1336.98,1.90735e-006],[[0,"Move"]]],[[2034.46,1301.24,0],[[0,"Move"]]],[[2057.21,1210,9.53674e-007],[[0,"Move"]]],[[2136.61,1167.34,0],[[0,"Move"]]],[[2095.2,1076.94,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2338.66,1271.58,0],273,[]],[[2339.47,1272.63,0],273,[]],[[2339.22,1270.11,0],273,[]],[[2340.75,1272.91,0],273,[]],[[2339.86,1271.24,0],273,[]],[[2341.06,1271.26,0],273,[]],[[2340.81,1270.13,4.76837e-007],273,[]],[[2340.6,1269.24,4.76837e-007],273,[]]],[],[[[2187.84,1330.15,0],[[0,"Move"],[1,"SAFE"],[4,"WEDGE"]]],[[2076.68,1288.25,0],[[0,"Move"]]],[[1950.52,1373.38,0],[[0,"Move"]]],[[2167.11,1461.17,0],[[0,"Move"]]],[[2288.86,1428.96,0],[[0,"Move"]]],[[2302.09,1343.83,0],[[0,"Move"]]],[[2344.11,1269.52,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1786.45,1287.51,0],289,[]],[[1787.51,1288.3,0],289,[]],[[1786.58,1285.95,0],289,[]],[[1788.82,1288.22,0],289,[]],[[1787.51,1286.86,0],289,[]],[[1788.66,1286.55,0],289,[]],[[1788.11,1285.53,0],289,[]],[[1787.67,1284.73,0],289,[]]],[],[[[1718.76,1353.94,9.53674e-007],[[0,"Move"],[1,"SAFE"],[4,"WEDGE"]]],[[1675.74,1422.97,0],[[0,"Move"]]],[[1865.43,1419.76,0],[[0,"Move"]]],[[1788.27,1509.78,0],[[0,"Move"]]],[[1971.53,1600.61,0],[[0,"Move"]]],[[2035.03,1520.23,0],[[0,"Move"]]],[[1791.12,1284.04,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2227.84,1512.74,2.38419e-007],273,[]],[[2228.64,1513.79,0],273,[]],[[2228.39,1511.27,0],273,[]],[[2229.93,1514.08,2.38419e-007],273,[]],[[2229.03,1512.4,2.38419e-007],273,[]],[[2230.23,1512.42,2.38419e-007],273,[]],[[2229.98,1511.29,2.38419e-007],273,[]],[[2229.78,1510.4,1.19209e-006],273,[]]],[],[[[2115.9,1546.03,1.02709],[[0,"Move"],[1,"SAFE"],[4,"WEDGE"]]],[[2024.95,1610.8,0],[[0,"Move"]]],[[1954.8,1670.58,9.53674e-007],[[0,"Move"]]],[[2034.51,1726.53,0],[[0,"Move"]]],[[2137.14,1641.64,0],[[0,"Move"]]],[[2220.76,1609.33,0.000134945],[[0,"Move"]]],[[2233.29,1510.68,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2026.34,1742.09,0],73,[]],[[2025.95,1740.82,0],73,[]],[[2025.31,1743.27,0],73,[]],[[2024.85,1740.11,0],73,[]],[[2025.1,1741.99,0],73,[]],[[2023.99,1741.56,0],73,[]],[[2023.82,1742.71,0],73,[]],[[2023.71,1743.61,0],73,[]]],[],[[[2063.59,1854.61,9.53674e-007],[[0,"Move"],[1,"SAFE"],[4,"WEDGE"]]],[[2191.42,1847.15,0],[[0,"Move"]]],[[2332.44,1740.08,0],[[0,"Move"]]],[[2311.15,1618.61,6.10119],[[0,"Move"]]],[[2221.35,1636.36,0],[[0,"Move"]]],[[2125,1660.92,0],[[0,"Move"]]],[[2020.52,1742.13,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1642.33,1335.21,0],316,[]],[[1643.64,1335.42,0],316,[]],[[1641.74,1333.76,0],316,[]],[[1644.77,1334.75,0],316,[]],[[1642.98,1334.14,0],316,[]],[[1643.86,1333.33,0],316,[]],[[1642.91,1332.68,0],316,[]],[[1642.15,1332.18,0],316,[]]],[],[[[1496.05,1371.55,0.644429],[[0,"Move"],[1,"SAFE"],[4,"WEDGE"]]],[[1297.51,1598.22,0],[[0,"Move"]]],[[1466.31,1623.94,0],[[0,"Move"]]],[[1691.89,1634.75,0],[[0,"Move"]]],[[1578.99,1528.76,0],[[0,"Move"]]],[[1642.35,1440.05,0],[[0,"Move"]]],[[1644.9,1329.97,1.17615],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2459.3,1917,9.53674e-007],273,[]],[[2460.1,1918.05,9.53674e-007],273,[]],[[2459.86,1915.53,9.53674e-007],273,[]],[[2461.39,1918.34,0],273,[]],[[2460.49,1916.66,9.53674e-007],273,[]],[[2461.69,1916.68,9.53674e-007],273,[]],[[2461.45,1915.55,9.53674e-007],273,[]],[[2461.24,1914.66,1.90735e-006],273,[]]],[],[[[2263.48,1918.67,2.38419e-007],[[0,"Move"],[1,"SAFE"],[4,"WEDGE"]]],[[2070.27,1918.67,0],[[0,"Move"]]],[[2058.8,2062.03,0],[[0,"Move"]]],[[2155.41,2122.47,1.96438],[[0,"Move"]]],[[2286.42,2135.7,0],[[0,"Move"]]],[[2365.38,2026.3,0],[[0,"Move"]]],[[2464.75,1914.94,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1772.24,1589.77,0],349,[]],[[1773.46,1589.24,0],349,[]],[[1770.96,1588.87,0],349,[]],[[1774.05,1588.07,0],349,[]],[[1772.21,1588.53,0],349,[]],[[1772.52,1587.37,0],349,[]],[[1771.36,1587.33,0],349,[]],[[1770.45,1587.31,1.90735e-006],349,[]]],[],[[[1796.89,1689.59,0],[[0,"Move"],[1,"SAFE"],[4,"WEDGE"]]],[[1779.97,1763.95,0],[[0,"Move"]]],[[1835.57,1855.2,9.53674e-007],[[0,"Move"]]],[[1946.07,1874.44,1.90735e-006],[[0,"Move"]]],[[1961.04,1753.25,0],[[0,"Move"]]],[[1881.2,1623.51,0],[[0,"Move"]]],[[1771.58,1583.98,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {
	};

	case 3: {
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
