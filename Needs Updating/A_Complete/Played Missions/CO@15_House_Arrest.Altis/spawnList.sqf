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

		[Trigger_1,false,[0,8,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
				[Trigger_3,false,[0,8,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Forest
		[[[[24189.1,22633.3,0],305,"Up",[]],[[24181.8,22628.5,0],320,"Up",[]],[[24181.9,22617.6,0],313,"Up",[]],[[24195,22640.3,0],326,"Up",[]],[[24163,22611,0],345,"Up",[]],[[24204.8,22653.8,4.57764e-005],325,"Up",[]],[[24159.1,22602.4,0],345,"Up",[]],[[24213.1,22655,0.0001297],317,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[23810.9,22376.7,0],29,"Up",[]],[[23805.4,22383.3,0],44,"Up",[]],[[23794.6,22382.1,0],37,"Up",[]],[[23818.1,22365.9,0],50,"Up",[]],[[23786,22400.3,0],69,"Up",[]],[[23835.4,22356,0],32,"Up",[]],[[23777.1,22403.1,0],69,"Up",[]],[[23839.1,22357.7,0],41,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;


		// Vehicles
		[[],[["UK3CB_CCM_O_Hilux_Pkm",[22658.1,21630,-3.43323e-005],69,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],["UK3CB_CCM_O_Hilux_Pkm",[23215.1,21834.6,-3.43323e-005],58,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],["UK3CB_CCM_O_Hilux_Pkm",[23586.3,21714.2,-3.8147e-005],21,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		// First houses.
		[[[[23639.3,21802.4,3.8147e-006],29,"Up",[]],[[23644.1,21801.8,0],44,"Up",[]],[[23560.9,21829.3,0.792114],56,"Up",[]],[[23636.2,21793.7,0],292,"Up",[]],[[23559.2,21832.5,0.657063],69,"Up",[]],[[23652.8,21784.5,0.383869],32,"Up",[]],[[23558.3,21834.3,1.44832],70,"Up",[]],[[23651.1,21790.9,0],41,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[Trigger_2,false,[0,12,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;


		// Second houses
		[[[[23251.1,21823.1,3.32074],74,"Middle",[]],[[23256.7,21827.2,3.20364],29,"Up",[]],[[23255.4,21828.6,3.32261],44,"Up",[]],[[23254.7,21822.3,0.247501],292,"Up",[]],[[23241.2,21824.1,3.8147e-006],127,"Up",[]],[[23248.5,21828.1,0.226967],41,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[23215.7,21842.2,0],56,"Up",[]],[[23213.1,21845,0],69,"Up",[]],[[23211.3,21847.8,0],70,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[23180,21809,0.292959],146,"Up",[]],[[23189.9,21798.9,-1.90735e-006],304,"Up",[]],[[23185.7,21816,0.244406],39,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[23221.2,21780.9,0.404911],93,"Up",[]],[[23218,21777.1,3.8147e-006],316,"Up",[]],[[23229.2,21777,0.360828],67,"Up",[]],[[23233.6,21770.9,0.29874],180,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[23173.8,21795,0.99456],312,"Up",[]],[[23167.7,21796.1,0.65354],79,"Up",[]],[[23178.5,21785.5,0.535177],70,"Up",[]],[[23173.5,21790.4,0.722841],70,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;


	};

	case 3: {

		// Third.
		[[[[22676.5,21666.5,0],85,"Up",[]],[[22676.8,21662.7,0],88,"Up",[]],[[22641.8,21665.7,0],86,"Up",[]],[[22665.6,21644.9,3.23444],85,"Up",[]],[[22652.2,21656.9,0],1,"Up",[]],[[22671.6,21686.9,0.629484],95,"Up",[]],[[22659.7,21650,0],0,"Up",[]],[[22650.3,21671.2,0.493582],127,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[22637.4,21665.6,0.428938],77,"Up",[]],[[22642.6,21671.3,1.31248],0,"Up",[]],[[22635.7,21671.8,0.830612],269,"Up",[]],[[22608.4,21667.7,0.265743],102,"Up",[]],[[22592,21640.1,0.395102],68,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;


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
