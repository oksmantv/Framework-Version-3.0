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

		// Compounds
		[[[[312.06,5851.41,3.44266],137,"Up",[]],[[309.44,5850.68,3.3295],161,"Up",[]],[[302.194,5851.34,3.33832],161,"Up",[]],[[305.741,5851.41,3.45956],161,"Up",[]],[[300.964,5854.43,0.558121],106,"Up",[]],[[306.022,5866.58,0],151,"Up",[]],[[312.95,5852.63,0.428909],355,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[300.124,5882.56,1.07646],200,"Up",[]],[[297.527,5872.28,0.203354],34,"Up",[]],[[306.698,5875.42,0.413788],254,"Up",[]],[[311.929,5888.58,0],176,"Up",[]],[[298.324,5885.44,0],260,"Up",[]]],[["rhs_SPG9M_MSV",[305.351,5874.77,3.89359],142,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[584.384,6066.87,-1.52588e-005],264,"Up",[]],[[565.816,6095.77,0],176,"Up",[]],[[573.259,6077.99,0.884369],264,"Up",[]],[[574.295,6069.19,0.351776],264,"Up",[]],[[582.417,6072.83,0.184387],264,"Up",[]],[[597.856,6093.81,2.85144],180,"Up",[]],[[594.866,6100.42,3.26183],234,"Middle",[]],[[594.903,6101.16,0.442459],261,"Up",[]]],[["UK3CB_ADM_O_Pickup_SPG9",[189.863,5885.34,0],136,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],["UK3CB_ADM_O_Pickup_SPG9",[414.296,6051.79,0],75,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[308.546,6191.55,3.5006],183,"Up",[]],[[312.058,6191.9,3.39949],183,"Up",[]],[[313.626,6199.48,3.32724],153,"Up",[]],[[312.381,6194.11,0.900452],183,"Up",[]],[[311.704,6203.08,0.359436],277,"Up",[]]],[["rhs_SPG9M_MSV",[305.264,6192.57,6.06096],166,[["gunner",-1,[0]]],[]],["UK3CB_ADM_O_Pickup_SPG9",[106.892,6355.45,0],84,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[189.333,6486.52,0],77,"Up",[]],[[184.611,6518.02,-1.52588e-005],173,"Up",[]],[[196.586,6507.51,3.04906],103,"Up",[]],[[193.508,6502.53,3.00354],182,"Up",[]],[[197.392,6503.51,0.285828],183,"Up",[]],[[192.181,6511.8,0.387329],143,"Up",[]],[[206.156,6494.56,-1.52588e-005],257,"Up",[]]],[["rhs_SPG9M_MSV",[194.926,6505.66,2.97574],115,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[404.901,6569.42,-1.52588e-005],77,"Up",[]],[[422.56,6553.17,0.319611],336,"Up",[]],[[406.869,6553.48,0.447037],72,"Up",[]],[[408.669,6560.83,0.539886],72,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[709.445,6757.19,3.30809],183,"Up",[]],[[718.234,6753.29,3.67711],183,"Up",[]],[[720.799,6759,3.63739],183,"Up",[]],[[767.615,6809.13,3.59906],171,"Up",[]],[[774.234,6809.65,3.25095],173,"Middle",[]],[[762.124,6711.38,2.78252],267,"Middle",[]],[[769.381,6710.44,3.37952],183,"Middle",[]],[[705.926,6717.63,0.202728],210,"Up",[]],[[707.49,6717.81,0.0743561],210,"Up",[]]],[["UK3CB_ADM_O_Pickup_SPG9",[494.773,6641.44,0],176,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],["rhs_SPG9M_MSV",[728.339,6766.21,0],153,[["gunner",-1,[0]]],[]],["UK3CB_ADM_O_Pickup_SPG9",[790.476,6826.63,0],183,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],["UK3CB_ADM_O_Pickup_SPG9",[974.219,6838.93,-1.52588e-005],251,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// HQ
		[[[[1113.68,6808.2,6.7153],273,"Up",[]],[[1113.68,6804.77,6.71579],273,"Up",[]],[[1115.06,6801.18,6.7256],273,"Up",[]],[[1119.21,6804.18,3.38484],284,"Up",[]],[[1116.66,6809.01,3.69412],1,"Up",[]],[[1121.24,6804.97,0.0672302],260,"Up",[]],[[1116.7,6805.6,0.0530548],241,"Up",[]],[[1117.43,6800.99,0.0747375],260,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1120.7,6801.06,6.72795],89,"Middle",[]],[[1131.15,6806.23,6.76521],267,"Middle",[]],[[1124.88,6799.9,3.38721],278,"Up",[]],[[1130.87,6805.66,3.41455],273,"Up",[]],[[1129.03,6808.45,3.71823],298,"Up",[]],[[1130.32,6805.65,0.101944],250,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1131.15,6806.23,6.76521],267,"Middle",[]],[[1124.88,6799.9,3.38721],278,"Up",[]],[[1130.87,6805.66,3.41455],273,"Up",[]],[[1129.03,6808.45,3.71823],298,"Up",[]],[[1130.32,6805.65,0.101944],250,"Up",[]],[[1120.7,6801.06,6.72795],89,"Middle",[]]],[["UK3CB_ADM_O_Pickup_SPG9",[1257.97,6821.56,0],268,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[610.441,6386.29,0],358,"Up",[]],[[592.136,6391.76,0],84,"Up",[]],[[600.774,6407.12,0],100,"Up",[]],[[601.07,6399.71,0.91893],183,"Up",[]],[[594.144,6402.83,0.440048],154,"Up",[]],[[596.395,6394.12,0.15535],183,"Up",[]]],[["rhs_SPG9M_MSV",[602.821,6401.57,3.71257],188,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrol
		[[[[650.405,5733.87,0],0,[]],[[655.405,5728.87,0],0,[]],[[645.405,5728.87,0],0,[]],[[660.405,5723.87,0],0,[]],[[640.405,5723.87,0],0,[]],[[665.405,5718.87,0],0,[]],[[635.405,5718.87,0],0,[]],[[670.405,5713.87,0],0,[]]],[],[[[646.714,6010.67,0],[[0,"Move"],[1,"SAFE"]]],[[529.537,6014.36,0],[[0,"Move"]]],[[526.769,5724.65,0],[[0,"Move"]]],[[649.469,5718.09,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[428.048,5725.65,0],0,[]],[[433.048,5720.65,0],0,[]],[[423.048,5720.65,0],0,[]],[[438.048,5715.65,0],0,[]],[[418.048,5715.65,0],0,[]],[[443.048,5710.65,0],0,[]],[[413.048,5710.65,0],0,[]],[[448.048,5705.65,0],0,[]]],[],[[[424.357,6002.44,0],[[0,"Move"],[1,"SAFE"]]],[[307.18,6006.13,1.52588e-005],[[0,"Move"]]],[[304.412,5716.42,0],[[0,"Move"]]],[[427.112,5709.86,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[257.675,5870.56,0],0,[]],[[262.675,5865.56,0],0,[]],[[252.675,5865.56,0],0,[]],[[267.675,5860.56,0],0,[]],[[247.675,5860.56,0],0,[]],[[272.675,5855.56,0],0,[]],[[242.675,5855.56,0],0,[]],[[277.675,5850.56,0],0,[]]],[],[[[253.984,6147.36,0],[[0,"Move"],[1,"SAFE"]]],[[136.807,6151.05,0],[[0,"Move"]]],[[134.038,5861.33,1.52588e-005],[[0,"Move"]]],[[256.739,5854.77,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[172.66,6427.3,0],75,[]],[[178.218,6431.29,0],75,[]],[[170.146,6434.93,1.52588e-005],75,[]],[[174.658,6425.19,0],75,[]],[[169.305,6429.27,0],75,[]],[[171.098,6419.08,0],75,[]],[[166.859,6423.6,0],75,[]],[[167.538,6412.97,3.05176e-005],75,[]]],[],[[[448.484,6511.55,1.52588e-005],[[0,"Move"],[1,"SAFE"]]],[[422.174,6625.8,0],[[0,"Move"]]],[[141.331,6554.6,1.52588e-005],[[0,"Move"]]],[[166.277,6434.29,3.05176e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[328.274,6522.63,0],180,[]],[[323.274,6527.63,0],180,[]],[[333.274,6527.63,0],180,[]],[[318.274,6532.63,0],180,[]],[[338.274,6532.63,0],180,[]],[[313.274,6537.63,0],180,[]],[[343.274,6537.63,0],180,[]],[[308.274,6542.63,0],180,[]]],[],[[[331.965,6245.84,0],[[0,"Move"],[1,"SAFE"]]],[[449.142,6242.15,0],[[0,"Move"]]],[[451.91,6531.86,0],[[0,"Move"]]],[[329.21,6538.42,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[703.706,6432.66,3.05176e-005],0,[]],[[708.706,6427.66,1.52588e-005],0,[]],[[698.706,6427.66,0],0,[]],[[713.706,6422.66,0],0,[]],[[693.706,6422.66,1.52588e-005],0,[]],[[718.706,6417.66,1.52588e-005],0,[]],[[688.706,6417.66,1.52588e-005],0,[]],[[723.706,6412.66,1.52588e-005],0,[]]],[],[[[686.431,6667.43,0],[[0,"Move"],[1,"SAFE"]]],[[546.497,6614.24,0],[[0,"Move"]]],[[580.069,6423.44,1.52588e-005],[[0,"Move"]]],[[702.77,6416.88,3.05176e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1181.38,6673.24,0],0,[]],[[1186.38,6668.24,0],0,[]],[[1176.38,6668.24,0],0,[]],[[1191.38,6663.24,0],0,[]],[[1171.38,6663.24,0],0,[]],[[1196.38,6658.24,0],0,[]],[[1166.38,6658.24,0],0,[]],[[1201.38,6653.24,0],0,[]]],[],[[[1177.69,6950.04,0],[[0,"Move"],[1,"SAFE"]]],[[1060.51,6953.73,0],[[0,"Move"]]],[[1057.74,6664.02,0],[[0,"Move"]]],[[1180.44,6657.46,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[635.114,6730.07,0],77,[]],[[631.387,6724.06,0],77,[]],[[629.105,6733.8,0],77,[]],[[627.659,6718.06,0],77,[]],[[623.096,6737.53,0],77,[]],[[623.932,6712.05,0],77,[]],[[617.088,6741.26,0],77,[]],[[620.204,6706.04,0],77,[]]],[],[[[903.77,6796.82,1.52588e-005],[[0,"Move"],[1,"SAFE"]]],[[880.63,6911.75,0],[[0,"Move"]]],[[597.925,6848.34,0],[[0,"Move"]]],[[619.534,6727.38,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Vehicle Patrol
		[[],[["rhs_btr70_msv",[166.167,6364.38,1.52588e-005],165,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]],[[[357.601,6025.75,0],[[0,"Move"],[1,"SAFE"]]],[[621.171,6444.35,-1.52588e-005],[[0,"Move"]]],[[341.897,6521.96,0],[[0,"Move"]]],[[163.435,6388.18,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["rhs_btr70_msv",[308.821,5956.08,0],165,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]],[[[460.284,5673.7,0],[[0,"Move"],[1,"SAFE"]]],[[497.627,6083.29,0],[[0,"Move"]]],[[495.864,6562.99,0],[[0,"Move"]]],[[305.737,5980.02,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Hunt Base
		_Vehicles = [
			"UK3CB_ADA_O_LR_SPG9", 
			"UK3CB_ADM_O_BTR40_MG", 
			"UK3CB_ADM_O_MTLB_KPVT", 
			"UK3CB_ADM_O_MTLB_PKT", 
			"UK3CB_ADM_O_BRDM2", 
			"UK3CB_ADM_O_Hilux_Spg9", 
			"UK3CB_ADM_O_LR_SPG9", 
			"UK3CB_ADM_O_LR_SF_M2", 
			"UK3CB_ADM_O_Pickup_SPG9"
		];
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 3,900,east,_Vehicles,240] spawn NEKY_Hunt_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 3,1000,east,_Vehicles,240] spawn NEKY_Hunt_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 3,1100,east,_Vehicles,240] spawn NEKY_Hunt_HuntBase;
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_1, 3,1200,east,_Vehicles,240] spawn NEKY_Hunt_HuntBase;

		[aaa_1,east,false,1500,true] spawn GW_Ambient_AAA;
		[aaa_2,east,false,1500,true] spawn GW_Ambient_AAA;
		[east,arty_1,getMarkerPos "target",7,300,30] spawn OKS_ArtyFire;
		[east,arty_2,getMarkerPos "target",7,300,30] spawn OKS_ArtyFire;

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
