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

if !(isServer) then {false};

params [
	"_case"
];

Private	_Vehicles = ["UK3CB_TKA_O_Ural_Zu23", 
				"UK3CB_TKA_O_BMP1", 
				"UK3CB_TKA_O_BMP2", 
				"UK3CB_TKA_O_BTR80a", 
				"UK3CB_TKA_O_Tigr_STS", 
				"UK3CB_TKA_O_GAZ_Vodnik_Cannon", 
				"UK3CB_TKA_O_GAZ_Vodnik_KVPT", 
				"UK3CB_TKA_O_Hilux_M2", 
				"UK3CB_TKA_O_Hilux_Spg9", 
				"UK3CB_TKA_O_Hilux_Zu23_Front", 
				"UK3CB_TKA_O_LR_SF_M2"];

switch (_case) do {

	case 0: {
			[Trigger_1,false,[20,15,false,false],east,0,2,0,[0,true,false,1],[0,false],[2,false],[0,0,0,0,0],false] spawn OKS_CreateZone;


			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 6,1200,east,_Vehicles,360] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 6,1400,east,_Vehicles,360] spawn NEKY_Hunt_HuntBase;
	};

	case 1: {

		[Trigger_2,false,[15,10,false,false],east,0,3,0,[0,false,false,0.5],[0,true],[2,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		[Base_3, Spawn_3, NEKY_Hunt_Trigger_2, 6,1200,east,_Vehicles,360] spawn NEKY_Hunt_HuntBase;
		[Base_4, Spawn_4, NEKY_Hunt_Trigger_2, 6,1400,east,_Vehicles,360] spawn NEKY_Hunt_HuntBase;
		[Base_5, Spawn_5, NEKY_Hunt_Trigger_2, 6,1500,east,_Vehicles,360] spawn NEKY_Hunt_HuntBase;

	};

	case 2: {
		[Trigger_3,false,[20,10,false,false],east,0,3,0,[0,true,false,0.5],[0,true],[1,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Base_6, Spawn_6, NEKY_Hunt_Trigger_3, 6,1200,east,_Vehicles,360] spawn NEKY_Hunt_HuntBase;
		[Base_7, Spawn_7, NEKY_Hunt_Trigger_3, 6,1400,east,_Vehicles,360] spawn NEKY_Hunt_HuntBase;
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
