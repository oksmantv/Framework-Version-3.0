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
		// Roadblock
		// Large Patrol
		[[[[6898.02,11947.9,0],0,[]],[[6903.02,11942.9,-7.62939e-006],0,[]],[[6893.02,11942.9,0],0,[]],[[6908.02,11937.9,0],0,[]],[[6888.02,11937.9,0],0,[]],[[6913.02,11932.9,0],0,[]],[[6883.02,11932.9,0],0,[]],[[6918.02,11927.9,7.62939e-006],0,[]]],[],[[[6860.54,12033.2,0],[[0,"Move"],[1,"SAFE"]]],[[7008.88,12046.7,0],[[0,"Move"]]],[[7287.07,12026.2,0],[[0,"Move"]]],[[7311.89,12258.4,0],[[0,"Move"]]],[[7304.17,12433.2,0],[[0,"Move"]]],[[7002,12394,0],[[0,"Move"]]],[[6842.65,12341.6,0],[[0,"Move"]]],[[6857.53,12151.4,3.8147e-006],[[0,"Move"]]],[[6720.79,12068.1,0],[[0,"Move"]]],[[6791.92,11949,0],[[0,"Move"]]],[[6889.3,11950.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Sentries
		[[[[6859.86,12054.2,0],221,"Up",[]],[[6857.92,12063.2,3.8147e-006],327,"Up",[]],[[6848.49,12063.6,0],52,"Up",[]],[[6847.97,12059.5,0],181,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// One man patrol
		[[[[6851.78,12058.9,0],221,[]]],[],[[[6855.5,12040.1,0],[[0,"Move"],[1,"SAFE"],[5,"LIMITED"]]],[[6873.6,11984.6,9.15527e-005],[[0,"Move"]]],[[6875.92,11990.9,0.000175476],[[0,"Move"]]],[[6861.13,12038.9,0.00012207],[[0,"Move"]]],[[6856.2,12060,0],[[0,"Cycle"],[6,[20,20,20]]]]]] call GW_Common_fnc_spawnGroup;		
	};

	case 2: {

		sleep 60;

		// QRF Convoy
		_QRFArray = [];
		[spawn_1,waypoint_1,end_1,east,[2,["UK3CB_FIA_I_Pickup"], 9, 25],[true,4],_QRFArray, false, false] spawn OKS_Convoy_Spawn;

		sleep 10;
		[true, "AmbushConvoyTask", ["The QRF is inbound from the east. Ambush the vehicles and take the supplies & equipment.", "Ambush QRF", "QRF"], objectParent (leader (_QRFArray select 0)), 1, 3, true,"destroy"] call BIS_fnc_taskCreate;

		waitUntil { sleep 5; {{Alive _X || [_X] call ace_common_fnc_isAwake} count units _X < 1} count _QRFArray == count _QRFArray};	
		["AmbushConvoyTask","SUCCEEDED"] call BIS_fnc_taskSetState;
		sleep 5;
		ConvoyAmbushComplete = true;
		publicVariable "ConvoyAmbushComplete";
	};

	case 3: {

		// Village Equipment
		// Sentries
		[[[[7661.68,11424.6,0.206863],134,"Up",[]],[[7651.38,11421.4,0],166,"Up",[]],[[7635.37,11416.1,0.228287],289,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Small Patrols
		[[[[7304.31,11620.6,0],0,[]],[[7309.31,11615.6,0],0,[]],[[7299.31,11615.6,0],0,[]],[[7314.31,11610.6,0],0,[]]],[],[[[7376.25,11646,0],[[0,"Move"],[1,"SAFE"]]],[[7502.43,11642.5,1.52588e-005],[[0,"Move"]]],[[7504.35,11533.2,0],[[0,"Move"]]],[[7335.47,11601,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Large Patrols
		[[[[7551.11,11335.7,0],0,[]],[[7556.11,11330.7,0],0,[]],[[7546.11,11330.7,0],0,[]],[[7561.11,11325.7,0],0,[]],[[7541.11,11325.7,0],0,[]],[[7566.11,11320.7,0],0,[]],[[7536.11,11320.7,0],0,[]],[[7571.11,11315.7,0],0,[]]],[],[[[7560.09,11420.8,0],[[0,"Move"],[1,"SAFE"]]],[[7546.4,11449.7,0],[[0,"Move"]]],[[7597.68,11473.9,4.57764e-005],[[0,"Move"]]],[[7675.13,11536.4,6.10352e-005],[[0,"Move"]]],[[7744.32,11402.1,-0.000518799],[[0,"Move"]]],[[7683.09,11304.1,-3.05176e-005],[[0,"Move"]]],[[7552.79,11321.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7756.37,11398,0],0,[]],[[7761.37,11393,1.52588e-005],0,[]],[[7751.37,11393,0],0,[]],[[7766.37,11388,3.21527],0,[]],[[7746.37,11388,1.52588e-005],0,[]],[[7771.37,11383,1.52588e-005],0,[]],[[7741.37,11383,1.52588e-005],0,[]],[[7776.37,11378,1.52588e-005],0,[]]],[],[[[7760.02,11479.2,0],[[0,"Move"],[1,"SAFE"]]],[[7770.36,11566.2,0],[[0,"Move"]]],[[7699.93,11608.6,0],[[0,"Move"]]],[[7565.9,11491.3,0],[[0,"Move"]]],[[7499.2,11372.7,1.52588e-005],[[0,"Move"]]],[[7598.2,11266,0],[[0,"Move"]]],[[7758.05,11383.9,3.22571],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		sleep 30;
		[[[[7258.91,11559.8,0],65,[]],[[7256.5,11553.1,0],65,[]],[[7252.27,11562.2,0],65,[]],[[7254.08,11546.5,0],65,[]]],[],[[[7479.73,11464.4,0],[[0,"Move"],[1,"SAFE"]]],[[7380.48,11434.4,0],[[0,"Move"]]],[[7294.69,11477.5,0],[[0,"Move"]]],[[7254.32,11523.3,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	
	};

	case 4: {

		// Military Outpost
		{
			[_X, independent, 0.25,true,false, 400, 400, nil] spawn OKS_Enemy_Sentry
		} foreach [sentry_1,sentry_2,sentry_3,sentry_4,sentry_5,sentry_6,sentry_7,sentry_8];

		// Large Patrol
		[[[[7412.44,11941.7,0],0,[]],[[7417.44,11936.7,-1.52588e-005],0,[]],[[7407.44,11936.7,0],0,[]],[[7422.44,11931.7,0],0,[]],[[7402.44,11931.7,0],0,[]],[[7427.44,11926.7,0],0,[]],[[7397.44,11926.7,-1.52588e-005],0,[]],[[7432.44,11921.7,0],0,[]]],[],[[[7538.89,11877,0],[[0,"Move"],[1,"SAFE"]]],[[7717.7,11921.9,0],[[0,"Move"]]],[[7794.46,11943.1,0],[[0,"Move"]]],[[7760.16,12010.9,0],[[0,"Move"]]],[[7638.5,12058.3,1.52588e-005],[[0,"Move"]]],[[7601.76,12166.9,0],[[0,"Move"]]],[[7493.16,12139.9,0],[[0,"Move"]]],[[7454.32,12319.8,0],[[0,"Move"]]],[[7332.28,12477.2,0],[[0,"Move"],[6,[120,120,120]]]],[[7250.71,12398.8,0],[[0,"Move"]]],[[7273.83,12158,0],[[0,"Move"]]],[[7384.95,11961.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
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
