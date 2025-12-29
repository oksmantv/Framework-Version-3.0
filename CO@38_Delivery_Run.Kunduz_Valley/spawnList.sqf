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

		[Trigger_1,false,[0,0,false,false],civilian,10,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_fnc_CreateZone;
		[Trigger_1,false,[0,0,false,false],east,5,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_fnc_CreateZone;

		[Trigger_2,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		[Trigger_4,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		[Trigger_5,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		[Trigger_6,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;


		[Delivery_Outpost, "ammo", 2, "DeliveryTask_0", "Delivery to Outpost Roy", "Deliver Ammo", "colorIndependent"] spawn OKS_fnc_Deliver_Supplies; sleep 6;

		[Delivery_Jumat_Ka, "food", 2, "DeliveryTask_2", "Delivery to Jumat Ka", "Deliver Food"] spawn OKS_fnc_Deliver_Supplies;
		[Delivery_Jumat_Ka, "water", 2, "DeliveryTask_2", "Delivery to Jumat Ka", "Deliver Water"] spawn OKS_fnc_Deliver_Supplies; sleep 6;

		[Delivery_Pradesh, "water", 3, "DeliveryTask_5", "Delivery to Pradesh", "Deliver Water"] spawn OKS_fnc_Deliver_Supplies;
		[Delivery_Pradesh, "food", 2, "DeliveryTask_5", "Delivery to Pradesh", "Deliver Food"] spawn OKS_fnc_Deliver_Supplies; sleep 6;

		[Delivery_Tahar_Kamar, "water", 1, "DeliveryTask_6", "Delivery to Taher Kamar", "Deliver Water"] spawn OKS_fnc_Deliver_Supplies;
		[Delivery_Tahar_Kamar, "food", 1, "DeliveryTask_6", "Delivery to Taher Kamar", "Deliver Food"] spawn OKS_fnc_Deliver_Supplies; sleep 6;

		[Delivery_FuelStation, "fuel", 3, "DeliveryTask_1", "Delivery to Fuel Station", "Deliver Fuel"] spawn OKS_fnc_Deliver_Supplies; sleep 6;

		[Delivery_Kar_Shek, "ammo", 4, "DeliveryTask_3", "Delivery to FOB Orango", "Deliver Ammo", "colorIndependent"] spawn OKS_fnc_Deliver_Supplies;  sleep 6;
		
		[Delivery_Mosque, "water", 2, "DeliveryTask_4", "Delivery to Mosque", "Deliver Water"] spawn OKS_fnc_Deliver_Supplies; 
		[Delivery_Mosque, "food", 2, "DeliveryTask_4", "Delivery to Mosque", "Deliver Food"] spawn OKS_fnc_Deliver_Supplies;

		/// Insurgent Hideout in Taher Kamar
		[[[[3948.15,9530.11,3.68563],168,"Up",[]],[[3943.56,9533.14,3.725],282,"Up",[]],[[3944.64,9533.13,3.725],356,"Up",[]],[[3949.12,9530.54,0.984913],354,"Up",[]],[[3952.23,9534.91,0.97285],254,"Up",[]],[[3951.52,9541.13,0.266046],294,"Up",[]],[[3936.37,9538.02,0],225,"Up",[]],[[3943.78,9562.57,0.178714],193,"Up",[]],[[3938.51,9562.89,0.165157],156,"Up",[]],[[3935.57,9561.49,0.230324],196,"Up",[]],[[3934.51,9548.83,0.493814],294,"Up",[]],[[3932.95,9539.52,0.794895],354,"Up",[]],[[3934.92,9550.79,3.58414],287,"Middle",[]],[[3931.54,9542.02,3.27723],287,"Middle",[]],[[3932.25,9545.59,3.62866],287,"Middle",[]],[[3953.3,9540.25,3.31],96,"Up",[]]],[["UK3CB_ARD_O_DSHKM",[3932.48,9544.77,0.783058],293,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		/// Ambush Site Mountain
		[[[[2314.87,8061.82,3.8147e-006],276,"Middle",[]],[[2331.19,8061.45,3.8147e-006],224,"Middle",[]],[[2326.48,8063.87,3.8147e-006],329,"Middle",[]],[[2333.24,8048.79,0],276,"Middle",[]],[[2323.72,8040.1,0.167847],3,"Up",[]],[[2328.03,8035.66,0.175659],96,"Up",[]],[[2327.62,8038.32,0.178272],276,"Middle",[]],[[2350.16,8045.17,3.8147e-006],260,"Middle",[]],[[2357.24,8025.44,3.8147e-006],48,"Up",[]],[[2349.65,8031.22,3.8147e-006],327,"Middle",[]],[[2328.14,8031.72,0],38,"Middle",[]]],[["UK3CB_ADG_O_PKM_High",[2311.15,8064.88,0],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		sleep 60;
		_Vehicles = [
			"UK3CB_MEE_O_Datsun_Pkm", 
			"UK3CB_MEE_O_Datsun_Open", 
			"UK3CB_MEE_O_Hilux_Dshkm", 
			"UK3CB_MEE_O_Hilux_Open", 
			"UK3CB_MEE_O_Hilux_Pkm", 
			"UK3CB_MEE_O_Offroad_M2", 
			"UK3CB_MEE_O_Pickup", 
			"UK3CB_MEE_O_M998_2DR"
		];
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 6,1800,east,_Vehicles,200] spawn OKS_fnc_Huntbase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 6,1800,east,_Vehicles,200] spawn OKS_fnc_Huntbase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 6,1800,east,_Vehicles,200] spawn OKS_fnc_Huntbase;

	};

	case 2: {

		// Fuel Station Attack
		{
			[getPos _X,"rush",5,east,3000,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [fuel_1,fuel_2,fuel_3,fuel_4,fuel_5,fuel_6];
	};

	case 3: {

		private _Array = [];

		// FOB Attack
		{
			[getPos _X,"rush",5,east,3000,[]] spawn OKS_fnc_Lambs_SpawnGroup; sleep 5;
		} foreach [fob_1,fob_2,fob_3,fob_4,fob_5,fob_6];

		[true, "DefendFOB", ["FOB Orango is about to be hit by an Insurgent attack. Drop the supplies off and help defend the FOB!", "Defend FOB Orango", "Defend"], getMarkerPos "marker_4","ASSIGNED",-1,true,"defend"] call BIS_fnc_taskCreate;
		sleep 60;

		waitUntil { sleep 5; {Alive _X || [_X] call ace_common_fnc_isAwake} count _Array == 0 || {Alive _X || [_X] call ace_common_fnc_isAwake} count units Friendly_2 == 0};

		if({Alive _X || [_X] call ace_common_fnc_isAwake} count units Friendly_2 == 0) then {
			["DefendFOB","FAILED"] call BIS_fnc_taskSetState;
		} else {
			["DefendFOB","SUCCEEDED"] call BIS_fnc_taskSetState;
		};
	};

	case 4: {

		[Trigger_3,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		[Trigger_7,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		[Trigger_8,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		[Trigger_9,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

		_Vehicles = [
			"UK3CB_MEE_O_Datsun_Pkm", 
			"UK3CB_MEE_O_Datsun_Open", 
			"UK3CB_MEE_O_Hilux_Dshkm", 
			"UK3CB_MEE_O_Hilux_Open", 
			"UK3CB_MEE_O_Hilux_Pkm", 
			"UK3CB_MEE_O_Offroad_M2", 
			"UK3CB_MEE_O_Pickup", 
			"UK3CB_MEE_O_M998_2DR"
		];
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_2, 6,1800,east,_Vehicles,200] spawn OKS_fnc_Huntbase;
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_2, 6,1800,east,_Vehicles,200] spawn OKS_fnc_Huntbase;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_2, 6,1800,east,_Vehicles,200] spawn OKS_fnc_Huntbase;
	};

	case 5: {

		_Attackers = [];

		// FOB Attack
		_Group = [[],[["UK3CB_MEE_O_Datsun_Pkm",[1435.39,8122.41,1],0,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["MEE",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Datsun_Pkm",[1596.57,8222.03,1],354,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["MEE",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Datsun_Pkm",[1800.9,8378.12,1],331,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["MEE",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		_Attackers pushBackUnique _Group;
		
		_Group = [[[[1440.5,8073.06,0],0,[]],[[1445.5,8068.06,0],0,[]],[[1435.5,8068.06,0],0,[]],[[1450.5,8063.06,0],0,[]],[[1430.5,8063.06,0],0,[]],[[1455.5,8058.06,0],0,[]],[[1425.5,8058.06,0],0,[]],[[1460.5,8053.06,0],0,[]]],[],[[[1447.76,8224,-1.90735e-005],[[0,"Move"]]],[[1451.42,8450.55,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Attackers pushBackUnique _Group;

		_Group = [[[[1556.71,8104.55,3.8147e-006],0,[]],[[1561.71,8099.55,3.8147e-006],0,[]],[[1551.71,8099.55,3.8147e-006],0,[]],[[1566.71,8094.55,3.8147e-006],0,[]],[[1546.71,8094.55,3.8147e-006],0,[]],[[1571.71,8089.55,3.8147e-006],0,[]],[[1541.71,8089.55,3.8147e-006],0,[]],[[1576.71,8084.55,3.8147e-006],0,[]]],[],[[[1563.97,8255.5,0],[[0,"Move"]]],[[1531.91,8502.49,6.54142],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Attackers pushBackUnique _Group;

		_Group = [[[[1663.25,8153.01,1.90735e-005],350,[]],[[1669.05,8148.96,1.90735e-005],350,[]],[[1659.2,8147.21,1.90735e-005],350,[]],[[1674.84,8144.91,1.90735e-005],350,[]],[[1655.15,8141.41,1.90735e-005],350,[]],[[1680.64,8140.86,1.90735e-005],350,[]],[[1651.1,8135.62,1.90735e-005],350,[]],[[1686.43,8136.81,1.90735e-005],350,[]]],[],[[[1644.04,8302.9,0],[[0,"Move"]]],[[1565.4,8568.77,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Attackers pushBackUnique _Group;

		_Group = [[[[1778.62,8228.35,-3.8147e-006],335,[]],[[1785.28,8225.96,0],335,[]],[[1776.23,8221.69,-3.8147e-006],335,[]],[[1791.93,8223.57,0],335,[]],[[1773.84,8215.04,0],335,[]],[[1798.59,8221.18,0],335,[]],[[1771.45,8208.38,0],335,[]],[[1805.24,8218.79,0],335,[]]],[],[[[1720.81,8367.97,-2.28882e-005],[[0,"Move"]]],[[1572.01,8641.15,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Attackers pushBackUnique _Group;
		
		_Group = [[[[1868.7,8340.34,0],336,[]],[[1875.3,8337.81,0],336,[]],[[1866.17,8333.74,0],336,[]],[[1881.9,8335.29,0],336,[]],[[1863.64,8327.13,0],336,[]],[[1888.51,8332.76,0],336,[]],[[1861.11,8320.53,0],336,[]],[[1895.11,8330.23,0],336,[]]],[],[[[1821.94,8566.51,0],[[0,"Move"]]],[[1636.49,8675.06,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Attackers pushBackUnique _Group;
		
		_Group = [[[[1335.76,7822.08,0],0,[]],[[1340.76,7817.08,0],0,[]],[[1330.76,7817.08,0],0,[]],[[1345.76,7812.08,0],0,[]],[[1325.76,7812.08,0],0,[]],[[1350.76,7807.08,0],0,[]],[[1320.76,7807.08,0],0,[]],[[1355.76,7802.08,0],0,[]]],[],[[[1343.02,7973.02,-1.90735e-005],[[0,"Move"]]],[[1366.6,8525.63,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Attackers pushBackUnique _Group;

		waitUntil {
			sleep 5;
			{
				_Group = _X;
				{
					_Unit = _X;
					Alive _Unit || [_Unit] call ace_common_fnc_isAwake
				} count units _Group == 0
			} count _Attackers == count _Attackers
		};

		["TaskDefendFOB","SUCCEEDED"] call BIS_fnc_taskSetState;
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

