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

		// Sentries Scattered.
		[[[[7245.93,8059.02,6.13283],238,"Auto",[]],[[7245.02,8067.13,6.12538],240,"Auto",[]],[[7253.93,8055.9,3.89883],182,"Auto",[]],[[7257.24,8057.38,3.9026],97,"Auto",[]],[[7192.87,8118.78,3.20761],170,"Auto",[]],[[7209.28,8078.51,3.10794],83,"Auto",[]],[[7277.55,8056.35,3.88832],252,"Auto",[]],[[7278.68,8028.55,4.40569],238,"Auto",[]],[[7280.74,8034.18,4.42554],283,"Auto",[]],[[7303.65,8043.76,4.24345],337,"Middle",[]],[[7300.15,8019.37,3.86353],293,"Up",[]],[[7311.89,8015.74,4.20361],246,"Up",[]],[[7311.29,8025.5,4.20361],19,"Up",[]],[[7287.82,8034.59,4.41902],91,"Up",[]],[[7305.34,8059.06,3.92033],157,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7308.65,7937.15,3.66656],283,"Auto",[]],[[7308.03,7934.26,3.66656],262,"Auto",[]],[[7322.4,7966.03,3.60684],20,"Auto",[]],[[7345.4,7959.45,4.02022],20,"Auto",[]],[[7358.85,7958.66,4.28026],346,"Middle",[]],[[7384.5,7972.96,4.12001],312,"Auto",[]],[[7381.98,7969.26,4.36742],313,"Auto",[]],[[7388.63,7875.61,4.23103],329,"Middle",[]],[[7388.04,7905.25,4.4951],279,"Up",[]],[[7355.6,8011.19,4.27742],269,"Middle",[]],[[7360.13,8020.26,4.15471],352,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7197.64,7949.99,4.47124],342,"Auto",[]],[[7209.11,7949.56,4.38234],34,"Auto",[]],[[7190.83,7963.63,3.81142],61,"Auto",[]],[[7213.1,7973.96,3.89653],89,"Auto",[]],[[7263.38,8003.33,4.14499],174,"Auto",[]],[[7262.67,7982.31,4.65434],109,"Auto",[]],[[7262.46,7955.13,4.41667],142,"Auto",[]],[[7275.92,7943.54,3.6066],266,"Middle",[]],[[7278.14,7948.69,3.6666],265,"Auto",[]],[[7194.48,7927.94,4.48965],276,"Auto",[]],[[7190.88,7967.94,3.81073],39,"Auto",[]],[[7206.1,7975.74,3.94774],259,"Auto",[]],[[7278.28,7960.51,3.92001],302,"Up",[]],[[7281.3,7964.65,3.92001],358,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7184.32,7902.66,4.09598],6,"Auto",[]],[[7144.43,7918.68,2.9843],61,"Auto",[]],[[7243.23,7847.29,5.22755],33,"Auto",[]],[[7233.57,7849.76,5.36421],339,"Auto",[]],[[7192.12,7873.08,4.6566],17,"Auto",[]],[[7196.95,7872.55,4.17477],9,"Auto",[]],[[7211.9,7870.84,4.82011],53,"Auto",[]],[[7247.18,7825,4.41406],33,"Middle",[]],[[7237.96,7825.74,4.48383],301,"Auto",[]],[[7101.32,7868.23,3.92641],41,"Auto",[]],[[7098.48,7870.17,3.95578],3,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7280.71,7898.7,4.57826],318,"Auto",[]],[[7280.73,7896.25,4.61043],262,"Auto",[]],[[7282.66,7898.5,4.60748],318,"Auto",[]],[[7291.72,7824.79,3.92],343,"Auto",[]],[[7288.86,7823.37,3.92],333,"Auto",[]],[[7282.09,7820.25,3.92],326,"Auto",[]],[[7294.57,7821.95,3.92],41,"Auto",[]],[[7366.97,7813.34,4.07571],293,"Up",[]],[[7368.47,7816.04,4.58043],311,"Up",[]],[[7362.48,7807.35,4.36317],283,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// MLRS Guards
		[[[[7217.29,7934.71,1.52588e-005],194,"Middle",[]],[[7232.55,7941.51,0],304,"Middle",[]],[[7261,7937.72,0],260,"Middle",[]],[[7261.02,7926.15,0],36,"Middle",[]],[[7245.11,7917.55,0],198,"Middle",[]],[[7229.16,7917.96,0],143,"Middle",[]],[[7216.69,7925.64,0],345,"Middle",[]],[[7201.32,7926.4,4.3735],100,"Up",[]],[[7203.77,7939.73,4.87967],107,"Up",[]],[[7200.27,7936.77,1.05424],103,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Fuel Station
		[[[[7210.79,7790.95,0.101868],149,"Auto",[]],[[7205.65,7792.96,0.101868],226,"Auto",[]],[[7205.68,7794.94,0.101868],149,"Auto",[]],[[7225.03,7799.77,0.0943146],149,"Auto",[]],[[7216,7804.2,0.0943146],62,"Auto",[]],[[7212.47,7800.81,0.0954437],135,"Auto",[]],[[7230.42,7743.94,3.83818],336,"Auto",[]],[[7227.4,7743.13,3.89539],324,"Auto",[]],[[7207.15,7755.21,0],15,"Auto",[]],[[7218.58,7780.58,0],46,"Auto",[]],[[7232.27,7843.22,5.34634],207,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Artillery
		{
			[east,_X,getPos ArtyTarget_1,4,300,30] spawn OKS_ArtyFire; sleep 10;
		} foreach [arty_1,arty_2,arty_3];

		// Anti-Air
		{
			[_X,east,false,2000,true] spawn GW_Ambient_AAA; sleep 5;
		} foreach [aaa_1,aaa_2,aaa_3];

		// Officer Objective 
		[Group officer_1,getMarkerPos "respawn_west",west,false,nil,false] spawn OKS_Evacuate_HVT;
		[[[[7101.94,7838.67,0],244,"Auto",[]],[[7088.18,7852.43,0],322,"Auto",[]],[[7076.81,7854.83,0.284592],9,"Auto",[]],[[7074.82,7855.34,0.303619],9,"Middle",[]],[[7077.81,7867.57,0],345,"Auto",[]],[[7086.12,7886.03,0],349,"Middle",[]],[[7119.79,7870.63,0],312,"Middle",[]],[[7107.27,7860.93,0.100891],32,"Middle",[]],[[7103.36,7860.33,0.439377],239,"Middle",[]],[[7094.04,7866.02,0.541885],43,"Middle",[]],[[7098.42,7863.09,3.91399],244,"Middle",[]],[[7093.62,7866.62,3.96747],56,"Middle",[]],[[7096.22,7871.28,3.97554],134,"Middle",[]],[[7101.87,7859.3,3.86597],7,"Middle",[]],[[7105.51,7864.2,3.87378],8,"Middle",[]],[[7099.74,7855.36,0.378967],132,"Up",[]],[[7095.96,7856.99,0.418259],332,"Up",[]],[[7092.81,7852.32,0.435486],132,"Up",[]],[[7095.84,7849.93,0.389786],132,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Generator Guards
		[[[[7229.86,8056.83,0.748901],75,"Auto",[]],[[7227.99,8066.23,0.802444],73,"Auto",[]],[[7243.63,8069.19,0],212,"Middle",[]],[[7241.51,8031.22,0.27417],359,"Up",[]],[[7202.54,8071.3,0.312302],140,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrols
		[[[[7084.36,7828.15,0],0,[]],[[7089.36,7823.15,1.52588e-005],0,[]],[[7094.36,7818.15,1.52588e-005],0,[]]],[],[[[7159.33,7744.45,0],[[0,"Move"],[1,"SAFE"]]],[[7191.66,7826.9,0],[[0,"Move"]]],[[7121.81,7891.43,0],[[0,"Move"]]],[[7075.23,7837.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7146.72,7929.69,0],0,[]],[[7151.72,7924.69,0],0,[]],[[7156.72,7919.69,0],0,[]]],[],[[[7216.85,7874.49,0],[[0,"Move"],[1,"SAFE"]]],[[7268.53,7948.26,0],[[0,"Move"]]],[[7202.7,7986.69,0],[[0,"Move"]]],[[7137.59,7939.23,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7201.08,8096.38,0],0,[]],[[7205.73,8100.89,0],0,[]],[[7210.73,8095.89,0],0,[]]],[],[[[7215.52,8060.87,0.683609],[[0,"Move"],[1,"SAFE"]]],[[7352.65,8116.7,0],[[0,"Move"]]],[[7231.57,8142.15,0],[[0,"Move"]]],[[7196,8097,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7265.27,7981.69,0],0,[]],[[7270.27,7976.69,0],0,[]],[[7275.27,7971.69,0],0,[]]],[],[[[7369.44,7896.92,0],[[0,"Move"],[1,"SAFE"]]],[[7371.28,7975.25,0],[[0,"Move"]]],[[7293.54,8053.73,0],[[0,"Move"]]],[[7269.73,7992.03,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7265.42,7886.3,0],0,[]],[[7270.42,7881.3,0],0,[]],[[7275.42,7876.3,0],0,[]]],[],[[[7331.98,7835.42,0],[[0,"Move"],[1,"SAFE"]]],[[7384.63,7845.62,1.52588e-005],[[0,"Move"]]],[[7304.12,7948.79,0],[[0,"Move"]]],[[7258.29,7891.24,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7169.72,7744.93,0],0,[]],[[7174.72,7739.93,0],0,[]],[[7179.72,7734.93,0],0,[]]],[],[[[7258.97,7745.76,0],[[0,"Move"],[1,"SAFE"]]],[[7359.33,7821.67,0],[[0,"Move"]]],[[7219.3,7855.76,0],[[0,"Move"]]],[[7167.73,7751.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7236.98,8014.09,1.52588e-005],0,[]],[[7241.98,8009.09,0],0,[]],[[7246.98,8004.09,0],0,[]]],[],[[[7307.78,7977.13,0],[[0,"Move"],[1,"SAFE"]]],[[7406.58,8012.13,0],[[0,"Move"]]],[[7298.24,8086.24,1.52588e-005],[[0,"Move"]]],[[7233.17,8021.2,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};

	case 2: {

		/// Activate Mission
		{
			[getPos _X,"rush",1,independent,1500,[],objNull] spawn OKS_Lambs_Spawner; sleep 15;
		} foreach [rush_1,rush_2,rush_3,rush_4,rush_5,rush_6,rush_7,rush_8,rush_9,rush_10];

		_Vehicles = ["UK3CB_MDF_I_M113_M2_90","UK3CB_MDF_I_M113_Unarmed","UK3CB_MDF_I_MB4WD_Unarmed","UK3CB_MDF_I_M1025_Unarmed","UK3CB_MDF_I_M1151","UK3CB_MDF_I_M1152","UK3CB_MDF_I_M998_2DR","UK3CB_MDF_I_M998_4DR","UK3CB_MDF_I_Offroad_Unarmed","UK3CB_MDF_I_LSV_01_Light","UK3CB_MDF_I_LSV_01","UK3CB_MDF_I_LSV_02"];
		{
			[_X, _X, NEKY_Hunt_Trigger_1, 10,600,east,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],200] spawn NEKY_Hunt_HuntBase; sleep 30;
		} foreach [spawn_1,spawn_2,spawn_3,spawn_4,spawn_5];

	};

	case 3: {

		/// Bomb Defusal 
		{
			[_X,900] spawn OKS_Defuse_Explosive
		} foreach [bomb_1,bomb_2,bomb_3,bomb_4];

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
