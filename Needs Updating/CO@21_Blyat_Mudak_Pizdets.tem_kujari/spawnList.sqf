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

private _Vehicles = ["UK3CB_ARD_O_BMP1", "UK3CB_ARD_O_BMP2", "UK3CB_ARD_O_BRM1K", "UK3CB_ARD_O_BTR80a", "UK3CB_ARD_O_MTLB_Cannon", "UK3CB_ARD_O_MTLB_BMP"];

switch (_case) do {

	case 1: {

		[east,arty_1, getpos target_1,7,300,180] spawn OKS_ArtyFire;
		[east,arty_2, getpos target_2,7,300,180] spawn OKS_ArtyFire;
		[east,arty_3, getpos target_3,7,300,180] spawn OKS_ArtyFire;

		[arty_1,"Silence Artillery","Artillery","You have been tasked with disrupting the enemy support assets along the area of operations. The %1 nests need to be silenced!","destroy",nil,true,true] spawn OKS_Destroy_Task;
		[arty_2,"Silence Artillery","Artillery","You have been tasked with disrupting the enemy support assets along the area of operations. The %1 nests need to be silenced!","destroy",nil,true,true] spawn OKS_Destroy_Task;
		[arty_3,"Silence Artillery","Artillery","You have been tasked with disrupting the enemy support assets along the area of operations. The %1 nests need to be silenced!","destroy",nil,true,true] spawn OKS_Destroy_Task;

		[Trigger_1,false,[20,20,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Vehicles
		[[],[["UK3CB_ADA_O_BMP1",[546.514,9571.91,4.76837e-007],351,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_ADA_O_BMP1",[502.778,9481.98,9.53674e-007],357,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Hunt
		[Base_1, Base_1, NEKY_Hunt_Trigger_1, 3,600+(random 300),east,selectRandom _Vehicles,120+(120)] spawn NEKY_Hunt_HuntBase;
		[Base_4, Base_4, NEKY_Hunt_Trigger_1, 3,600+(random 300),east,5,120+(120)] spawn NEKY_Hunt_HuntBase;

		// Sentries
		[[[[451.389,9572.6,0],0,"Up",[]],[[431.342,9562.53,0],0,"Up",[]],[[432.384,9602.23,0],0,"Up",[]],[[413.934,9605.37,0],11,"Up",[]],[[432.29,9589.87,0],80,"Up",[]],[[472.394,9611.29,0],349,"Up",[]],[[504.118,9586.35,0],357,"Up",[]],[[505.082,9595.94,0],332,"Middle",[]],[[486.678,9567.35,4.76837e-007],10,"Up",[]],[[481.879,9567.58,0],347,"Up",[]],[[470.974,9558.42,0],292,"Up",[]],[[452.732,9561.07,0.00636053],50,"Up",[]],[[465.74,9558.35,-0.0139513],299,"Middle",[]],[[523.047,9568.23,-0.00180435],16,"Middle",[]],[[536.51,9569.09,1.95503e-005],284,"Middle",[]],[[524.675,9564.68,-1.90735e-006],84,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {

		[Trigger_2,false,[40,20,false,false],east,0,2,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Vehicles
		[[],[["UK3CB_ADA_O_BMP1",[433.159,7995.83,9.53674e-007],10,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_ADA_O_BMP1",[378.091,8033.85,0],12,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADA_O_BMP1",[1027.23,7945.33,-9.53674e-007],341,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_ADA_O_BMP1",[769.214,7748.42,0],338,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_ADA_O_BMP1",[593.602,7692.21,0],13,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Hunt
		[Base_2, Base_2, NEKY_Hunt_Trigger_1, 3,600+(random 300),east,selectRandom _Vehicles,120+(120)] spawn NEKY_Hunt_HuntBase;
		[Base_5, Base_5, NEKY_Hunt_Trigger_1, 3,600+(random 300),east,5,120+(120)] spawn NEKY_Hunt_HuntBase;

		// Sentry
		[[[[776.098,7746.93,1.14441e-005],178,"Up",[]],[[802.112,7763.42,1.33514e-005],16,"Up",[]],[[836.366,7761.39,1.14441e-005],178,"Up",[]],[[805.209,7742.12,1.14441e-005],61,"Up",[]],[[825.042,7742.25,1.14441e-005],198,"Up",[]],[[846.558,7746.42,1.14441e-005],234,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[470.299,8050.74,9.53674e-007],9,"Middle",[]],[[458.965,8040.43,0],306,"Middle",[]],[[466.181,7974.09,9.53674e-007],9,"Middle",[]],[[465.98,7955.68,-9.53674e-007],6,"Middle",[]],[[392.362,8023.54,0],95,"Middle",[]],[[406.339,8006.5,-9.53674e-007],32,"Middle",[]],[[464.919,8102.28,0],357,"Middle",[]],[[454.432,8095.66,0],354,"Middle",[]],[[478.413,8097.33,0],17,"Middle",[]],[[476.801,8156.16,0],358,"Middle",[]],[[489.111,8160.38,0],340,"Middle",[]],[[483.853,8141.96,0],166,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[434.839,8000.32,-1.90735e-006],73,"Middle",[]],[[447.426,8002.26,-1.90735e-006],276,"Middle",[]],[[435.894,7996.66,-1.90735e-006],47,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 3: {

		[Trigger_3,false,[35,20,false,false],east,0,2,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Vehicles
		[[],[["UK3CB_ADA_O_BMP1",[920.016,7288.23,0],341,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_ADA_O_BMP1",[669.299,7143.3,0],66,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADA_O_BMP1",[300.254,7046.36,0],13,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_ADA_O_BMP1",[200.633,6835.26,0],40,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Hunt
		[Base_3, Base_3, NEKY_Hunt_Trigger_1, 3,600+(random 300),east,selectRandom _Vehicles,120+(120)] spawn NEKY_Hunt_HuntBase;
		[Base_6, Base_6, NEKY_Hunt_Trigger_1, 3,600+(random 300),east,5,120+(120)] spawn NEKY_Hunt_HuntBase;
		[Base_7, Base_7, NEKY_Hunt_Trigger_1, 3,600+(random 300),east,5,120+(120)] spawn NEKY_Hunt_HuntBase;

		// Sentry
		[[[[342.402,6991.93,0],67,"Up",[]],[[369.616,7000.69,0],67,"Up",[]],[[354.166,6979.7,-1.90735e-006],350,"Up",[]],[[374.693,6980.03,0],319,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[925.34,7237.82,0],333,"Up",[]],[[907.318,7233.99,0],319,"Up",[]],[[901.511,7222.25,0],72,"Up",[]],[[944.754,7248.86,0],333,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
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
		   6 - Gunner Split - [How many teams,Procent of Gunner] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
