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

Private _Vehicles = [
	"UK3CB_CW_SOV_O_LATE_BMD1", 
	"UK3CB_CW_SOV_O_LATE_BMP1", 
	"UK3CB_CW_SOV_O_LATE_BTR80a", 
	"UK3CB_CW_SOV_O_LATE_MTLB_BMP", 
	"UK3CB_CW_SOV_O_LATE_MTLB_KPVT"
];


#include "script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};

params [
	"_case"
];

switch (_case) do {

	case 1: {

		[Trigger_1,false,[0,8,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		

		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 2,1200,east,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 2,1200,east,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 2,900,east,5,300] spawn NEKY_Hunt_HuntBase;

		// Sentries
		//[[[[10833.7,4386.81,-0.060482],8,"Middle",[]],[[10832.6,4392.8,-7.62939e-005],332,"Middle",[]],[[10828.1,4398.45,-0.0405388],360,"Middle",[]],[[10829.3,4389.86,3.8147e-005],5,"Middle",[]],[[10819.3,4399.82,-5.34058e-005],354,"Middle",[]],[[10812.7,4397.5,-0.000110626],324,"Middle",[]],[[10815.3,4397.39,0],349,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		//[[[[10779,4468.12,0.233746],245,"Up",[]],[[10783.8,4467.34,0.233746],75,"Up",[]],[[10785.3,4462.6,0.236866],87,"Up",[]],[[10781.1,4457.47,0.233784],8,"Up",[]],[[10785.7,4458.22,4.21874],127,"Up",[]],[[10785.8,4462.54,4.21874],44,"Up",[]],[[10782.8,4469.98,4.21874],47,"Up",[]],[[10783.2,4467.16,4.21874],28,"Up",[]],[[10777,4465.58,4.21874],246,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10768.5,4463.99,7.62939e-006],167,"Middle",[]],[[10771.3,4463,3.8147e-006],8,"Up",[]],[[10774.5,4459.62,0.233746],341,"Up",[]],[[10774.5,4453.36,0.233746],54,"Up",[]],[[10773.9,4454,4.21874],83,"Up",[]],[[10774.6,4460.63,4.21874],155,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[10740.1,4407.32,5.72205e-005],239,"Up",[]],[[10717.3,4411.25,3.8147e-006],84,"Middle",[]],[[10776.1,4441.48,0],289,"Up",[]]],[["rhs_btr80a_msv",[10780.9,4407.48,0.0482025],234.059,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]]]],["UK3CB_CW_SOV_O_EARLY_UAZ_SPG9",[10732,4398.7,0.2],145,[["gunner",-1,[0]]],[[7,["fold_arty_handler",0]]]],["UK3CB_CW_SOV_O_EARLY_UAZ_SPG9",[10776.5,4435.37,1],50,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10740.8,4438.85,-3.8147e-006],91,"Middle",[]],[[10727.8,4444.04,1.14441e-005],15,"Middle",[]],[[10711.1,4458.2,-1.52588e-005],97,"Middle",[]],[[10735.2,4445.06,4.65403],140,"Up",[]],[[10734.5,4443.28,16.4087],154,"Up",[]],[[10732,4443.01,16.4248],226,"Up",[]],[[10733.4,4445.91,16.4279],345,"Up",[]],[[10734.7,4445.55,16.4197],66,"Up",[]],[[10732,4445.51,16.4375],347,"Up",[]]],[["UK3CB_CW_SOV_O_EARLY_UAZ_SPG9",[10722.8,4455.09,1],39,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]],["rhs_btr80_vmf",[10674,4445.57,2],177.369,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		[[[[10823.9,4205.01,0.966591],282,"Up",[]],[[10823.6,4201.03,1.36301],243,"Up",[]],[[10826.5,4200.31,1.01331],182,"Up",[]],[[10834.7,4229.62,3.31844],219,"Up",[]],[[10836.9,4229.29,3.16416],222,"Up",[]],[[10830.9,4229.83,3.8147e-006],308,"Up",[]],[[10822.3,4171.46,0.379108],347,"Up",[]]],[["UK3CB_CW_SOV_O_EARLY_UAZ_SPG9",[10947.9,4232.92,1],291,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_CW_SOV_O_EARLY_BMD1",[10889.5,4131.85,2.28882e-005],306,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["maljutka_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"wood_2_unhide",0,"antena2_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10812.4,4168.64,-3.8147e-006],338,"Up",[]],[[10794.6,4172.94,-3.8147e-006],16,"Middle",[]],[[10787.9,4193.22,0.296701],143,"Up",[]],[[10792.5,4198.14,-3.8147e-006],49,"Up",[]],[[10818.2,4172.62,0.669136],345,"Up",[]],[[10710,4127.99,0],49,"Up",[]],[[10729.3,4183.23,0.541948],146,"Up",[]],[[10727.6,4183.17,0.555166],155,"Up",[]],[[10748.2,4176.62,1.90735e-006],107,"Middle",[]]],[["UK3CB_CW_SOV_O_EARLY_UAZ_SPG9",[10738.1,4225.62,1],167.153,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_CW_SOV_O_EARLY_BMP1",[10723.3,4114.51,0.000858307],199.607,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Arty
		[east,arty_1,getpos target_1,7,300,260] spawn OKS_ArtyFire; sleep 5;
		[east,arty_2,getpos target_2,7,300,260] spawn OKS_ArtyFire; sleep 4;
		[east,arty_3,getpos target_3,7,300,260] spawn OKS_ArtyFire;

	};

	case 2: {
	
		[Trigger_2,false,[0,8,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_2, 2,1200,east,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_2, 2,1200,east,_Vehicles,300] spawn NEKY_Hunt_HuntBase;	

		// Second Objective
		[[[[11066.3,7120.86,7.62939e-006],177,"Up",[]],[[11037.8,7113.43,0],146,"Up",[]],[[11012.2,7092.45,7.62939e-006],324,"Up",[]],[[10985.7,7083.04,3.8147e-006],93,"Up",[]],[[10981.1,7095.14,7.62939e-006],86,"Up",[]],[[10962.7,7100.3,7.62939e-006],223,"Up",[]],[[10971.6,7078.23,0.316101],177,"Up",[]],[[10975,7077.33,0.333298],177,"Up",[]],[[10978,7076.25,0.257797],177,"Up",[]],[[10980.9,7074.76,0.27573],177,"Up",[]],[[10984.1,7076.93,0.0197983],116,"Up",[]],[[10987.8,7087.18,7.62939e-006],134,"Up",[]],[[10955,7140.88,7.62939e-006],165,"Up",[]],[[10971.6,7137.08,3.8147e-006],172,"Up",[]],[[10932.1,7096.98,7.62939e-006],100,"Up",[]],[[10933,7147.9,7.62939e-006],144,"Up",[]],[[10993.5,7128.25,0],150,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Vehicles
		[[],[["rhs_bmp1_msv",[10929.5,7112.89,3.8147e-006],150,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[11069.3,7102.81,3.8147e-006],183,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[10978.2,7164.53,0],198,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		// Final Compound
		[[[[11792,9899.57,0],193,"up",[]],[[11779.6,9886.31,0.373676],0,"up",[]],[[11778,9905.72,0.895103],127,"up",[]],[[11795.8,9876.45,4.10505],280,"up",[]],[[11794.8,9875.8,0.0468864],349,"Middle",[]],[[11802.8,9882.48,0],40,"up",[]],[[11805.4,9874.19,0.421234],25,"up",[]],[[11821.3,9878.25,0.421234],341,"Middle",[]]],[["rhs_bmp1_msv",[11739.1,9850.4,3.8147e-005],152,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[11830.7,9932.49,0.973358],0,"up",[]],[[11841.3,9936.44,0],186,"Middle",[]],[[11849.2,9927.83,0.0468864],268,"Middle",[]],[[11850.8,9914.15,0.0468864],305,"up",[]],[[11840.6,9876.13,0],276,"up",[]],[[11844.2,9885.51,0],92,"Middle",[]]],[["rhs_bmp1_msv",[11860.8,9931.9,4.19617e-005],176,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[11797.1,9936.41,0],0,"up",[]],[[11788.8,9926.17,0],202,"up",[]],[[11819.2,9930.84,0.973358],182,"up",[]],[[11826.8,9938.23,0.973358],177,"up",[]],[[11815.5,9937.57,0.973362],90,"up",[]]],[["rhs_bmp1_msv",[11779,9938.45,0],213,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		[Trigger_3,false,[0,12,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_4,false,[0,12,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_2, 2,900,east,5,300] spawn NEKY_Hunt_HuntBase;
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
		   6 - gunner Split - [How many teams,Procent of gunner] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
