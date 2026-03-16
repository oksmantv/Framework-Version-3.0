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

		// Outside Research Facility
		[[[[5204.26,17337.3,0],220,"Up",[]],[[5200.95,17336.4,0],108,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5202.33,17352.3,3.8147e-06],0,[]],[[5207.33,17347.3,-3.8147e-06],0,[]],[[5197.33,17347.3,-3.8147e-06],0,[]],[[5212.33,17342.3,-3.8147e-06],0,[]]],[],[[[5211.3,17388,0],[[0,"Move"],[1,"SAFE"]]],[[5269.55,17423.1,-4.95911e-05],[[0,"Move"]]],[[5352.44,17429.6,0.000282288],[[0,"Move"]]],[[5331.79,17376.4,-0.000152588],[[0,"Move"]]],[[5397.62,17374.9,-2.28882e-05],[[0,"Move"]]],[[5328.76,17373.7,-0.000106812],[[0,"Move"]]],[[5350.09,17427.9,0.000114441],[[0,"Move"]]],[[5273.18,17420.7,-0.000255585],[[0,"Move"]]],[[5214.66,17386.2,-0.000274658],[[0,"Move"]]],[[5203.83,17345.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5395.99,17755.7,0.999035],0,[]],[[5400.99,17750.7,0.999031],0,[]],[[5390.99,17750.7,0.999023],0,[]],[[5405.99,17745.7,0.999023],0,[]]],[],[[[5381.28,17798.2,0.99894],[[0,"Move"],[1,"SAFE"]]],[[5361.1,17848.2,0.99836],[[0,"Move"]]],[[5441.37,17860.6,0.998993],[[0,"Move"]]],[[5500.25,17861.1,0.998901],[[0,"Move"]]],[[5493.23,17804.5,0.998909],[[0,"Move"]]],[[5431.66,17819,0.998932],[[0,"Move"]]],[[5492.34,17762.1,0.99897],[[0,"Move"]]],[[5428.03,17783.6,0.998779],[[0,"Move"]]],[[5426.37,17757.8,0.99884],[[0,"Move"]]],[[5397.49,17749.1,0.999031],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5284.18,17886.6,0.999519],0,[]],[[5289.18,17881.6,0.999512],0,[]],[[5279.18,17881.6,0.999512],0,[]],[[5294.18,17876.6,0.999504],0,[]]],[],[[[5238.96,17906.9,1.00006],[[0,"Move"],[1,"SAFE"]]],[[5288.68,17941.2,0.998589],[[0,"Move"]]],[[5321.28,18000.4,0.999435],[[0,"Move"]]],[[5418.32,17997.8,0.998192],[[0,"Move"]]],[[5365.61,17920.1,0.999359],[[0,"Move"]]],[[5317.67,17946.4,0.99865],[[0,"Move"]]],[[5339.77,17864.7,1.00005],[[0,"Move"]]],[[5309.17,17906.9,0.999306],[[0,"Move"]]],[[5318.36,17862,0.999603],[[0,"Move"]]],[[5285.69,17880,0.999512],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		
		// Compound Sentries 
		[[[[5431.97,17913.7,7.62939e-06],63,"Up",[]],[[5424.73,17929.3,7.62939e-06],168,"Up",[]],[[5432.35,17929.2,7.62939e-06],310,"Up",[]],[[5428.43,17937.9,10.1762],194,"Up",[]],[[5437.44,17938.3,10.2263],164,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5395.89,17882.6,0],196,"Up",[]],[[5395.18,17885.9,7.50456],158,"Up",[]],[[5394.98,17885.7,11.421],189,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5386.2,17903.8,0],342,"Up",[]],[[5390.36,17905.2,0.129692],99,"Up",[]],[[5394.29,17902.7,7.62939e-06],154,"Up",[]],[[5367.15,17911.8,0],83,"Up",[]],[[5369.79,17922.6,7.62939e-06],83,"Middle",[]],[[5398.67,17930.7,7.62939e-06],185,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// HQ Building.
		[[[[5419.38,17896.8,3.33958],174,"Up",[]],[[5412.56,17895.6,3.41114],174,"Up",[]],[[5409.02,17905.8,3.03644],287,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[5411.15,17935.6,0],265,[]],[[5415.72,17941,0],265,[]],[[5416.54,17931.1,0],265,[]],[[5420.29,17946.4,7.62939e-06],265,[]]],[],[[[5367.65,17927.7,0],[[0,"Move"],[1,"SAFE"]]],[[5404.44,17908,7.62939e-06],[[0,"Move"]]],[[5412.87,17881.8,0],[[0,"Move"]]],[[5424.62,17882.8,-5.34058e-05],[[0,"Move"]]],[[5421.71,17922.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {

		// Facility Level 1
		[[[[14638.1,16663,0.470112],18,"Up",[]],[[14632.5,16667.5,0.470112],66,"Up",[]],[[14638.2,16679.8,0.470112],36,"Up",[]],[[14630.5,16687.2,0.470112],97,"Up",[]],[[14651.3,16676.9,0.450111],271,"Up",[]],[[14656.8,16665.1,0.450109],8,"Up",[]],[[14657.9,16651,0.450109],90,"Up",[]],[[14677.4,16685.5,3.30761],35,"Up",[]],[[14685,16686.6,3.30761],306,"Up",[]],[[14666.3,16683.3,0.500111],81,"Up",[]],[[14660.6,16689.1,0.47011],121,"Up",[]],[[14661.7,16682.5,0.470108],294,"Up",[]],[[14648.5,16657.5,0.450111],34,"Up",[]],[[14653.7,16653.8,0.450109],336,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		_NearbyPatrols = allGroups select {side _X == east && leader _X inArea AreaClearTrigger};
		{
			if(side _X == EAST && !isPlayer (leader _X)) then {
				/* 
					Arguments:
					0: Group performing action, either unit <OBJECT> or group <GROUP>
					1: Range of tracking, default is 500 meters <NUMBER>
					2: Delay of cycle, default 15 seconds <NUMBER>
					3: Area the AI Camps in, default [] <ARRAY>
					4: Center Position, if no position or Empty Array is given it uses the Group as Center and updates the position every Cycle, default [] <ARRAY>
					5: Only Players, default true <BOOL>
				*/			
				waitUntil {sleep 1; !isNil "lambs_wp_fnc_moduleRush"};
				[_X,1000,10,[],[],true] remoteExec ["lambs_wp_fnc_taskRush",0];	
			};
		} foreach _NearbyPatrols;
	};

	case 3: {

		// Convoy Approach Ambush
		_ConvoyArray = [];
		[convoy_1,convoy_2,convoy_3,independent,[4,["UK3CB_ION_I_Woodland_SUV_Armoured"], 12, 25],[true,4],_ConvoyArray, false, false] spawn OKS_Convoy_Spawn;
		waitUntil {
			sleep 5;
			{
				_Group = _X;
				{Alive _X || [_X] call ACE_common_fnc_isAwake} count units _Group == 0
			} count _ConvoyArray == count _ConvoyArray;
		};
		
		["Task_3","SUCCEEDED"] call BIS_fnc_taskSetState; sleep 5;
		["Task_2","SUCCEEDED"] call BIS_fnc_taskSetState; sleep 5;

		GOL_EnterResearch = true;
		publicVariable "GOL_EnterResearch";
	};

	case 4: {

		// Containment Exit.
		[[[[14932,16502.3,0.475327],82,"Up",[]],[[14932.9,16498.3,0.475327],9,"Up",[]],[[14918.2,16511.9,0.489292],129,"Up",[]],[[14922.3,16513,0],145,"Up",[]],[[14921.9,16504.5,0.489292],37,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 5: {
		// Agios Minas Spawners.
		{
			[getPos _X,"rush",2,east,1500,[],SpawnTrigger_6] spawn OKS_Lambs_Spawner; sleep 10;
		} foreach [rush_1,rush_2,rush_3,rush_4,rush_5];

		// Sentries Outpost
		[[[[8404.3,18246.9,17.9974],290,"Up",[]],[[8406.51,18240.8,17.6654],290,"Up",[]],[[8407.76,18237.5,17.5011],185,"Up",[]],[[8415.73,18242.4,17.8773],122,"Up",[]],[[8362.44,18239.5,4.20111],251,"Up",[]],[[8361.24,18243,4.2383],265,"Up",[]],[[8397.25,18236.5,0],227,"Up",[]],[[8454.53,18217.1,3.05176e-05],281,"Up",[]],[[8399.31,18203,1.52588e-05],290,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 6: {

		// Syrta Spawners.
		{
			[getPos _X,"rush",3,east,1500,[],SpawnTrigger_7] spawn OKS_Lambs_Spawner; sleep 5;
		} foreach [rush_6,rush_7,rush_8,rush_9,rush_10,rush_11,rush_12];

	};


	case 7: {

		// Syrta Garrison and Zombies.
		_Group = [[[[8653.87,18241.5,-1.52588e-05],196,"Up",[]],[[8638.73,18240.4,0.171936],153,"Up",[]],[[8631.43,18257.1,0.123398],330,"Up",[]],[[8641.36,18268.7,-1.52588e-05],317,"Up",[]],[[8643.31,18273.5,1.40509],306,"Up",[]],[[8648.9,18276,1.53677],344,"Up",[]],[[8655.95,18267.3,-1.52588e-05],344,"Up",[]],[[8661.62,18272.7,1.52588e-05],336,"Up",[]],[[8667.98,18251.6,0],129,"Up",[]],[[8655.69,18261.2,0.422546],139,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		sleep 15;
		{
			[getPos _X,units _Group,6,east,1000,[]] spawn OKS_Lambs_SpawnGroup;	sleep 4;
		} foreach [ambush_1,ambush_2,ambush_3,ambush_4,ambush_5];

	};

	case 8: {

		// Final Defence
		{
			[getPos _X,"players",3,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
			sleep 4;
		} foreach [final_1,final_2,final_3,final_4,final_5];
		sleep 60;

		{
			[getPos _X,"players",3,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
			sleep 4;
		} foreach [final_1,final_2,final_3,final_4,final_5];
		sleep 60;

		["hq","side","1-1, this is Dante, inbound from the north-east. Hold on guys! Exfil imminent!"] remoteExec ["OKS_Chat",0];
		{
			[getPos _X,"players",3,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
			sleep 4;
		} foreach [final_1,final_2,final_3,final_4,final_5];

		// Helicopter Inbound 
		[west,"RHS_UH60M2","Unload", ["helicopter_spawn",getPos ExfilLand,"helicopter_despawn"],{},true] execVM "Scripts\NEKY_supply\NEKY_SupplyMapClick.sqf";
		
		// Helicopter explodes
		waitUntil {sleep 0.5; count (ExfilLand nearEntities ["RHS_UH60M2", 200]) > 0};
		["hq","side","Fuck! Sorry guys..."] remoteExec ["OKS_Chat",0]; sleep 1;
		_Helicopters = ((ExfilLand nearEntities ["RHS_UH60M2", 200]) select { side (driver _X) == WEST});
		{_X setDamage 1} foreach _Helicopters;

		sleep 5;
		// Final wave
			[] spawn {
			{
				[getPos _X,"players",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
				sleep 4;
			} foreach [final_1,final_2,final_3,final_4,final_5];	
		};

		{
			[getPos _X] execVM "RoarEffect.sqf";
			sleep 6;
			[getPos _X,"monster",1,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
			sleep 1;
		} foreach [final_5,final_3,final_4];
		{
			[getPos _X,"boss",1,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		} foreach [final_1];
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
