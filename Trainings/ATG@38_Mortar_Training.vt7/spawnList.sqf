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



#include "\OKS_GOL_MISC\script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};

params [
	"_case"
];

switch (_case) do {

	case 1: {

		["Battalion HQ","side","Mortar Course Initiated - Spawning Enemies"] spawn OKS_fnc_ChatGlobal;
		[[
			[[15261.1,16198.8,2.50645],198,"Middle",[[301,0]],"mmg"],[[15278,16204.1,0.998634],198,"Up",[[301,0]],"mmg"],
			[[15313.4,16183.9,0.582781],109,"Up",[[301,0]],"mmg"],[[15313.5,16172.7,0.377056],169,"Up",[[301,0]],"mmg"],
			[[15298.2,16178.4,0.404589],198,"Up",[[301,0]],"mmg"],[[15288.3,16185.2,0.41984],150,"Middle",[[301,0]],"ab"],
			[[15265.7,16200.8,0.763462],73,"Middle",[[301,0]],"ab"],[[15291.7,16212.3,0.320665],186,"Middle",[[301,0]],"ab"],
			[[15287.6,16226.8,0.266455],161,"Middle",[[301,0]],"ab"],[[15288.7,16232.5,0.42926],281,"Up",[[301,0]],"ab"],
			[[15300.4,16214.9,0.523249],150,"Middle",[[301,0]],"ab"],[[15302.1,16194.1,0.284185],316,"Middle",[[301,0]],"ab"],
			[[15293,16179.7,0.656393],207,"Middle",[[301,0]],"ab"],[[15218.5,16329.1,0.266573],200,"Up",[[301,0]],"ab"],
			[[15205,16336.6,0.594179],200,"Up",[[301,0]],"ab"],[[15186.2,16345.9,0.881924],124,"Up",[[301,0]],"ab"],
			[[15155,16364,0.832592],147,"Up",[[301,0]],"ab"],[[15169.3,16353.3,1.0028],206,"Up",[[301,0]],"ab"],
			[[15181.2,16344.8,0.741762],31,"Middle",[[301,0]],"ab"],[[15197.6,16365.6,1.11003],195,"Middle",[[301,0]],"ab"],
			[[15212,16363.9,0.278027],281,"Middle",[[301,0]],"ab"],[[15229.2,16356.9,0.451101],121,"Middle",[[301,0]],"ab"],
			[[15200.5,16368.4,0.653822],47,"Up",[[301,0]],"ab"],[[15189.4,16378.9,1.02582],198,"Middle",[[301,0]],"ab"],
			[[15181.5,16374.4,0.557426],83,"Middle",[[301,0]],"ab"],[[15163.4,16387.8,0.363796],181,"Up",[[301,0]],"ab"],
			[[15191.6,16381.4,0.94046],50,"Middle",[[301,0]],"ab"],[[15192.6,16339.8,0.15226],198,"Up",[[301,0]],"mmg"],
			[[15163.1,16356.1,1.29988],203,"Up",[[301,0]],"mmg"],[[15181.9,16361.8,0.172405],198,"Middle",[[301,0]],"mmg"]
		],[],[],east] call GW_Common_fnc_spawnGroup;

		[[],[
			["rhs_KORD_MSV",[15285.3,16196.9,0.0644093],228,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_MSV",[15181.3,16344.5,2.00447],190,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_CHD_O_LR_SF_WMIK_PKM_PKM",[15349.2,16218.3,0.121626],178,[["driver",-1,[]],["gunner",-1,[3]],["commander",-1,[4]]],[[6,["CHDKZ",1]],[7,["Axe_Hide",1,"Exhaust_Cover_Hide",1,"Front_Fuel_Boxes_Hide",1,"Light_Covers_Hide",1,"Pole_Hide",1,"Rear_Cargo_Box_Hide",1,"Shovel_Hide",1,"Side_Rails_Hide",1,"Wirecutter_Hide",1,"DoorRearLeft_Hide",0,"DoorRearRight_Hide",0,"Spare_Wheel_2_Hide",0,"DoorFrontLeft_Hide",0,"DoorFrontRight_Hide",0,"DoorsRear_Hide",0,"Front_Grill_Hide",0,"Plate_1_Hide",0,"Plate_2_Hide",0,"Radio_Hide",0,"Spare_Wheel_Hide",0,"Spare_Wheel_1_Hide",0]],[351,false]]],
			["UK3CB_CHD_O_LR_SF_WMIK_PKM_PKM",[15252,16351.7,-0.00242615],177,[["driver",-1,[]],["gunner",-1,[3]],["commander",-1,[4]]],[[6,["CHDKZ",1]],[7,["Axe_Hide",1,"Exhaust_Cover_Hide",1,"Front_Fuel_Boxes_Hide",1,"Light_Covers_Hide",1,"Pole_Hide",1,"Rear_Cargo_Box_Hide",1,"Shovel_Hide",1,"Side_Rails_Hide",1,"Wirecutter_Hide",1,"DoorRearLeft_Hide",0,"DoorRearRight_Hide",0,"Spare_Wheel_2_Hide",0,"DoorFrontLeft_Hide",0,"DoorFrontRight_Hide",0,"DoorsRear_Hide",0,"Front_Grill_Hide",0,"Plate_1_Hide",0,"Plate_2_Hide",0,"Radio_Hide",0,"Spare_Wheel_Hide",0,"Spare_Wheel_1_Hide",0]],[351,false]]]
		],[],east] call GW_Common_fnc_spawnGroup;

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
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_CreateZone")};

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
			] spawn OKS_fnc_CreateZone;
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

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn OKS_fnc_Huntbase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Huntbase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn OKS_fnc_Huntbase;
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

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};

