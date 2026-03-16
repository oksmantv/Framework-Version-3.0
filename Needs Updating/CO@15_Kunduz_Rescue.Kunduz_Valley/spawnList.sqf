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

		if (date select 3 >= 21) then {
			[[
				Flare_1,Flare_2,Flare_3,Flare_4,Flare_5,Flare_6,Flare_7,Flare_8,Flare_9,
				Flare_10,Flare_11,Flare_12,Flare_13,Flare_14,Flare_15,Flare_16,Flare_17,
				Flare_18,Flare_19,Flare_20,Flare_21, Flare_22,Flare_23,Flare_24,Flare_25
			],75,3,-1] execVM "Scripts\FlareCoverage.sqf";
		};

		{
			[_X,nil,[8766.02,6715.17,0]] spawn OKS_Relieve_Friendly;
		} foreach [group Friendly_1,group Friendly_2,group Friendly_3,group Friendly_4,group Friendly_5];

		{
			[getPos _X,"rush",1,east,500,[],nil] spawn OKS_Lambs_Spawner;
		} foreach [Rescue_5_1,Rescue_5_2,Rescue_5_3,Rescue_5_4];

		{
			[getPos _X,"rush",1,east,500,[],nil] spawn OKS_Lambs_Spawner;
		} foreach [Rescue_4_1,Rescue_4_2,Rescue_4_3];		

		// Rescue 1 Sentries
		[[[[9080.86,6571.23,6.58619],4,"Up",[]],[[9056.02,6576.7,6.59895],4,"Up",[]],[[9064.69,6628.67,6.79633],188,"Up",[]],[[9070.53,6632.35,6.78955],119,"Up",[]],[[9095.25,6627.73,8.08113],166,"Up",[]],[[9084.47,6621.86,8.39793],212,"Up",[]],[[9078.78,6667.42,3.60277],187,"Up",[]],[[9108.93,6646.89,3.38332],253,"Up",[]],[[9056.27,6641.01,3.62591],230,"Up",[]],[[9063.85,6629.2,3.76694],230,"Up",[]],[[9040.19,6607.12,0.00021553],53,"Middle",[]]],[["UK3CB_TKM_O_UAZ_Dshkm",[8951.18,6614.73,1.33514e-005],57,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]],["UK3CB_NAP_O_Hilux_Pkm",[9097.86,6694.05,0],240,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["NAPA_1",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Cache 1
		[[[[9088.65,6677.48,0.23719],317,"Up",[]],[[9086.7,6682.6,1.90735e-006],192,"Up",[]],[[9077.5,6676.16,0],117,"Up",[]],[[9073.76,6673.6,1.90735e-006],129,"Up",[]],[[9087.99,6674.68,3.61495],255,"Up",[]],[[9087.43,6681.35,3.36632],210,"Up",[]],[[9080.94,6680.88,3.5075],282,"Up",[]],[[9073.12,6675.19,3.51574],261,"Up",[]],[[9087.48,6684.33,6.5868],345,"Up",[]],[[9087.1,6674.76,6.93072],160,"Up",[]],[[9079.11,6669.68,6.88789],176,"Up",[]],[[9073.87,6674.95,6.5705],335,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Cache 2
		[[[[8911.32,6344.36,0.0650997],247,"Up",[]],[[8893.71,6347.55,0.0952168],122,"Up",[]],[[8889.28,6372.91,3.8147e-006],90,"Up",[]],[[8888.83,6377.67,16.6605],32,"Up",[]],[[8887.52,6377.02,16.6605],297,"Up",[]],[[8888.69,6375.54,16.6605],185,"Up",[]],[[8911.9,6378.71,0.101856],181,"Up",[]],[[8905.68,6368.91,7.697],9,"Up",[]],[[8898.9,6369.58,7.74044],316,"Up",[]],[[8897.89,6354.47,7.76658],257,"Up",[]],[[8905.88,6348.19,7.63941],149,"Up",[]],[[8899.42,6347.8,7.73597],223,"Up",[]],[[8906.25,6350.93,0.140688],277,"Up",[]],[[8898.89,6350.97,0.171667],99,"Up",[]],[[8898.36,6362.73,0.197466],69,"Up",[]],[[8906.3,6363.55,0.117569],287,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Rescue 4 Sentries
		[[[[8829.44,6524.51,3.61497],306,"Up",[]],[[8826.08,6516.12,3.3496],283,"Up",[]],[[8784.26,6485.81,4.17734],347,"Up",[]],[[8758,6539.11,2.84782],95,"Up",[]],[[8751.75,6529.17,0.330021],87,"Up",[]],[[8778.81,6565.99,2.56351],140,"Up",[]],[[8770.79,6568.19,0.203842],168,"Up",[]],[[8791.66,6575.97,3.44554],169,"Up",[]],[[8782.14,6577.82,3.48008],167,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Rescue 5 Sentries
		[[[[8712.27,6305.36,6.57491],79,"Up",[]],[[8713.43,6311.32,6.59314],86,"Up",[]],[[8714.16,6310.5,3.64275],57,"Up",[]],[[8714.24,6305.69,3.66133],49,"Up",[]],[[8737.95,6339.26,6.27096],198,"Up",[]],[[8739.42,6339.22,3.16509],196,"Up",[]],[[8742.11,6339.54,3.16251],163,"Up",[]],[[8762.84,6293.79,0],297,"Up",[]],[[8771.32,6292.01,0.300539],267,"Up",[]],[[8790.7,6307.39,0],40,"Up",[]]],[["UK3CB_TKM_O_UAZ_Dshkm",[8787.35,6302.29,0],265,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		[Trigger_1,false,[0,12,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		

	};

	case 2: {

		{
			[getPos _X,"rush",1,east,500,[],nil] spawn OKS_Lambs_Spawner;
		} foreach [Rescue_2_1,Rescue_2_2,Rescue_2_3,Rescue_2_4];	

		{
			[getPos _X,"rush",1,east,500,[],nil] spawn OKS_Lambs_Spawner;
		} foreach [Rescue_3_1,Rescue_3_2,Rescue_3_3,Rescue_3_4];

		[Trigger_2,false,[0,12,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Rescue 2 Sentries
		[[[[9182.83,6856.11,2.82389],334,"Up",[]],[[9180.03,6851.21,3.11767],307,"Middle",[]],[[9130.38,6827.03,4.19257],23,"Middle",[]],[[9132.41,6824.47,4.37261],32,"Down",[]],[[9142.44,6905.6,3.62013],174,"Up",[]],[[9150.16,6911.56,3.30903],133,"Up",[]],[[9146.49,6909,3.63513],158,"Up",[]],[[9137.47,6871.51,0],98,"Up",[]],[[9190.21,6875.62,0],242,"Up",[]],[[9124.22,6850.11,3.19939],72,"Middle",[]],[[9094.33,6859.64,3.725],91,"Middle",[]],[[9084.37,6862.68,3.31],174,"Up",[]],[[9165.27,6922.66,3.26672],184,"Up",[]],[[9168.96,6922.98,3.06716],168,"Up",[]]],[["UK3CB_ADM_O_Hilux_Pkm",[9218.91,6919.01,0],237,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],["UK3CB_TKM_O_UAZ_Dshkm",[9200.54,6779.94,0],265,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Rescue 3 Sentries
		[[[[9321.15,6691.35,9.53674e-006],236,"Up",[]],[[9289.95,6694.64,1.14441e-005],51,"Up",[]],[[9300.64,6674,9.53674e-006],212,"Up",[]],[[9315.74,6656.4,9.53674e-006],323,"Up",[]],[[9326.83,6667.1,9.53674e-006],234,"Up",[]],[[9363.66,6670.55,4.17054],287,"Up",[]],[[9364.01,6666.87,4.45858],278,"Down",[]],[[9309.19,6697.86,2.66136],169,"Middle",[]],[[9302.77,6701.52,3.0406],180,"Middle",[]],[[9268.75,6663.48,4.17001],67,"Up",[]],[[9267.9,6660.43,4.17001],93,"Up",[]],[[9287.24,6657.52,2.62395],56,"Middle",[]]],[["UK3CB_ARD_O_UAZ_MG",[9378.61,6643.41,1.90735e-006],305,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

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
