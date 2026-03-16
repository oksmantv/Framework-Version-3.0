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
		
		/// Defence South-East Staging Point
		[[],[["UK3CB_ADA_O_V3S_Zu23",[2821.29,2323.26,0],326,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_ADA_O_Hilux_M2",[2799.58,2446.61,1],302,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]],["UK3CB_ADA_O_Hilux_M2",[2727.57,2493.12,1],349,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		
		/// Lancaster
		[[],[["UK3CB_ADA_O_Pickup_DSHKM",[1897.45,1811.85,3.8147e-006],179,[["gunner",-1,[0]]],[[6,["ADA",1]]]],["UK3CB_ADA_O_Pickup_DSHKM",[1837.41,1820.96,3.8147e-006],214,[["gunner",-1,[0]]],[[6,["ADA",1]]]],["UK3CB_ADA_O_Pickup_DSHKM",[1859.82,1853.59,3.8147e-006],186,[["gunner",-1,[0]]],[[6,["ADA",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// HMGs AO.
		[
			[],
			[
				["UK3CB_ADM_O_Pickup_DSHKM",[1131.08,2065.11,1],353,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],
				["UK3CB_ADM_O_Pickup_DSHKM",[1163.08,2807.86,1],359,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],
				["UK3CB_ADM_O_Pickup_DSHKM",[959.478,2612.02,1],190,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],
				["UK3CB_ADM_O_Pickup_DSHKM",[1346.72,2614.01,1],267,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],
				["UK3CB_ADM_O_Pickup_DSHKM",[1916.36,1110.85,1],9,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],
				["UK3CB_ADM_O_Pickup_DSHKM",[3556.22,1574.06,1],234,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],
				["UK3CB_ADM_O_Pickup_DSHKM",[3759.14,1865.7,1],273,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],
				["UK3CB_ADM_O_Pickup_DSHKM",[3772.54,575.768,1],225,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],
				["UK3CB_ADM_O_Pickup_DSHKM",[3758.96,692.439,1],322,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],
				["UK3CB_ADM_O_Pickup_DSHKM",[3008.43,1651.94,1],359,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],
				["UK3CB_ADM_O_Pickup_DSHKM",[1403.16,1706.94,1],279,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],
				["UK3CB_ADM_O_Pickup_DSHKM",[1630.36,1732.1,1],60,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]]
			],
			[]
		] call GW_Common_fnc_spawnGroup;

		// Attack Code
		_EasternAttackers = [];
	
		_StrikeTargets = [
			strike_1,strike_10,strike_11,strike_12,strike_13,strike_14,
			strike_15,strike_16,strike_17,strike_18,strike_19,strike_2,
			strike_20,strike_21,strike_22,strike_23,strike_24,strike_25,
			strike_3,strike_4,strike_5,strike_6,strike_7,strike_8,strike_9
		];
		[mortar_1,_StrikeTargets,east,1,6,true,true,10,false] spawn OKS_fnc_ArtySuppression; sleep 3;
		[mortar_2,_StrikeTargets,east,1,6,true,true,10,false] spawn OKS_fnc_ArtySuppression; sleep 3;
		[mortar_3,_StrikeTargets,east,1,6,true,true,10,false] spawn OKS_fnc_ArtySuppression;

		sleep 20;
		[true, ["spotter_1","OutpostTask"], ["Your outpost has been targeted by mortars. Find the enemy spotters and silence those mortars!", "Eliminate Spotters", ""], [], "ASSIGNED", 1, true, "search"] call BIS_fnc_taskCreate;
		{
			_X setMarkerAlpha 1
		} foreach ["spotter_1","spotter_2","spotter_3","spotter_4","spotter_5","spotter_6"];

		waitUntil {sleep 5; {Alive _X || [_X] call ace_common_fnc_isAwake} count [spotter_1,spotter_2,spotter_3] < 3};
		["spotter_1","SUCCEEDED"] call BIS_fnc_taskSetState;
		{
			_X setVariable ["HaltFire",true,true]
		} foreach [mortar_1,mortar_2,mortar_3];

		[true, ["defend_east","OutpostTask"], ["Your outpost has been targeted, the attack is inbound from the east.", "Repel Attack: East", ""], [], "ASSIGNED", 1, true, "defend"] call BIS_fnc_taskCreate;

		sleep 15;

		/// East overwatch
		_Overwatch1 = [[[[2923.02,2930.73,-3.8147e-005],273,"Up",[]],[[2922.15,2934.19,-4.57764e-005],273,"Up",[]],[[2922.52,2924.8,0],273,"Up",[]]],[["UK3CB_ADA_O_Offroad_M2",[2924.91,2928.5,0],261,[["gunner",-1,[0]]],[[6,["ADA",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		_Overwatch2 = [[[[2848.44,3509.48,0],224,"Middle",[]],[[2851.1,3506.4,0],224,"Middle",[]],[[2853.75,3504.42,6.10352e-005],224,"Middle",[]]],[["UK3CB_ADA_O_DSHKM",[2850.55,3510.37,0],225,[["gunner",-1,[0]]],[]],["UK3CB_ADA_O_LR_SPG9",[2857.19,3512.43,-6.10352e-005],222,[["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		sleep 6;

		{
			Garrison_1 reveal [_X,4]
		} foreach units _Overwatch1;
		{
			Garrison_1 reveal [_X,4]
		} foreach units _Overwatch2;	

		[suppress_1, units _Overwatch1, true] call ace_zeus_fnc_moduleSuppressiveFire;
		[suppress_2, units _Overwatch2, true] call ace_zeus_fnc_moduleSuppressiveFire;

		/// EAST Attack
		[e_1,"rush",4,east,1000,_EasternAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[e_2,"rush",4,east,1000,_EasternAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[e_3,"rush",4,east,1000,_EasternAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[e_4,"rush",4,east,1000,_EasternAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[e_5,"rush",4,east,1000,_EasternAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		sleep 10;
		[e_1,"hunt",4,east,1000,_EasternAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[e_2,"hunt",4,east,1000,_EasternAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[e_3,"hunt",4,east,1000,_EasternAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[e_4,"hunt",4,east,1000,_EasternAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[e_5,"hunt",4,east,1000,_EasternAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		deleteVehicle camo_1; deleteVehicle camo_3;
		sleep 2;

		{[_X] spawn OKS_revealPlayers} foreach units _Overwatch1;
		{[_X] spawn OKS_revealPlayers} foreach units _Overwatch2;

		// _EasternAttackers pushBackUnique _Overwatch1;
		// _EasternAttackers pushBackUnique _Overwatch2;

		waitUntil {sleep 5; {{Alive _X || [_X] call ace_common_fnc_isAwake} count units _X == 0} count _EasternAttackers == count _EasternAttackers};
		systemChat "Eastern Attack repelled.";
		["defend_east","SUCCEEDED"] call BIS_fnc_taskSetState;

		sleep 15;
		null = [2] spawn GW_Fnc_spawnList;
	};

	case 2: {

		{
			_X setVariable ["HaltFire",false,true]
		} foreach [mortar_1,mortar_2,mortar_3];	

		_NorthernAttackers = [];
		
		_StrikeTargets = [
			strike_1,strike_10,strike_11,strike_12,strike_13,strike_14,
			strike_15,strike_16,strike_17,strike_18,strike_19,strike_2,
			strike_20,strike_21,strike_22,strike_23,strike_24,strike_25,
			strike_3,strike_4,strike_5,strike_6,strike_7,strike_8,strike_9
		];
		[mortar_1,_StrikeTargets,east,1,4,true,true,10,false] spawn OKS_fnc_ArtySuppression; sleep 3;
		[mortar_2,_StrikeTargets,east,1,4,true,true,10,false] spawn OKS_fnc_ArtySuppression; sleep 3;
		[mortar_3,_StrikeTargets,east,1,4,true,true,10,false] spawn OKS_fnc_ArtySuppression;

		sleep 30;
		[true, ["spotter_2","OutpostTask"], ["Your outpost has been targeted by mortars. Find the enemy spotters and silence those mortars!", "Eliminate Spotters", ""], [], "ASSIGNED", 1, true, "search"] call BIS_fnc_taskCreate;

		waitUntil {sleep 5; {Alive _X || [_X] call ace_common_fnc_isAwake} count [spotter_1,spotter_2,spotter_3] < 2};
		["spotter_2","SUCCEEDED"] call BIS_fnc_taskSetState;
		{
			_X setVariable ["HaltFire",true,true]
		} foreach [mortar_1,mortar_2,mortar_3];	
		sleep 15;

		[true, ["defend_north","OutpostTask"], ["Your outpost has been targeted, we assume based on intel the attack is inbound from the north.", "Repel Attack: North", ""], [], "ASSIGNED", 1, true, "defend"] call BIS_fnc_taskCreate;
		//["HQ","side","1-1, nearby satellite coverage confirms next attack will arrive from the north, it seems to be their last force, HQ out."] remoteExec ["OKS_fnc_Chat",0];

		// North Overwatch
		_Overwatch1 = [[[[2042.53,3340.75,-4.57764e-005],148,"Up",[]],[[2051.12,3340,-3.05176e-005],145,"Up",[]],[[2030.04,3336.88,2.95074],141,"Up",[]],[[2021.18,3321.4,3.96913],141,"Up",[]]],[["UK3CB_ADA_O_Offroad_M2",[2038.23,3342.66,0],163,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		_Overwatch2 = [[[[2030.51,3289.68,-7.62939e-005],141,"Up",[]],[[2025.31,3283.34,-6.10352e-005],139,"Middle",[]],[[2024.2,3278.64,-4.57764e-005],141,"Middle",[]],[[2010.08,3261.65,1.89677],121,"Middle",[]],[[2010.27,3259.31,2.10086],126,"Middle",[]],[[2008.14,3256.24,2.73151],122,"Middle",[]],[[2009.9,3257.56,2.9525],121,"Middle",[]]],[["UK3CB_ADM_O_LR_M2",[2027.5,3287.55,-3.05176e-005],137,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		/// NORTH Attack
		[n_1,"rush",4,east,1000,_NorthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[n_2,"rush",4,east,1000,_NorthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;	
		[n_3,"rush",4,east,1000,_NorthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[n_4,"rush",4,east,1000,_NorthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[n_5,"rush",4,east,1000,_NorthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[n_6,"rush",4,east,1000,_NorthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		sleep 10;
		[n_1,"hunt",4,east,1000,_NorthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[n_2,"hunt",4,east,1000,_NorthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;	
		[n_3,"hunt",4,east,1000,_NorthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[n_4,"hunt",4,east,1000,_NorthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[n_5,"hunt",4,east,1000,_NorthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[n_6,"hunt",4,east,1000,_NorthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;

		deleteVehicle camo_2; deleteVehicle camo_4; deleteVehicle camo_5;
		{[_X] spawn OKS_revealPlayers} foreach units _Overwatch1;
		{[_X] spawn OKS_revealPlayers} foreach units _Overwatch2;

		{
			Garrison_1 reveal [_X,4]
		} foreach units _Overwatch1;
		{
			Garrison_1 reveal [_X,4]
		} foreach units _Overwatch2;		

		// _NorthernAttackers pushBackUnique _Overwatch1;	
		// _NorthernAttackers pushBackUnique _Overwatch2;

		waitUntil {sleep 5; {{Alive _X || [_X] call ace_common_fnc_isAwake} count units _X == 0} count _NorthernAttackers == count _NorthernAttackers};
		//systemChat "Northern Attack repelled.";
		["defend_north","SUCCEEDED"] call BIS_fnc_taskSetState;

		sleep 10;

		null = [8] spawn GW_Fnc_spawnList;
	};

	case 3: {

		[Base_5, Spawn_5, Trigger_1, 3,600,east,["UK3CB_ADA_O_Hilux_Pkm", "UK3CB_ADA_O_BTR40_MG", "UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn OKS_fnc_Huntbase;
		[Base_6, Spawn_6, Trigger_1, 3,600,east,["UK3CB_ADA_O_Hilux_Pkm", "UK3CB_ADA_O_BTR40_MG", "UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn OKS_fnc_Huntbase;

		//// START OF ZONE /////
		[	Trigger_1,  // Name of Trigger used as Spawn Area
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
		] spawn OKS_fnc_CreateZone;
		//// END OF ZONE ////

		[[[[2791.76,2421.72,-1.90735e-06],0,[]],[[2796.76,2416.72,-1.90735e-06],0,[]],[[2786.76,2416.72,1.90735e-06],0,[]],[[2801.76,2411.72,0],0,[]]],[],[[[2913.1,2455.74,0],[[0,"Move"],[1,"SAFE"]]],[[2913.26,2375.81,1.90735e-06],[[0,"Move"]]],[[2809.34,2368.2,-3.8147e-06],[[0,"Move"]]],[[2795.1,2408.87,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2721.14,2342.74,7.33864],251,[]],[[2724.19,2349.11,6.40423],251,[]],[[2727.51,2339.68,7.25406],251,[]],[[2727.25,2355.49,5.43179],251,[]]],[],[[[2667.02,2442.79,-0.276791],[[0,"Move"],[1,"SAFE"]]],[[2732.67,2419.83,0.3409],[[0,"Move"]]],[[2765.77,2377.11,1.46391],[[0,"Move"]]],[[2732.15,2350.16,5.84585],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2717.17,2567.12,0.534573],109,[]],[[2710.84,2563.97,0],109,[]],[[2714.03,2573.45,0.805243],109,[]],[[2704.5,2560.83,0],109,[]]],[],[[[2732.21,2462.27,3.93768],[[0,"Move"],[1,"SAFE"]]],[[2671,2451.4,13.3578],[[0,"Move"]]],[[2685.17,2538.36,7.817],[[0,"Move"]]],[[2703.92,2568.05,0.360664],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2797,2524.39,0],0,[]],[[2802,2519.39,0],0,[]],[[2792,2519.39,0],0,[]],[[2807,2514.39,0],0,[]]],[],[[[2918.35,2558.41,0],[[0,"Move"],[1,"SAFE"]]],[[2918.51,2478.49,0],[[0,"Move"]]],[[2814.59,2470.87,0],[[0,"Move"]]],[[2800.35,2511.54,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Town of Glendye
		[[[[2749.73,2494.53,0.214384],254,"Up",[]],[[2715.88,2513.83,0.346008],114,"Up",[]],[[2739.6,2537.13,0.555408],199,"Up",[]],[[2713.85,2531.21,0.31913],7,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2717.1,2473.43,4.50144],48,"Up",[]],[[2716.31,2479.87,0.749771],104,"Up",[]],[[2721.61,2471.6,1.14515],237,"Up",[]],[[2721.08,2479.8,3.90008],225,"Up",[]],[[2723.62,2469.35,4.07398],44,"Up",[]],[[2721.6,2480.27,0.386436],93,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2739.13,2462.36,0.203527],237,"Up",[]],[[2744.4,2468.4,0.0881863],287,"Up",[]],[[2738.87,2468.57,3.68084],337,"Up",[]],[[2743.59,2467.97,3.5339],360,"Up",[]],[[2740.32,2442.97,4.1456],27,"Up",[]],[[2738.44,2459.08,3.28839],237,"Up",[]],[[2719.17,2449.14,0.749516],22,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2760.79,2458.34,0.604433],343,"Up",[]],[[2771,2471.11,1.43464],311,"Up",[]],[[2770.39,2457.4,0.981306],297,"Up",[]],[[2770.34,2453.92,1.22961],255,"Up",[]],[[2777,2458.93,0.691343],314,"Up",[]],[[2771.71,2460.44,0.445869],335,"Middle",[]],[[2775.6,2452.52,0.768696],207,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		waitUntil {sleep 5; {Alive _X || getDammage _X < 0.5} count [cache_1,cache_2,cache_3] == 0; };
		["secure_perimeter","SUCCEEDED"] call BIS_fnc_taskSetState;
		sleep 5;
		[true, ["raids","OutpostTask"], ["We have many suspected villages that support the insurgents. They are marked on your map, insert nearby the positions and deploy the forces to eradicate the insurgents.", "Search and Destroy", ""], [], "ASSIGNED", 1, true, "attack"] call BIS_fnc_taskCreate;
		ATTACK_ENDS = TRUE;
		publicVariable "ATTACK_ENDS";
	};

	case 4: {
		_Ambush1Attackers = [];

		[ambush_1_1,"rush",4,east,_Ambush1Attackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[ambush_1_2,"rush",4,east,_Ambush1Attackers] spawn OKS_fnc_Lambs_SpawnGroup;	
		[ambush_1_3,"rush",4,east,_Ambush1Attackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[ambush_1_4,"rush",4,east,_Ambush1Attackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[ambush_1_5,"rush",4,east,_Ambush1Attackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[ambush_1_6,"rush",4,east,_Ambush1Attackers] spawn OKS_fnc_Lambs_SpawnGroup;	
		[ambush_1_7,"rush",4,east,_Ambush1Attackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[ambush_1_8,"rush",4,east,_Ambush1Attackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[ambush_1_9,"rush",4,east,_Ambush1Attackers] spawn OKS_fnc_Lambs_SpawnGroup;

		/// Ambush 1 - North East
		[[],[["UK3CB_ADR_O_Hilux_Zu23_Front",[4563.2,3825.13,-3.05176e-005],300,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["AD",1]],[7,["ClanLogo_Hide",1]]]]],[[[4461.95,3845.22,0],[[0,"Move"]]],[[4349.37,3805.52,6.10352e-005],[[0,"Move"]]],[[4252.05,3860.98,4.57764e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADR_O_Hilux_Pkm",[4572.72,3880.5,0],252,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["AD",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]]],[[[4387.02,3819.55,9.15527e-005],[[0,"Move"]]],[[4163.95,3837.21,-7.62939e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	
		sleep 15;
		["HQ","side","1-1 if you dont notice anything suspicious you may exfil and raid another area, HQ out."] remoteExec ["OKS_fnc_Chat",0];	
	};

	case 5: {

		[Base_1, Spawn_1, Trigger_3, 3,600,east,["UK3CB_ADA_O_Hilux_Pkm", "UK3CB_ADA_O_BTR40_MG", "UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn OKS_fnc_Huntbase;
		[Base_2, Spawn_2, Trigger_3, 3,600,east,["UK3CB_ADA_O_Hilux_Pkm", "UK3CB_ADA_O_BTR40_MG", "UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn OKS_fnc_Huntbase;

		//// START OF ZONE /////
		[	
			Trigger_3,  // Name of Trigger used as Spawn Area
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
		] spawn OKS_fnc_CreateZone;
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
		] spawn OKS_fnc_CreateZone;
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
		] spawn OKS_fnc_CreateZone;
		//// END OF ZONE ////		

		/// Mwami
		[[[[552.558,2214.59,0.368824],14,"Up",[]],[[549.387,2216.96,0.170391],14,"Up",[]],[[554.44,2209.24,0.205441],14,"Up",[]],[[553.968,2211.66,0.333118],14,"Up",[]],[[558.87,2208.02,0],102,"Up",[]],[[576.743,2209.48,0],184,"Up",[]]],[["UK3CB_ADA_O_DSHKM",[573.361,2209.32,0],143,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[561.164,2232.72,0],224,"Up",[]],[[589.153,2240.96,0.526855],266,"Up",[]],[[582.322,2249.99,0.682507],226,"Up",[]],[[569.396,2246.37,0.26992],327,"Up",[]],[[572.786,2245.73,0.510494],54,"Up",[]],[[576.042,2242.74,0.763622],14,"Up",[]],[[573.396,2240.39,0.604065],313,"Up",[]],[[565.694,2256.52,0],164,"Up",[]]],[["UK3CB_ADA_O_DSHKM",[573.021,2227.71,0],160,[["gunner",-1,[0]]],[]],["UK3CB_ADA_O_DSHKM",[546.177,2228.91,3.8147e-006],70,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[523.431,2284.62,0.709217],128,"Up",[]],[[520.107,2287.94,0.447109],205,"Middle",[]],[[528.083,2289.52,0.875862],128,"Up",[]],[[530.103,2292.63,0.944088],128,"Up",[]],[[525.501,2296.04,0.60104],190,"Middle",[]],[[531.677,2296.98,0.868084],258,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[Base_3, Spawn_3, Trigger_4, 4,300,east,["UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn OKS_fnc_Huntbase;
		[Base_4, Spawn_4, Trigger_4, 4,300,east,[ "UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn OKS_fnc_Huntbase;
		[Base_7, Spawn_7, Trigger_4, 4,300,east,[ "UK3CB_ADA_O_Pickup_DSHKM", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_LR_Open"],30] spawn OKS_fnc_Huntbase;
	};

	case 7:{

		// Ambush 2
		_Ambush2Attackers = [];

		[ambush_2_1,"rush",4,east,_Ambush2Attackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[ambush_2_2,"rush",4,east,_Ambush2Attackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[ambush_2_3,"rush",4,east,_Ambush2Attackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[ambush_2_4,"rush",4,east,_Ambush2Attackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[ambush_2_5,"rush",4,east,_Ambush2Attackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[ambush_2_6,"rush",4,east,_Ambush2Attackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[ambush_2_7,"rush",4,east,_Ambush2Attackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[ambush_2_8,"rush",4,east,_Ambush2Attackers] spawn OKS_fnc_Lambs_SpawnGroup;

	};

	case 8: {

		{
			_X setVariable ["HaltFire",false,true]
		} foreach [mortar_1,mortar_2,mortar_3];	

		// Last Wave - Defence
		_SouthernAttackers = [];
		
		_StrikeTargets = [
			strike_1,strike_10,strike_11,strike_12,strike_13,strike_14,
			strike_15,strike_16,strike_17,strike_18,strike_19,strike_2,
			strike_20,strike_21,strike_22,strike_23,strike_24,strike_25,
			strike_3,strike_4,strike_5,strike_6,strike_7,strike_8,strike_9
		];
		[mortar_1,_StrikeTargets,east,1,4,true,true,10,false] spawn OKS_fnc_ArtySuppression; sleep 3;
		[mortar_2,_StrikeTargets,east,1,4,true,true,10,false] spawn OKS_fnc_ArtySuppression; sleep 3;
		[mortar_3,_StrikeTargets,east,1,4,true,true,10,false] spawn OKS_fnc_ArtySuppression;

		sleep 20;
		[true, ["spotter_3","OutpostTask"], ["Your outpost has been targeted by mortars. Find the enemy spotters and silence those mortars!", "Eliminate Spotters", ""], [], "ASSIGNED", 1, true, "search"] call BIS_fnc_taskCreate;

		waitUntil {sleep 5; {Alive _X || [_X] call ace_common_fnc_isAwake} count [spotter_1,spotter_2,spotter_3] == 0};
		["spotter_3","SUCCEEDED"] call BIS_fnc_taskSetState;
		{
			_X setVariable ["HaltFire",true,true]
		} foreach [mortar_1,mortar_2,mortar_3];	
		sleep 15;

		[true, ["defend_south","OutpostTask"], ["Your outpost has been targeted, we assume based on intel the attack is inbound from the south.", "Repel Attack: South", ""], [], "ASSIGNED", 1, true, "defend"] call BIS_fnc_taskCreate;
		//["HQ","side","1-1, nearby satellite coverage confirms next attack will arrive from the north, it seems to be their last force, HQ out."] remoteExec ["OKS_fnc_Chat",0];

		/// NORTH Attack
		[s_1,"rush",4,east,1000,_SouthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[s_2,"rush",4,east,1000,_SouthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;	
		[s_3,"rush",4,east,1000,_SouthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[s_4,"rush",4,east,1000,_SouthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[s_5,"rush",4,east,1000,_SouthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[s_6,"rush",4,east,1000,_SouthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		sleep 10;
		[s_1,"hunt",4,east,1000,_SouthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[s_2,"hunt",4,east,1000,_SouthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;	
		[s_3,"hunt",4,east,1000,_SouthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[s_4,"hunt",4,east,1000,_SouthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[s_5,"hunt",4,east,1000,_SouthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;
		[s_6,"hunt",4,east,1000,_SouthernAttackers] spawn OKS_fnc_Lambs_SpawnGroup;

		// _SouthernAttackers pushBackUnique _Overwatch1;	
		// _SouthernAttackers pushBackUnique _Overwatch2;

		waitUntil {sleep 5; {{Alive _X || [_X] call ace_common_fnc_isAwake} count units _X == 0} count _SouthernAttackers == count _SouthernAttackers};
		//systemChat "Southern Attack repelled.";
		["defend_south","SUCCEEDED"] call BIS_fnc_taskSetState;
		sleep 5;
		["HQ","side","Good work 1-1, you have successfully repelled the attacks on Outpost Oklahoma. We request that you go on the offensive, raid the nearby villages and destroy any and all insurgents, HQ out."] remoteExec ["OKS_fnc_Chat",0];
		[true, ["secure_perimeter","OutpostTask"], ["The nearest village of Glendye is now a suspected insurgent staging point, it is the closest village to the outpost and it must be cleared of the insurgents. Find and destroy 3 equipment caches in the area, expect heavy resistance.", "Secure Glendye", ""], [], "ASSIGNED", 1, true, "attack"] call BIS_fnc_taskCreate;
	
		{
			_X setMarkerAlpha 0
		} foreach ["spotter_1","spotter_2","spotter_3","spotter_4","spotter_5","spotter_6"];	

		null = [3] spawn GW_Fnc_spawnList;
	};

	case 9: {

		// Bromley
		[[[[3324.33,1177.91,-7.62939e-06],179,"Up",[]],[[3319.02,1175.43,-7.62939e-06],179,"Up",[]],[[3323.12,1196.84,-7.62939e-06],35,"Middle",[]],[[3314.64,1203.37,-5.72205e-06],60,"Middle",[]],[[3307.44,1215.37,-7.62939e-06],321,"Up",[]],[[3295.68,1202.64,-7.62939e-06],278,"Up",[]],[[3298.62,1197.63,-7.62939e-06],243,"Up",[]],[[3307.49,1188.2,-9.53674e-06],232,"Middle",[]],[[3307.68,1189.36,-7.62939e-06],261,"Middle",[]]],[["UK3CB_ADM_O_DSHKM",[3315.19,1194.53,0],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrol
		[[[[3424.45,1158.85,0],0,[]],[[3429.45,1153.85,0],0,[]],[[3419.45,1153.85,0],0,[]],[[3434.45,1148.85,0],0,[]]],[],[[[3304.23,1093.13,0],[[0,"Move"]]],[[3158.37,1175.68,0],[[0,"Move"]]],[[3252.14,1281.47,1.90735e-06],[[0,"Move"]]],[[3409.22,1298.3,0],[[0,"Move"]]],[[3422.05,1196.52,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3173.79,828.845,0],0,[]],[[3178.79,823.845,0],0,[]],[[3168.79,823.845,0],0,[]],[[3183.79,818.845,0],0,[]]],[],[[[3053.57,763.125,0],[[0,"Move"]]],[[2907.71,845.675,0],[[0,"Move"]]],[[3001.48,951.466,0],[[0,"Move"]]],[[3158.56,968.296,0],[[0,"Move"]]],[[3171.38,866.513,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3203.34,1618.01,0],0,[]],[[3208.34,1613.01,1.90735e-06],0,[]],[[3198.34,1613.01,0],0,[]],[[3213.34,1608.01,0],0,[]]],[],[[[3083.13,1552.29,0],[[0,"Move"]]],[[2937.26,1634.84,0],[[0,"Move"]]],[[3031.03,1740.63,0],[[0,"Move"]]],[[3188.12,1757.46,1.90735e-06],[[0,"Move"]]],[[3200.94,1655.68,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3108.1,1114.44,6.48499e-05],0,[]],[[3113.1,1109.44,1.15865],0,[]],[[3103.1,1109.44,6.48499e-05],0,[]],[[3118.1,1104.44,0.622152],0,[]]],[],[[[2987.88,1048.72,6.48499e-05],[[0,"Move"]]],[[2842.02,1131.27,6.48499e-05],[[0,"Move"]]],[[2935.79,1237.06,6.38962e-05],[[0,"Move"]]],[[3092.87,1253.89,6.48499e-05],[[0,"Move"]]],[[3105.69,1152.11,6.67572e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3191.45,1373.51,0],0,[]],[[3196.45,1368.51,1.15858],0,[]],[[3186.45,1368.51,0],0,[]],[[3201.45,1363.51,0.622089],0,[]]],[],[[[3071.24,1307.79,0],[[0,"Move"]]],[[2925.37,1390.34,0],[[0,"Move"]]],[[3019.14,1496.13,0],[[0,"Move"]]],[[3176.23,1512.96,0],[[0,"Move"]]],[[3189.05,1411.18,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3528.69,1413.24,0],0,[]],[[3533.69,1408.24,1.15858],0,[]],[[3523.69,1408.24,0],0,[]],[[3538.69,1403.24,0.622089],0,[]]],[],[[[3408.47,1347.52,0],[[0,"Move"]]],[[3262.61,1430.07,0],[[0,"Move"]]],[[3356.38,1535.87,1.90735e-06],[[0,"Move"]]],[[3513.46,1552.7,0],[[0,"Move"]]],[[3526.29,1450.91,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3699.72,1309.63,0],293,[]],[[3706.28,1312.29,1.15858],293,[]],[[3702.38,1303.08,0],293,[]],[[3712.83,1314.94,0.622087],293,[]]],[],[[[3713.37,1173.3,0],[[0,"Move"]]],[[3580.48,1071.17,0],[[0,"Move"]]],[[3519.62,1198.77,0],[[0,"Move"]]],[[3565.37,1349.98,0],[[0,"Move"]]],[[3664.1,1322.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3437.98,986.008,0],293,[]],[[3444.53,988.663,1.15858],293,[]],[[3440.63,979.454,0],293,[]],[[3451.09,991.318,0.62208],293,[]]],[],[[[3451.62,849.682,0],[[0,"Move"]]],[[3318.74,747.548,0],[[0,"Move"]]],[[3257.88,875.145,0],[[0,"Move"]]],[[3303.63,1026.36,0],[[0,"Move"]]],[[3402.35,998.481,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 10: {
		// South Bromley
		{
			[_X,"rush",6,east,1000,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [rush_1,rush_2,rush_3,rush_12];
		[vehicles_1,NEKY_Hunt_Trigger_1,"UK3CB_TKM_O_BTR60",8,east,1000] spawn OKS_fnc_Mechanized_Spawn;
	};

	case 11: {
		// North Bromley
		{
			[_X,"rush",6,east,1000,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [rush_4,rush_5,rush_6,rush_7];
		[vehicles_1,NEKY_Hunt_Trigger_1,"UK3CB_TKM_O_BTR60",8,east,1000] spawn OKS_fnc_Mechanized_Spawn;
	};

	case 12: {
		// East Bromley
		{
			[_X,"rush",6,east,1000,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [rush_7,rush_8,rush_9,rush_10,rush_11];
	};	

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};

