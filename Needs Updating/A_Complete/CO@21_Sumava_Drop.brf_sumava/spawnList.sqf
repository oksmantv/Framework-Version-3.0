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

		[Group officer_1,[9746.65,3424.44,0],west,false,nil,false] spawn OKS_Evacuate_HVT;

		// Patrols
		[[[[6456.64,4056.38,0],0,[]],[[6446.64,4056.38,0],0,[]],[[6461.64,4051.38,-7.62939e-006],0,[]]],[],[[[6275.88,4054.89,0],[[0,"Move"],[1,"SAFE"]]],[[6240.92,3993.17,4.57764e-005],[[0,"Move"]]],[[6175.78,4004.42,7.62939e-006],[[0,"Move"]]],[[6156.26,4034.37,-7.62939e-006],[[0,"Move"]]],[[6238.13,4101.94,-7.62939e-006],[[0,"Move"]]],[[6308.13,4111.55,-3.05176e-005],[[0,"Move"]]],[[6443.09,4086.66,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6122.13,4020.22,0],0,[]],[[6112.13,4020.22,0],0,[]],[[6127.13,4015.22,0],0,[]]],[],[[[6023.96,3944.7,7.62939e-006],[[0,"Move"],[1,"SAFE"]]],[[5904.21,3995.76,-7.62939e-006],[[0,"Move"]]],[[5884.27,4083.28,0.000137329],[[0,"Move"]]],[[6028.91,4123.93,-0.000198364],[[0,"Move"]]],[[6105.63,4039.75,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6386.45,4248.87,0],0,[]],[[6376.45,4248.87,0],0,[]],[[6391.45,4243.87,0],0,[]]],[],[[[6242.5,4331.73,0],[[0,"Move"],[1,"SAFE"]]],[[6221.72,4156.18,-0.000118256],[[0,"Move"]]],[[6334.96,4155.69,7.62939e-006],[[0,"Move"]]],[[6379.69,4218.78,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5990.1,4153.13,0],160,[]],[[5999.49,4156.56,0],160,[]],[[5983.69,4156.11,0],160,[]]],[],[[[6077.77,4214.95,0],[[0,"Move"],[1,"SAFE"]]],[[6169.2,4296.43,3.43323e-005],[[0,"Move"]]],[[6233.23,4214.43,-0.000152588],[[0,"Move"]]],[[6417.13,4052.6,7.62939e-005],[[0,"Move"]]],[[6122.16,4036.64,0],[[0,"Move"]]],[[6020.14,4147.04,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Statics.
		[[[[6270.24,4055.37,0],203,"Middle",[]],[[6245.38,4058.78,0],165,"Middle",[]],[[6257.6,4061.01,-7.62939e-006],181,"Middle",[]],[[6232.02,4032.07,0],237,"Middle",[]],[[6256.07,4088.63,0.512451],189,"Up",[]],[[6255.09,4089.06,0.581398],189,"Up",[]],[[6253,4089.77,0.725471],189,"Up",[]],[[6250.86,4090.71,0.887306],189,"Up",[]],[[6252.1,4090.45,0.795349],189,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// AAA
		{
			[_X,east,false,800,true] spawn GW_Ambient_AAA;
		} foreach [aaa_1];
		{
			[_X,east,false,1500,true] spawn GW_Ambient_AAA; sleep 2;
		} foreach [aaa_2,aaa_3];


	};

	case 2: {

		// Patrols.
		[[[[5641.76,4695.86,0],0,[]],[[5631.76,4695.86,0],0,[]],[[5646.76,4690.86,0],0,[]]],[],[[[5568.1,4692.23,0],[[0,"Move"],[1,"SAFE"]]],[[5563.75,4755.29,0],[[0,"Move"]]],[[5652.13,4759.31,-2.38419e-006],[[0,"Move"]]],[[5640.46,4711.54,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5434.67,4749.97,0],153,[]],[[5443.57,4754.54,0],153,[]],[[5427.94,4752.14,0],153,[]]],[],[[[5525.29,4772.32,0],[[0,"Move"],[1,"SAFE"]]],[[5564,4731.74,0],[[0,"Move"]]],[[5476.9,4683.56,0],[[0,"Move"]]],[[5443,4736.61,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5472.94,4601.25,0],77,[]],[[5470.77,4611.01,0],77,[]],[[5469.14,4595.29,0],77,[]]],[],[[[5436.25,4673.93,4.76837e-007],[[0,"Move"],[1,"SAFE"]]],[[5708.82,4673.26,4.76837e-007],[[0,"Move"]]],[[5604.51,4615.53,0],[[0,"Move"]]],[[5487.97,4605.92,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5601.33,4847.52,0],0,[]],[[5591.33,4847.52,0],0,[]],[[5595.8,4846.81,0],0,[]]],[],[[[5545.49,4844.02,0],[[0,"Move"],[1,"SAFE"]]],[[5539.39,4926.12,0],[[0,"Move"]]],[[5597.45,4918,4.76837e-007],[[0,"Move"]]],[[5600.02,4863.21,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5525.24,4826.94,0],0,[]],[[5515.24,4826.94,0],0,[]],[[5520.96,4826.34,0],0,[]]],[],[[[5441.44,4828.43,2.38419e-007],[[0,"Move"],[1,"SAFE"]]],[[5472.11,4899.72,0],[[0,"Move"]]],[[5519.61,4886.32,0],[[0,"Move"]]],[[5523.94,4842.63,0.341857],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5388.52,4846.54,4.76837e-007],60,[]],[[5383.44,4855.16,4.76837e-007],60,[]],[[5383.93,4849.07,0],60,[]]],[],[[[5384.22,4920.33,0],[[0,"Move"],[1,"SAFE"]]],[[5444.04,4930.52,0],[[0,"Move"]]],[[5449.45,4855.91,0],[[0,"Move"]]],[[5405.47,4834.89,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5466.57,4835.25,0.109829],47,[]],[[5459.76,4842.57,0],47,[]],[[5460.72,4837.19,0],47,[]]],[],[[[5457.66,4890.27,0],[[0,"Move"],[1,"SAFE"]]],[[5502.89,4940.42,0],[[0,"Move"]]],[[5496.16,4864.47,0],[[0,"Move"]]],[[5472,4840.93,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5377.33,4970.9,0],156,[]],[[5386.44,4975.03,0],156,[]],[[5370.71,4973.39,0],156,[]]],[],[[[5473.5,5008.39,0],[[0,"Move"],[1,"SAFE"]]],[[5514.3,4846.51,0],[[0,"Move"]]],[[5396.26,4861.04,0],[[0,"Move"]]],[[5384.99,4957.15,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Static.
		[[[[5519.31,4738.76,0],82,"Up",[]],[[5523.71,4730.58,5.27124],183,"Up",[]],[[5521.12,4733.65,5.27124],88,"Up",[]]],[["UK3CB_CW_SOV_O_EARLY_MTLB_PKT",[5429.6,4705.12,0],229,[["driver",-1,[]],["commander",-1,[0]]],[[6,["SOV",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5538.27,4729.57,0],239,"Up",[]],[[5550.24,4729.6,0.791291],244,"Up",[]],[[5547.42,4737.94,3.54357],172,"Up",[]],[[5549.41,4732.49,3.54357],239,"Up",[]],[[5551.55,4736.17,3.54357],104,"Up",[]],[[5550.27,4735.81,0.791291],200,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5570.6,4834.63,5.77195],204,"Up",[]],[[5570.9,4840.35,3.09892],84,"Up",[]],[[5572.2,4837.82,1.64256],177,"Up",[]],[[5618.46,4815.58,4.38172],217,"Up",[]]],[["UK3CB_CW_SOV_O_EARLY_MTLB_PKT",[5679.21,4831.21,0],244,[["driver",-1,[]],["commander",-1,[0]]],[[6,["SOV",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5532.25,4841.81,0.0815721],57,"Up",[]],[[5530.56,4853.21,0.306087],42,"Up",[]],[[5535.51,4853.1,0.346232],111,"Up",[]],[[5522.57,4850.56,0.404037],179,"Up",[]],[[5547.08,4866.39,1.08097],190,"Up",[]],[[5551.77,4864.58,1.15556],209,"Up",[]]],[["UK3CB_CW_SOV_O_EARLY_MTLB_PKT",[5549.29,4843.72,0],189,[["driver",-1,[]],["commander",-1,[0]]],[[6,["SOV",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5512.34,4863.65,0.52224],289,"Up",[]],[[5490.3,4851.56,0.806597],79,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5454.62,4875.57,3.16422],355,"Up",[]],[[5453.37,4909.01,0.753746],180,"Up",[]],[[5438,4886.84,0.660623],147,"Up",[]],[[5441.33,4887.05,0.83721],147,"Up",[]],[[5448.4,4893.07,0.916153],147,"Up",[]],[[5445.86,4891.15,0.50143814],125,"Up",[]]],[["UK3CB_ADE_O_DSHKM",[5450.38,4897.54,0.3],149,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5430.3,4873.89,5.0994],169,"Up",[]],[[5434.06,4876.73,0],102,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5421.94,4878.19,0.582715],187,"Up",[]],[[5422.21,4878.07,4.56252],102,"Up",[]],[[5421.29,4891.87,0.349591],78,"Up",[]],[[5417.44,4891.47,9.53674e-007],154,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5427.75,4896.21,0.0659065],93,"Up",[]],[[5432.61,4891.69,0.390249],170,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		{
			[east,_X,[5117.21,1401.74,0],7,180,120] spawn OKS_ArtyFire; sleep 10;
		} foreach [arty_1,arty_2,arty_3,arty_4];

	};

	case 3: {

		[east, "UK3CB_CW_SOV_O_EARLY_Mi8", False, "unload", getPos helicopter_1,getPos land_1, getPos helicopter_exit, [2,0.4], [[5541.48,4703.51,0]]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 180;
		[east, "UK3CB_CW_SOV_O_EARLY_Mi8", False, "unload", getPos helicopter_5,getPos land_5, getPos helicopter_exit, [2,0.4], [[5541.48,4703.51,0]]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 180;
		[east, "UK3CB_CW_SOV_O_EARLY_Mi8", False, "unload", getPos helicopter_6,getPos land_6, getPos helicopter_exit, [2,0.4], [[5541.48,4703.51,0]]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf";

	};

	case 4: {

		[east, "UK3CB_CW_SOV_O_EARLY_Mi8", False, "unload", getPos helicopter_2,getPos land_2, getPos helicopter_exit, [2,0.4], [[5534.87,4867.41,0]]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 180;
		[east, "UK3CB_CW_SOV_O_EARLY_Mi8", False, "unload", getPos helicopter_3,getPos land_3, getPos helicopter_exit, [2,0.4], [[5534.87,4867.41,0]]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 180;
		[east, "UK3CB_CW_SOV_O_EARLY_Mi8", False, "unload", getPos helicopter_4,getPos land_4, getPos helicopter_exit, [2,0.4], [[5534.87,4867.41,0]]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf";

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
