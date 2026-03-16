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

		null = [] spawn {
			while {true} do {
				{
					_X Params ["_HeliStart","_HeliEnd"];
					[_HeliStart,_HeliEnd,selectRandom ["RHS_UH1Y_FFAR_d", "rhsusf_CH53E_USMC_GAU21_D"],west,true,"MOVE",100] spawn OKS_AirSpawn; sleep 10;
				} foreach [
					[getpos Heli_1,getpos HeliExit_1],
					[getpos Heli_2,getpos HeliExit_2]
				];
				sleep 180;
				{
					_X Params ["_HeliStart","_HeliEnd"];
					[_HeliStart,_HeliEnd,selectRandom ["RHS_UH1Y_FFAR_d", "rhsusf_CH53E_USMC_GAU21_D"],west,true,"MOVE",100] spawn OKS_AirSpawn; sleep 10;
				} foreach [
					[getpos Heli_3,getpos HeliExit_3],
					[getpos Heli_4,getpos HeliExit_4]
				];				
				sleep 600;
			};	
		};						

		[Trigger_1,false,[0,0,false,false],east,1,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_2,false,[0,0,false,false],east,1,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_3,false,[0,0,false,false],east,1,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		[Group officer_1,[3096.93,12020.8,0.0312805],west,true,nil,false] spawn OKS_Evacuate_HVT;

		// First Objective.
		[[[[3557.71,10234.9,0.128136],227,"Up",[]],[[3553.95,10237.7,0.11669],212,"Up",[]],[[3571.03,10245.5,0.214081],210,"Up",[]],[[3577.33,10250.8,0.2673],310,"Up",[]],[[3582.97,10252.2,0.27602],227,"Middle",[]]],[["UK3CB_CSAT_W_O_BTR40_MG",[3548.92,10255.2,1.57356e-005],247,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_W",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3601.29,10253.8,3.56436e-005],274,"Middle",[]],[[3601.12,10267.8,0.566661],227,"Up",[]],[[3595.12,10270.9,0.560229],140,"Up",[]],[[3594.53,10268.3,3.84985],321,"Up",[]],[[3600.46,10267.6,3.8115],303,"Middle",[]],[[3603.78,10261,3.85609],136,"Up",[]],[[3603.57,10264.7,3.85302],253,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Mech Overwatch.
		[[],[["UK3CB_CSAT_M_O_BMD1PK",[4355.55,11259.4,0],199,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_M",1]],[7,["antena2_hide",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"wood_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_M_O_BMD1PK",[4281.42,11274.4,0.267868],199,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_M",1]],[7,["antena2_hide",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"wood_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_M_O_BMD1PK",[4344.54,11312.9,0.0148468],211,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_M",1]],[7,["antena2_hide",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"wood_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Blocking Position
		[[[[2353.82,10840.5,0],91,"Up",[]],[[2353.92,10838.5,0],101,"Up",[]],[[2336.62,10823.6,-2.38419e-007],103,"Up",[]],[[2336.85,10826.5,0],107,"Up",[]],[[2328.72,10840.2,0],107,"Up",[]],[[2337.77,10839.3,0],132,"Up",[]]],[["UK3CB_CSAT_W_O_GAZ_Vodnik_KVPT",[2338.96,10829.8,0],97,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["CSAT_W",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrols.
		[[[[3993.6,9509.67,0],0,[]],[[3983.6,9509.67,0],0,[]],[[3998.6,9504.67,0],0,[]]],[],[[[3846.8,9640.38,0],[[0,"Move"],[1,"SAFE"]]],[[4051.89,9826.35,0],[[0,"Move"]]],[[4299.85,9870.96,0],[[0,"Move"]]],[[3976.58,9521.61,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3834.39,10128.8,0],0,[]],[[3824.39,10128.8,0],0,[]],[[3839.39,10123.8,0],0,[]]],[],[[[3703.58,10204.3,0],[[0,"Move"],[1,"SAFE"]]],[[3644.6,10236.5,0],[[0,"Move"]]],[[3688.24,10338.6,0],[[0,"Move"]]],[[3817.37,10140.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3465.67,10215.3,0],122,[]],[[3471.01,10223.8,0],122,[]],[[3458.78,10213.8,0],122,[]]],[],[[[3548.7,10168.9,0],[[0,"Move"],[1,"SAFE"]]],[[3626.59,10271.8,0],[[0,"Move"]]],[[3531.83,10227.9,0],[[0,"Move"]]],[[3484.86,10223.3,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3784.3,10578.4,0],325,[]],[[3776.14,10572.6,0],325,[]],[[3791.27,10577.2,0],325,[]]],[],[[[3771.52,10669.2,0],[[0,"Move"],[1,"SAFE"]]],[[3637.71,10705.7,0],[[0,"Move"]]],[[3619.35,10605.4,0],[[0,"Move"]]],[[3763.51,10578.3,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3474.76,10701.7,0],0,[]],[[3464.76,10701.7,0],0,[]],[[3479.76,10696.7,0],0,[]]],[],[[[3516.84,10783.2,0],[[0,"Move"],[1,"SAFE"]]],[[3428.78,10890.4,0],[[0,"Move"]]],[[3355.78,10819.1,0],[[0,"Move"]]],[[3457.74,10713.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3153.02,10644,0],0,[]],[[3143.02,10644,0],0,[]],[[3158.02,10639,0],0,[]]],[],[[[3199.76,10748.7,0],[[0,"Move"],[1,"SAFE"]]],[[2779.41,10823.2,-3.62396e-005],[[0,"Move"]]],[[3079.4,10744.5,0],[[0,"Move"]]],[[3136,10656,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2964.61,10486.6,9.53674e-007],0,[]],[[2954.61,10486.6,4.76837e-007],0,[]],[[2969.61,10481.6,9.53674e-007],0,[]]],[],[[[3152.17,10592.6,0],[[0,"Move"],[1,"SAFE"]]],[[3046.31,10615.6,0],[[0,"Move"]]],[[2797.62,10695.6,0],[[0,"Move"]]],[[2947.59,10498.5,4.76837e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2321.16,10794.2,0],87,[]],[[2320.57,10804.2,0],87,[]],[[2316.47,10788.9,0],87,[]]],[],[[[2349.46,10771.9,0],[[0,"Move"],[1,"SAFE"]]],[[2751.34,10762.6,1.19209e-007],[[0,"Move"]]],[[2435.93,10849.7,0],[[0,"Move"]]],[[2332.08,10811.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {

		// Ambush Party Second Mines.
		[[[[3022.5,11565.7,0.043836],17,"Up",[]],[[3016.37,11579.3,0],25,"Up",[]],[[3002.64,11582,0],294,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3026.36,11716.2,0],186,"Middle",[]],[[3030.22,11722,0],155,"Middle",[]],[[3001.85,11708.1,0],148,"Middle",[]],[[3007.17,11709.8,0],148,"Middle",[]],[[3015.56,11711.7,0],148,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2967.27,11609,0],0,[]],[[2972.27,11607,0],0,[]]],[],[[[2870.99,11678.9,0],[[0,"Move"],[1,"SAFE"]]],[[2949.9,11756.9,-0.000118256],[[0,"Move"]]],[[3019.51,11721.7,2.28882e-005],[[0,"Move"]]],[[2983,11600.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Mech Statics.	
		[[[[4314.55,11335.1,0.150883],107,"Up",[]],[[4311.95,11330.2,0.150753],222,"Up",[]],[[4308.65,11325.2,0.17205],216,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4327.38,11316.1,0.292637],209,"Up",[]],[[4329.14,11315.3,0.238667],201,"Up",[]],[[4326.8,11321.8,0.143234],108,"Up",[]],[[4329.81,11325.5,0.125881],65,"Up",[]],[[4326.18,11330.4,0],285,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4360.2,11314.7,2.25813],72,"Up",[]],[[4370.18,11318.4,0.220772],161,"Up",[]],[[4367.17,11312.7,0.233643],124,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[4025.64,11081,0],0,[]],[[4015.64,11081,0],0,[]],[[4030.64,11076,0],0,[]]],[],[[[4056.93,11154.3,0],[[0,"Move"],[1,"SAFE"]]],[[3964.08,11171.7,0],[[0,"Move"]]],[[3921.71,11089.3,0],[[0,"Move"]]],[[4008.62,11093,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4500.27,11246.9,0],0,[]],[[4490.27,11246.9,0],0,[]],[[4505.27,11241.9,0],0,[]]],[],[[[4513.5,11308.3,0],[[0,"Move"],[1,"SAFE"]]],[[4438.7,11337.6,0],[[0,"Move"]]],[[4412.31,11278.6,3.8147e-006],[[0,"Move"]]],[[4483.25,11258.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4374.41,11339.7,3.8147e-006],0,[]],[[4364.41,11339.7,3.8147e-006],0,[]],[[4379.41,11334.7,3.8147e-006],0,[]]],[],[[[4388.31,11295.4,0],[[0,"Move"],[1,"SAFE"]]],[[4342.91,11398.5,0],[[0,"Move"]]],[[4278.44,11372.7,0],[[0,"Move"]]],[[4364.45,11343.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4168.65,11503.3,3.8147e-006],0,[]],[[4158.65,11503.3,3.8147e-006],0,[]],[[4173.65,11498.3,3.8147e-006],0,[]]],[],[[[4248.77,11618.7,0],[[0,"Move"],[1,"SAFE"]]],[[4132.01,11777,3.8147e-006],[[0,"Move"]]],[[4046.54,11535.8,0],[[0,"Move"]]],[[4151.64,11515.2,3.8147e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4063.74,11644.8,0],0,[]],[[4053.74,11644.8,0],0,[]],[[4068.74,11639.8,0],0,[]]],[],[[[4071.66,11772.2,0],[[0,"Move"],[1,"SAFE"]]],[[3958.88,11822.3,0],[[0,"Move"]]],[[3849.55,11693.8,0],[[0,"Move"]]],[[4046.72,11656.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2982.08,11718.6,1.90735e-006],0,[]],[[2972.08,11718.6,0],0,[]],[[2987.08,11713.6,0],0,[]]],[],[[[3028.86,11869.6,1.90735e-006],[[0,"Move"],[1,"SAFE"]]],[[2957.77,11888.7,0],[[0,"Move"]]],[[2900.8,11793.9,0],[[0,"Move"]]],[[2965.06,11730.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2873.03,11936.8,0],0,[]],[[2863.03,11936.8,0],0,[]],[[2878.03,11931.8,0],0,[]]],[],[[[3052.48,12111.2,0],[[0,"Move"],[1,"SAFE"]]],[[2820.16,12165.7,0],[[0,"Move"]]],[[2692.13,12027.8,0],[[0,"Move"]]],[[2856.01,11948.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4083.74,11328.8,0],0,[]],[[4088.74,11323.8,0],0,[]],[[4078.74,11323.8,3.8147e-006],0,[]],[[4093.74,11318.8,0],0,[]]],[],[[[4156.87,11376.8,0],[[0,"Move"],[1,"SAFE"]]],[[4217.59,11344.4,0],[[0,"Move"]]],[[4202.01,11298.6,0],[[0,"Move"]]],[[4105.04,11316.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {

		// Zahradka
		[[[[4140.78,11845.7,0.249367],0,"Up",[]],[[4136.91,11843.6,0.249367],314,"Up",[]],[[4140.84,11855.1,0],351,"Up",[]]],[["UK3CB_CSAT_W_O_BRDM2",[4145.88,11818.6,3.8147e-006],152,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["CSAT_W",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4157.01,11858.5,0.102537],262,"Up",[]],[[4161.76,11862.2,0.102537],278,"Up",[]],[[4146.49,11870.6,0.114851],289,"Up",[]],[[4152.02,11866.1,0],228,"Up",[]],[[4161.36,11867.8,0.102537],347,"Up",[]]],[["UK3CB_CSAT_W_O_GAZ_Vodnik_PKT",[4153.32,11989.5,0],227,[["driver",-1,[]],["commander",-1,[2]],["turret",-1,[3]]],[[6,["CSAT_W",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4053.27,11911.5,0],207,"Up",[]],[[4049.3,11911.5,0.619003],0,"Up",[]],[[4041.06,11910.9,0.133053],262,"Up",[]],[[4042.37,11918.9,0.132793],235,"Up",[]],[[4037.93,11916.2,0.132793],266,"Up",[]],[[4039.08,11922.1,0.133053],0,"Up",[]],[[4043.23,11924.5,0.248556],190,"Up",[]],[[4031.86,11906,0.0482616],62,"Up",[]]],[["UK3CB_CSAT_W_O_GAZ_Vodnik_PKT",[3970,11918.1,0],124,[["driver",-1,[]],["commander",-1,[2]],["turret",-1,[3]]],[[6,["CSAT_W",1]]]]],[]] call GW_Common_fnc_spawnGroup;
			
		[east,arty_1,[2225.45,11415.8,0],7,180,140] spawn OKS_ArtyFire;
		[east,arty_2,[2225.45,11415.8,0],7,180,140] spawn OKS_ArtyFire;

		// HQ	
		[[[[3046.87,12168,4.49906],149,"Up",[]],[[3049.95,12169.3,4.49527],139,"Up",[]],[[3037.79,12164.2,4.62513],148,"Up",[]],[[3029.32,12179.7,10.5457],130,"Up",[]],[[3026.52,12181.5,12.9281],336,"Up",[]],[[3024.68,12177.1,13.0896],242,"Up",[]],[[3042.79,12194.9,4.00456],132,"Up",[]],[[3031.2,12177.8,4.42535],93,"Up",[]],[[3063.99,12191.9,3.41197],205,"Middle",[]],[[3068.1,12181.8,0],301,"Middle",[]],[[3047.27,12176.2,0],195,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3149.84,12091.9,0.832573],217,"Up",[]],[[3144.47,12095.5,0.278748],79,"Up",[]],[[3143.33,12100.9,3.8147e-006],138,"Up",[]],[[3159.4,12093.5,0.0803032],217,"Up",[]],[[3150.48,12099.2,0],124,"Up",[]],[[3136.27,12103.8,0.404076],307,"Up",[]],[[3139.54,12109.6,0],124,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[3733.1,11862.5,0],68,[]],[[3729.38,11871.8,0],68,[]],[[3730.32,11856,0],68,[]]],[],[[[3842.72,11917.3,0],[[0,"Move"],[1,"SAFE"]]],[[3951.4,11984.8,0],[[0,"Move"]]],[[4018.98,11939.3,0],[[0,"Move"]]],[[3743.29,11857.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3975.57,12008.5,3.8147e-006],89,[]],[[3975.41,12018.5,0],89,[]],[[3970.65,12003.4,1.90735e-006],89,[]]],[],[[[4012.7,11973.4,0],[[0,"Move"],[1,"SAFE"]]],[[4137.65,12099.4,0],[[0,"Move"]]],[[4055.17,12163.4,0],[[0,"Move"]]],[[3956.38,12079.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4388.87,11723.1,0],0,[]],[[4378.87,11723.1,0],0,[]],[[4393.87,11718.1,0],0,[]]],[],[[[4482.44,11833.5,0],[[0,"Move"],[1,"SAFE"]]],[[4203.08,11961.1,0],[[0,"Move"]]],[[4249.36,11795.2,0],[[0,"Move"]]],[[4371.85,11735.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3583.31,12049.3,0],0,[]],[[3573.31,12049.3,0],0,[]],[[3588.31,12044.3,0],0,[]]],[],[[[3517.48,12169.7,0],[[0,"Move"],[1,"SAFE"]]],[[3233.84,12124.4,0],[[0,"Move"]]],[[3510.28,12157.3,0],[[0,"Move"]]],[[3566.29,12061.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3228.47,12148.3,0],0,[]],[[3218.47,12148.3,0],0,[]],[[3233.47,12143.3,0],0,[]]],[],[[[3259.76,12221.6,0],[[0,"Move"],[1,"SAFE"]]],[[3166.91,12239,0],[[0,"Move"]]],[[3124.54,12156.5,0],[[0,"Move"]]],[[3211.45,12160.3,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3088.02,12140.1,0],0,[]],[[3078.02,12140.1,3.8147e-006],0,[]],[[3093.02,12135.1,0],0,[]]],[],[[[3119.31,12213.4,0],[[0,"Move"],[1,"SAFE"]]],[[3026.45,12230.8,0],[[0,"Move"]]],[[2984.09,12148.4,0],[[0,"Move"]]],[[3071,12152.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
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
