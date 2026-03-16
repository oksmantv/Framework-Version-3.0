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



#include "\OKS_GOL_Misc\script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};


params [
	"_case"
];

private _Vehicles = [
	"UK3CB_TKA_B_BMP1", 
	"UK3CB_TKA_B_BTR40_MG", 
	"UK3CB_TKA_B_M113_M2", 
	"UK3CB_TKA_B_M113_M240", 
	"UK3CB_TKA_B_MTLB_KPVT", 
	"UK3CB_TKA_B_Hilux_Closed", 
	"UK3CB_TKA_B_Hilux_Open", 
	"UK3CB_TKA_B_Kamaz_Closed", 
	"UK3CB_TKA_B_Kamaz_Open", 
	"UK3CB_TKA_B_M1025", 
	"UK3CB_TKA_B_M998_2DR", 
	"UK3CB_TKA_B_M998_4DR", 
	"UK3CB_TKA_B_Ural", 
	"UK3CB_TKA_B_Ural_Open", 
	"UK3CB_TKA_B_M113_unarmed", 
	"UK3CB_TKA_B_BTR40"
];

switch (_case) do {

	case 1: {

		// Zone 1.
		[ Trigger_1, false, [25,35,false,false], west, 4, 2, 0, [0,true,false,0], [0,false], [5,false], [0,0,0,0,0], false ] spawn OKS_fnc_CreateZone;
	
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 10, 450, independent, _Vehicles, 180] spawn OKS_fnc_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 10, 450, independent, _Vehicles, 180] spawn OKS_fnc_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 10, 450, independent, _Vehicles, 180] spawn OKS_fnc_HuntBase;
	};

	case 2: {
		// Zone 1 Counter.
	};

	case 3: {

		// Zone 2.
		[ Trigger_2, false, [25,35,false,false], west, 4, 2, 0, [0,true,false,0], [0,false], [6,false], [0,0,0,0,0], false ] spawn OKS_fnc_CreateZone;

		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_1, 10, 450, independent, _Vehicles, 180] spawn OKS_fnc_HuntBase;
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_1, 10, 450, independent, _Vehicles, 180] spawn OKS_fnc_HuntBase;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_1, 10, 450, independent, _Vehicles, 180] spawn OKS_fnc_HuntBase;

	};

	case 4: {

		// Zone 2 Counter-Attack.
	};

	case 5: {

		// Zone 3.
		[ Trigger_3, false, [25,35,false,false], west, 4, 2, 0, [0,true,false,0], [0,false], [6,false], [0,0,0,0,0], false ] spawn OKS_fnc_CreateZone;

		[Spawn_7, Spawn_7, NEKY_Hunt_Trigger_1, 10, 450, independent, _Vehicles, 180] spawn OKS_fnc_HuntBase;
		[Spawn_8, Spawn_8, NEKY_Hunt_Trigger_1, 10, 450, independent, _Vehicles, 180] spawn OKS_fnc_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 10, 450, independent, _Vehicles, 180] spawn OKS_fnc_HuntBase;

	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*
	GOL SCRIPT EXAMPLES:
	Link to README: https://github.com/oksmantv/Guerrillas-of-Liberations-Misc-Addon?tab=readme-ov-file#readme 
*/ 