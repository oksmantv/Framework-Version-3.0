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

private _Vehicles = ["UK3CB_MEI_O_V3S_Open", 
"UK3CB_MEI_O_V3S_Closed", 
"UK3CB_MEI_O_Van_Transport", 
"UK3CB_MEI_O_Offroad", 
"UK3CB_MEI_O_LR_Open", 
"UK3CB_MEI_O_Hilux_Open"];

switch (_case) do {

	case 1: {

		// Objective 1
		// Bunker 1
		[[[[7101.84,3806.69,-0.062149],170,"Middle",[]],[[7099.5,3806.14,-0.062149],170,"Middle",[]],[[7095.2,3806.16,-0.062149],210,"Middle",[]],[[7096.94,3803.8,-0.062149],170,"Middle",[]],[[7104.96,3807.71,-0.062149],117,"Middle",[]],[[7092.1,3818.81,-0.062149],291,"Middle",[]],[[7093.24,3822.05,-0.062149],336,"Middle",[]],[[7096.48,3820.75,-0.062149],8,"Middle",[]],[[7089.44,3813.9,-0.062149],259,"Middle",[]],[[7090.62,3813.51,-0.062149],211,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[7103.19,3817.59,-0.062149],43,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[7092.31,3808.88,-0.062149],225,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Bunker 2
		[[[[6935.98,3504.17,0],291,"Middle",[]],[[6936.74,3506.45,0],291,"Middle",[]],[[6939,3510.1,0],332,"Middle",[]],[[6936.08,3509.85,0],291,"Middle",[]],[[6935.22,3500.98,0],238,"Middle",[]],[[6951.41,3506.14,0],52,"Middle",[]],[[6953.57,3503.49,0],97,"Middle",[]],[[6950.78,3501.4,0],130,"Middle",[]],[[6948.61,3510.98,0],20,"Middle",[]],[[6947.66,3510.18,0],332,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[6944.58,3497.32,0],164,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[6942.83,3511.15,0],347,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[7177.45,3824.23,0],0,[]],[[7182.45,3819.23,0],0,[]],[[7172.45,3819.23,0],0,[]],[[7187.45,3814.23,0],0,[]]],[],[[[7266.09,3548.23,0],[[0,"Move"],[1,"SAFE"]]],[[7204.56,3403.49,0],[[0,"Move"]]],[[7114.68,3417.23,0],[[0,"Move"]]],[[7171.24,3707.78,0],[[0,"Move"]]],[[7174.08,3809.63,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7043.31,3564.12,0],0,[]],[[7048.31,3559.12,0],0,[]],[[7038.31,3559.12,0],0,[]],[[7053.31,3554.12,0],0,[]]],[],[[[7109.29,3448.36,-1.52588e-005],[[0,"Move"],[1,"SAFE"]]],[[7066.08,3373.07,0],[[0,"Move"]]],[[6909.3,3414.98,2.39166],[[0,"Move"]]],[[6963.77,3493.41,0],[[0,"Move"]]],[[7039.94,3549.52,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7065.78,3824.51,0],0,[]],[[7070.78,3819.51,-0.00314331],0,[]],[[7060.78,3819.51,0],0,[]],[[7075.78,3814.51,-0.0168915],0,[]]],[],[[[7092.08,3640.46,0],[[0,"Move"],[1,"SAFE"]]],[[6993.68,3556.85,0],[[0,"Move"]]],[[6834.22,3608.87,0],[[0,"Move"]]],[[6977,3766.69,0],[[0,"Move"]]],[[7062.41,3809.92,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Compound.
		[[[[7102.65,3604.59,2.97166],1,"Up",[]],[[7120.55,3593.6,2.9639],46,"Up",[]],[[7107.43,3601.59,0.32666],259,"Up",[]],[[7118.13,3594.82,0.318909],259,"Up",[]],[[7104.09,3597.23,0],207,"Up",[]],[[7113.93,3614.41,0],307,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7092.35,3584.57,2.97],259,"Up",[]],[[7094.26,3584.81,0.324997],259,"Up",[]],[[7075.89,3582.46,0],211,"Middle",[]],[[7111.64,3578.13,0.323334],218,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7098.96,3555.6,8.40137],263,"Up",[]],[[7103.03,3552.48,8.40137],211,"Up",[]],[[7093.27,3561.84,0.307602],23,"Middle",[]],[[7108.99,3564.36,0.0980988],207,"Up",[]],[[7106.69,3566.59,3.45714],207,"Up",[]],[[7106.63,3559.1,5.95821],207,"Up",[]],[[7102.95,3554.53,4.58907],339,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Hunt
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 10, 180,east,_Vehicles,30] spawn OKS_fnc_Huntbase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 10, 180,east,_Vehicles,30] spawn OKS_fnc_Huntbase;
	};

	case 2: {

		// Statics.
		[[[[1457.18,4563.85,3.28423],64,"Middle",[]],[[1456.23,4567.88,3.5947],11,"Middle",[]],[[1456.43,4558.09,3.12732],64,"Middle",[]],[[1456.94,4558.2,0.375809],158,"Middle",[]]],[["UK3CB_MEI_O_LR_M2",[1447.09,4512.94,-3.05176e-005],68,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["Red",1]],[7,["Front_Grill_Hide",0,"Spare_Wheel_Hide",0,"Fuel_Cans_Hide",1,"Beacons_Hide",1,"Radio_Hide",1,"Light_Covers_Hide",1,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1441.79,4628.9,6.59647],184,"Up",[]],[[1445.62,4631.02,3.57411],129,"Up",[]],[[1443.74,4633.78,1.44243],38,"Up",[]],[[1446.65,4618.18,0.1772],165,"Up",[]],[[1461.23,4609.57,0.455673],184,"Up",[]],[[1464.3,4605.92,0.702438],184,"Up",[]],[[1457.4,4600.76,1.09647],184,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1370.72,4670.32,0.845932],184,"Up",[]],[[1368.93,4660.37,0.905113],86,"Up",[]]],[["UK3CB_MEI_O_LR_M2",[1367.43,4582.12,0],139,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["Red",1]],[7,["Front_Grill_Hide",0,"Spare_Wheel_Hide",0,"Fuel_Cans_Hide",1,"Beacons_Hide",1,"Radio_Hide",1,"Light_Covers_Hide",1,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1420.45,4676.71,3.08441],68,"Up",[]],[[1418.34,4679.52,3.12958],51,"Up",[]],[[1408.67,4675.67,3.33499],295,"Up",[]],[[1417.94,4659.51,0.27356],339,"Up",[]],[[1420.61,4677.38,0.214584],231,"Up",[]],[[1401.77,4671.42,0.325035],153,"Up",[]],[[1421.18,4661.07,0],68,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Trenches.
		[[[[1455.69,4704.7,0.14682],117,"Up",[]],[[1452.82,4706.45,0.246689],41,"Up",[]],[[1450.53,4707.93,0.299133],24,"Middle",[]],[[1451.25,4697.03,0],115,"Up",[]],[[1453.46,4679.71,-1.52588e-005],171,"Middle",[]],[[1457.36,4655.19,0],171,"Middle",[]],[[1464.35,4628.63,0],110,"Middle",[]],[[1420.64,4691.07,0],72,"Middle",[]],[[1383.3,4683.53,0],298,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[1558.05,4801.19,0],0,[]],[[1563.05,4796.19,0],0,[]],[[1553.05,4796.19,0],0,[]],[[1568.05,4791.19,0],0,[]]],[],[[[1527.06,4643.69,0],[[0,"Move"],[1,"SAFE"]]],[[1526.03,4497.82,1.52588e-005],[[0,"Move"]]],[[1632.9,4374.02,3.05176e-005],[[0,"Move"]]],[[1532.36,4503.37,-7.62939e-006],[[0,"Move"]]],[[1541.44,4646.45,3.05176e-005],[[0,"Move"]]],[[1569.24,4784.73,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1620.87,4311.44,0],122,[]],[[1614,4309.79,0],122,[]],[[1619.23,4318.32,0],122,[]],[[1607.12,4308.15,0],122,[]]],[],[[[1561.42,4432.79,0],[[0,"Move"],[1,"SAFE"]]],[[1433.61,4539.11,0],[[0,"Move"]]],[[1351.14,4463.84,2.91606],[[0,"Move"]]],[[1448.9,4428.7,0],[[0,"Move"]]],[[1513.91,4374.63,0],[[0,"Move"]]],[[1601,4310.51,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1416.65,4861.47,0],0,[]],[[1421.65,4856.47,0],0,[]],[[1411.65,4856.47,0],0,[]],[[1426.65,4851.47,0],0,[]]],[],[[[1326.29,4769.42,0],[[0,"Move"],[1,"SAFE"]]],[[1309.85,4646.14,0],[[0,"Move"]]],[[1413.46,4592.77,1.52588e-005],[[0,"Move"]]],[[1490.6,4579.4,0],[[0,"Move"]]],[[1470.7,4675.99,0],[[0,"Move"]]],[[1427.84,4845.02,0.794373],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1277.43,4484.66,0],249,[]],[[1280.36,4491.1,0],249,[]],[[1283.87,4481.73,0],249,[]],[[1283.29,4497.53,0],249,[]]],[],[[[1397.97,4459.09,7.62939e-006],[[0,"Move"],[1,"SAFE"]]],[[1397.13,4549.39,0],[[0,"Move"]]],[[1386.59,4630.01,0],[[0,"Move"]]],[[1305.6,4730.42,0],[[0,"Move"]]],[[1278.09,4622.05,0],[[0,"Move"]]],[[1288.91,4500.91,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		// Hunt
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_2, 10, 180,east,_Vehicles,30] spawn OKS_fnc_Huntbase;
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_2, 10, 180,east,_Vehicles,30] spawn OKS_fnc_Huntbase;

		// Objective
		{
			[east,_X,[3528.72,2916.53,0],7,300,120] spawn OKS_fnc_ArtyFire; sleep 5;
		} foreach [arty_1,arty_2,arty_3];
	};

	case 3: {

		// Statics
		[[[[988.547,1279.07,0.231766],348,"Up",[]],[[972.371,1303.98,-1.52588e-005],346,"Middle",[]],[[980.406,1309.2,-1.52588e-005],342,"Middle",[]],[[961.816,1296.42,-1.52588e-005],1,"Middle",[]],[[974.2,1272.54,-3.05176e-005],353,"Middle",[]],[[980.148,1282.73,-1.52588e-005],355,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1064.49,1210.19,0.499054],124,"Up",[]],[[1068.04,1222.14,0],119,"Up",[]],[[1080.43,1222.38,0],144,"Up",[]],[[1080.51,1213.15,0.433548],307,"Up",[]],[[1077.11,1206.29,0.913055],144,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1110.96,1218.6,3.62169],357,"Up",[]],[[1114.04,1216.52,3.68549],18,"Up",[]],[[1105.53,1210.34,3.31613],310,"Up",[]],[[1113.81,1215.58,0.84938],20,"Up",[]],[[1105.3,1189.06,0.527023],338,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1036.06,1195.65,0.82312],110,"Up",[]],[[1036.63,1166.19,3.67912],234,"Up",[]],[[1046.66,1168.92,3.30885],39,"Up",[]],[[1056.11,1172.85,0.490799],146,"Up",[]],[[1058.88,1181.43,0.791275],90,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1090.63,1167.63,0],305,"Up",[]],[[1084.48,1155.24,0.265945],322,"Up",[]],[[1067.41,1190.9,0.412064],87,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Bunker
		[[[[1055.8,1074.38,0],316,"Middle",[]],[[1057.43,1076.15,0],316,"Middle",[]],[[1061,1078.55,0],356,"Middle",[]],[[1058.23,1079.53,0],316,"Middle",[]],[[1053.8,1071.79,0],262,"Middle",[]],[[1070.68,1069.84,0],76,"Middle",[]],[[1071.56,1066.54,0],121,"Middle",[]],[[1068.15,1065.78,0],154,"Middle",[]],[[1070.11,1075.41,0],44,"Middle",[]],[[1068.92,1075.07,0],357,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[1060.67,1064.63,0],188,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[1064.76,1077.93,0],11,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		
		// Patrols.
		[[[[883.429,1182.24,0],0,[]],[[888.429,1177.24,0],0,[]],[[878.429,1177.24,0],0,[]],[[893.429,1172.24,1.52588e-005],0,[]]],[],[[[905.67,1326.77,0],[[0,"Move"],[1,"SAFE"]]],[[964.856,1358.54,1.52588e-005],[[0,"Move"]]],[[996.451,1169.22,1.52588e-005],[[0,"Move"]]],[[900.114,1158.62,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1087.27,1308.48,0],0,[]],[[1092.27,1303.48,0],0,[]],[[1082.27,1303.48,0],0,[]],[[1097.27,1298.48,0],0,[]]],[],[[[1037.8,1449.55,0],[[0,"Move"],[1,"SAFE"]]],[[1185.48,1457.22,0],[[0,"Move"]]],[[1248.23,1267.03,0],[[0,"Move"]]],[[1102.06,1259.89,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1001.35,1075.65,0],0,[]],[[1006.35,1070.65,0],0,[]],[[996.349,1070.65,0],0,[]],[[1011.35,1065.65,0],0,[]]],[],[[[1023.73,1155.85,0],[[0,"Move"],[1,"SAFE"]]],[[1136.14,1199.51,1.52588e-005],[[0,"Move"]]],[[1112.28,1119.86,0],[[0,"Move"]]],[[1018.03,1052.03,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Mortar Pit
		[mortar_1, east, "precise", "light", ["auto", 25],150,600,15] spawn OKS_fnc_Mortars;

		// Hunt
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_3, 10, 180,east,_Vehicles,30] spawn OKS_fnc_Huntbase;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_3, 10, 180,east,_Vehicles,30] spawn OKS_fnc_Huntbase;

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
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_CreateZone")};

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
			] spawn OKS_fnc_CreateZone;
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

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn OKS_fnc_Huntbase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Huntbase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn OKS_fnc_Huntbase;
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

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};

