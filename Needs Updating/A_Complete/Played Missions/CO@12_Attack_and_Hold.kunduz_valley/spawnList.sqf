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

		// Patrol
		[[[[6148.1,1162.51,1.90735e-006],0,[]]],[],[[[6144.07,1195.36,0],[[0,"Move"],[1,"SAFE"]]],[[6089.64,1191.49,0],[[0,"Move"]]],[[6099.38,1168.6,0],[[0,"Move"]]],[[6138.36,1159.34,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6093.39,1190.92,0],0,[]]],[],[[[6106.28,1227.32,0],[[0,"Move"],[1,"SAFE"]]],[[6088.29,1247.12,1.90735e-006],[[0,"Move"]]],[[6048.42,1211.54,0],[[0,"Move"]]],[[6083.64,1187.75,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6137.91,1257.08,0],231,[]]],[],[[[6117.96,1233.8,0],[[0,"Move"],[1,"SAFE"]]],[[6131.2,1191.96,0],[[0,"Move"]]],[[6146.11,1236.23,0],[[0,"Move"]]],[[6146.48,1251.45,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6110.31,1262.23,0],0,[]]],[],[[[6095.63,1292.1,0],[[0,"Move"],[1,"SAFE"]]],[[6055.09,1285.96,0],[[0,"Move"]]],[[6050.25,1249.21,0],[[0,"Move"]]],[[6108.61,1257.97,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6051.29,1209.11,0],103,[]]],[],[[[6080.01,1178.07,0],[[0,"Move"],[1,"SAFE"]]],[[6110.65,1218.39,0],[[0,"Move"]]],[[6086.25,1240.2,0],[[0,"Move"]]],[[6052.51,1210.99,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		// Sentries
		[[[[6158.21,1152.17,3.64567],167,"Up",[]],[[6155.57,1151.02,3.69398],185,"Up",[]],[[6105.67,1148.15,5.45744],105,"Up",[]],[[6092.82,1160.5,4.98099],41,"Up",[]],[[6080.05,1181.66,0],70,"Middle",[]],[[6124.56,1186.19,0],346,"Middle",[]],[[6087.96,1155.69,8.15543],326,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6107.98,1194.63,4.09551],171,"Middle",[]],[[6146.15,1210.15,3.99392],139,"Middle",[]],[[6119.19,1208.76,0],216,"Middle",[]],[[6063.65,1209.54,4.16999],111,"Up",[]],[[6051.6,1202.54,0.0876923],111,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6156.54,1235.5,6.97905],167,"Up",[]],[[6153.56,1265.93,3.67284],224,"Up",[]],[[6151.62,1260.44,3.725],190,"Up",[]],[[6121,1259,3.31007],172,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6087.56,1262.04,0],185,"Middle",[]],[[6094.21,1241.53,0],196,"Middle",[]],[[6075.8,1242.92,0],200,"Middle",[]],[[6079.41,1213.76,4.17003],78,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6052.39,1232.09,3.66774],115,"Up",[]],[[6049.06,1229.3,3.66695],169,"Up",[]],[[6051.59,1235.66,3.64831],233,"Up",[]],[[6046.88,1235.59,0.570181],175,"Up",[]],[[6046.5,1232.76,3.65219],325,"Up",[]],[[6045.07,1233.36,6.60386],25,"Up",[]],[[6049.73,1234.36,6.60075],323,"Up",[]],[[6028.85,1224.72,0.675634],46,"Up",[]],[[6045.88,1246.28,0],111,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6058.01,1253.92,0.92487],197,"Up",[]],[[6060.43,1259.14,0.824408],233,"Up",[]],[[6059.97,1264.23,0.429264],229,"Up",[]],[[6051.3,1261.94,0.144192],77,"Up",[]],[[6044.45,1261.53,0.917269],134,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		[rush_1,"rush",1,east,1500,[],EndRushSpawns] spawn OKS_Lambs_Spawner;
		[rush_2,"rush",2,east,1500,[],EndRushSpawns] spawn OKS_Lambs_Spawner;
		[rush_3,"rush",1,east,1500,[],EndRushSpawns] spawn OKS_Lambs_Spawner;
		[rush_4,"rush",2,east,1500,[],EndRushSpawns] spawn OKS_Lambs_Spawner;

	};

	case 2: {

		sleep 60;

		private _CounterArray = [];
		/// Counter-Attack
		[convoy_1,convoy_2,convoy_3,east,
		[4,
		[
			"UK3CB_ADE_O_BRDM2", 
			"UK3CB_ADE_O_Hilux_Open",
			"UK3CB_ADE_O_Hilux_Open",
			"UK3CB_ADE_O_Hilux_Pkm", 
			"UK3CB_ADE_O_LR_Open"
		], 4, 15],[true,6],_CounterArray, false, false] spawn OKS_Convoy_Spawn;

		waitUntil{
			sleep 10;
			{
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _X == 0
			} count _CounterArray == count _CounterArray
		};
		CounterComplete = true;
		publicVariable "CounterComplete";

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
