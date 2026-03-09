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

switch (_case) do {

	case 1: {

		[Group officer_1,getMarkerPos "respawn_west",west,false,nil,false] spawn OKS_fnc_Evacuate_HVT;

		// Jungle Patrols
		[[[[14692.1,11993.7,0],0,[]],[[14697.1,11988.7,0],0,[]],[[14687.1,11988.7,0],0,[]],[[14702.1,11983.7,9.53674e-007],0,[]],[[14682.1,11983.7,0],0,[]],[[14707.1,11978.7,0],0,[]],[[14677.1,11978.7,0],0,[]],[[14712.1,11973.7,0],0,[]]],[],[[[14817.2,12003.6,0],[[0,"Move"],[1,"SAFE"]]],[[14949.5,12123.4,9.87053e-005],[[0,"Move"]]],[[14927.3,12284.3,0],[[0,"Move"]]],[[14737.8,12340.3,9.87053e-005],[[0,"Move"]]],[[14642.2,12241.2,3.43323e-005],[[0,"Move"]]],[[14547,12167.1,0],[[0,"Move"]]],[[14680.7,12003.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[14982,12627.1,0],300,[]],[[14988.8,12628.9,0],300,[]],[[14983.8,12620.2,0],300,[]],[[14995.6,12630.7,0],300,[]],[[14985.6,12613.4,0],300,[]],[[15002.5,12632.5,0],300,[]],[[14987.4,12606.6,0],300,[]],[[15009.3,12634.4,0],300,[]]],[],[[[14883.3,12726.3,4.76837e-007],[[0,"Move"],[1,"SAFE"]]],[[14982.4,12920.9,0],[[0,"Move"]]],[[14862.5,13007.6,0],[[0,"Move"]]],[[14603,12898.7,0],[[0,"Move"]]],[[14742.8,12707.8,3.33786e-005],[[0,"Move"]]],[[14723.2,12551.2,0],[[0,"Move"]]],[[14967.7,12622.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[14561.6,13174.7,9.53674e-007],0,[]],[[14566.6,13169.7,9.53674e-007],0,[]],[[14556.6,13169.7,0],0,[]],[[14571.6,13164.7,9.53674e-007],0,[]],[[14551.6,13164.7,9.53674e-007],0,[]],[[14576.6,13159.7,9.53674e-007],0,[]],[[14546.6,13159.7,0],0,[]],[[14581.6,13154.7,9.53674e-007],0,[]]],[],[[[14334.4,13355.7,9.53674e-007],[[0,"Move"],[1,"SAFE"]]],[[14606.5,13555.4,0],[[0,"Move"]]],[[14604,13807.6,0],[[0,"Move"]]],[[14485.5,14008.6,0],[[0,"Move"]]],[[14642.7,13677.7,0],[[0,"Move"]]],[[14359.4,13354.4,4.76837e-007],[[0,"Move"]]],[[14550.2,13184.6,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[14762.2,13930.6,0],0,[]],[[14767.2,13925.6,0],0,[]],[[14757.2,13925.6,0],0,[]],[[14772.2,13920.6,0],0,[]],[[14752.2,13920.6,0],0,[]],[[14777.2,13915.6,9.53674e-007],0,[]],[[14747.2,13915.6,0],0,[]],[[14782.2,13910.6,0],0,[]]],[],[[[14728.9,14034.8,0],[[0,"Move"],[1,"SAFE"]]],[[14739.7,14196.8,0],[[0,"Move"]]],[[14737.7,14522.9,0],[[0,"Move"]]],[[14564.9,14587.7,0],[[0,"Move"]]],[[14565.3,14301.4,0],[[0,"Move"]]],[[14485.7,14053.4,0],[[0,"Move"]]],[[14750.9,13940.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[14614.9,14733.8,0],0,[]],[[14619.9,14728.8,0],0,[]],[[14609.9,14728.8,0],0,[]],[[14624.9,14723.8,0],0,[]],[[14604.9,14723.8,0],0,[]],[[14629.9,14718.8,4.76837e-007],0,[]],[[14599.9,14718.8,0],0,[]],[[14634.9,14713.8,0],0,[]]],[],[[[14725.6,14829.6,0],[[0,"Move"],[1,"SAFE"]]],[[14818.6,14964.7,0],[[0,"Move"]]],[[14795.4,15157.4,0],[[0,"Move"]]],[[14567.3,15281.4,0],[[0,"Move"]]],[[14516.4,15056.6,0],[[0,"Move"]]],[[14541.8,14901.6,0],[[0,"Move"]]],[[14603.6,14743.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[15419.7,13055.6,0],0,[]],[[15422.7,13052.6,0],0,[]],[[15424.7,13052.6,0],0,[]],[[15426.7,13052.6,0],0,[]],[[15428.7,13052.6,0],0,[]],[[15430.7,13052.6,0],0,[]],[[15432.7,13052.6,0],0,[]],[[15434.7,13052.6,0],0,[]]],[],[[[15190.9,13365.6,0],[[0,"Move"],[1,"SAFE"]]],[[15401.5,13384.6,-2.86102e-006],[[0,"Move"]]],[[15456.4,13624.3,-3.8147e-006],[[0,"Move"]]],[[15457.3,13861.3,-5.24521e-005],[[0,"Move"]]],[[15683.8,13657.4,7.72476e-005],[[0,"Move"]]],[[15641,13354.6,-0.000120163],[[0,"Move"]]],[[15553.8,13233.9,-3.8147e-006],[[0,"Move"]]],[[15532.2,12993,4.76837e-005],[[0,"Move"]]],[[15445.9,13028.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[13343.5,13286.6,9.53674e-007],0,[]],[[13346.5,13283.6,9.53674e-007],0,[]],[[13348.5,13283.6,9.53674e-007],0,[]],[[13350.5,13283.6,9.53674e-007],0,[]],[[13352.5,13283.6,9.53674e-007],0,[]],[[13354.5,13283.6,9.53674e-007],0,[]],[[13356.5,13283.6,9.53674e-007],0,[]],[[13358.5,13283.6,9.53674e-007],0,[]]],[],[[[13318,13143.9,0],[[0,"Move"],[1,"SAFE"]]],[[12980,13329.6,0],[[0,"Move"]]],[[13026,13508.9,0],[[0,"Move"]]],[[13116.5,13650.2,0],[[0,"Move"]]],[[13205.4,13777.1,0],[[0,"Move"]]],[[13373.6,13627.9,9.53674e-007],[[0,"Move"]]],[[13395.8,13447,0],[[0,"Move"]]],[[13449,13329,0],[[0,"Move"]]],[[13369.7,13259.8,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Dynamic Roadblocks & Vehicle Patrols
		[Trigger_1,false,[0,0,false,false],east,0,4,0,[5,false,false,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

		// Hunters
		_Vehicles = ["UK3CB_TKA_O_BTR80a", "UK3CB_TKA_O_BMP2", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_MTLB_BMP", "UK3CB_TKA_O_Hilux_Spg9",  "UK3CB_TKA_O_Hilux_Spg9", "UK3CB_TKA_O_UAZ_SPG9", "UK3CB_TKA_O_T34"];
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 4,900,east,_Vehicles,220] spawn OKS_fnc_Huntbase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 4,900,east,_Vehicles,220] spawn OKS_fnc_Huntbase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 4,900,east,_Vehicles,220] spawn OKS_fnc_Huntbase;

		// Artillery 
		{
			[east,_X,[15082.6,10770.3,0],7,300,120] spawn OKS_fnc_ArtyFire;
			[_X,nil,nil,nil,nil,"Task_1"] spawn OKS_fnc_Destroy_Task;
			sleep 5;
		} foreach [arty_1,arty_2,arty_3,arty_4];

		// Artillery Guards
		[[[[14881.9,13837.6,0],239,"Up",[]],[[14924.5,13856.7,0],239,"Up",[]],[[14897.7,13874.1,0],264,"Up",[]],[[14890.3,13891.6,-1.90735e-006],167,"Up",[]],[[14906.8,13887.7,1.2828],55,"Up",[]],[[14902.9,13888.4,1.27286],168,"Up",[]],[[14896,13904.3,0],59,"Up",[]],[[14929,13935.1,0],219,"Up",[]],[[14892.7,13949.9,0],166,"Middle",[]],[[14923.4,13879.3,9.53674e-007],68,"Middle",[]],[[14948.4,13891.4,0],199,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Fort 183
		[[[[15200.1,14010.7,-0.199978],348,"Middle",[]],[[15200.1,13985.1,-0.199977],17,"Middle",[]],[[15173.5,13962.9,-0.208318],55,"Middle",[]],[[15146.9,13964,0],175,"Up",[]],[[15123.3,13967.4,-0.199999],279,"Up",[]],[[15112.6,13986.2,-0.199999],163,"Middle",[]],[[15112.8,14007.9,1.90735e-006],214,"Middle",[]],[[15129.8,14010.5,-0.199999],264,"Middle",[]],[[15138.8,14007.5,-0.199997],229,"Middle",[]],[[15159.9,14014.7,-0.192772],223,"Middle",[]],[[15160,14028,-0.199999],171,"Middle",[]],[[15167.1,14037.6,-0.0448723],180,"Middle",[]],[[15187.3,14039.6,-0.199999],276,"Middle",[]],[[15196.8,14028.2,-0.201994],156,"Middle",[]],[[15179.5,14011.4,-0.200001],82,"Middle",[]],[[15139.4,13987.5,-0.200001],172,"Middle",[]]],[["UK3CB_TKA_O_BMP1",[15154.4,13990.2,0.000112534],176,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[15127.5,13994,0.000112534],183,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[15180,13995.7,1.90735e-006],146,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 2: {

		{
			[_X,nil,nil,nil,nil,"Task_2"] spawn OKS_fnc_Destroy_Task;
			sleep 5;
		} foreach [support_1,support_2,support_3,support_4];	

		// Compound 1
		[[[[14128.4,15125.9,0],283,"Up",[]],[[14112.9,15127.7,-9.53674e-007],115,"Up",[]],[[14111.7,15138.3,0.449832],115,"Up",[]],[[14115,15146.7,0.870539],58,"Up",[]],[[14115.2,15142.6,0.507829],151,"Up",[]],[[14124.3,15143,0.292004],115,"Up",[]],[[14132,15139,0.393819],125,"Up",[]],[[14124.8,15132.4,0.789651],231,"Up",[]],[[14128.5,15144.8,0],122,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Compound 2
		[[[[14070.4,15177,0],226,"Up",[]],[[14057.3,15185.2,0.230444],132,"Up",[]],[[14056.4,15185.4,3.20151],182,"Up",[]],[[14067.8,15187.3,3.59171],135,"Up",[]],[[14064.1,15194.4,3.65943],59,"Up",[]],[[14067.7,15187.2,0.767337],243,"Up",[]],[[14065.5,15192.8,0.842728],188,"Up",[]],[[14077.8,15186.2,0.564056],287,"Up",[]],[[14078.3,15179.5,0.725471],298,"Middle",[]],[[14081.6,15191.2,0.52574],228,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Compound 3
		[[[[14039.4,15185.5,0],52,"Up",[]],[[14031.8,15180.8,0.295921],15,"Up",[]],[[14023.3,15192.6,0],139,"Up",[]],[[14032.1,15196,0.674995],306,"Up",[]],[[14026.8,15192.1,0.299964],318,"Middle",[]],[[14021.1,15213.3,0],174,"Middle",[]],[[14011.3,15205.4,-9.53674e-007],94,"Up",[]],[[14007.5,15210.2,0.380541],226,"Up",[]],[[14017.8,15213.5,1.12092],52,"Up",[]],[[14013.2,15214.9,1.06348],226,"Up",[]],[[14040.7,15205.8,0],173,"Middle",[]],[[14033.7,15200.3,0],82,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Ruined Buildings Sentries
		[[[[14087.5,15138.5,0.351057],0,"Up",[]],[[14096,15145.2,0.889367],0,"Up",[]],[[14097.5,15157.5,0.34046],0,"Up",[]],[[14101.5,15178.5,0.946243],0,"Up",[]],[[14055.1,15166.2,1.00757],0,"Up",[]],[[14092.5,15185.5,0.53451],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		// Artillery Counter
		_Vehicles = ["UK3CB_TKA_O_BTR80a", "UK3CB_TKA_O_BMP2", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_MTLB_BMP"];
		{
			[_X,NEKY_Hunt_Trigger_1,selectRandom _Vehicles,5,east,2000] spawn OKS_fnc_Mechanized_Spawn;
		} foreach [mech_1,mech_2,mech_3];
	};

	case 4: {

		// Support Counter
		_Vehicles = ["UK3CB_TKA_O_BTR80a", "UK3CB_TKA_O_BMP2", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_MTLB_BMP"];

		// Artillery Counter
		{
			[_X,NEKY_Hunt_Trigger_1,selectRandom _Vehicles,5,east,2000] spawn OKS_fnc_Mechanized_Spawn;
		} foreach [mech_4,mech_5,mech_6,mech_7];
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
		   6 - Gunner Split - [How many teams,Procent of Gunner] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};

