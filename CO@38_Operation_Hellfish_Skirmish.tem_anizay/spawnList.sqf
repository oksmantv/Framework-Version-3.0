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

_firstVehicles = [
	"UK3CB_TKM_O_MTLB_BMP", 
	"UK3CB_TKM_O_MTLB_BMP", 
	"UK3CB_TKM_O_MTLB_BMP", 
	"UK3CB_TKM_O_MTLB_BMP", 
	"UK3CB_TKM_O_BTR40_ZU23", 
	"UK3CB_TKM_O_Hilux_Spg9", 
	"UK3CB_TKM_O_LandRover_Opentop_SPG9", 
	"UK3CB_TKM_O_UAZ_SPG9", 
	"UK3CB_TKM_O_UAZ_Dshkm", 
	"UK3CB_TKM_O_LandRover_Opentop_M2"
];
_secondVehicles = [
	"UK3CB_TKA_O_BTR40_ZU23", 
	"UK3CB_TKA_O_BMP1", 
	"UK3CB_TKA_O_BMP1", 
	"UK3CB_TKA_O_BMP1", 
	"UK3CB_TKA_O_BMP1", 
	"UK3CB_TKA_O_BMP1", 
	"UK3CB_TKA_O_BMP1", 
	"UK3CB_TKA_O_BMP2", 
	"UK3CB_TKA_O_BTR90", 
	"UK3CB_TKA_O_MTLB_BMP", 
	"UK3CB_TKA_O_T34", 
	"UK3CB_TKA_O_GAZ_Vodnik_Cannon"
];

switch (_case) do {

	case 1: {

		// Phase 1
		[ Trigger_1, false, [50,40,false,true], east, 0, 5, 0, [0,true,false,0], [0,false], [1,true], [0,0,0,0,0], false ] spawn OKS_fnc_CreateZone;

		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 15, 900, east, _firstVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 15, 900, east, _firstVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_1, 15, 900, east, _firstVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_7, Spawn_7, NEKY_Hunt_Trigger_1, 15, 900, east, _firstVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_9, Spawn_9, NEKY_Hunt_Trigger_1, 15, 900, east, _firstVehicles, 240] spawn OKS_fnc_HuntBase;

		{
			[getpos _X, "ambushrush", 4, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [
			LambsGroupSpawn_1, LambsGroupSpawn_2, LambsGroupSpawn_3, LambsGroupSpawn_4, LambsGroupSpawn_5, LambsGroupSpawn_6, LambsGroupSpawn_7, LambsGroupSpawn_8
		];	
	};

	case 2: {

		// Phase 2
		[ Trigger_2, false, [60,60,false,true], east, 0, 7, 0, [0,true,false,0], [0,false], [1,true], [0,0,0,0,0], false ] spawn OKS_fnc_CreateZone;

		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_2, 15, 900, east, _secondVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_2, 15, 900, east, _secondVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_2, 15, 900, east, _secondVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_8, Spawn_8, NEKY_Hunt_Trigger_2, 15, 900, east, _secondVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_10, Spawn_10, NEKY_Hunt_Trigger_2, 15, 900, east, _secondVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_11, Spawn_11, NEKY_Hunt_Trigger_2, 15, 900, east, _secondVehicles, 240] spawn OKS_fnc_HuntBase;

		{
			[getpos _X, "ambushrush", 4, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [
			LambsGroupSpawn_10, LambsGroupSpawn_11, LambsGroupSpawn_12, LambsGroupSpawn_13, LambsGroupSpawn_14, LambsGroupSpawn_9
		];	

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
	GOL SCRIPT EXAMPLES:
	Link to README: https://github.com/oksmantv/Guerrillas-of-Liberations-Misc-Addon?tab=readme-ov-file#readme 
*/ 
