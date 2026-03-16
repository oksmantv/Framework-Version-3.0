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
#include "script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};

params [
	"_case"
];

switch (_case) do {

	case 1: {
		[Trigger_1,false,[10,20,false,true],east,1,0,0,[2,true,false,1],[0,false],[3,true],[0,0,0,0,0],true] spawn OKS_CreateZone;
		[Base_3, Spawn_3, NEKY_Hunt_Trigger_1, 2, 600, east, ["UK3CB_TKA_O_T34", "UK3CB_TKA_O_BMP2", "UK3CB_TKA_O_BMP1"], 30] spawn NEKY_Hunt_HuntBase;
		
	};

	case 2: {
		[Trigger_2,false,[20,10,true,true],east,0,0,0,[1,true,false,1],[0,false],[2,true],[0,0,0,0,0],false] spawn OKS_CreateZone;
	};

	case 3: {
		[Trigger_3,false,[20,8,false,true],east,0,0,0,[2,true,false,1],[0,false],[0,true],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_4,false,[20,8,true,true],east,0,0,0,[1,false,false,0],[0,false],[2,true],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Base_4, Spawn_4, NEKY_Hunt_Trigger_2, 4, 900, east, ["UK3CB_TKA_O_T34", "UK3CB_TKA_O_BMP2", "UK3CB_TKA_O_BMP1"], 30] spawn NEKY_Hunt_HuntBase;
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
