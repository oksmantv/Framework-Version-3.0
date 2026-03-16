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

		_Vehicles = [
			"UK3CB_ADE_O_LR_M2", 
			"UK3CB_ADE_O_Offroad_M2", 
			"UK3CB_ADE_O_Pickup_DSHKM", 
			"UK3CB_ADE_O_Hilux_Pkm", 
			"UK3CB_ADE_O_Hilux_Dshkm", 
			"UK3CB_ADE_O_Hilux_M2"
		];
		
		[Trigger_1,false,[0,8,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_2,false,[0,8,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_3,false,[0,8,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 3,600+(random 300),east,_Vehicles,120+(120)] spawn NEKY_Hunt_HuntBase;

		[east,arty_1,[11640.9,6617.02,0],7,300,300] spawn OKS_ArtyFire;
		sleep 3;
		[east,arty_2,[11640.9,6617.02,0],8,300,300] spawn OKS_ArtyFire;

		// Sentry
		[[[[12594,5699.44,3.04407],301,"Up",[]],[[12595.4,5704.8,3.06037],60,"Middle",[]],[[12597.8,5701.57,0.373357],59,"Up",[]],[[12611.7,5699.23,0.347771],223,"Middle",[]],[[12599.9,5715.06,2.95639e-005],333,"Middle",[]],[[12595.1,5713.32,3.14713e-005],305,"Middle",[]]],[["UK3CB_ADA_O_PKM_High",[12598.1,5713.42,2.86102e-006],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[12647.8,5777.2,3.25063],202,"Up",[]],[[12663.7,5770.96,3.36956],258,"Up",[]],[[12670.4,5769.72,0.785233],357,"Up",[]],[[12672.7,5762.94,0.815044],288,"Up",[]],[[12677.7,5765.31,0],175,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12646.9,5747.94,4.25328],333,"Up",[]],[[12643.5,5747.03,4.03986],333,"Up",[]],[[12642,5737.87,3.10706],275,"Up",[]],[[12644.3,5745.97,1.38031],301,"Up",[]],[[12661.9,5732.09,0],357,"Up",[]],[[12645.4,5754.37,0.17421],119,"Up",[]],[[12643.3,5736.51,0.0570269],357,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12646.9,5747.94,4.25328],333,"Up",[]],[[12643.5,5747.03,4.03986],333,"Up",[]],[[12642,5737.87,3.10706],275,"Up",[]],[[12644.3,5745.97,1.38031],301,"Up",[]],[[12661.9,5732.09,0],357,"Up",[]],[[12645.4,5754.37,0.17421],119,"Up",[]],[[12643.3,5736.51,0.0570269],357,"Up",[]],[[12672,5746.06,1.02297],280,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12665.5,5680.06,3.6866],267,"Down",[]],[[12664.9,5678.19,3.8432],267,"Up",[]],[[12671.4,5675.85,4.18971],178,"Up",[]],[[12669.4,5676.84,1.24964],347,"Up",[]],[[12672.3,5686.86,3.05405],267,"Middle",[]]],[["UK3CB_ADA_O_DSHkM_Mini_TriPod",[12672,5684.3,3.15293],265,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		// initiate
		initAttack2 = true;
		publicVariable "initAttack2";
		["hq","side","Be advised, column of Takistani vehicles inbound from the west, it's led by a T-80 tank. Defend the village and neutralize the threat, ETA 3 minutes, HQ out."] remoteExec ["OKS_Chat",0];
		sleep 130;

		private _CounterArray = [];
		/// Counter-Attack
		[convoy_1,convoy_2,convoy_3,independent,
		[6,
		[
			"UK3CB_CW_SOV_O_EARLY_T80", 
			"UK3CB_TKM_O_Ural_Covered", 
			"UK3CB_TKM_O_V3S_Closed", 
			"UK3CB_TKM_O_V3S_Open",
			"UK3CB_TKM_O_UAZ_Open", 			
			"UK3CB_TKM_O_UAZ_Closed"
		], 5, 30],[true,6],_CounterArray, false, false] spawn OKS_Convoy_Spawn;

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
