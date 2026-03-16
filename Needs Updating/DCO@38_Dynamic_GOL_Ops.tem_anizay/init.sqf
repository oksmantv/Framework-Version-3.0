	MISSION_ROOT = call { private "_arr"; _arr = toArray __FILE__; _arr resize (count _arr - 8); toString _arr};

	_Magnified = "MAGNIFIED_OPTICS" call BIS_fnc_getParamValue;
	switch (_Magnified) do {
		case 0: { 
			GOL_MAGNIFIED_OPTICS = 0; // Allows magnified 2x sights to be selected from the Arsenal.
			publicVariable "GOL_MAGNIFIED_OPTICS";
		};
		case 1: { 
			GOL_MAGNIFIED_OPTICS = 1; // Allows magnified 2x sights to be selected from the Arsenal.
			publicVariable "GOL_MAGNIFIED_OPTICS";
		};		
		default { 
			GOL_MAGNIFIED_OPTICS = 0; // Allows magnified 2x sights to be selected from the Arsenal.
			publicVariable "GOL_MAGNIFIED_OPTICS";
		};
	};
	GOL_BLUFOR_Faction = "BLUFOR_Faction" call BIS_fnc_getParamValue;
	GOL_OPFOR_Faction = "OPFOR_Faction" call BIS_fnc_getParamValue;

	GOL_Strongpoint_LMG = "UK3CB_ADE_O_PKM_Low";
	GOL_Strongpoint_HMG = "UK3CB_MEE_O_KORD";
	GOL_Strongpoint_SPG = "UK3CB_ARD_O_SPG9";

	switch (GOL_BLUFOR_Faction) do {
		case 0: { 
			GOL_BLUFOR_Flag = "flag_NATO"; // NATO
			publicVariable "GOL_BLUFOR_Flag";
		};
		case 1: { 
			GOL_BLUFOR_Flag = "flag_USA"; // USMC
			publicVariable "GOL_BLUFOR_Flag";
		};	
		case 2: { 
			GOL_BLUFOR_Flag = "flag_USA"; // USA
			publicVariable "GOL_BLUFOR_Flag";
		};					
		default { 
			GOL_BLUFOR_Flag = "flag_NATO"; // NATO
			publicVariable "GOL_BLUFOR_Flag";
		};
	};
	"player_flag" setMarkerType GOL_BLUFOR_FLAG;

	switch (GOL_OPFOR_Faction) do {
		case 0: { 
			GOL_OPFOR_Flag = "UK3CB_Marker_TKA"; // TKA
			publicVariable "GOL_OPFOR_Flag";
		};
		case 1: { 
			GOL_OPFOR_Flag = "UK3CB_Marker_CSAT"; // TKA
			publicVariable "GOL_OPFOR_Flag";
		};	
		case 2: { 
			GOL_OPFOR_Flag = "UK3CB_Marker_O_TKM"; // TKA
			publicVariable "GOL_OPFOR_Flag";
		};					
		default { 
			GOL_OPFOR_Flag = "UK3CB_Marker_TKA"; // TKA
			publicVariable "GOL_OPFOR_Flag";
		};
	};

	{
		_X setMarkerType GOL_OPFOR_Flag;
	} foreach [
		"enemyMarker_1","enemyMarker_2","enemyMarker_3","enemyMarker_4","enemyMarker_5",
		"enemyMarker_6","enemyMarker_7","enemyMarker_8","enemyMarker_9","enemyMarker_10",
		"enemyMarker_11","enemyMarker_12","enemyMarker_13","enemyMarker_14","enemyMarker_15",
		"enemyMarker_16","enemyMarker_17","enemyMarker_18","enemyMarker_19","enemyMarker_20"
	];

	_Composition = "Composition" call BIS_fnc_getParamValue;
	switch (_Composition) do {
		case 0: { 
			// Infantry
			GOL_LAT_Chance = 0.45; // Chance for Light AT to be given to AI.
			GOL_MAT_Chance = 0.35; // Chance for Medium AT to be given to AI.
			GOL_UGL_Chance = 0.25; // Chance for UGL to be given to AI.

			GOL_RoadblockChance = 0.5;
			GOL_StrongpointLevel = 0; // LMG
			GOL_MotoCount = 4;
			GOL_MechCount = 0;
			GOL_ArmorCount = 0;
			GOL_RoadBlockType = "car"; // car, apc, tank

			GOL_Static_Multiplier = 1;
			GOL_Patrol_Multiplier = 1;			

			//publicVariable ["GOL_LAT_Chance","GOL_MAT_Chance","GOL_UGL_Chance","GOL_RoadblockChance","GOL_MotoCount","GOL_MechCount","GOL_ArmorCount","GOL_RoadBlockType","GOL_Static_Multiplier","GOL_Patrol_Multiplier"];
		};
		case 1: { 
			// Motorised
			GOL_LAT_Chance = 0.10; // Chance for Light AT to be given to AI.
			GOL_MAT_Chance = 0.05; // Chance for Medium AT to be given to AI.
			GOL_UGL_Chance = 0.25; // Chance for UGL to be given to AI.

			GOL_RoadblockChance = 1;
			GOL_StrongpointLevel = 1; // HMG
			GOL_MotoCount = 4;
			GOL_MechCount = 0;
			GOL_ArmorCount = 0;
			GOL_RoadBlockType = "car"; // car, apc, tank

			GOL_Static_Multiplier = 1;
			GOL_Patrol_Multiplier = 1;
			//publicVariable ["GOL_LAT_Chance","GOL_MAT_Chance","GOL_UGL_Chance","GOL_RoadblockChance","GOL_MotoCount","GOL_MechCount","GOL_ArmorCount","GOL_RoadBlockType","GOL_Static_Multiplier","GOL_Patrol_Multiplier"];
		};
		case 2: { 
			// Mechanized
			GOL_LAT_Chance = 0.60; // Chance for Light AT to be given to AI.
			GOL_MAT_Chance = 0.35; // Chance for Medium AT to be given to AI.
			GOL_UGL_Chance = 0.25; // Chance for UGL to be given to AI.

			GOL_RoadblockChance = 1;
			GOL_StrongpointLevel = 2; // AT
			GOL_MotoCount = 0;
			GOL_MechCount = 4;
			GOL_ArmorCount = 0;
			GOL_RoadBlockType = "apc"; // car, apc, tank

			GOL_Static_Multiplier = 0.7;
			GOL_Patrol_Multiplier = 1;	
			//publicVariable ["GOL_LAT_Chance","GOL_MAT_Chance","GOL_UGL_Chance","GOL_RoadblockChance","GOL_MotoCount","GOL_MechCount","GOL_ArmorCount","GOL_RoadBlockType","GOL_Static_Multiplier","GOL_Patrol_Multiplier"];		
		};

		default { 
			// Infantry
			GOL_LAT_Chance = 0.45; // Chance for Light AT to be given to AI.
			GOL_MAT_Chance = 0.35; // Chance for Medium AT to be given to AI.
			GOL_UGL_Chance = 0.25; // Chance for UGL to be given to AI.

			GOL_RoadblockChance = 0.5;
			GOL_MotoCount = 4;
			GOL_MechCount = 0;
			GOL_ArmorCount = 0;
			GOL_RoadBlockType = "car"; // car, apc, tank

			GOL_Static_Multiplier = 1;
			GOL_Patrol_Multiplier = 1;			
			//publicVariable ["GOL_LAT_Chance","GOL_MAT_Chance","GOL_UGL_Chance","GOL_RoadblockChance","GOL_MotoCount","GOL_MechCount","GOL_ArmorCount","GOL_RoadBlockType","GOL_Static_Multiplier","GOL_Patrol_Multiplier"];
		};
	};

	/* Set GOL Mission Settings */
	Call Compile PreProcessFileLineNumbers "MissionSettings.sqf";	
	Sleep 5;

	execVM "Scripts\GOL_PlayerSetup\init.sqf";
	execVM "Scripts\OKS_Vehicles\Init.sqf";	
	if(GOL_NEKY_SERVICESTATION isEqualTo 1) then { execVM "Scripts\NEKY_ServiceStation\Init.sqf"};
	if(GOL_NEKY_AIRDROP isEqualTo 1) then {	execVM "Scripts\NEKY_AirDrop\Init.sqf"};
	if(GOL_NEKY_HUNT isEqualTo 1) then { execVM "Scripts\NEKY_Hunt\Init.sqf"};
	if(GOL_OKS_AMBIENCE isEqualTo 1) then { execVM "Scripts\OKS_Ambience\Init.sqf"};
	if(GOL_OKS_SPAWN isEqualTo 1) then { execVM "Scripts\OKS_Spawn\Init.sqf"};
	if(GOL_OKS_DYNAMIC isEqualTo 1) then { execVM "Scripts\OKS_Dynamic\Init.sqf"};
	if(GOL_NEKY_TASK isEqualTo 1) then { execVM "Scripts\NEKY_Tasks\Init.sqf"};	
	if(GOL_OKS_TASK isEqualTo 1) then { execVM "Scripts\OKS_TASK\Init.sqf"};



