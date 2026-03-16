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
		[convoySpawn_1,convoyWP_1,convoyEnd_1,EAST,[4,["UK3CB_TKM_O_BTR40_MG","UK3CB_TKM_O_BTR40","UK3CB_TKM_O_BTR40_MG"]],[true,4]] spawn OKS_Convoy_Spawn;
		sleep 30;
		[[ambush_1,ambush_2,ambush_3,ambush_4,ambush_5],5,EAST,700,true,true,30] spawn OKS_Rush_Spawn;		
	};

	case 2: {
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
