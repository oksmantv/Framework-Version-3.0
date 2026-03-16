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

		// Roadblock
		[[[[4234.97,4304.15,6.2485],280,"Up",[]],[[4237.84,4305.02,6.27084],303,"Middle",[]],[[4234.31,4304.02,3.1389],351,"Middle",[]],[[4234.35,4302.48,3.13817],299,"Middle",[]],[[4234.72,4299.11,3.14009],289,"Middle",[]],[[4233.14,4276.87,3.30735],270,"Middle",[]],[[4233.43,4282.4,3.64109],270,"Middle",[]],[[4233.65,4287.31,3.61197],270,"Up",[]],[[4232.17,4371.96,0.0818443],180,"Middle",[]],[[4244.92,4374.29,0.115232],193,"Middle",[]],[[4183,4357.78,0.222086],95,"Up",[]],[[4257.21,4343.52,0],274,"Middle",[]],[[4256.09,4350.55,0],273,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[4294.74,4391.96,3.5237],251,"Up",[]],[[4294.99,4389.55,3.52697],251,"Up",[]],[[4295.5,4387.43,3.56008],230,"Up",[]],[[4300.14,4387.26,3.61891],230,"Up",[]],[[4294.41,4394.32,3.47898],230,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// First HQ
		[[[[4282.88,4475.13,3.46573],253,"Up",[]],[[4289.34,4473.97,3.47919],76,"Up",[]],[[4281.92,4479.67,5.9287],247,"Up",[]],[[4283.53,4478.76,9.03205],186,"Middle",[]],[[4287.62,4479.01,9.0278],189,"Middle",[]],[[4281.11,4486.66,4.58541],268,"Up",[]],[[4287.92,4486.6,4.58541],265,"Up",[]],[[4285.98,4474.17,0.0944443],279,"Up",[]],[[4284.24,4486.81,0.140594],285,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// First Compound
		[[[[4274.48,4747.68,0.525064],140,"Up",[]],[[4280.21,4750.16,0.527126],171,"Up",[]],[[4285.73,4750.32,0.798035],222,"Up",[]],[[4278.36,4749.36,3.60645],227,"Middle",[]],[[4283.77,4747.03,3.30591],227,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4261.15,4713.74,0.00186157],250,"Up",[]],[[4281.28,4715.6,0],268,"Middle",[]],[[4273.26,4718.89,0.326988],8,"Up",[]],[[4264.73,4713.92,0.340494],179,"Middle",[]],[[4264.68,4714.25,3.13029],18,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4247.63,4718.31,3.00304],195,"Up",[]],[[4244.95,4720.71,3.16233],235,"Up",[]],[[4251.35,4725.53,0.379877],250,"Up",[]],[[4250.25,4723.49,3.17997],345,"Up",[]],[[4251.09,4720.82,6.28186],275,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4246.09,4735.57,2.37706],9,"Up",[]],[[4245.79,4742.96,1.592],263,"Up",[]],[[4241.48,4744.6,0.601604],177,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrol
		[[[[4243.66,4493.66,0],224,[]],[[4249.6,4497.17,0],224,[]],[[4250.73,4493.8,0],224,[]],[[4246.99,4499.59,0],224,[]],[[4251.66,4491.86,0],224,[]],[[4247.71,4503.64,0],224,[]]],[],[[[4159.77,4467.29,0],[[0,"Move"],[1,"SAFE"]]],[[4139.87,4536.02,0],[[0,"Move"]]],[[4215.86,4559.99,0],[[0,"Move"]]],[[4242.01,4505.79,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4344.56,4443.59,0],224,[]],[[4350.5,4447.1,0],224,[]],[[4351.63,4443.73,0],224,[]],[[4347.89,4449.53,0],224,[]],[[4352.56,4441.79,0],224,[]],[[4348.61,4453.57,0],224,[]]],[],[[[4239.39,4427.24,0],[[0,"Move"],[1,"SAFE"]]],[[4231.06,4459.73,0],[[0,"Move"]]],[[4334.56,4526.79,1.90735e-006],[[0,"Move"]]],[[4342.91,4455.73,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4203.36,4648.39,0],224,[]],[[4209.29,4651.9,0],224,[]],[[4210.43,4648.53,1.90735e-006],224,[]],[[4206.69,4654.33,0],224,[]],[[4211.36,4646.6,0],224,[]],[[4207.41,4658.37,0],224,[]]],[],[[[4165.97,4684.62,0],[[0,"Move"],[1,"SAFE"]]],[[4152.2,4749.22,0],[[0,"Move"]]],[[4213.88,4759.54,0],[[0,"Move"]]],[[4227.91,4683.3,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4364.76,4704.14,0],231,[]],[[4371.06,4706.94,0],231,[]],[[4371.8,4703.46,0],231,[]],[[4368.75,4709.65,0],231,[]],[[4372.5,4701.43,0],231,[]],[[4369.93,4713.59,0],231,[]]],[],[[[4261.27,4705.8,0],[[0,"Move"],[1,"SAFE"]]],[[4257.56,4769.6,0],[[0,"Move"]]],[[4347.58,4777.28,0],[[0,"Move"]]],[[4364.52,4716.39,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4100.51,4847.56,0],59,[]],[[4093.86,4845.75,0],59,[]],[[4093.66,4849.3,0],59,[]],[[4095.73,4842.71,0],59,[]],[[4093.27,4851.41,0],59,[]],[[4093.97,4839,0],59,[]]],[],[[[4180.73,4848.58,0],[[0,"Move"],[1,"SAFE"]]],[[4199.26,4767.05,0],[[0,"Move"]]],[[4101.84,4757.25,0],[[0,"Move"]]],[[4098.89,4835.42,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Last Roadblock
		[[[[4264.87,4861.98,6.27814],169,"Middle",[]],[[4267.91,4862.3,6.27687],189,"Middle",[]],[[4266.89,4835.53,6.26885],211,"Middle",[]],[[4266.75,4838.32,6.27486],239,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4309.71,4785.23,3.24345],27,"Middle",[]],[[4274.09,4759.41,3.17863],355,"Middle",[]],[[4370.47,4821.21,0],260,"Middle",[]],[[4363.31,4833.3,0],249,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4340.5,4834.95,3.57241],258,"Up",[]],[[4338.65,4838.78,3.60571],254,"Middle",[]],[[4333.1,4830.2,0],244,"Middle",[]],[[4322.31,4834.69,0.30596],175,"Middle",[]],[[4348.08,4820.49,0],272,"Middle",[]],[[4323.15,4813.31,0.412832],359,"Up",[]],[[4332.76,4810.8,0.949381],97,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Mortar
		[mortar_1,[getPos target_1,getPos target_2,getPos target_3,getPos target_4],east,1,1,true,true,20,false] spawn OKS_ArtySupression;
		[mortar_2,[getPos target_5,getPos target_6,getPos target_7,getPos target_8],east,1,1,true,true,20,false] spawn OKS_ArtySupression;

		// Trigger
		[Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

		// Hostage
		[Group officer_1,[4904.86,5254.9,0],west,false,nil,false] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";
		[Group officer_2,[4904.86,5254.9,0],west,false,nil,false] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";


	};

	case 2: {

		// Roadblock Counter
		[attack_1,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
	};

	case 3: {

		// HQ 1 Counter
		[attack_2,"rush",3,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		[attack_3,"rush",3,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		[attack_4,"rush",3,east,1000,[]] spawn OKS_Lambs_SpawnGroup;

		[[],[["UK3CB_ADE_O_Offroad_M2",[4207.31,4827.23,0],89,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADE",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[[[4253.05,4631.18,0],[[0,"Move"],[1,"SAFE"]]],[[4266.51,4525.08,-3.8147e-006],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

		[[4279.47,4541.02,0],480] spawn OKS_Defuse_Explosive;

	};

	case 4: {

		// HQ 2 Counter
		[attack_5,"rush",3,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		[attack_6,"rush",3,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		[attack_7,"rush",3,east,1000,[]] spawn OKS_Lambs_SpawnGroup;

		[[4224.77,4721.92,0],480] spawn OKS_Defuse_Explosive;

		[[],[["UK3CB_ADE_O_Offroad_M2",[4285.98,4822.51,0],266,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADE",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[[[4240.24,4690.62,0],[[0,"Move"],[1,"SAFE"]]],[[4260.42,4570.76,0.730928],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 5: {

		// Road Block 2 Counter
		[attack_8,"rush",3,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		[attack_9,"rush",3,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		[attack_10,"rush",3,east,1000,[]] spawn OKS_Lambs_SpawnGroup;

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
