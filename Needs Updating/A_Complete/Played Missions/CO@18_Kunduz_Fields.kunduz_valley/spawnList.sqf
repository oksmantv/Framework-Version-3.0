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

		// First Compound
		[[[[8390.74,3602.22,3.9976],96,"Up",[]],[[8393.01,3600.82,0.642641],305,"Up",[]],[[8397.47,3604.21,0.385096],15,"Up",[]],[[8393.5,3611.91,0],35,"Up",[]],[[8415.04,3608.15,0.796446],63,"Up",[]],[[8421,3609.4,0.52833],13,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8433.76,3582.79,0.438667],227,"Up",[]],[[8439.51,3580.24,0.324032],214,"Up",[]],[[8438.34,3581.79,3.12672],255,"Up",[]],[[8423.58,3590.77,0.234819],204,"Up",[]],[[8426.68,3605.96,0.536739],338,"Up",[]],[[8421.98,3604.81,3.59862],189,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8417.12,3563.86,0.152988],193,"Up",[]],[[8419.49,3565.88,0.125624],108,"Middle",[]],[[8417.37,3573.61,0.439451],187,"Middle",[]],[[8426.01,3567.1,0.908966],109,"Up",[]],[[8407.9,3571.09,0.232988],38,"Up",[]],[[8400.34,3572.03,0.178865],9,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[8249.2,3579.43,1.90735e-006],0,[]],[[8254.2,3574.43,2.86102e-006],0,[]],[[8244.2,3574.43,1.90735e-006],0,[]],[[8259.2,3569.43,1.90735e-006],0,[]]],[],[[[8335.51,3536.48,1.90735e-006],[[0,"Move"],[1,"SAFE"]]],[[8413.85,3715.01,0],[[0,"Move"]]],[[8348.06,3748.12,8.29697e-005],[[0,"Move"]]],[[8259.1,3584.2,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8358.04,3529.47,0],0,[]],[[8363.04,3524.47,0],0,[]],[[8353.04,3524.47,0],0,[]],[[8368.04,3519.47,0],0,[]]],[],[[[8446.34,3496.38,0],[[0,"Move"],[1,"SAFE"]]],[[8573.96,3564.48,0],[[0,"Move"]]],[[8536.67,3741.35,0],[[0,"Move"]]],[[8389.82,3657.35,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Mortar Objectives
		[mortar_1,[getPos target_1,getPos target_2,getPos target_3,getPos target_4],west,1,1,true,true,30,false] spawn OKS_ArtySupression;
		[mortar_2,[getPos target_5,getPos target_6,getPos target_7,getPos target_8],west,1,1,true,true,30,false] spawn OKS_ArtySupression;

		[mortar_1] spawn OKS_Destroy_Task;
		[mortar_2] spawn OKS_Destroy_Task;

		// Hostage Objective
		[Group HVT_1,getPos ExfilSite_1,east,true,nil] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";
	};

	case 2: {

		{
			[getPos _X,"rush",2,west,1500,[]] spawn OKS_Lambs_SpawnGroup;
		} foreach [attack_1,attack_2,attack_3];

		// Counter Compound 1
		[convoy_1,convoy_2,convoy_3,west,[3,["UK3CB_TKM_B_Hilux_Dshkm", "UK3CB_TKM_B_Hilux_Open", "UK3CB_TKM_B_Hilux_Pkm"], 8, 30],[true,3],[], false, false] spawn OKS_Convoy_Spawn;
	};

	case 3: {

		// Fuel Station
		[[[[8689.39,4232.45,3.79858],176,"Up",[]],[[8688.15,4232.64,3.80002],176,"Up",[]],[[8687,4232.72,3.80159],176,"Up",[]],[[8685.7,4232.66,3.80358],176,"Up",[]],[[8683.57,4232.78,3.80615],201,"Up",[]],[[8683.63,4235.29,3.82895],214,"Up",[]],[[8680.44,4237.11,3.83258],191,"Up",[]],[[8679.8,4242.65,3.84221],359,"Up",[]],[[8681.56,4237.27,0.189202],263,"Up",[]],[[8684.51,4233.45,0.169224],284,"Up",[]],[[8688.58,4239.72,0.184669],275,"Up",[]],[[8685.07,4242.81,0.179025],268,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8679.96,4257.42,0],176,"Up",[]],[[8699.17,4271.4,0.108906],186,"Middle",[]],[[8709.73,4270.31,0.0937433],187,"Middle",[]],[[8703.79,4234.11,0.0487747],273,"Up",[]],[[8707.52,4235.33,0.0598536],139,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[8694.49,4371.22,9.53674e-007],0,[]],[[8699.49,4366.22,-9.53674e-007],0,[]],[[8689.49,4366.22,9.53674e-007],0,[]],[[8704.49,4361.22,9.53674e-007],0,[]]],[],[[[8596.68,4359.81,0],[[0,"Move"],[1,"SAFE"]]],[[8564.2,4267.25,1.71661e-005],[[0,"Move"]]],[[8574.5,4164.14,-3.52859e-005],[[0,"Move"]]],[[8666.98,4272.42,-2.00272e-005],[[0,"Move"]]],[[8702.42,4353.61,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8830.2,4397.23,0],0,[]],[[8835.2,4392.23,9.53674e-007],0,[]],[[8825.2,4392.23,1.90735e-006],0,[]],[[8840.2,4387.23,9.53674e-007],0,[]]],[],[[[8747.8,4385.02,0],[[0,"Move"],[1,"SAFE"]]],[[8753.41,4275.22,0],[[0,"Move"]]],[[8806.9,4208.85,0],[[0,"Move"]]],[[8883.72,4278.4,0],[[0,"Move"]]],[[8838.13,4379.61,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8859.43,4547.48,2.00272e-005],0,[]],[[8864.43,4542.48,2.00272e-005],0,[]],[[8854.43,4542.48,2.00272e-005],0,[]],[[8869.43,4537.48,2.00272e-005],0,[]]],[],[[[8764.29,4565.5,0],[[0,"Move"],[1,"SAFE"]]],[[8586.69,4533.75,0],[[0,"Move"]]],[[8610.96,4404.86,0],[[0,"Move"]]],[[8831.92,4448.68,0],[[0,"Move"]]],[[8867.36,4529.87,2.00272e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8905.24,4727.27,0],0,[]],[[8910.24,4722.27,0],0,[]],[[8900.24,4722.27,0],0,[]],[[8915.24,4717.27,0],0,[]]],[],[[[9024.56,4746.9,-1.90735e-006],[[0,"Move"]]],[[9070.23,4708.38,-2.09808e-005],[[0,"Move"]]],[[9093.59,4607.36,0],[[0,"Move"]]],[[8905.99,4679.86,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8968.09,4437.64,5.72205e-006],270,[]],[[8973.13,4442.6,1.90735e-006],270,[]],[[8973.05,4432.6,1.90735e-006],270,[]],[[8978.17,4447.56,3.8147e-006],270,[]]],[],[[[8957.32,4612.34,0],[[0,"Move"]]],[[9019.64,4646.41,1.90735e-006],[[0,"Move"]]],[[9115.93,4546.13,0],[[0,"Move"]]],[[9036.94,4426.85,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8713.32,4639.44,9.53674e-007],0,[]],[[8718.32,4634.44,9.53674e-007],0,[]],[[8708.32,4634.44,9.53674e-007],0,[]],[[8723.32,4629.44,9.53674e-007],0,[]]],[],[[[8915.79,4614.86,0],[[0,"Move"]]],[[8913.28,4423.49,9.53674e-007],[[0,"Move"]]],[[8736.37,4397.44,0],[[0,"Move"]]],[[8714.08,4592.04,2.86102e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Arty
		[[[[9006.01,4545.32,0.276876],197,"Up",[]],[[9002.26,4545.75,0],210,"Up",[]],[[8998.61,4547.08,1.90735e-006],219,"Up",[]],[[8995.96,4549.98,0.225927],228,"Up",[]],[[8994.5,4553.32,0],243,"Up",[]],[[8994.24,4557.2,0.0828495],257,"Up",[]],[[9018.75,4572.42,0],267,"Middle",[]],[[9024.65,4552.07,0],234,"Middle",[]],[[9022.98,4566.32,0],280,"Middle",[]],[[9000.54,4569.44,0],98,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8992.92,4566.37,0],213,"Up",[]],[[8991.02,4573.25,0],269,"Up",[]],[[8987.76,4589.51,0.0299339],226,"Up",[]],[[8985.26,4594.05,0],255,"Up",[]],[[9000.97,4590.15,0],197,"Middle",[]],[[8991.24,4602.21,0],198,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9021.05,4577.05,0],242,"Middle",[]],[[9014.03,4602.2,0],189,"Middle",[]],[[9008.16,4606.6,0],180,"Up",[]],[[8985.84,4603.29,0],85,"Middle",[]],[[8984.2,4603.9,0],211,"Up",[]],[[8979.89,4609.62,0],246,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[arty_1,[getPos target_1,getPos target_2,getPos target_3,getPos target_4],west,1,1,true,true,30,false] spawn OKS_ArtySupression;
		[arty_2,[getPos target_5,getPos target_6,getPos target_7,getPos target_8],west,1,1,true,true,30,false] spawn OKS_ArtySupression;
		[arty_3,[getPos target_1,getPos target_2,getPos target_3,getPos target_4],west,1,1,true,true,30,false] spawn OKS_ArtySupression;
		[arty_4,[getPos target_5,getPos target_6,getPos target_7,getPos target_8],west,1,1,true,true,30,false] spawn OKS_ArtySupression;

		[arty_1] spawn OKS_Destroy_Task;
		[arty_2] spawn OKS_Destroy_Task;
		[arty_3] spawn OKS_Destroy_Task;
		[arty_4] spawn OKS_Destroy_Task;		

	};

	case 4: {

		// HVT Extract Counter
		{
			[getPos _X,"rush",3,west,1500,[]] spawn OKS_Lambs_SpawnGroup;
		} foreach [exfil_1,exfil_2,exfil_3,exfil_4];


	};

	case 5: {

		[[[[8499.38,4782.83,-4.76837e-006],166,"Middle",[]],[[8493.49,4785.63,0],166,"Middle",[]],[[8486.61,4777.69,-3.8147e-006],166,"Middle",[]],[[8478.01,4780.71,-3.8147e-006],166,"Middle",[]],[[8472.38,4783.06,-3.8147e-006],204,"Middle",[]],[[8467.89,4793.64,-3.8147e-006],166,"Middle",[]],[[8461.88,4795.71,-3.8147e-006],256,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8228.82,4952.5,0.233942],166,"Middle",[]],[[8230.72,4966.6,0.233943],166,"Middle",[]],[[8233.63,4983.19,0.233943],166,"Middle",[]],[[8236.13,4996.84,0.233943],166,"Middle",[]],[[8241.72,5018.8,0.233943],166,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8274.79,4818.61,-3.8147e-006],83,"Middle",[]],[[8285.95,4819.45,-3.8147e-006],267,"Middle",[]],[[8275.18,4830.55,2.57022],118,"Middle",[]],[[8275.42,4825.47,3.0494],194,"Middle",[]],[[8276.48,4833.18,2.60782],99,"Middle",[]],[[8274.16,4831.7,0.178961],63,"Up",[]],[[8275.91,4825.76,0.233943],121,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8292.76,4822.37,-3.8147e-006],354,"Middle",[]],[[8293.24,4834.77,-3.8147e-006],137,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7985.26,4831.16,0.233943],116,"Middle",[]],[[7976.42,4827.89,0.233943],116,"Middle",[]],[[7967.56,4823.85,0.233944],126,"Middle",[]],[[7983.3,4835.86,3.27791],116,"Middle",[]],[[7982.21,4838.63,3.29012],82,"Middle",[]],[[7979.81,4842.08,2.85706],116,"Middle",[]],[[7980.74,4840.8,0.177954],355,"Middle",[]],[[7984.82,4836.44,0.22229],50,"Up",[]],[[7981.6,4837.52,0.164951],50,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7979.23,4870.44,0.314103],259,"Up",[]],[[7976.88,4873.85,0.308429],329,"Up",[]],[[7970,4876.39,0.233943],2,"Middle",[]],[[7997.72,4846.87,0.233943],116,"Middle",[]],[[7995.64,4840.58,0.233943],116,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;		

		[[[[8454.45,4943.47,0],0,[]],[[8459.45,4938.47,0],0,[]],[[8449.45,4938.47,0],0,[]],[[8464.45,4933.47,0],0,[]]],[],[[[8328.02,4666.21,0],[[0,"Move"],[1,"SAFE"]]],[[8244.81,4700.58,-3.14713e-005],[[0,"Move"]]],[[8383.05,4967.23,3.8147e-006],[[0,"Move"]]],[[8447.78,4947.47,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8227.35,4697.8,0],51,[]],[[8226.59,4690.77,0],51,[]],[[8220.32,4698.56,0],51,[]],[[8225.83,4683.74,0],51,[]]],[],[[[7901.12,4706.95,0],[[0,"Move"],[1,"SAFE"]]],[[7916.55,4806.85,0],[[0,"Move"]]],[[8201.13,4768.33,3.8147e-006],[[0,"Move"]]],[[8226.29,4705.5,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8004.27,5117.9,0],0,[]],[[8009.27,5112.9,0],0,[]],[[7999.27,5112.9,0],0,[]],[[8014.27,5107.9,0],0,[]]],[],[[[7877.84,4840.64,9.53674e-007],[[0,"Move"],[1,"SAFE"]]],[[7794.63,4875.02,0],[[0,"Move"]]],[[7932.87,5141.66,2.86102e-006],[[0,"Move"]]],[[7997.6,5121.9,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8255.83,5180.35,0],0,[]],[[8260.83,5175.35,0],0,[]],[[8250.83,5175.35,0],0,[]],[[8265.83,5170.35,0],0,[]]],[],[[[8129.4,4903.09,0],[[0,"Move"],[1,"SAFE"]]],[[8046.19,4937.46,0],[[0,"Move"]]],[[8184.43,5204.11,3.8147e-006],[[0,"Move"]]],[[8249.16,5184.35,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8589.48,5019.07,0],46,[]],[[8589.33,5012,0],46,[]],[[8582.41,5019.21,0],46,[]],[[8589.19,5004.93,0],46,[]]],[],[[[8339.77,5045.28,0],[[0,"Move"],[1,"SAFE"]]],[[8328.72,5205.87,0],[[0,"Move"]]],[[8557.15,5087.03,4.76837e-006],[[0,"Move"]]],[[8587.74,5026.65,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		_Vehicles = ["UK3CB_TKM_B_LR_SF_M2", 
			"UK3CB_TKM_B_Datsun_Pkm", 
			"UK3CB_TKM_B_Hilux_Open", 
			"UK3CB_TKM_B_LR_Open", 
			"UK3CB_TKM_B_Pickup", 
			"UK3CB_TKM_B_UAZ_Closed", 
			"UK3CB_TKM_B_V3S_Closed"
		];

		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 2,900,west,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 2,900,west,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 2,900,west,_Vehicles,300] spawn NEKY_Hunt_HuntBase;

		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_1, 2,900,west,5,120] spawn NEKY_Hunt_HuntBase;
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_1, 2,900,west,5,120] spawn NEKY_Hunt_HuntBase;		


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
