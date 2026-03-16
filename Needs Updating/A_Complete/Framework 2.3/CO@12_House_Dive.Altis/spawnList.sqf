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

		//Compound 1
		[[[[10956.7,12167.4,4.52291],89,"Up",[]],[[10956.9,12165.5,4.43886],89,"Up",[]],[[10952.4,12165.9,4.62687],307,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10909.5,12197.2,4.5402],89,"Up",[]],[[10906.8,12192.8,4.62823],138,"Up",[]],[[10908.6,12198.8,1.10085],237,"Up",[]],[[10908.9,12185.6,0.250795],253,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10896.7,12166,0],293,"Up",[]],[[10905.4,12167.1,1.90735e-006],293,"Up",[]],[[10881.4,12184.9,0.165411],63,"Up",[]],[[10877.9,12171.8,0.158541],145,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 1
		[[[[10757.1,12179.2,3.80328],13,"Up",[]],[[10737.6,12182.5,1.90735e-006],32,"Middle",[]],[[10738.3,12198.9,3.69267],13,"Up",[]],[[10744.1,12202.5,4.02184],13,"Up",[]],[[10745.6,12206.3,0.712404],13,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10749.2,12200.4,4.16437],112,"Up",[]],[[10748.7,12205.3,4.15792],39,"Up",[]],[[10743.5,12194.3,3.65228],139,"Up",[]],[[10745.2,12197.2,0.38588],331,"Up",[]],[[10739.1,12197,0.215603],7,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 2 & Streets
		[[[[10667.4,12178.4,2.22978],26,"Up",[]],[[10684.8,12215.7,4.23327],118,"Up",[]],[[10626.3,12191,3.62091],73,"Up",[]],[[10696.7,12277.5,4.08694],304,"Up",[]],[[10712.8,12257.6,4.37639],210,"Up",[]]],[["UK3CB_ADE_O_Datsun_Pkm",[10592.1,12183.8,0.5],53,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADE",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10665.5,12193.1,0.376144],218,"Up",[]],[[10663.7,12196,0.477047],204,"Up",[]],[[10662.6,12188.9,0.478945],14,"Up",[]],[[10663.4,12189.4,3.868],14,"Up",[]],[[10655.5,12197.8,4.28114],246,"Up",[]],[[10654.8,12196.8,0.891836],73,"Up",[]],[[10651.8,12189.8,1.90735e-006],113,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 3
		[[[[10652,12271.3,4.49619],27,"Up",[]],[[10645.6,12253.5,4.30148],138,"Up",[]],[[10637.4,12241,4.19021],140,"Middle",[]],[[10660.4,12290.2,0.457523],199,"Middle",[]],[[10663.8,12297.1,4.53247],135,"Up",[]],[[10660.1,12291.1,4.38283],124,"Up",[]],[[10661.1,12287,4.11428],124,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10677.3,12285,0.521914],245,"Up",[]],[[10670.2,12290.8,0.653677],245,"Up",[]],[[10670.2,12289.9,4.06841],245,"Up",[]],[[10675.8,12281.4,3.91046],226,"Up",[]],[[10673.9,12285.4,3.92667],355,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Streets
		[[[[10675.3,12337.6,0],183,"Up",[]],[[10659,12348.5,0],212,"Up",[]],[[10618.6,12294.7,4.09205],25,"Up",[]],[[10591.5,12269.3,4.29838],100,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 4
		[[[[10518.7,12372.5,4.05996],35,"Up",[]],[[10520.8,12338.9,3.74605],131,"Up",[]],[[10517.9,12347.8,0.215734],173,"Up",[]],[[10514.7,12328.3,0.288145],76,"Up",[]],[[10508.5,12385.2,0.690279],120,"Up",[]],[[10551.8,12379.3,3.7808],200,"Up",[]]],[["UK3CB_ADE_O_Datsun_Pkm",[10570.9,12324.4,0.5],117,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADE",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10519.1,12372.3,0.636777],59,"Up",[]],[[10528.5,12367.5,3.94604],183,"Up",[]],[[10529,12368.5,0.486675],183,"Up",[]],[[10523.4,12343.6,0.171014],90,"Up",[]],[[10521.6,12340,0.29501],310,"Middle",[]],[[10527.8,12320.2,3.68482],40,"Up",[]],[[10532.7,12311.3,3.69395],106,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10543.4,12340.5,3.67921],313,"Up",[]],[[10547,12338,0.259315],181,"Up",[]],[[10542.9,12333.1,0.400106],81,"Up",[]],[[10547.4,12329.6,3.7604],33,"Up",[]],[[10549.7,12329.6,3.72608],136,"Up",[]],[[10543.4,12324.4,0.428856],106,"Up",[]],[[10542.2,12322.2,0.489239],113,"Up",[]],[[10538.4,12324.7,4.40096],77,"Up",[]],[[10537.7,12328.5,4.35586],316,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10537.7,12328.5,4.35586],316,"Up",[]],[[10538.4,12324.7,4.40096],77,"Up",[]],[[10542.2,12322.2,0.489239],113,"Up",[]],[[10543.4,12324.4,0.428856],106,"Up",[]],[[10547.4,12329.6,3.7604],33,"Up",[]],[[10549.7,12329.6,3.72608],136,"Up",[]],[[10542.9,12333.1,0.400106],81,"Up",[]],[[10543.4,12340.5,3.67921],313,"Up",[]],[[10547,12338,0.259315],181,"Up",[]]],[["UK3CB_ADE_O_Hilux_M2",[10442.3,12188.9,-5.72205e-006],49,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADE",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[10534,12298.9,0],0,[]],[[10539,12293.9,0],0,[]],[[10529,12293.9,9.53674e-007],0,[]],[[10544,12288.9,-9.53674e-007],0,[]]],[],[[[10616.2,12202.6,0],[[0,"Move"],[1,"SAFE"]]],[[10677.5,12268.3,5.72205e-006],[[0,"Move"]]],[[10564.5,12332.3,-1.14441e-005],[[0,"Move"]]],[[10540.3,12302.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10606.3,12403.6,0],0,[]],[[10611.3,12398.6,-9.53674e-007],0,[]],[[10601.3,12398.6,0],0,[]],[[10616.3,12393.6,0],0,[]]],[],[[[10735.3,12331.5,0],[[0,"Move"],[1,"SAFE"]]],[[10683.2,12264.1,0],[[0,"Move"]]],[[10567.8,12330.5,0],[[0,"Move"]]],[[10612.6,12406.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[10641.3,12204.2,-9.53674e-007],0,[]],[[10646.3,12199.2,0.343096],0,[]],[[10636.3,12199.2,0.0166912],0,[]],[[10644.3,12193.7,-9.53674e-007],0,[]]],[],[[[10694.6,12142,0],[[0,"Move"],[1,"SAFE"]]],[[10750.1,12181.8,0],[[0,"Move"]]],[[10680.9,12240.5,0],[[0,"Move"]]],[[10653,12207.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10570.8,12259.7,9.53674e-007],0,[]],[[10575.3,12258.4,0],0,[]],[[10565.3,12258.4,0],0,[]],[[10567.9,12255.8,0],0,[]]],[],[[[10610.3,12206.6,0],[[0,"Move"],[1,"SAFE"]]],[[10665.4,12255.7,0],[[0,"Move"]]],[[10592,12280.4,0],[[0,"Move"]]],[[10567.7,12261.3,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10631.6,12302.8,0],0,[]],[[10636.6,12297.8,0],0,[]],[[10629.5,12299.5,0],0,[]],[[10635.9,12294.7,0],0,[]]],[],[[[10781.4,12192.2,1.90735e-006],[[0,"Move"],[1,"SAFE"]]],[[10706.1,12333.4,0],[[0,"Move"]]],[[10655.3,12331.5,0],[[0,"Move"]]],[[10633.4,12306.1,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[10944.8,12192,0],0,[]],[[10949.8,12187,0],0,[]],[[10939.8,12187,1.90735e-006],0,[]],[[10954.8,12182,0],0,[]]],[],[[[10894.3,12252.5,-5.53131e-005],[[0,"Move"]]],[[10791.5,12240.5,-0.000108719],[[0,"Move"]]],[[10833.4,12177.6,-3.8147e-006],[[0,"Move"]]],[[10939.3,12173.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		[spawner_1,"rush",1,east,700,[],endRushTrigger] spawn OKS_Lambs_Spawner; sleep 60;
		[spawner_2,"rush",1,east,700,[],endRushTrigger] spawn OKS_Lambs_Spawner; sleep 60;
		[spawner_3,"rush",1,east,700,[],endRushTrigger] spawn OKS_Lambs_Spawner; sleep 60;
		[spawner_4,"rush",1,east,700,[],endRushTrigger] spawn OKS_Lambs_Spawner; sleep 60;
		[spawner_5,"rush",1,east,700,[],endRushTrigger] spawn OKS_Lambs_Spawner; sleep 60;
		[spawner_6,"rush",1,east,700,[],endRushTrigger] spawn OKS_Lambs_Spawner; sleep 60;
		[spawner_7,"rush",1,east,700,[],endRushTrigger] spawn OKS_Lambs_Spawner;
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
