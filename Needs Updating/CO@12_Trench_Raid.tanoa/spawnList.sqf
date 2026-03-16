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

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
/*
	Set AI Faces & Voices for Factions / Units

	Options:
	african
	asian
	english
	american
	middleeast
	russian
	french

	!! OKS_Ambience must be turned to 1 in MissionSettings.sqf !!
*/
if(isServer && GOL_OKS_AMBIENCE isEqualTo 1) then {
	waitUntil {sleep 1; !(isNil "OKS_FaceSwap")};
	[east,"african"] spawn OKS_FaceSwap;
};


params [
	"_case"
];

switch (_case) do {

	case 1: {

		[Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
		[Group HVT_1,getPos ExfilSite_1,west,true,"main_task"] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";

		// Main Trench
		[[[[10699.8,6557.78,1.19209e-007],149,"Middle",[]],[[10706.4,6548.23,0.0955215],123,"Up",[]],[[10711.6,6546.74,0.259751],123,"Up",[]],[[10715.5,6551.42,0.07512],51,"Middle",[]],[[10718.3,6559.86,0.155957],317,"Up",[]],[[10728.5,6579,1.19209e-007],64,"Middle",[]],[[10722.4,6579.36,0],140,"Middle",[]],[[10717.7,6588.73,-2.38419e-007],323,"Middle",[]],[[10719.1,6589.41,0],323,"Middle",[]],[[10716.9,6584.44,0],106,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10658.1,6529.65,-0.000146866],240,"Middle",[]],[[10673.2,6537.96,0],123,"Middle",[]],[[10668.3,6536.56,0.05071],304,"Up",[]],[[10689.5,6532.41,0.120458],123,"Up",[]],[[10693.5,6537.08,0],317,"Middle",[]],[[10687.2,6551.19,-2.38419e-007],64,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10657.9,6505.79,0],240,"Up",[]],[[10657.3,6507.05,0],240,"Up",[]],[[10662.8,6508.13,0.376481],39,"Middle",[]],[[10658.5,6510.77,0],104,"Up",[]],[[10669.4,6513.29,1.19209e-007],343,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10665.9,6496.38,0],124,"Up",[]],[[10670,6489.42,0],8,"Up",[]],[[10672.5,6491.1,0],322,"Up",[]],[[10682.8,6493.54,0],330,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[10653.8,6540.71,-0.000146866],145,"Middle",[]],[[10648.2,6550.58,0.093313],312,"Up",[]],[[10635.7,6555.06,-0.000146866],240,"Middle",[]],[[10639.9,6542.62,0],150,"Up",[]],[[10644.6,6536.06,-1.19209e-007],311,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10627.6,6527.98,1.0252e-005],142,"Middle",[]],[[10619.3,6520.96,-0.0143492],286,"Middle",[]],[[10615.8,6525.88,-6.81877e-005],202,"Middle",[]],[[10615.7,6522.93,-0.000104189],231,"Middle",[]],[[10636.1,6517.05,-0.000146866],57,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10600.7,6558.33,0.0583816],229,"Up",[]],[[10603.8,6551.29,7.31945e-005],229,"Up",[]],[[10593.6,6542.89,-5.03063e-005],229,"Middle",[]],[[10605.2,6531.77,6.17504e-005],229,"Middle",[]],[[10601.7,6534.28,2.52724e-005],229,"Up",[]],[[10616.8,6542.68,2.98023e-005],124,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10576.7,6580.71,-4.95911e-005],290,"Up",[]],[[10577.7,6578.18,1.23978e-005],229,"Up",[]],[[10578.3,6572.22,3.09944e-006],229,"Middle",[]],[[10570.5,6565.42,-1.19209e-005],162,"Middle",[]],[[10581.6,6553.74,2.6226e-006],58,"Middle",[]],[[10593.2,6564.52,-6.24657e-005],81,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10622.1,6553.91,-0.000146627],146,"Middle",[]],[[10625,6567.1,-0.000146866],230,"Middle",[]],[[10621.4,6579.56,0],146,"Up",[]],[[10611,6575.92,-0.000146866],54,"Middle",[]],[[10599.2,6580.78,-0.000146866],161,"Middle",[]],[[10606.4,6592.79,-0.000146866],230,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10585.1,6616.65,0.277854],146,"Up",[]],[[10582,6615.94,0.287264],218,"Up",[]],[[10580.5,6618.39,0.258581],219,"Up",[]],[[10579.4,6620.99,0.2211],296,"Up",[]],[[10583.4,6623.54,0.251219],319,"Up",[]],[[10585.4,6628.96,0],150,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10601.8,6600.99,-0.000146866],149,"Middle",[]],[[10594.4,6604.15,0],49,"Middle",[]],[[10589.7,6597.59,0.246175],10,"Middle",[]],[[10585.8,6603.49,-0.000146866],111,"Middle",[]],[[10585.2,6600.53,-0.000146866],240,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 2: {
	};

	case 3: {

		sleep 10;

		CounterComplete = false;
		["hq","side","Raptor 1, this is HQ, surveillance suggests an enemy counter-attack is inbound from Kotomo. Defend the trench and hold them off!"] remoteExec ["OKS_Chat",0];
		[true, ["defend_1","main_task"], ["The enemy forces in Kotomo are staging to counter-attack. Repel the counter-attack and defend the trench!", "Repel Counter-Attack", "Defend"], nil, "ASSIGNED", 2, true,"defend"] call BIS_fnc_taskCreate;
		
		sleep 120;
		
		// Trench Counter-Attack
		[[attack_1,attack_2,attack_3,attack_4],3,2,60,east,1500,"CounterComplete"] spawn OKS_Rush_Wavespawn; sleep 30;
		_Group = [[],[["UK3CB_TKA_O_BTR80",[10937.6,6298.42,0],348,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[[[10806.6,6541.52,0],[[0,"Move"]]],[[10760.5,6548.53,3.26633e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

		waitUntil {sleep 5; CounterComplete && {Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group == 0};
		["defend_1","SUCCEEDED",true] call BIS_fnc_taskSetState;

		["hq","side","Raptor 1, this is HQ, good work on repelling the attack. Proceed to clear out the village of Komoto and search for HVTs at their HQ."] remoteExec ["OKS_Chat",0];
		[true, ["attack_1","main_task"], ["The Enemy attack has been repelled! Proceed towards the village of Komoto and secure it, find and capture any HVTs in the area.", "Seize Komoto", "Attack"], nil, "ASSIGNED", 2, true,"attack"] call BIS_fnc_taskCreate;

		// Village Patrols
		[[[[10913.1,6294.36,0],0,[]],[[10918.1,6289.36,4.76837e-007],0,[]],[[10908.1,6289.36,4.76837e-007],0,[]],[[10923.1,6284.36,4.76837e-007],0,[]]],[],[[[10945,6236.85,0],[[0,"Move"],[1,"SAFE"]]],[[10970.3,6258.16,0.000188828],[[0,"Move"]]],[[10958.2,6361.43,2.47955e-005],[[0,"Move"]]],[[10916.3,6363.05,0],[[0,"Move"]]],[[10913.1,6300.84,2.6226e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10966.6,6248.72,0.000562668],66,[]],[[10964,6242.13,0.000562668],66,[]],[[10960,6251.27,0.000562668],66,[]],[[10961.5,6235.53,0.000562668],66,[]]],[],[[[10884.9,6259.41,0],[[0,"Move"],[1,"SAFE"]]],[[10861.6,6213.42,0],[[0,"Move"]]],[[10915.1,6182.41,0],[[0,"Move"]]],[[10952.6,6161.93,0],[[0,"Move"]]],[[10964.5,6224.88,0.000562668],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10812.4,6323.26,0],0,[]],[[10817.4,6318.26,-4.76837e-007],0,[]],[[10807.4,6318.26,0],0,[]],[[10822.4,6313.26,0],0,[]]],[],[[[10801.5,6281.64,0],[[0,"Move"],[1,"SAFE"]]],[[10845.4,6228.95,-1.90735e-006],[[0,"Move"]]],[[10882.9,6247.59,-1.14441e-005],[[0,"Move"]]],[[10898.7,6288.43,-1.33514e-005],[[0,"Move"]]],[[10833.3,6311.73,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		/// Village Sentry
		[[[[10872.3,6282.59,2.83812],293,"Up",[]],[[10873.4,6287.91,2.6881],311,"Up",[]],[[10880.7,6286.3,0.577766],87,"Up",[]],[[10874.6,6280.32,0.320046],87,"Up",[]],[[10875.5,6289.9,0.150799],211,"Up",[]],[[10873,6282.49,0.346989],87,"Up",[]],[[10888.3,6276.1,0.137727],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10902.5,6268.18,3.83621],278,"Up",[]],[[10904.8,6278.68,3.87934],313,"Up",[]],[[10921,6273.56,0.428555],333,"Up",[]],[[10919.3,6266.68,0.400496],84,"Up",[]],[[10919.9,6276.9,0.457808],316,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10921.1,6276.53,3.50387],9,"Up",[]],[[10926.8,6272.23,3.23531],53,"Up",[]],[[10920.2,6265.85,3.43173],278,"Up",[]],[[10918.5,6268.76,3.52891],278,"Up",[]],[[10920.3,6273.99,3.54377],278,"Up",[]],[[10924.4,6273,0.289375],278,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10947.3,6288.89,4.04458],255,"Up",[]],[[10946.4,6299.25,3.81525],255,"Up",[]],[[10957.6,6296.14,3.74723],81,"Up",[]],[[10955.2,6304.1,3.68316],137,"Up",[]],[[10949.7,6294.98,0.679162],283,"Up",[]],[[10949,6301.43,0.513691],265,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10950.5,6307.05,3.64426],255,"Up",[]],[[10951.4,6304.34,0.452228],201,"Up",[]],[[10942.4,6334.42,7.1521],210,"Up",[]],[[10942,6335.83,7.16689],250,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		waitUntil {sleep 5; {captive _X || !alive _X} count [officer_1,officer_2,officer_3] == 3 && triggerActivated villageSecure};
		["attack_1","SUCCEEDED",true] call BIS_fnc_taskSetState;
		sleep 5;

		["hq","side","Raptor 1, this is HQ, Komoto is secure, the battalion is pushing through Komoto, keep the roads clear!"] remoteExec ["OKS_Chat",0];
		[convoy_1,convoy_2,convoy_3,west,[12,[
			"rhsgref_hidf_m1025_m2",
			"rhsgref_hidf_m1025_mk19",
			"rhsgref_hidf_m1025_m2",
			"rhsgref_hidf_m1025_m2",
			"rhsgref_hidf_M998_2dr_fulltop", 
			"rhsgref_hidf_M998_2dr_halftop", 
			"rhsgref_hidf_M998_2dr", 
			"rhsgref_hidf_M998_4dr_fulltop", 
			"rhsgref_hidf_m998_4dr", 
			"rhsgref_hidf_M998_4dr_halftop", 
			"rhsgref_hidf_m1025", 
			"rhsgref_hidf_m1025_m2"
			], 10, 25],[true,6],[], true, true] spawn OKS_Convoy_Spawn;
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
