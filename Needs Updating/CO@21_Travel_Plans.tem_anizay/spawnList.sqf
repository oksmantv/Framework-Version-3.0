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

		// First Mortar.
		[[[[3528.02,3744.34,-1.52588e-005],191,"Up",[]],[[3521.16,3758.29,0],229,"Up",[]],[[3528.2,3756.02,0.319229],255,"Up",[]],[[3574.89,3752.2,1.52588e-005],282,"Up",[]],[[3573.17,3732.51,-1.52588e-005],225,"Up",[]],[[3541.23,3736.27,0],204,"Middle",[]],[[3540.26,3736.55,0],204,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrol.
		[[[[3626.65,3750.1,0],39,[]],[[3627.36,3743.07,0.794342],39,[]],[[3619.62,3749.39,0],39,[]],[[3628.08,3736.03,0],39,[]]],[],[[[3533.94,3773.23,0],[[0,"Move"],[1,"SAFE"]]],[[3535.81,3936.43,0],[[0,"Move"]]],[[3688.47,3914.52,0],[[0,"Move"]]],[[3623.87,3753.11,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

		[[[[4644.79,3347.66,1.52588e-005],0,[]],[[4649.79,3342.66,0],0,[]],[[4639.79,3342.66,0],0,[]],[[4654.79,3337.66,0],0,[]]],[],[[[4695.87,3487.94,-1.52588e-005],[[0,"Move"]]],[[4640.92,3649.54,-4.57764e-005],[[0,"Move"]]],[[4505.94,3686.88,3.05176e-005],[[0,"Move"]]],[[4565.8,3434.54,0],[[0,"Move"]]],[[4632.94,3354.67,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4437.65,3456.46,0],0,[]],[[4442.65,3451.46,0],0,[]],[[4432.65,3451.46,0],0,[]],[[4447.65,3446.46,0],0,[]]],[],[[[4475.48,3613.91,0],[[0,"Move"]]],[[4431.05,3814.53,0],[[0,"Move"]]],[[4313.51,3889.44,0],[[0,"Move"]]],[[4301.31,3549.27,0],[[0,"Move"]]],[[4425.8,3463.46,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5150.45,3898.37,1.03423],334,[]],[[5157.16,3896.12,1.03423],334,[]],[[5148.21,3891.66,1.03423],334,[]],[[5163.86,3893.88,1.03421],334,[]]],[],[[[5153.75,4189.64,1.03418],[[0,"Move"]]],[[5060.89,4305.36,1.03412],[[0,"Move"]]],[[4837.43,4083.61,1.03427],[[0,"Move"]]],[[5038.37,3970.7,1.03423],[[0,"Move"]]],[[5136.72,3899.35,1.03423],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5483.46,4112.2,1.52588e-005],0,[]],[[5488.46,4107.2,0],0,[]],[[5478.46,4107.2,1.52588e-005],0,[]],[[5493.46,4102.2,0],0,[]]],[],[[[5489.68,4314.47,0],[[0,"Move"]]],[[5444.05,4538.28,0],[[0,"Move"]]],[[5142.3,4595.34,0],[[0,"Move"]]],[[5294.27,4379.48,0],[[0,"Move"]]],[[5474.21,4093.86,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		

		// Mortars
		[mortar_1,[getPos target_1,getPos target_2],east,1,1,true,true,180,false] spawn OKS_ArtySupression; sleep 60;
		[mortar_2,[getPos target_3,getPos target_4],east,1,1,true,true,180,false] spawn OKS_ArtySupression; sleep 60;
		[mortar_3,[getPos target_5,getPos target_6],east,1,1,true,true,180,false] spawn OKS_ArtySupression; sleep 60;
		[mortar_4,[getPos target_7,getPos target_8],east,1,1,true,true,180,false] spawn OKS_ArtySupression;
	};

	case 2: {

		// Second Mortar.
		[[[[3469.35,4432.65,0],307,"Up",[]],[[3472.95,4436.44,0.115509],274,"Middle",[]],[[3474.7,4448.05,-1.52588e-005],250,"Up",[]],[[3464.05,4460.57,1.46523],168,"Middle",[]],[[3450.63,4453.3,0],132,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3463.6,4454.92,4.5719],143,"Up",[]],[[3459.62,4455.8,4.56169],216,"Up",[]],[[3461.99,4460.78,4.54588],5,"Up",[]],[[3463.13,4455.45,7.49092],149,"Middle",[]],[[3460.91,4454.81,7.45216],190,"Middle",[]],[[3462.31,4460.27,7.49467],34,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Snipers.
		[[[[3529.74,4511.53,6.72743],215,"Up",[]],[[3523.12,4495.85,2.96068],225,"Up",[]],[[3620.34,4565.77,3.52129],296,"Up",[]],[[3539.83,4517.73,3.67894],304,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Fuel Station
		[[[[3475.6,4630.58,0],173,"Up",[]],[[3484.57,4625.53,0.0603333],117,"Up",[]],[[3515.65,4611.97,0],167,"Up",[]],[[3507.3,4615.12,0],307,"Up",[]],[[3525.28,4644.45,0],245,"Down",[]],[[3519.29,4666.81,0],180,"Middle",[]],[[3507.95,4672.33,0],244,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[3493.14,4483.4,0],0,[]],[[3498.14,4478.4,0],0,[]],[[3488.14,4478.4,0],0,[]],[[3503.14,4473.4,0],0,[]]],[],[[[3394.22,4439.58,0],[[0,"Move"],[1,"SAFE"]]],[[3327.08,4522,0],[[0,"Move"]]],[[3487.39,4545.08,0],[[0,"Move"]]],[[3489.08,4483.97,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3636.29,4603.98,0],0,[]],[[3641.29,4598.98,0],0,[]],[[3631.29,4598.98,0],0,[]],[[3646.29,4593.98,0],0,[]]],[],[[[3572.82,4562.21,0],[[0,"Move"],[1,"SAFE"]]],[[3520.27,4588.28,0],[[0,"Move"]]],[[3629.98,4693.64,0],[[0,"Move"]]],[[3632.23,4604.54,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3479.62,4721.79,0],247,[]],[[3482.25,4728.35,0],247,[]],[[3486.18,4719.15,0],247,[]],[[3484.89,4734.91,0],247,[]]],[],[[[3539.94,4665.37,0],[[0,"Move"],[1,"SAFE"]]],[[3485.16,4579.86,1.52588e-005],[[0,"Move"]]],[[3422.76,4646.22,0],[[0,"Move"]]],[[3480.69,4717.83,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[Trigger_2,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

	};

	case 3: {

		[counter_1,"rush",3,east,1500,[]] spawn OKS_Lambs_SpawnGroup; sleep 5;
		[counter_2,"rush",3,east,1500,[]] spawn OKS_Lambs_SpawnGroup; sleep 5;
		[counter_3,"rush",3,east,1500,[]] spawn OKS_Lambs_SpawnGroup; sleep 5;
		[counter_4,"rush",3,east,1500,[]] spawn OKS_Lambs_SpawnGroup; sleep 5;

		// Makan Aljamal Defusal / Counter
		[[3484.06,4626.35,0],480] spawn OKS_Defuse_Explosive;
		[[3506.02,4639.74,0],480] spawn OKS_Defuse_Explosive;
		[[3499.94,4630.58,0],480] spawn OKS_Defuse_Explosive;

	};

	case 4: {

		// Ambush.
		[ambush_1,"rush",6,east,1500,[]] spawn OKS_Lambs_SpawnGroup; sleep 5;
		[ambush_2,"rush",6,east,1500,[]] spawn OKS_Lambs_SpawnGroup; sleep 5;
		[ambush_3,"rush",6,east,1500,[]] spawn OKS_Lambs_SpawnGroup; sleep 5;

		[ambush_4,objNull,"UK3CB_MEE_O_BTR40_MG",east,false] spawn OKS_Attack_SpawnGroup; sleep 20;
		[ambush_5,objNull,"UK3CB_TKM_O_UAZ_SPG9",east,false] spawn OKS_Attack_SpawnGroup;

		// Idak Mortar Third.
		[[[[5217.25,5080.63,3.65259],298,"Up",[]],[[5218.61,5078.98,0.977692],294,"Up",[]],[[5228.09,5076.93,0],356,"Up",[]],[[5231.03,5060.33,0.728897],257,"Up",[]],[[5232.76,5063.23,0.520538],321,"Up",[]],[[5249.26,5075.44,3.97681],287,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5210.46,5076.51,3.29272],294,"Up",[]],[[5212.81,5078.75,3.30902],294,"Up",[]],[[5211.07,5074.59,3.285],294,"Up",[]],[[5224.97,5054.41,0],331,"Up",[]],[[5210.07,5037.11,4.26483],15,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;


		// Patrol.
		[[[[5316.02,5071.26,0],0,[]],[[5321.02,5066.26,0],0,[]],[[5311.02,5066.26,0],0,[]],[[5326.02,5061.26,0],0,[]]],[],[[[5245.69,5015.23,0],[[0,"Move"],[1,"SAFE"]]],[[5211.19,5060.94,-1.52588e-005],[[0,"Move"]]],[[5294.16,5126.71,4.57764e-005],[[0,"Move"]]],[[5311.96,5071.83,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5259.96,5239.08,0],288,[]],[[5266.25,5242.31,0],288,[]],[[5263.19,5232.79,0],288,[]],[[5272.53,5245.55,0],288,[]]],[],[[[5313.46,5142.29,1.52588e-005],[[0,"Move"],[1,"SAFE"]]],[[5228.1,5106.15,0],[[0,"Move"]]],[[5191.78,5216.01,0],[[0,"Move"]]],[[5258.18,5235.38,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		[Trigger_3,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
	
	};

	case 5: {

		// Final Mortar.
		[[[[6381.29,4675.95,0],335,"Up",[]],[[6374.52,4677.37,3.52861],273,"Up",[]],[[6373.92,4667.59,3.34428],249,"Up",[]],[[6372.63,4669.94,3.27611],256,"Up",[]],[[6376.47,4674.2,1.01057],170,"Up",[]],[[6373.69,4670.43,0.71875],201,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6361.09,4687.39,2.98247],222,"Up",[]],[[6359.72,4690.12,2.94829],255,"Up",[]],[[6361.04,4689.87,0.383026],222,"Up",[]],[[6370.51,4687.96,1.0352],222,"Up",[]],[[6375.82,4691.74,0],200,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrols.
		[[[[6188.9,4695.43,0],0,[]],[[6193.9,4690.43,0],0,[]],[[6183.9,4690.43,0],0,[]],[[6198.9,4685.43,0],0,[]]],[],[[[6189.06,4786.64,0.000137329],[[0,"Move"]]],[[6176.44,4874.16,-0.000534058],[[0,"Move"]]],[[6069.95,4950.44,4.57764e-005],[[0,"Move"]]],[[6178.56,4687.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6156.85,4608.05,0],0,[]],[[6161.85,4603.05,0],0,[]],[[6151.85,4603.05,0],0,[]],[[6166.85,4598.05,0],0,[]]],[],[[[6066.26,4662.53,0],[[0,"Move"]]],[[6052.27,4852.37,0],[[0,"Move"]]],[[6127.26,4757.18,0],[[0,"Move"]]],[[6170.97,4659.16,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6386.78,4667.09,0],0,[]],[[6391.78,4662.09,0],0,[]],[[6381.78,4662.09,0],0,[]],[[6387.04,4656.22,0],0,[]]],[],[[[6396.62,4708.89,0],[[0,"Move"]]],[[6344.99,4763.41,0],[[0,"Move"]]],[[6277.12,4730.62,0],[[0,"Move"]]],[[6337.09,4618.07,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6413.45,4548.8,1.52588e-005],0,[]],[[6418.45,4543.8,1.52588e-005],0,[]],[[6408.45,4543.8,1.52588e-005],0,[]],[[6423.45,4538.8,1.52588e-005],0,[]]],[],[[[6352.98,4557.4,0],[[0,"Move"]]],[[6280.38,4628.42,0.674088],[[0,"Move"]]],[[6415.05,4643.57,0],[[0,"Move"]]],[[6424.35,4587.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
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
