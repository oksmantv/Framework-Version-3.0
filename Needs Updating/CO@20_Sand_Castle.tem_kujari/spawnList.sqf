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
		waitUntil{sleep 5; !(isNil "OKS_CreateZone")};
		[Trigger_1,false,[20,20,true,false],east,0,2,1,[0,true,false,0],[0,false],[1,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
		[Trigger_2,false,[15,20,true,false],east,0,3,1,[0,true,false,0],[0,false],[2,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
	};

	case 2: {
		[Trigger_3,false,[12,20,true,false],east,0,3,1,[1,false,false,1],[0,false],[2,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
		//[Trigger_4,false,[12,20,true],east,0,2,3,[1,false],1,2,[2,0,1,1,0]] spawn OKS_CreateZone;
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
