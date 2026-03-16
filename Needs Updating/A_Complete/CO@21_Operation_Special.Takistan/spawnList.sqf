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

		[Group officer_1,getPos flag_west_1,west,false,nil,false] spawn OKS_Evacuate_HVT;

		// Hunt
		_Vehicles = ["UK3CB_TKM_O_Datsun_Pkm", "UK3CB_TKM_O_Datsun_Open", "UK3CB_TKM_O_Hilux_Open", "UK3CB_TKM_O_Hilux_Pkm", "UK3CB_TKM_O_LR_Closed", "UK3CB_TKM_O_LR_Open", "UK3CB_TKM_O_Pickup", "UK3CB_TKM_O_V3S_Closed", "UK3CB_TKM_O_V3S_Open", "UK3CB_TKM_O_UAZ_Closed", "UK3CB_TKM_O_UAZ_Open", "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_BTR40_MG"];
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,600,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 5,600,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_1, 5,600,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;

		/// Sentry
		[[[[6308.52,5022.37,0],152,"Up",[]],[[6314.46,5017.57,0],174,"Middle",[]],[[6277.65,5040.38,0.328918],163,"Up",[]],[[6279.31,5042.29,0.360168],302,"Up",[]],[[6273.47,5044.19,0.80072],163,"Up",[]],[[6275.8,5047.81,0.964752],335,"Up",[]],[[6300.52,5062.93,0],231,"Up",[]],[[6305.85,5065.86,0],127,"Middle",[]],[[6314.34,5043.35,3.9158],135,"Up",[]],[[6313.53,5042.38,3.91672],135,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6331.9,5004.92,0],163,"Up",[]],[[6321.71,5046.79,0],341,"Middle",[]],[[6336.45,5038.89,0],152,"Middle",[]],[[6327.83,5030.4,0.161804],37,"Up",[]],[[6317.18,5038.24,0.392639],132,"Middle",[]],[[6328.01,5028.44,3.46912],189,"Up",[]],[[6330.82,5036.86,3.54422],43,"Up",[]],[[6324.84,5040.24,0.276733],189,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6835.92,4966.98,0],211,"Middle",[]],[[6812.15,4972.18,0],211,"Middle",[]],[[6812.64,4975.46,2.58359],211,"Middle",[]],[[6818.98,4973.96,3.12244],183,"Middle",[]],[[6813.04,4975.18,0.173401],211,"Up",[]],[[6819.21,4974.32,0.276642],33,"Up",[]],[[6811.85,4941.35,0],178,"Middle",[]],[[6824.19,4937.54,0],150,"Middle",[]],[[6780.6,4959.3,0],247,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6836.84,5002.58,3.72986],165,"Middle",[]],[[6845.56,5001.35,2.99472],189,"Middle",[]],[[6814.23,4980.77,-3.05176e-005],57,"Middle",[]],[[6834.57,5004.47,0.746338],152,"Middle",[]],[[6839.97,5000.24,0.531219],205,"Up",[]],[[6844.01,5000.96,0.598175],211,"Middle",[]],[[6863.83,4985.83,0.640167],110,"Middle",[]],[[6871.94,4985.11,0.944061],310,"Middle",[]],[[6864.01,4977.94,0.364594],182,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6873.29,4981.76,0.924469],115,"Up",[]],[[6867.79,4960.15,0],182,"Middle",[]],[[6864.03,4960.46,0],218,"Middle",[]],[[6877.26,4956.41,2.42477],123,"Middle",[]],[[6877.39,4952.39,2.22784],56,"Middle",[]],[[6888.07,4954.21,0.951721],253,"Middle",[]],[[6887.72,4957.39,0.870667],197,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6550.34,4600.37,1.12976],153,"Middle",[]],[[6539.63,4599.17,1.2728],241,"Middle",[]],[[6547.45,4599.14,2.0163],262,"Auto",[]],[[6550.24,4594.02,1.18918],14,"Auto",[]],[[6540.44,4589.83,2.20178],72,"Middle",[]],[[6538.87,4593.71,3.04755],144,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6566.82,4600.25,0],264,"Middle",[]],[[6559.89,4611.72,1.76315],4,"Middle",[]],[[6557.94,4609.51,1.4631],278,"Auto",[]],[[6564.55,4608.81,1.22266],78,"Auto",[]],[[6564.87,4611.04,1.62851],199,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6559.72,4585.92,0],174,"Auto",[]],[[6568.94,4587.7,4.87103],174,"Auto",[]],[[6572.93,4588,3.98404],158,"Auto",[]],[[6570.54,4585.61,0.791687],14,"Auto",[]],[[6565.59,4583.15,0.642975],286,"Auto",[]],[[6565.16,4589.66,1.40207],63,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6656.93,4553.54,0.695465],145,"Middle",[]],[[6649,4557.33,0.711456],279,"Middle",[]],[[6647.25,4553.59,1.01529],286,"Up",[]],[[6648.88,4549.85,0.627533],101,"Middle",[]],[[6653.75,4551.04,1.05969],230,"Middle",[]],[[6651.77,4547.69,0.568756],8,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[6633.65,4374.64,3.05176e-005],0,[]],[[6638.65,4369.64,0],0,[]],[[6628.65,4369.64,0],0,[]],[[6643.65,4364.64,0],0,[]]],[],[[[6804.85,4505.31,0],[[0,"Move"],[1,"SAFE"]]],[[6806.36,4718.75,-3.05176e-005],[[0,"Move"]]],[[6648.19,4658.97,0],[[0,"Move"]]],[[6588.63,4500.74,3.05176e-005],[[0,"Move"]]],[[6610.1,4363.94,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6299.35,4411.19,3.05176e-005],0,[]],[[6304.35,4406.19,0],0,[]],[[6294.35,4406.19,0],0,[]],[[6309.35,4401.19,0],0,[]]],[],[[[6454.12,4410.23,3.05176e-005],[[0,"Move"],[1,"SAFE"]]],[[6546.09,4665.74,0],[[0,"Move"]]],[[6421.17,4721.19,0],[[0,"Move"]]],[[6309.87,4615.65,0],[[0,"Move"]]],[[6294.55,4439.11,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6213.69,4847.48,0],0,[]],[[6218.69,4842.48,0],0,[]],[[6208.69,4842.48,0],0,[]],[[6223.69,4837.48,0],0,[]]],[],[[[6344.26,4945.2,0],[[0,"Move"],[1,"SAFE"]]],[[6384.5,5114.45,0],[[0,"Move"]]],[[6231.83,5176.45,0],[[0,"Move"]]],[[6124.1,5006.23,0],[[0,"Move"]]],[[6190.15,4836.78,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6517.02,5072.02,0],116,[]],[[6510.35,5069.67,0],116,[]],[[6514.67,5078.69,0],116,[]],[[6503.68,5067.32,0],116,[]]],[],[[[6560.8,4861.14,0],[[0,"Move"],[1,"SAFE"]]],[[6743.68,4828.73,0],[[0,"Move"]]],[[6783.95,5003.77,0],[[0,"Move"]]],[[6644.32,5027.78,0],[[0,"Move"]]],[[6517.55,5097.87,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7040.72,4866.33,0],311,[]],[[7047.78,4866.78,0],311,[]],[[7041.17,4859.27,0],311,[]],[[7054.83,4867.23,0],311,[]]],[],[[[6994.57,5003.75,0],[[0,"Move"],[1,"SAFE"]]],[[6924.14,4991.04,0],[[0,"Move"]]],[[6853.17,4902.09,0],[[0,"Move"]]],[[6915.17,4836.96,3.05176e-005],[[0,"Move"]]],[[7033.2,4841.59,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Vehicles
		[[],[["UK3CB_TKM_O_Datsun_Pkm",[6655.66,4685.46,0],208,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_3",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]],["UK3CB_TKM_O_LR_SF_M2",[6318.45,4994.86,-3.05176e-005],151,[["driver",-1,[]],["gunner",-1,[3]],["commander",-1,[4]]],[[6,["Olive",1]],[7,["Spare_Wheel_Hide",0,"Spare_Wheel_1_Hide",0,"Spare_Wheel_2_Hide",1,"Radio_Hide",1,"Front_Grill_Hide",1,"Light_Covers_Hide",1,"ClanLogo_Hide",1]]]],["UK3CB_TKM_O_LR_SF_M2",[6866.11,4968.69,-6.10352e-005],228,[["driver",-1,[]],["gunner",-1,[3]],["commander",-1,[4]]],[[6,["Olive",1]],[7,["Spare_Wheel_Hide",0,"Spare_Wheel_1_Hide",0,"Spare_Wheel_2_Hide",1,"Radio_Hide",1,"Front_Grill_Hide",1,"Light_Covers_Hide",1,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

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
