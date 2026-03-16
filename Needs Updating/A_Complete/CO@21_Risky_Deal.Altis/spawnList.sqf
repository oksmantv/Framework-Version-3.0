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

		// Patrols.
		[[[[6655.03,19176.1,-1.52588e-005],0,[]],[[6660.03,19171.1,0],0,[]],[[6650.03,19171.1,0],0,[]],[[6665.03,19166.1,0],0,[]]],[],[[[6525.89,19180.4,0],[[0,"Move"],[1,"SAFE"]]],[[6314.54,19274.8,1.52588e-005],[[0,"Move"]]],[[6573.41,19523.7,0],[[0,"Move"]]],[[6641.56,19236.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6056.15,19369.4,0],0,[]],[[6061.15,19364.4,0],0,[]],[[6051.15,19364.4,0],0,[]],[[6066.15,19359.4,0],0,[]]],[],[[[5853.56,19435.1,0],[[0,"Move"],[1,"SAFE"]]],[[5884.32,19636.8,0],[[0,"Move"]]],[[6232.95,19657.3,1.52588e-005],[[0,"Move"]]],[[6191.94,19416.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6843.71,19800.6,0],349,[]],[[6849.57,19796.7,0],349,[]],[[6839.75,19794.8,0],349,[]],[[6855.43,19792.7,1.52588e-005],349,[]]],[],[[[6633.29,19789.5,1.52588e-005],[[0,"Move"],[1,"SAFE"]]],[[6483.86,19880.1,1.52588e-005],[[0,"Move"]]],[[6403.57,20102.7,0],[[0,"Move"]]],[[6819.03,19856.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6541.09,20286.1,0],163,[]],[[6534.82,20289.3,0],163,[]],[[6544.37,20292.3,0],163,[]],[[6528.56,20292.6,0],163,[]]],[],[[[6775.58,20216.3,0],[[0,"Move"],[1,"SAFE"]]],[[6772.4,20105.1,0],[[0,"Move"]]],[[6673.83,19953.2,0],[[0,"Move"]]],[[6564.14,20229.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7201.65,19776.7,0],250,[]],[[7204.65,19783.2,0],250,[]],[[7208.06,19773.7,0],250,[]],[[7207.65,19789.6,0],250,[]]],[],[[[7297.89,19667.5,0],[[0,"Move"],[1,"SAFE"]]],[[7249.95,19460.3,0],[[0,"Move"]]],[[7108.25,19516,0],[[0,"Move"]]],[[7149.84,19743.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7002.5,19711.9,0],177,[]],[[6997.23,19716.6,0],177,[]],[[7007.22,19717.2,0],177,[]],[[6991.96,19721.3,0],177,[]]],[],[[[7081.46,19699.3,0],[[0,"Move"],[1,"SAFE"]]],[[7074.41,19527.9,0],[[0,"Move"]]],[[6936.23,19507.5,0],[[0,"Move"]]],[[6943.98,19707.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7028.94,19266.9,0],0,[]],[[7033.94,19261.9,4.66701],0,[]],[[7023.94,19261.9,0],0,[]],[[7038.94,19256.9,0],0,[]]],[],[[[6815.72,19226.3,0],[[0,"Move"],[1,"SAFE"]]],[[6668.79,19288.8,0],[[0,"Move"]]],[[6943.28,19408.2,0],[[0,"Move"]]],[[7035.82,19295.7,4.66716],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6666.4,20515.6,1.52588e-005],224,[]],[[6666.32,20522.6,0],224,[]],[[6673.47,20515.7,0],224,[]],[[6666.23,20529.7,0],224,[]]],[],[[[6874.99,20445,0],[[0,"Move"],[1,"SAFE"]]],[[6767.69,20344,0],[[0,"Move"]]],[[6333.68,20387.7,0],[[0,"Move"]]],[[6637.33,20495.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Small Patrols.
		[[[[6729.75,19278.2,0],0,[]],[[6734.75,19273.2,-1.52588e-005],0,[]]],[],[[[6768.22,19336,0],[[0,"Move"],[1,"SAFE"]]],[[6689.95,19348.8,-0.000656128],[[0,"Move"]]],[[6657.79,19308.5,-0.000198364],[[0,"Move"]]],[[6725.68,19270.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6733.01,19516.5,3.81714],0,[]],[[6738.01,19511.5,3.81714],0,[]]],[],[[[6771.48,19574.3,3.81714],[[0,"Move"],[1,"SAFE"]]],[[6693.21,19587.1,3.81714],[[0,"Move"]]],[[6661.05,19546.8,3.81714],[[0,"Move"]]],[[6728.94,19508.8,3.81714],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6589.93,19996.9,10.2867],0,[]],[[6594.93,19991.9,0],0,[]]],[],[[[6628.4,20054.8,0],[[0,"Move"],[1,"SAFE"]]],[[6550.13,20067.5,0],[[0,"Move"]]],[[6517.97,20027.2,0],[[0,"Move"]]],[[6585.86,19989.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Objective 1.
		[[[[6515.68,19991.8,7.62939e-005],302,"Up",[]],[[6519.27,20017.6,4.57764e-005],40,"Up",[]],[[6516.5,20000.5,0.899857],39,"Up",[]],[[6510.35,20004.2,1.02588],302,"Up",[]],[[6502.48,20009.6,0.489166],302,"Up",[]],[[6508.94,20018.9,1.25015],335,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6629.83,20068.4,0.837219],197,"Up",[]],[[6629.21,20071.3,0.632172],299,"Up",[]],[[6604.05,20078.5,4.112],33,"Up",[]],[[6605.37,20074.3,4.13951],89,"Middle",[]],[[6604.03,20080.2,0.554077],30,"Up",[]],[[6603.51,20074.9,0.887436],179,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6540.73,20022.2,0.358673],205,"Up",[]],[[6554.38,19987.9,6.10352e-005],258,"Up",[]],[[6616.06,19989.3,0.1922],240,"Up",[]],[[6616.28,19993.1,0.324432],4,"Up",[]]],[["UK3CB_O_G_MTLB_PKT",[6645.39,19851.6,2.34772],356,[["driver",-1,[]],["commander",-1,[0]]],[[6,["Olive",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Objective 2.
		[[[[6735.97,19555.4,0.33963],86,"Up",[]],[[6731.79,19552.1,0.410599],327,"Up",[]],[[6725.51,19546.5,0.262604],302,"Up",[]],[[6728.59,19548.8,0.161224],141,"Up",[]],[[6713.54,19564.8,0],318,"Up",[]]],[["UK3CB_FIA_O_Datsun_Pkm",[6751.95,19560,1.5],323,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["FIA_01",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Objective 3
		[[[[6713.79,19291.9,0.203751],15,"Up",[]],[[6709.1,19292.7,0.641281],303,"Up",[]],[[6740.88,19322,0.352005],227,"Up",[]],[[6733.06,19307.1,2.01875],26,"Up",[]],[[6736.85,19317.4,0.574249],325,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Objective 4.
		[[[[6992.27,19458.4,0.000350952],280,"Up",[]],[[6996.41,19465.4,0.782852],79,"Middle",[]],[[6991.69,19466.8,1.18118],310,"Middle",[]],[[6991.31,19465.5,0.973801],277,"Middle",[]],[[7051.34,19461.9,0.0900879],305,"Up",[]]],[["UK3CB_O_G_MTLB_PKT",[6876.59,19406.6,1.52588e-005],308,[["driver",-1,[]],["commander",-1,[0]]],[[6,["Olive",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[6988.72,19489.6,0.000213623],305,"Middle",[]],[[6992.88,19494.3,3.05176e-005],319,"Middle",[]],[[7003.75,19497.5,0.00428772],305,"Middle",[]],[[7012.43,19511,0.584091],307,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7025.33,19530.4,0],326,"Up",[]],[[7023.97,19529.1,1.52588e-005],326,"Up",[]],[[7023.02,19527.5,1.52588e-005],326,"Up",[]],[[7016.22,19510.4,0.305084],51,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7089.5,19581.7,0.87886],302,"Up",[]],[[7090.44,19582.9,0.583115],327,"Up",[]],[[7086.9,19579.1,1.18138],318,"Up",[]],[[7085.96,19578.3,1.29903],302,"Up",[]],[[7082.15,19577.2,0.860046],296,"Up",[]],[[7081.1,19576,0.628448],296,"Up",[]],[[7082.27,19582.5,1.45982],271,"Middle",[]],[[7083.98,19584,1.50806],316,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Objective 5.
		[[[[7193.37,19459.2,1.09563],262,"Middle",[]],[[7187.51,19454.5,1.69118],262,"Up",[]],[[7165.35,19460.5,1.10725],290,"Up",[]],[[7164.32,19459.3,2.00679],272,"Up",[]],[[7165.76,19457.9,1.26314],239,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7199.17,19455,0.468246],250,"Up",[]],[[7201.42,19459.1,0.517227],209,"Up",[]],[[7207.84,19440.7,0.304764],29,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		{
			[east,_X,[4662.9,21501,0],8,200,120] spawn OKS_ArtyFire; sleep 6;
		} foreach [arty_1,arty_2,arty_3,arty_4];

		{
			[_X,east,false,1500,true] spawn GW_Ambient_AAA; sleep 4;
		} foreach [aaa_1,aaa_2];

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
