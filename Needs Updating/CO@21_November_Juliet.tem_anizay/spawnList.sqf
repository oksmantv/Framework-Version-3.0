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

		// Hostage
		[Group HVT_1,[1570.88,9565.78,0],west,true,nil,true] spawn OKS_Evacuate_HVT;		

		// First Roadblock
		[[[[413.035,9572.19,1.52588e-005],95,"Up",[]],[[428.478,9581.76,3.17062],174,"Up",[]],[[454.612,9588.55,0],181,"Middle",[]],[[421.518,9581.56,2.673],183,"Up",[]],[[450.618,9595.73,0],189,"Middle",[]],[[475.525,9590.32,0],269,"Middle",[]],[[439.112,9593.47,1.52588e-005],187,"Middle",[]],[[479.071,9568.73,4.80827],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Arty Objective.
		[[[[792.565,10042.9,3.20943],179,"Middle",[]],[[786.701,10042.5,2.89532],167,"Middle",[]],[[832.265,10053.1,3.2079],182,"Middle",[]],[[793.345,10042.7,-1.52588e-005],0,"Up",[]],[[758.152,10062,0],256,"Middle",[]],[[797.795,10038.5,0],202,"Middle",[]],[[756.259,10038,0],0,"Up",[]],[[826.113,10051.5,3.38063],173,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[842.63,10054.3,3.31938],182,"Up",[]],[[844.999,10054,3.35422],182,"Up",[]],[[843.98,10065.8,3.62048],316,"Up",[]],[[851.393,10063.9,3.73631],182,"Up",[]],[[813.631,10066.6,0],98,"Up",[]],[[768.917,10053.2,1.52588e-005],73,"Middle",[]],[[846.898,10070.3,0],64,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;


		// Trigger
		[Trigger_1,false,[0,12,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_2,false,[0,20,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_3,false,[0,0,false,false],east,0,2,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Vehicle.
		[[],[["UK3CB_ADA_O_BTR80a",[1705.97,9640.89,0],271,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Objectives
		[aaa_1,east,false,1500,true] spawn GW_Ambient_AAA;
		[east,arty_1,[600.604,9141.05,0],5,300,30] spawn OKS_ArtyFire; sleep 2;
		[east,arty_2,[600.604,9141.05,0],5,300,30] spawn OKS_ArtyFire; sleep 3;
		[east,arty_3,[600.604,9141.05,0],5,300,30] spawn OKS_ArtyFire; sleep 4;
		[east,arty_4,[600.604,9141.05,0],5,300,30] spawn OKS_ArtyFire; sleep 3;

		_Vehicles = ["UK3CB_ADA_O_BMP1", "UK3CB_ADA_O_BMP2", "UK3CB_ADA_O_BTR80a", "UK3CB_ADA_O_MTLB_BMP", "UK3CB_ADA_O_Pickup_SPG9", "UK3CB_ADA_O_LR_SPG9"];
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 2,1200,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_3, 2,1200,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_2, 2,1200,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;




	};

	case 2: {

		// AAA.
		[[[[2125.68,9931.27,0.781403],269,"Up",[]],[[2128.62,9925.93,1.03152],221,"Up",[]],[[2124.81,9924.44,4.55888],203,"Middle",[]],[[2122.28,9928.25,4.67584],229,"Middle",[]],[[2115.29,9918.01,0],15,"Up",[]],[[2132.44,9934.42,0.00115967],266,"Up",[]],[[2123.33,9926.01,0.778885],331,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// HQ Objective.
		[[[[1488.98,9611.01,3.59227],3,"Up",[]],[[1492.41,9611.6,3.84738],3,"Up",[]],[[1488.94,9602.03,3.63866],195,"Up",[]],[[1498.17,9609.88,3.81429],349,"Up",[]],[[1497.7,9607.28,0.667343],176,"Up",[]],[[1495.07,9604.15,6.85019],255,"Middle",[]],[[1506.42,9611.84,3.35049],195,"Up",[]],[[1505.1,9604.36,3.2314],195,"Up",[]],[[1507.24,9607.34,0.22287],215,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1522.45,9605.91,6.86906],195,"Up",[]],[[1520.55,9613.49,6.82018],290,"Up",[]],[[1521.58,9614,3.82635],289,"Up",[]],[[1513.86,9605.82,3.28661],262,"Up",[]],[[1521.23,9609.81,0.166275],16,"Up",[]],[[1524.68,9610.27,3.60425],242,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1533.29,9606.39,6.97771],195,"Up",[]],[[1533.55,9612.63,3.60838],195,"Up",[]],[[1537.3,9612.58,0.151932],242,"Up",[]],[[1538.49,9608.01,4.20201],262,"Middle",[]],[[1531.94,9605.66,3.67769],306,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		// Arty 2.
		[[[[3255.65,9857.07,0],241,"Up",[]],[[3254.32,9858.17,0.166962],241,"Up",[]],[[3246.9,9903.73,0.155624],184,"Up",[]],[[3252.78,9903.9,0.613098],0,"Up",[]],[[3249.77,9896.55,1.14609],175,"Up",[]],[[3256.91,9903.39,0],0,"Up",[]],[[3256.9,9882.12,0],266,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3231.44,9891.21,1.52588e-005],123,"Up",[]],[[3226.56,9897.29,0],0,"Up",[]],[[3220.11,9888.11,0],148,"Up",[]],[[3216.08,9895.16,0],253,"Up",[]],[[3212.7,9902.69,0.366089],142,"Up",[]],[[3221.97,9902.69,0],259,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3206.19,9883.42,0],94,"Up",[]],[[3207.2,9901.73,0.360107],191,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Support
		[[[[3924.01,9993.26,0],159,"Up",[]],[[3943.09,9997.69,3.05176e-005],252,"Up",[]],[[3942.32,9986.4,3.58459],283,"Up",[]],[[3932.11,9983.46,0.796997],354,"Up",[]],[[3942.57,9987.5,0.529419],288,"Up",[]]],[["UK3CB_ADA_O_BTR80a",[3961.41,10010.1,0],258,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3952.46,10030.7,1.52588e-005],172,"Up",[]],[[3957.9,10036.1,1.52588e-005],34,"Up",[]],[[3968.43,10037.7,1.52588e-005],333,"Up",[]],[[3962.64,10032,0.390091],159,"Up",[]],[[3961.03,10032.1,3.89212],159,"Up",[]],[[3961.29,10032.3,7.13057],237,"Up",[]],[[3960.53,10034.8,7.1181],270,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;	

		[Trigger_5,false,[0,20,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_4,false,[0,0,false,false],east,0,2,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

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
