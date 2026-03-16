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

		[Group officer_1,[4694.93,596.422,0],west,true,"Task_0",false] spawn OKS_Evacuate_HVT;

		// Artillery
		{ [east,_X,[4401.5,3507.09,0],7,300,30] spawn OKS_ArtyFire; sleep 5; } foreach [artillery_1,artillery_2,artillery_3];

		[Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// HQ
		[[[[4560.62,534.788,-0.00195313],250,"Up",[]],[[4558.95,538.473,-6.10352e-005],236,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4563.95,539.634,-6.10352e-005],278,"Up",[]],[[4580.42,550.806,0],227,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4596.61,530.479,-6.10352e-005],333,"Middle",[]],[[4592.86,543.577,-0.110901],226,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4597.17,551.445,0.000183105],185,"Middle",[]],[[4561.9,621.472,0],208,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4593,625.415,0.135925],247,"Middle",[]],[[4590.99,623.13,0.345337],144,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4587.7,621.157,0.258057],208,"Up",[]],[[4588.68,620.312,0.32135],208,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4586.58,631.376,0],224,"Middle",[]],[[4587.67,626.721,0.0170288],123,"Middle",[]],[[4595.1,638.468,0.00408936],95,"Up",[]],[[4591.56,639.947,-0.00402832],340,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4689.23,723.7,0.498352],79,"Up",[]],[[4687.06,725.938,0.498352],79,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4710.34,781.254,0],125,"Up",[]],[[4721.98,794.406,3.49237],159,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4744.82,740.077,0],264,"Up",[]],[[4748.73,745.816,0],125,"Up",[]],[[4742.87,747.828,0],79,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4745.77,752.564,0.0321655],79,"Up",[]],[[4745.56,759.446,0.746826],221,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4743.68,760.389,0.746826],222,"Up",[]],[[4742.54,765.193,0.746826],232,"Middle",[]],[[4748.58,749.028,3.24915],238,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4770.4,778.933,0],292,"Middle",[]],[[4763.26,776.238,0],197,"Middle",[]],[[4756.44,776.194,0.774292],290,"Up",[]],[[4759.2,782.826,0.774292],276,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4750.41,827.454,0],199,"Up",[]],[[4720.3,765.518,0.570801],175,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Vehicles.
		[[],[["UK3CB_CSAT_S_O_BMP1",[4514.89,625.297,-0.00012207],151,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_CSAT_S_O_BMP1",[4761.64,610.334,-6.10352e-005],250,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_S_O_BMP2",[4790.94,839.369,-0.0145264],240,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1]]]],["UK3CB_CSAT_S_O_BMP1",[4710.18,719.031,-6.10352e-005],224,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		
		// Patrols.
		[[[[4606.35,657.329,0],0,[]],[[4611.35,652.329,0],0,[]],[[4601.35,652.329,0],0,[]],[[4616.35,647.329,0],0,[]]],[],[[[4658.29,707.12,0],[[0,"Move"],[1,"SAFE"]]],[[4561.75,835.371,6.10352e-005],[[0,"Move"]]],[[4652.89,716.039,0],[[0,"Move"]]],[[4594.67,652.395,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4627.85,573.823,0.326355],0,[]],[[4632.85,568.823,0.0167847],0,[]],[[4622.85,568.823,0.471436],0,[]],[[4637.85,563.823,0],0,[]]],[],[[[4646.39,618.701,0],[[0,"Move"],[1,"SAFE"]]],[[4757.74,673.138,0],[[0,"Move"]]],[[4845.32,603.712,0],[[0,"Move"]]],[[4650.57,587.51,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4757.68,676.585,0],0,[]],[[4762.68,671.585,0],0,[]],[[4752.68,671.585,0],0,[]],[[4767.68,666.585,0],0,[]]],[],[[[4809.74,783.694,0],[[0,"Move"],[1,"SAFE"]]],[[4811.43,963.18,6.10352e-005],[[0,"Move"]]],[[4803.29,777.908,6.10352e-005],[[0,"Move"]]],[[4746,671.651,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {

		/// Depot
		[[[[3519.91,942.243,6.83112],174,"Middle",[]],[[3514.11,946.17,7.26752],265,"Middle",[]],[[3525.13,944.791,6.63983],153,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3624.84,981.597,6.10352e-005],16,"Middle",[]],[[3637.3,985.316,0.132935],172,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3623.92,1007.28,0],182,"Middle",[]],[[3628.24,1008.29,0.249146],86,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3656.67,996.999,10.1164],155,"Middle",[]],[[3653,997.545,10.1142],213,"Middle",[]],[[3665.1,999.815,10.114],166,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3662.98,1013.48,3.56299],282,"Middle",[]],[[3655.14,1014.95,0.238953],240,"Middle",[]],[[3661.42,1014.17,0.22229],14,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3648.1,1037.28,0],110,"Middle",[]],[[3654.03,1031.92,0],262,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3644.97,1019.96,-6.10352e-005],235,"Middle",[]],[[3647.5,1016.69,0.251953],217,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3623.46,1056.85,0],219,"Up",[]],[[3632.39,1048.11,0],206,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3628.36,1075.95,10.0943],174,"Middle",[]],[[3607.78,1067.02,0],219,"Middle",[]],[[3627.32,1073.86,-6.10352e-005],295,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3598.21,1081.16,10.2694],230,"Middle",[]]],[["UK3CB_CSAT_S_O_BTR80a",[3590.23,1078.55,-0.00256348],144,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]],["UK3CB_CSAT_S_O_BMP1",[3672.75,1037.23,-6.10352e-005],350,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3655.65,1049.96,-6.10352e-005],177,"Up",[]],[[3685,1016.19,0],346,"Middle",[]]],[["UK3CB_CSAT_S_O_BMP1",[3614.8,986.523,-6.10352e-005],200,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[3406.16,1104.83,0],0,[]],[[3411.16,1099.83,0],0,[]],[[3401.16,1099.83,6.10352e-005],0,[]],[[3416.16,1094.83,0.00012207],0,[]]],[],[[[3482.97,1141.94,0.00012207],[[0,"Move"],[1,"SAFE"]]],[[3573.09,1163.86,6.10352e-005],[[0,"Move"]]],[[3509.31,999.684,0.00012207],[[0,"Move"]]],[[3420.16,1061.56,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3675.14,1137.9,6.10352e-005],0,[]],[[3680.14,1132.9,6.10352e-005],0,[]],[[3670.14,1132.9,6.10352e-005],0,[]],[[3685.14,1127.9,0.00012207],0,[]]],[],[[[3751.96,1175.01,0.00012207],[[0,"Move"],[1,"SAFE"]]],[[3842.07,1196.92,6.10352e-005],[[0,"Move"]]],[[3778.3,1032.75,6.10352e-005],[[0,"Move"]]],[[3689.14,1094.63,6.10352e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3621.18,948.686,0],0,[]],[[3626.18,943.686,0],0,[]],[[3616.18,943.686,0],0,[]],[[3631.18,938.686,0],0,[]]],[],[[[3697.99,985.795,0],[[0,"Move"],[1,"SAFE"]]],[[3788.11,1007.71,0],[[0,"Move"]]],[[3724.33,843.539,0],[[0,"Move"]]],[[3635.18,905.418,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		[[[[4208.13,1317.77,0.000183105],262,"Middle",[]],[[4192.19,1334.15,0.00012207],262,"Middle",[]],[[4194.91,1327.24,1.07556],294,"Up",[]],[[4201.74,1328.03,1.56018],127,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4071.4,1308.76,0],42,"Middle",[]],[[4109.82,1292.62,0.0457153],354,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4099.37,1339.27,3.77167],256,"Up",[]],[[4099.96,1343.46,0.830322],238,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4102.35,1331.16,0.0588379],262,"Up",[]],[[4104.88,1337.8,0.526306],63,"Up",[]],[[4082.41,1341.11,0.168701],159,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3894.1,1373.71,6.10352e-005],136,"Middle",[]],[[3886.04,1366.95,0.614502],321,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3879.98,1370.55,0.625305],262,"Up",[]],[[3887.41,1371.58,3.89185],353,"Up",[]],[[3871.59,1362.68,0.140259],10,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrols
		[[[[4141.9,1166.86,0],0,[]],[[4146.9,1161.86,0],0,[]],[[4136.9,1161.86,0],0,[]],[[4151.9,1156.86,0],0,[]]],[],[[[4167.91,1270.28,0],[[0,"Move"],[1,"SAFE"]]],[[4290.13,1219.52,0],[[0,"Move"]]],[[4414.84,1116.86,0],[[0,"Move"]]],[[4206.99,1107.57,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4078.05,1406.73,0],0,[]],[[4083.05,1401.73,0.00012207],0,[]],[[4073.05,1401.73,6.10352e-005],0,[]],[[4088.05,1396.73,6.10352e-005],0,[]]],[],[[[4084.9,1471.96,0],[[0,"Move"],[1,"SAFE"]]],[[4262.29,1405.29,0],[[0,"Move"]]],[[4241.89,1259.17,6.10352e-005],[[0,"Move"]]],[[4143.14,1347.45,0.00012207],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3843.77,1271.06,0],0,[]],[[3848.77,1266.06,6.10352e-005],0,[]],[[3838.77,1266.06,0],0,[]],[[3853.77,1261.06,0],0,[]]],[],[[[3921.76,1333.4,0],[[0,"Move"],[1,"SAFE"]]],[[4073.72,1275.3,6.10352e-005],[[0,"Move"]]],[[4058.86,1200.73,0],[[0,"Move"]]],[[3932.01,1221.89,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3715.24,1398.84,0],0,[]],[[3720.24,1393.84,0],0,[]],[[3710.24,1393.84,0],0,[]],[[3725.24,1388.84,0],0,[]]],[],[[[3809.38,1411.6,0],[[0,"Move"],[1,"SAFE"]]],[[3972.5,1395.56,0],[[0,"Move"]]],[[4005.09,1319.61,0],[[0,"Move"]]],[[3729.24,1355.57,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 4: {

		// HVT Counter
		{[_X,6,1,independent,1000,"VariableNameSetTrueUponAllClear"] spawn OKS_Lambs_ChargeSpawn; sleep 4} foreach [charge_1,charge_2,charge_3,charge_4];

		// Vehicle Attack.
		[[],[["UK3CB_CSAT_S_O_BMP1",[5209.9,1188.09,0],257,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[4860.15,978.93,0],[[0,"Move"]]],[[4762.87,841.456,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 10;
		
		[[],[["UK3CB_CSAT_S_O_BMP1",[5255.14,1814.45,0],203,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[4877.46,1361.33,0],[[0,"Move"]]],[[4770.57,1079.02,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {

		// Artillery Counter
		[[],[["UK3CB_CSAT_S_O_BMP1",[4827.84,2053.58,0],181,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[4474.47,1679.9,-6.10352e-005],[[0,"Move"]]],[[4413.7,1608.55,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 5;
		
		[[],[["UK3CB_CSAT_S_O_BMP1",[4249.98,2010.6,0],123,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[4403.39,1869.64,0],[[0,"Move"]]],[[4155.26,1606.27,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 5;
		
		[[],[["UK3CB_CSAT_S_O_BMP1",[3884.76,2147.83,0],123,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[3722.44,1886.29,0],[[0,"Move"]]],[[3809.12,1637.24,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 6: {

		{[_X,6,1,independent,1000,"VariableNameSetTrueUponAllClear"] spawn OKS_Lambs_ChargeSpawn; sleep 4} foreach [charge_5,charge_6,charge_7];

		// Depot Counter
		[[],[["UK3CB_CSAT_S_O_BMP1",[2841.19,2468.84,0],137,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[3802.47,1777.84,0],[[0,"Move"]]],[[3647.62,1128.6,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_S_O_BMP1",[2984.82,1203.84,6.10352e-005],137,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_S",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[3224.96,896.378,0],[[0,"Move"]]],[[3413.65,853.626,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

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
		   6 - Gunner Split - [How many teams,Procent of Gunner] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
