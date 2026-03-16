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

	case 0: {

		// Counter-Attack Strongpoint first
		[attack_1,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;	

	};

	case 1: {

		// first strongpoint
		[[[[9426.38,4708.82,0],231,"Middle",[]],[[9428.15,4704.81,3.05176e-005],231,"Middle",[]],[[9433.63,4705.55,0],179,"Middle",[]],[[9440.66,4732.19,0],224,"Middle",[]],[[9457.22,4732.4,0],147,"Middle",[]],[[9445.34,4730.87,1.29654],62,"Middle",[]],[[9451.77,4730.83,1.48483],250,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9167.5,4678.17,3.05176e-005],145,"Middle",[]],[[9200.31,4682.8,0],138,"Middle",[]],[[9203.35,4686.06,3.05176e-005],164,"Middle",[]],[[9217,4683.27,3.05176e-005],89,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9291.54,4731.65,0],62,"Middle",[]],[[9295.04,4731.84,0],91,"Middle",[]],[[9334,4775.21,0],107,"Middle",[]],[[9334.79,4778.98,0],136,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// patrols.
		[[[[9186.32,4702.6,-3.05176e-005],0,[]],[[9189.32,4699.6,0],0,[]],[[9191.32,4699.6,0],0,[]],[[9193.32,4699.6,0],0,[]]],[],[[[9244.44,4754.23,0],[[0,"Move"],[1,"SAFE"]]],[[9397.9,4809.34,-3.05176e-005],[[0,"Move"]]],[[9489.13,4744.99,-3.05176e-005],[[0,"Move"]]],[[9614.69,4699,0.000183105],[[0,"Move"]]],[[9492.22,4654.93,-6.10352e-005],[[0,"Move"]]],[[9354.46,4783.29,-6.10352e-005],[[0,"Move"]]],[[9261.59,4747.63,0.000152588],[[0,"Move"]]],[[9193.96,4703.76,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9523.76,4564.76,3.05176e-005],0,[]],[[9526.76,4561.76,0],0,[]],[[9528.76,4561.76,0],0,[]],[[9530.76,4561.76,0],0,[]]],[],[[[9615.39,4661.33,6.10352e-005],[[0,"Move"]]],[[9462.69,4712.69,0],[[0,"Move"]]],[[9396.99,4571.49,0],[[0,"Move"],[1,"SAFE"]]],[[9511.71,4560.27,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Vehicle.
		[[],[["UK3CB_TKA_O_BMP1",[9028.17,4526.48,6.10352e-005],73,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Artillery Objective.
		[east,arty_1,[7711.61,1574.52,0],5,300,30] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";
		[east,arty_2,[7711.61,1574.52,0],5,300,30] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";

		[Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
	};

	case 2: {

		// Trench
		[[[[8816.98,4987.24,0],183,"Up",[]],[[8806.28,4988.26,3.05176e-005],183,"Up",[]],[[8796.84,4988.18,3.05176e-005],200,"Up",[]],[[8799.71,5000.91,0],148,"Up",[]],[[8806.87,5000.94,-3.05176e-005],253,"Up",[]],[[8803.73,5003.49,6.10352e-005],340,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8766.65,4976.3,0],163,"Middle",[]],[[8769.48,4988.69,3.05176e-005],261,"Middle",[]],[[8787.29,4979.75,0.0513916],181,"Up",[]],[[8784.9,4979.69,0.166107],182,"Up",[]],[[8781.07,4979.73,0.161316],188,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8784.34,4987.96,0],74,"Middle",[]],[[8786.12,4994.7,-3.05176e-005],127,"Middle",[]],[[8785.2,4997.97,0.00531006],350,"Up",[]],[[8782.4,4998.06,0],350,"Up",[]],[[8783.99,4993.37,0.0874939],284,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8762.52,4964.81,0.0102844],186,"Middle",[]],[[8763.63,4964.57,-0.0102844],186,"Middle",[]],[[8765.34,4964.31,-0.00335693],186,"Middle",[]],[[8764.98,4969.35,-3.05176e-005],236,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Strongpoint
		[[[[8811.16,5215.76,3.01883],192,"Up",[]],[[8809.39,5217.56,3.01685],192,"Up",[]],[[8808.17,5221.25,3.45914],203,"Up",[]],[[8806.61,5223.58,3.48297],208,"Up",[]],[[8808.73,5225.79,1.02722],192,"Up",[]],[[8812.26,5216.52,3.05176e-005],51,"Up",[]],[[8813.79,5229.1,1.76633],152,"Up",[]],[[8813.24,5228.67,4.22437],192,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8836.41,5280.64,-0.0342102],305,"Up",[]],[[8838.13,5277.03,2.41965],207,"Up",[]],[[8841.13,5287.65,3.55511],204,"Up",[]],[[8849.5,5299.38,0.0319214],19,"Up",[]],[[8848.8,5288.97,0.257874],135,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8863.42,5298.77,3.83578],143,"Up",[]],[[8875.96,5309.7,3.78043],198,"Up",[]],[[8860.69,5303.49,3.80994],245,"Up",[]],[[8859.65,5297.07,0.728455],169,"Up",[]],[[8821.61,5318.15,4.83981],156,"Middle",[]],[[8850.81,5316.27,0],237,"Middle",[]],[[8858.24,5304.67,0],249,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Vehicle.
		[[],[["UK3CB_TKA_O_BMP1",[8867.9,5278.47,-3.05176e-005],229,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_T72B",[8827.61,5194.8,-6.10352e-005],206,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Tanks_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
				
		// Patrol
		[[[[8974.41,5293.9,0],206,[]],[[8972.1,5300.59,0],206,[]],[[8981.09,5296.21,0],206,[]],[[8969.8,5307.27,0],206,[]]],[],[[[8944.86,5269.02,3.05176e-005],[[0,"Move"],[1,"SAFE"]]],[[8867.24,5210.93,0],[[0,"Move"]]],[[8819.49,5285.43,0],[[0,"Move"]]],[[8965.54,5300.43,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8642.41,5122.4,0],101,[]],[[8636.53,5118.48,0],101,[]],[[8638.48,5128.28,3.05176e-005],101,[]],[[8630.65,5114.55,0],101,[]]],[],[[[8688.82,5219.46,0],[[0,"Move"],[1,"SAFE"]]],[[8783.22,5025.07,0],[[0,"Move"]]],[[8717.63,4968.14,0],[[0,"Move"]]],[[8641.35,5104.56,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		// Counter Trench
		[Vehicles_1,[8720.79,5061.36,0],"UK3CB_TKA_O_BMP1",east,false] spawn OKS_Attack_SpawnGroup;
		[attack_2,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;	

	};

	case 4: {

		// Counter Village
		[Vehicles_2,[8930.92,5343.71,0],"UK3CB_TKA_O_BMP2",east,false] spawn OKS_Attack_SpawnGroup;

	};

	case 5: {

		// Village
		[[[[9128.78,6699.93,1.0208],169,"Up",[]],[[9129.27,6704.89,1.30792],80,"Up",[]],[[9131.33,6707.65,9.15527e-005],273,"Up",[]],[[9132.73,6717.74,0.496796],169,"Up",[]],[[9137.19,6692.19,7.62939e-005],91,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9153.29,6691.37,0.000106812],187,"Up",[]],[[9154.23,6716.6,0.210541],187,"Up",[]],[[9147.17,6714.9,0.658035],275,"Up",[]],[[9148.29,6710.86,0.596115],141,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9093.64,6804.37,0.00276184],295,"Up",[]],[[9097.37,6802.14,1.10341],212,"Up",[]],[[9102.46,6794.83,0.356537],253,"Up",[]],[[9108.06,6802.37,0.116165],215,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9085.78,6809.58,0.316284],116,"Up",[]],[[9089.44,6814.23,0.271469],40,"Middle",[]],[[9106.28,6818.66,0.253738],131,"Up",[]],[[9108.57,6805.46,1.52588e-005],280,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrol
		[[[[9315.65,6543.55,0],0,[]],[[9320.65,6538.55,0],0,[]],[[9310.65,6538.55,0],0,[]],[[9325.65,6533.55,0],0,[]]],[],[[[9215.29,6613.28,0],[[0,"Move"],[1,"SAFE"]]],[[9204.39,6714.66,-6.10352e-005],[[0,"Move"]]],[[9344.61,6623.1,-6.10352e-005],[[0,"Move"]]],[[9333.35,6545.99,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9076.49,6698.02,3.05176e-005],121,[]],[[9069.63,6696.29,3.05176e-005],121,[]],[[9074.76,6704.87,3.05176e-005],121,[]],[[9062.78,6694.56,1.52588e-005],121,[]]],[],[[[9152.74,6773.91,0],[[0,"Move"],[1,"SAFE"]]],[[9176.54,6559.12,6.10352e-005],[[0,"Move"]]],[[9095.65,6527.46,3.05176e-005],[[0,"Move"]]],[[9069.51,6681.56,3.05176e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9082.76,6831.2,1.52588e-005],121,[]],[[9081.78,6832.99,7.62939e-005],121,[]],[[9083.03,6838.34,0],121,[]],[[9074.93,6831.26,7.62939e-005],121,[]]],[],[[[9204.93,6757.03,1.52588e-005],[[0,"Move"],[1,"SAFE"]]],[[9246.73,6648.41,0],[[0,"Move"]]],[[9170.59,6711.58,0],[[0,"Move"]]],[[9081.66,6818.27,7.62939e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Vehicle
		[[],[["UK3CB_TKA_O_MTLB_BMP",[9060.35,6851.28,0],165,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// AAA
		[aaa_1,east,false,1500,true] spawn GW_Ambient_AAA;

	};

	case 6: {
		// Counter First Compound 2
		[Vehicles_3,[9250.38,6611,0],"UK3CB_TKA_O_BMP1",east,false] spawn OKS_Attack_SpawnGroup;
	};

	case 7: {
		// Counter Second Compound 2
		[Vehicles_4,[9055.73,6820.21,0],"UK3CB_TKA_O_BMP2",east,false] spawn OKS_Attack_SpawnGroup;
	};

	case 8: {

		// Last Village
		[[],[["UK3CB_TKA_O_T72A",[8151.91,7849.22,0],120,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Tanks_Hide",0]]]],["UK3CB_TKA_O_BMP1",[8338.83,7898.78,0],164,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BTR80a",[8336.62,7680.59,3.05176e-005],135,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Sentries
		[[[[8264.7,7740.9,3.35095],103,"Middle",[]],[[8286.36,7756.17,4.7429],234,"Middle",[]],[[8271.42,7736.89,0.82576],35,"Middle",[]],[[8236.56,7774.8,4.20547],97,"Middle",[]],[[8236.02,7763.6,0],107,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8278.73,7766.4,5.19792],153,"Up",[]],[[8278.9,7772.74,4.38168],337,"Up",[]],[[8277.16,7773.44,7.27423],70,"Up",[]],[[8277.06,7765.63,8.13358],139,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8263.99,7779.76,4.21957],148,"Middle",[]],[[8270.91,7779.01,4.31137],205,"Middle",[]],[[8271.58,7782.36,6.75119],181,"Middle",[]],[[8271.04,7781.89,0.895416],253,"Middle",[]],[[8274.42,7779,0],203,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8204.19,7804.28,3.7908],127,"Middle",[]],[[8263.65,7784.83,0],232,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8237.62,7752.36,0.316818],220,"Up",[]],[[8230.52,7762.08,0],137,"Up",[]],[[8221.7,7745.63,0.478226],40,"Up",[]],[[8227.67,7735.33,0],282,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrol
		[[[[8105.05,7814.11,1.52588e-005],0,[]],[[8110.05,7809.11,1.52588e-005],0,[]],[[8100.05,7809.11,0],0,[]],[[8115.05,7804.11,1.52588e-005],0,[]]],[],[[[8302.74,7600.17,0],[[0,"Move"],[1,"SAFE"]]],[[8308.46,7683.21,0],[[0,"Move"]]],[[8177.51,7808.83,-4.57764e-005],[[0,"Move"]]],[[8109.96,7819.91,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8493.08,7833.57,0],125,[]],[[8486.13,7832.31,0],125,[]],[[8491.82,7840.52,0],125,[]],[[8479.17,7831.05,0],125,[]]],[],[[[8300.01,7807.29,0],[[0,"Move"],[1,"SAFE"]]],[[8324.94,7714.69,0],[[0,"Move"]]],[[8471.24,7696.25,0],[[0,"Move"]]],[[8495.04,7826.22,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Artillery
		[east,arty_3,[7711.61,1574.52,0],5,300,30] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";	};	

	case 9: {


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
