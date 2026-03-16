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

		[Group hostage_1,[8439.02,5231.16,0],west,false,nil,true] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";
		[Group hostage_3,[8439.02,5231.16,0],west,false,nil,true] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";


		[[[[4796.32,5226.48,0],0,[]],[[4801.32,5221.48,0],0,[]],[[4791.32,5221.48,9.53674e-007],0,[]],[[4806.32,5216.48,0],0,[]]],[],[[[4853.87,5261.87,0],[[0,"Move"],[1,"SAFE"]]],[[4949.46,5330.59,-4.76837e-006],[[0,"Move"]]],[[4977.23,5497.45,-7.96318e-005],[[0,"Move"]]],[[4942.24,5332.35,1.04904e-005],[[0,"Move"]]],[[4849.94,5262.87,1.71661e-005],[[0,"Move"]]],[[4794.01,5227.44,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5176.28,5736.42,0],0,[]],[[5181.28,5731.42,0],0,[]],[[5171.28,5731.42,0],0,[]],[[5186.28,5726.42,0.208433],0,[]]],[],[[[5261.83,5739.04,0],[[0,"Move"],[1,"SAFE"]]],[[5327.53,5820.47,0],[[0,"Move"]]],[[5362.23,5941.22,0],[[0,"Move"]]],[[5190.58,5905.14,0],[[0,"Move"]]],[[5144.78,5801.96,0],[[0,"Move"]]],[[5173.97,5737.39,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7523.32,5045.6,0],261,[]],[[7527.47,5051.33,0],261,[]],[[7529.05,5041.45,0],261,[]],[[7531.62,5057.05,0],261,[]]],[],[[[7479.3,5096.86,0],[[0,"Move"],[1,"SAFE"]]],[[7396.39,5180.43,0],[[0,"Move"]]],[[7299.21,5302.51,0],[[0,"Move"]]],[[7395.79,5173.02,0],[[0,"Move"]]],[[7478.94,5092.83,0],[[0,"Move"]]],[[7522.73,5043.17,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7553.77,5132.56,0],0,[]],[[7558.77,5127.56,0],0,[]],[[7548.77,5127.56,0],0,[]],[[7563.77,5122.56,0],0,[]]],[],[[[7580.27,5130.87,0],[[0,"Move"],[1,"SAFE"]]],[[7627.74,5211.21,0],[[0,"Move"]]],[[7677.3,5293.11,0],[[0,"Move"]]],[[7579.23,5325.97,0],[[0,"Move"]]],[[7502.02,5183.56,0],[[0,"Move"]]],[[7551.46,5133.53,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		[[[[4919.32,5323.78,3.24952],248,"Middle",[]],[[4919.37,5326.46,3.34913],262,"Middle",[]],[[4935.79,5346.61,3.99843],324,"Middle",[]],[[4934.9,5345.05,3.85053],267,"Middle",[]],[[4935.04,5335.39,3.66201],252,"Middle",[]],[[4935.23,5337.12,3.70235],284,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5270.47,5841.02,0],196,"Up",[]],[[5264.2,5835.94,4.95874],151,"Middle",[]],[[5258.91,5836.98,3.81016],189,"Middle",[]],[[5241.06,5837.34,0.705578],183,"Up",[]],[[5243.34,5840.67,0.649298],107,"Up",[]],[[5253.44,5849.34,1.05833],184,"Up",[]],[[5251.94,5852.44,1.2803],183,"Up",[]],[[5246.85,5849.59,0.62117],124,"Up",[]],[[5235.07,5838.7,1.46252],79,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7219.44,5243.33,9.53674e-007],17,"Middle",[]],[[7226.7,5233.49,0],17,"Middle",[]],[[7239.45,5229.16,4.76837e-007],17,"Middle",[]],[[7254.21,5222.77,0],355,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7276.08,5303.47,0],293,"Middle",[]],[[7273.9,5297.53,0],298,"Middle",[]],[[7273.5,5294.03,0],289,"Middle",[]],[[7272.72,5290.19,0],291,"Middle",[]],[[7280.65,5287.34,0],199,"Middle",[]],[[7298.39,5271.31,-4.76837e-007],199,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7418.82,5020.18,1.38698],25,"Up",[]],[[7420.66,5015.37,0],43,"Up",[]],[[7403.27,5028.88,0],349,"Up",[]],[[7390.63,5030.39,0],347,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7541.9,5144.13,3.94304],266,"Middle",[]],[[7546.78,5139.13,4.19872],252,"Middle",[]],[[7551.34,5147.52,0.861608],264,"Middle",[]],[[7538.23,5151.39,0.380413],219,"Up",[]],[[7537.16,5154.94,0.677916],306,"Up",[]],[[7541.16,5159.06,0.949169],190,"Middle",[]],[[7549.6,5152.52,1.13581],119,"Middle",[]],[[7555.66,5152.63,1.29259],296,"Middle",[]],[[7560.69,5150.81,1.21771],241,"Middle",[]],[[7555.23,5157.71,1.84592],266,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {

		[[[[6143.27,5828.51,0],326,[]],[[6136.96,5821.46,0],326,[]],[[6149.1,5828.82,0],326,[]],[[6145.79,5824.14,0],326,[]],[[6162.79,5838.32,0],326,[]],[[6120.02,5813.89,0],326,[]],[[6155.72,5833.3,0],326,[]],[[6127.44,5817.37,0],326,[]]],[],[[[6064.49,5924.77,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6138,6130.08,9.53674e-007],226,[]],[[6146.01,6125.02,1.90735e-006],226,[]],[[6136.73,6135.77,9.53674e-007],226,[]],[[6141.9,6133.29,1.90735e-006],226,[]],[[6125.1,6147.7,9.53674e-007],226,[]],[[6156.28,6109.57,0],226,[]],[[6131.22,6141.56,9.53674e-007],226,[]],[[6151.61,6116.32,0],226,[]]],[],[[[6043.31,6022.26,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		[[[[5325.82,6303.56,0],195,[]],[[5323.67,6307.22,0],195,[]],[[5321.74,6307.72,0],195,[]],[[5319.8,6308.22,0],195,[]],[[5317.86,6308.73,0],195,[]],[[5315.93,6309.23,0],195,[]],[[5313.99,6309.73,0],195,[]],[[5312.06,6310.24,0],195,[]]],[],[[[5281.17,5841.32,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5839.68,6224.52,0.871125],255,[]],[[5841.78,6228.21,0.871125],255,[]],[[5841.26,6230.13,0.871125],255,[]],[[5840.73,6232.06,0.871125],255,[]],[[5840.2,6233.99,0.871125],255,[]],[[5839.68,6235.92,0.871125],255,[]],[[5839.15,6237.85,0.871125],255,[]],[[5838.63,6239.78,0.871125],255,[]]],[],[[[5283.08,5832.74,0.871183],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4802.09,6168.1,0],135,[]],[[4797.84,6168.1,9.53674e-007],135,[]],[[4796.43,6166.69,9.53674e-007],135,[]],[[4795.01,6165.28,9.53674e-007],135,[]],[[4793.59,6163.87,9.53674e-007],135,[]],[[4792.18,6162.46,0],135,[]],[[4790.76,6161.04,9.53674e-007],135,[]],[[4789.35,6159.63,0],135,[]]],[],[[[5260.85,5841.33,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

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
