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
		
		/// Defence South-East Staging Point
		[[],[["UK3CB_ADA_O_V3S_Zu23",[2821.29,2323.26,0],326,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_ADA_O_Hilux_M2",[2799.58,2446.61,-3.8147e-006],302,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]],["UK3CB_ADA_O_Hilux_M2",[2727.57,2493.12,-3.8147e-006],349,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		
		/// Lancaster
		[[],[["UK3CB_ADA_O_Pickup_DSHKM",[1897.45,1811.85,3.8147e-006],179,[["gunner",-1,[0]]],[[6,["ADA",1]]]],["UK3CB_ADA_O_Pickup_DSHKM",[1837.41,1820.96,3.8147e-006],214,[["gunner",-1,[0]]],[[6,["ADA",1]]]],["UK3CB_ADA_O_Pickup_DSHKM",[1859.82,1853.59,3.8147e-006],186,[["gunner",-1,[0]]],[[6,["ADA",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Attack Code
		_EasternAttackers = [];

		[true, ["defend_east","OutpostTask"], ["Your outpost has been targeted, we assume based on intel the attack is inbound from the east.", "Repel Attack: East", ""], [], "ASSIGNED", 1, true, "defend"] call BIS_fnc_taskCreate;
		["HQ","side","1-1, a local informant has just reached us about a potential attack on Outpost Oklahoma. Initial attack is supposed to arrive from the east, good luck HQ out."] remoteExec ["OKS_Chat",0];
		[
			[
				strike_1,strike_10,strike_11,strike_12,strike_13,strike_14,
				strike_15,strike_16,strike_17,strike_18,strike_19,strike_2,
				strike_20,strike_21,strike_22,strike_23,strike_24,strike_25,
				strike_3,strike_4,strike_5,strike_6,strike_7,strike_8,strike_9
			],
			15,
			3
		] execVM "Scripts\OKS_Ambience\OKS_Mortar_Spawn.sqf";

		/// East overwatch
		_Overwatch1 = [[[[2923.02,2930.73,-3.8147e-005],273,"Up",[]],[[2922.15,2934.19,-4.57764e-005],273,"Up",[]],[[2922.52,2924.8,0],273,"Up",[]]],[["UK3CB_ADA_O_Offroad_M2",[2924.91,2928.5,0],261,[["gunner",-1,[0]]],[[6,["ADA",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		_Overwatch2 = [[[[2848.44,3509.48,0],224,"Middle",[]],[[2851.1,3506.4,0],224,"Middle",[]],[[2853.75,3504.42,6.10352e-005],224,"Middle",[]]],[["UK3CB_ADA_O_DSHKM",[2850.55,3510.37,0],225,[["gunner",-1,[0]]],[]],["UK3CB_ADA_O_LR_SPG9",[2857.19,3512.43,-6.10352e-005],222,[["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		sleep 3;

		/// EAST Attack
		_Group = [e_1,6,east,1000] call OKS_Rush_SpawnGroup;
		{_EasternAttackers pushBackUnique _X} foreach units _Group;
		sleep 2;

		_Group = [e_2,6,east,1000] call OKS_Rush_SpawnGroup;
		{_EasternAttackers pushBackUnique _X} foreach units _Group;	
		sleep 2;

		_Group = [e_3,6,east,1000] call OKS_Rush_SpawnGroup;
		{_EasternAttackers pushBackUnique _X} foreach units _Group;
		sleep 2;

		_Group = [e_4,6,east,1000] call OKS_Rush_SpawnGroup;
		{_EasternAttackers pushBackUnique _X} foreach units _Group;

		sleep 2;
		_Group = [e_5,6,east,1000] call OKS_Rush_SpawnGroup;
		{_EasternAttackers pushBackUnique _X} foreach units _Group;

		deleteVehicle camo_1; deleteVehicle camo_3;
		sleep 2;
		OKS_revealPlayers = {
			params ["_Unit"];
			{ if(_X distance _Unit < 2000) then {[_Unit,[_X,3]] remoteExec ["reveal",0]}} foreach AllPlayers
		};
		{[_X] spawn OKS_revealPlayers} foreach units _Overwatch1;
		{[_X] spawn OKS_revealPlayers} foreach units _Overwatch2;

		{_EasternAttackers pushBackUnique _X} foreach units _Overwatch1;
		{_EasternAttackers pushBackUnique _X} foreach units _Overwatch2;

		waitUntil {sleep 5; {Alive _X || [_X] call ace_common_fnc_isAwake} count _EasternAttackers == 0};
		systemChat "Eastern Attack repelled.";
		["defend_east","SUCCEEDED"] call BIS_fnc_taskSetState;

		sleep 15;
		null = [2] spawn GW_Fnc_spawnList;
	};

	case 2: {

		_NorthernAttackers = [];
		[true, ["defend_north","OutpostTask"], ["Your outpost has been targeted, we assume based on intel the attack is inbound from the north.", "Repel Attack: North", ""], [], "ASSIGNED", 1, true, "defend"] call BIS_fnc_taskCreate;
		["HQ","side","1-1, nearby satellite coverage confirms next attack will arrive from the north, it seems to be their last force, HQ out."] remoteExec ["OKS_Chat",0];
		
		[
			[
				strike_1,strike_10,strike_11,strike_12,strike_13,strike_14,
				strike_15,strike_16,strike_17,strike_18,strike_19,strike_2,
				strike_20,strike_21,strike_22,strike_23,strike_24,strike_25,
				strike_3,strike_4,strike_5,strike_6,strike_7,strike_8,strike_9
			],
			15,
			3
		] execVM "Scripts\OKS_Ambience\OKS_Mortar_Spawn.sqf";		

		// North Overwatch
		_Overwatch1 = [[[[2042.53,3340.75,-4.57764e-005],148,"Up",[]],[[2051.12,3340,-3.05176e-005],145,"Up",[]],[[2030.04,3336.88,2.95074],141,"Up",[]],[[2021.18,3321.4,3.96913],141,"Up",[]]],[["UK3CB_ADA_O_Offroad_M2",[2038.23,3342.66,0],163,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		_Overwatch2 = [[[[2030.51,3289.68,-7.62939e-005],141,"Up",[]],[[2025.31,3283.34,-6.10352e-005],139,"Middle",[]],[[2024.2,3278.64,-4.57764e-005],141,"Middle",[]],[[2010.08,3261.65,1.89677],121,"Middle",[]],[[2010.27,3259.31,2.10086],126,"Middle",[]],[[2008.14,3256.24,2.73151],122,"Middle",[]],[[2009.9,3257.56,2.9525],121,"Middle",[]]],[["UK3CB_AAF_O_SPG9",[2027.5,3287.55,-3.05176e-005],137,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;


		/// NORTH Attack
		_Group = [n_1,6,east,1000] call OKS_Rush_SpawnGroup;
		{_NorthernAttackers pushBackUnique _X} foreach units _Group;
		sleep 2;

		_Group = [n_2,6,east,1000] call OKS_Rush_SpawnGroup;
		{_NorthernAttackers pushBackUnique _X} foreach units _Group;	
		sleep 2;
		
		_Group = [n_3,6,east,1000] call OKS_Rush_SpawnGroup;
		{_NorthernAttackers pushBackUnique _X} foreach units _Group;
		sleep 2;

		_Group = [n_4,6,east,1000] call OKS_Rush_SpawnGroup;
		{_NorthernAttackers pushBackUnique _X} foreach units _Group;

		sleep 2;
		_Group = [n_5,6,east,1000] call OKS_Rush_SpawnGroup;
		{_NorthernAttackers pushBackUnique _X} foreach units _Group;	

		sleep 2;
		_Group = [n_6,6,east,1000] call OKS_Rush_SpawnGroup;
		{_NorthernAttackers pushBackUnique _X} foreach units _Group;	

		deleteVehicle camo_2; deleteVehicle camo_4; deleteVehicle camo_5;
		OKS_revealPlayers = {
			params ["_Unit"];
			{ if(_X distance _Unit < 2000) then {[_Unit,[_X,3.8]] remoteExec ["reveal",0]}} foreach AllPlayers
		};
		{[_X] spawn OKS_revealPlayers} foreach units _Overwatch1;
		{[_X] spawn OKS_revealPlayers} foreach units _Overwatch2;

		{_NorthernAttackers pushBackUnique _X} foreach units _Overwatch1;	
		{_NorthernAttackers pushBackUnique _X} foreach units _Overwatch2;

		waitUntil {sleep 5; {Alive _X || [_X] call ace_common_fnc_isAwake} count _NorthernAttackers == 0};
		systemChat "Northern Attack repelled.";
		["defend_north","SUCCEEDED"] call BIS_fnc_taskSetState;

		sleep 10;
		["HQ","side","Good work 1-1, you have successfully repelled the attacks on Outpost Oklahoma. We request that you go on the offensive, raid the nearby villages and destroy any and all insurgents, HQ out."] remoteExec ["OKS_Chat",0];
		[true, ["secure_perimeter","OutpostTask"], ["The nearest village of Glendye is now a suspected insurgent staging point, it is the closest village to the outpost and it must be cleared of the insurgents. Find and destroy 3 equipment caches in the area, expect heavy resistance.", "Secure Glendye", ""], [], "ASSIGNED", 1, true, "attack"] call BIS_fnc_taskCreate;
	
		null = [3] spawn GW_Fnc_spawnList;

	};

	case 3: {

		[Base_5, Spawn_5, Trigger_1, 3,600,east,["UK3CB_ADA_O_Hilux_Pkm", "UK3CB_ADA_O_BTR40_MG", "UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn NEKY_Hunt_HuntBase;
		[Base_6, Spawn_6, Trigger_1, 3,600,east,["UK3CB_ADA_O_Hilux_Pkm", "UK3CB_ADA_O_BTR40_MG", "UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn NEKY_Hunt_HuntBase;

		//// START OF ZONE /////
		[	Trigger_1,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				12,		// Number of Patrolling Infantry
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
			,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
		] spawn OKS_CreateZone;
		//// END OF ZONE ////


		// Town of Glendye
		[[[[2749.73,2494.53,0.214384],254,"Up",[]],[[2715.88,2513.83,0.346008],114,"Up",[]],[[2739.6,2537.13,0.555408],199,"Up",[]],[[2713.85,2531.21,0.31913],7,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[2717.1,2473.43,4.50144],48,"Up",[]],[[2716.31,2479.87,0.749771],104,"Up",[]],[[2721.61,2471.6,1.14515],237,"Up",[]],[[2721.08,2479.8,3.90008],225,"Up",[]],[[2723.62,2469.35,4.07398],44,"Up",[]],[[2721.6,2480.27,0.386436],93,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[2739.13,2462.36,0.203527],237,"Up",[]],[[2744.4,2468.4,0.0881863],287,"Up",[]],[[2738.87,2468.57,3.68084],337,"Up",[]],[[2743.59,2467.97,3.5339],360,"Up",[]],[[2740.32,2442.97,4.1456],27,"Up",[]],[[2738.44,2459.08,3.28839],237,"Up",[]],[[2719.17,2449.14,0.749516],22,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[2760.79,2458.34,0.604433],343,"Up",[]],[[2771,2471.11,1.43464],311,"Up",[]],[[2770.39,2457.4,0.981306],297,"Up",[]],[[2770.34,2453.92,1.22961],255,"Up",[]],[[2777,2458.93,0.691343],314,"Up",[]],[[2771.71,2460.44,0.445869],335,"Middle",[]],[[2775.6,2452.52,0.768696],207,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		waitUntil {sleep 5; {Alive _X || getDammage _X < 0.5} count [cache_1,cache_2,cache_3] == 0; };
		["secure_perimeter","SUCCEEDED"] call BIS_fnc_taskSetState;
		sleep 5;
		[true, ["raids","OutpostTask"], ["We have many suspected villages that support the insurgents. They are marked on your map, insert nearby the positions and deploy the forces to eradicate the insurgents.", "Search and Destroy", ""], [], "ASSIGNED", 1, true, "attack"] call BIS_fnc_taskCreate;

	};

	case 4: {
		_Ambush1Attackers = [];
		["HQ","side","1-1 if you dont notice anything suspicious you may exfil and raid another area, HQ out."] remoteExec ["OKS_Chat",0];	

		_Group = [ambush_1_1,4,east,1000,true] call OKS_Rush_SpawnGroup;
		{_Ambush1Attackers pushBackUnique _X} foreach units _Group;
		sleep 3;
		_Group = [ambush_1_2,4,east,1000] call OKS_Rush_SpawnGroup;
		{_Ambush1Attackers pushBackUnique _X} foreach units _Group;
		sleep 3;
		_Group = [ambush_1_3,4,east,1000,true] call OKS_Rush_SpawnGroup;
		{_Ambush1Attackers pushBackUnique _X} foreach units _Group;
		sleep 3;
		_Group = [ambush_1_4,4,east,1000] call OKS_Rush_SpawnGroup;
		{_Ambush1Attackers pushBackUnique _X} foreach units _Group;
		sleep 3;
		_Group = [ambush_1_5,4,east,1000,true] call OKS_Rush_SpawnGroup;
		{_Ambush1Attackers pushBackUnique _X} foreach units _Group;
		sleep 3;
		_Group = [ambush_1_6,4,east,1000] call OKS_Rush_SpawnGroup;
		{_Ambush1Attackers pushBackUnique _X} foreach units _Group;
		sleep 3;
		_Group = [ambush_1_7,4,east,1000,true] call OKS_Rush_SpawnGroup;
		{_Ambush1Attackers pushBackUnique _X} foreach units _Group;
		sleep 3;
		_Group = [ambush_1_8,4,east,1000,true] call OKS_Rush_SpawnGroup;
		{_Ambush1Attackers pushBackUnique _X} foreach units _Group;
		sleep 3;	
		_Group = [ambush_1_9,4,east,1000,true] call OKS_Rush_SpawnGroup;
		{_Ambush1Attackers pushBackUnique _X} foreach units _Group;
		sleep 9;	

		/// Ambush 1 - North East
		[[],[["UK3CB_ADR_O_Hilux_Zu23_Front",[4563.2,3825.13,-3.05176e-005],300,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["AD",1]],[7,["ClanLogo_Hide",1]]]]],[[[4461.95,3845.22,0],[[0,"Move"]]],[[4349.37,3805.52,6.10352e-005],[[0,"Move"]]],[[4252.05,3860.98,4.57764e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADR_O_Hilux_Pkm",[4572.72,3880.5,0],252,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["AD",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]]],[[[4387.02,3819.55,9.15527e-005],[[0,"Move"]]],[[4163.95,3837.21,-7.62939e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	
	};

	case 5: {

		[Base_1, Spawn_1, Trigger_3, 3,600,east,["UK3CB_ADA_O_Hilux_Pkm", "UK3CB_ADA_O_BTR40_MG", "UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn NEKY_Hunt_HuntBase;
		[Base_2, Spawn_2, Trigger_3, 3,600,east,["UK3CB_ADA_O_Hilux_Pkm", "UK3CB_ADA_O_BTR40_MG", "UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn NEKY_Hunt_HuntBase;

		//// START OF ZONE /////
		[	Trigger_3,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				24,		// Number of Patrolling Infantry
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
			,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
		] spawn OKS_CreateZone;
		//// END OF ZONE ////

		// Landcaster
		[[[[1783.97,1833.02,0.587116],322,"Up",[]],[[1781.91,1829.24,0.521461],16,"Up",[]],[[1777.15,1828.51,0.524361],357,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1759.86,1823.07,0.744772],135,"Up",[]],[[1764.74,1821.91,0.4639],135,"Up",[]],[[1770.9,1824.66,0.462658],284,"Up",[]],[[1767.17,1822.57,0.437548],12,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1875.86,1845.35,0.491787],51,"Up",[]],[[1874.71,1834.89,0.31789],17,"Up",[]],[[1876.82,1838.41,3.68121],55,"Up",[]],[[1876.96,1835.23,3.60156],93,"Up",[]],[[1876.89,1845.46,3.84385],82,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1873.43,1839.88,0.525969],267,"Up",[]],[[1873.89,1834.39,3.77918],171,"Up",[]],[[1870.59,1845.92,4.16362],255,"Up",[]],[[1870.37,1837.43,4.06728],246,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1884.27,1862.38,0.527498],135,"Up",[]],[[1877.96,1861.92,0.918663],136,"Up",[]],[[1877.51,1869.16,1.31813],135,"Up",[]],[[1886.47,1868.71,0.741838],223,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 6: {

		//// START OF ZONE /////
		[	Trigger_4,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				24,		// Number of Patrolling Infantry
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
			,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
		] spawn OKS_CreateZone;
		//// END OF ZONE ////

		//// START OF ZONE /////
		[	Trigger_5,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				0,		// Number of Patrolling Infantry
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
			,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
		] spawn OKS_CreateZone;
		//// END OF ZONE ////		

		/// Mwami
		[[[[552.558,2214.59,0.368824],14,"Up",[]],[[549.387,2216.96,0.170391],14,"Up",[]],[[554.44,2209.24,0.205441],14,"Up",[]],[[553.968,2211.66,0.333118],14,"Up",[]],[[558.87,2208.02,0],102,"Up",[]],[[576.743,2209.48,0],184,"Up",[]]],[["UK3CB_ADA_O_DSHKM",[573.361,2209.32,0],143,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[561.164,2232.72,0],224,"Up",[]],[[589.153,2240.96,0.526855],266,"Up",[]],[[582.322,2249.99,0.682507],226,"Up",[]],[[569.396,2246.37,0.26992],327,"Up",[]],[[572.786,2245.73,0.510494],54,"Up",[]],[[576.042,2242.74,0.763622],14,"Up",[]],[[573.396,2240.39,0.604065],313,"Up",[]],[[565.694,2256.52,0],164,"Up",[]]],[["UK3CB_ADA_O_DSHKM",[573.021,2227.71,0],160,[["gunner",-1,[0]]],[]],["UK3CB_ADA_O_DSHKM",[546.177,2228.91,3.8147e-006],70,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[523.431,2284.62,0.709217],128,"Up",[]],[[520.107,2287.94,0.447109],205,"Middle",[]],[[528.083,2289.52,0.875862],128,"Up",[]],[[530.103,2292.63,0.944088],128,"Up",[]],[[525.501,2296.04,0.60104],190,"Middle",[]],[[531.677,2296.98,0.868084],258,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[Base_3, Spawn_3, Trigger_4, 3,600,east,["UK3CB_ADA_O_Hilux_Pkm", "UK3CB_ADA_O_BTR40_MG", "UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn NEKY_Hunt_HuntBase;
		[Base_4, Spawn_4, Trigger_4, 3,600,east,["UK3CB_ADA_O_Hilux_Pkm", "UK3CB_ADA_O_BTR40_MG", "UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn NEKY_Hunt_HuntBase;
		[Base_7, Spawn_7, Trigger_4, 3,600,east,["UK3CB_ADA_O_Hilux_Pkm", "UK3CB_ADA_O_BTR40_MG", "UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn NEKY_Hunt_HuntBase;
	};

	case 7:{

		[ambush_2_1,4,east,1000,true] call OKS_Rush_SpawnGroup;
		[ambush_2_2,4,east,1000] call OKS_Rush_SpawnGroup;
		[ambush_2_3,4,east,1000,true] call OKS_Rush_SpawnGroup;
		[ambush_2_4,4,east,1000] call OKS_Rush_SpawnGroup;
		[ambush_2_5,4,east,1000] call OKS_Rush_SpawnGroup;
		[ambush_2_6,4,east,1000,true] call OKS_Rush_SpawnGroup;
		[ambush_2_7,4,east,1000] call OKS_Rush_SpawnGroup;
		[ambush_2_8,4,east,1000,true] call OKS_Rush_SpawnGroup;

	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
