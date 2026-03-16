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

		[Trigger_1,false,[0,14,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Sentries Trench 1
		[[[[6987.46,1704.3,-1.71661e-005],90,"Up",[]],[[6986.81,1703.26,-2.76566e-005],104,"Up",[]],[[6985.93,1702.21,-9.53674e-006],113,"Up",[]],[[6991.35,1708.57,-4.3869e-005],41,"Middle",[]],[[6997.27,1709.52,2.46672],102,"Middle",[]],[[6997.66,1710.25,2.58055],102,"Middle",[]],[[7001.24,1715.31,0],68,"Middle",[]],[[7001.74,1713.89,0],91,"Middle",[]],[[7002.42,1712.41,4.76837e-006],91,"Middle",[]],[[7001.77,1707.67,0],91,"Up",[]],[[7002.34,1709.6,7.43866e-005],91,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6965.16,1721.05,0.605911],235,"Middle",[]],[[6969.23,1719.12,0.378664],208,"Middle",[]],[[6970.13,1721.08,0.42582],102,"Up",[]],[[6969.98,1722.15,0.460779],82,"Up",[]],[[6967.07,1723.67,0.368232],73,"Up",[]],[[6964.76,1724.73,0.302482],46,"Up",[]],[[6974.03,1710.34,-1.52588e-005],112,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6936.28,1727.82,0],177,"Up",[]],[[6935.06,1728.39,2.76566e-005],203,"Up",[]],[[6936.54,1732.12,-9.53674e-007],11,"Up",[]],[[6946.85,1728.42,3.52859e-005],206,"Up",[]],[[6948.58,1736.14,0],163,"Middle",[]],[[6954.93,1733.45,1.90735e-005],260,"Middle",[]],[[6952.64,1738.46,0],34,"Up",[]],[[6953.47,1737.83,0],65,"Up",[]],[[6952.46,1720.34,3.33786e-005],203,"Up",[]],[[6949.52,1721.86,-5.72205e-005],212,"Up",[]],[[6947.48,1723.36,-0.000123978],216,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Sentries Trench 2
		[[[[6827.14,1445.51,0.000108719],357,"Middle",[]],[[6828.36,1445.44,1.90735e-005],357,"Middle",[]],[[6830.21,1445.03,1.90735e-005],357,"Up",[]],[[6831.56,1444.06,2.86102e-005],12,"Up",[]],[[6832.93,1442.87,1.90735e-005],7,"Up",[]],[[6824.06,1439.03,-0.196526],301,"Middle",[]],[[6826.53,1427.49,0.0467625],2,"Up",[]],[[6820.81,1420.29,-0.0188169],82,"Up",[]],[[6804.23,1419.97,-9.53674e-007],287,"Middle",[]],[[6804.87,1421.07,-9.53674e-007],287,"Middle",[]],[[6804.95,1422.31,-0.0372314],287,"Middle",[]],[[6807.42,1425.61,-0.00227737],339,"Up",[]],[[6806.32,1424.89,-0.058876],339,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6830.67,1394.59,7.62939e-006],352,"Up",[]],[[6835.03,1403.83,0.381203],262,"Middle",[]],[[6836.95,1404.54,0.473383],352,"Up",[]],[[6838.29,1403.31,0.442614],56,"Up",[]],[[6838.56,1400.54,0.279154],60,"Up",[]],[[6834.49,1399.85,0.309856],180,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6838.54,1367.23,0.42301],220,"Middle",[]],[[6841.13,1367.9,0.436626],68,"Up",[]],[[6841.72,1364.93,0.347189],98,"Up",[]],[[6841.06,1370.91,0.375975],76,"Up",[]],[[6839.57,1371.54,0.33873],23,"Up",[]],[[6836.08,1368.62,0.36627],11,"Middle",[]],[[6834.66,1354.42,1.33514e-005],95,"Up",[]],[[6830.75,1354.2,-1.71661e-005],237,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Artillery 1
		[[[[6586.54,1343.72,0.569416],73,"Auto",[]],[[6585.99,1340.98,0.56665],73,"Auto",[]],[[6584.73,1339.18,0.655302],86,"Auto",[]],[[6581.95,1336.07,0.900917],73,"Middle",[]],[[6587.35,1354.25,0.845339],73,"Middle",[]],[[6586.87,1358.67,0.91156],73,"Middle",[]],[[6594.73,1350.74,0.982306],92,"Middle",[]],[[6579.56,1338.05,0],25,"Middle",[]],[[6565.95,1334.89,0],2,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6585.91,1366.03,0.822578],73,"Middle",[]],[[6582.9,1379.98,1.16781],73,"Middle",[]],[[6592.38,1376.16,1.02213],86,"Middle",[]],[[6583.08,1367.29,0],358,"Middle",[]],[[6577.22,1352.22,0],314,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6580.66,1384.44,1.00083],73,"Middle",[]],[[6575.64,1389.56,1.0378],8,"Middle",[]],[[6573.95,1373.05,0],181,"Middle",[]],[[6567.78,1388.85,0],96,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6557.9,1333.54,0.68622],88,"Middle",[]],[[6547.81,1334.88,0.68622],154,"Middle",[]],[[6545.55,1343.18,0.68622],63,"Middle",[]],[[6543.89,1351.22,0.68622],20,"Middle",[]],[[6533.35,1341.69,1.05554],262,"Middle",[]],[[6538.93,1370.33,0.68622],8,"Middle",[]],[[6544.52,1382.16,0.835489],68,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		{
			[east,_X,getpos target_1,8,300,180] spawn OKS_ArtyFire; sleep 5;
		} foreach [arty_1,arty_2,arty_3];
	};

	case 2: {

		// Trench 1 Counter-Attack
		{
			[_X,"rush",4,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
			sleep 10;
		} foreach [[6682.68,1697.61,0],[6662.02,1634.88,0],[6792.53,1357.23,0],[6717.33,1479,0]];

		[[],[["UK3CB_ARD_O_GAZ_Vodnik_PKT",[6552.44,1475.98,0],32,[["driver",-1,[]],["commander",-1,[2]],["turret",-1,[3]]],[[6,["ARD",1]]]]],[[[6574.71,1504.9,-4.76837e-006],[[0,"Move"]]],[[6668.02,1557.76,-5.72205e-006],[[0,"Move"]]],[[6796.65,1627.68,-4.76837e-006],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 30;
		[[],[["UK3CB_ARD_O_BMP1",[6528.16,1465.15,-1.90735e-006],82,[["driver",-1,[]],["cargo",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[[[6630.61,1437.51,1.62125e-005],[[0,"Move"]]],[[6811.28,1487.59,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {

		// Trench 2 Counter-Attack
		{
			[_X,"rush",4,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
			sleep 10;
		} foreach[[6573.69,1290.48,0],[6693.38,1200.25,0],[6620.77,1215.41,0]];
		sleep 60;
		[[],[["UK3CB_ARD_O_Hilux_M2",[6357.14,1348.83,4.76837e-006],33,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[[[6472.87,1440.62,6.67572e-006],[[0,"Move"]]],[[6563.19,1439.43,5.05447e-005],[[0,"Move"]]],[[6668.28,1441.51,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
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
