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

switch (_case) do {

	case 1: {

		[Trigger_1,false,[25,35,true,false],east,1,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0]] spawn OKS_CreateZone;
		[Trigger_2,false,[18,35,true,false],east,1,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0]] spawn OKS_CreateZone;
		[Trigger_3,false,[0,45,true,false],east,4,2,0,[2,false,false,0.5],[0,false],[3,false],[0,0,0,0,0]] spawn OKS_CreateZone;
	};

	case 2: {

		[Trigger_3,false,[0,35,true,false],east,1,2,1,[2,false,false,0.5],[0,false],[3,false],[0,0,0,0,0]] spawn OKS_CreateZone;
		[Trigger_4,false,[0,35,true,false],east,1,2,1,[2,false,false,0.5],[0,false],[3,false],[0,0,0,0,0]] spawn OKS_CreateZone;
		[Trigger_5,false,[0,16,true,false],east,0,0,0,[0,false,false,0.5],[0,false],[0,false],[0,0,0,0,0]] spawn OKS_CreateZone;
		[Trigger_6,false,[0,16,true,false],east,0,0,0,[0,false,false,0.5],[0,false],[3,false],[0,0,0,0,0]] spawn OKS_CreateZone;
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
