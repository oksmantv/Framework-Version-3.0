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

SystemChat format ["GW_Fnc_spawnList Executed - Case: %1", _case];

switch (_case) do {

	case 1: {

		[[[[12963.9,8282.69,2.38419e-07],0,[[301,0]],"g"],[[12968.9,8280.69,0],0,[[301,0]],"r"]],[],[[[12930.5,8281.18,0],[[0,"Move"],[1,"SAFE"]]],[[12917.1,8319.58,1.7643e-05],[[0,"Move"]]],[[12895.5,8329.78,1.04904e-05],[[0,"Move"]]],[[12893.8,8351.32,2.86102e-06],[[0,"Move"]]],[[12919.1,8351.97,1.00136e-05],[[0,"Move"]]],[[12928,8297.52,-9.05991e-06],[[0,"Move"]]],[[12965.4,8286.43,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[13050.6,8176.37,9.53674e-06],0,[[301,0]],"g"],[[13055.6,8174.37,9.41753e-06],0,[[301,0]],"r"]],[],[[[13036.1,8208.59,0.000124216],[[0,"Move"],[1,"SAFE"]]],[[12997.9,8274.96,4.29153e-06],[[0,"Move"]]],[[12975.6,8273.3,2.31266e-05],[[0,"Move"]]],[[12945.5,8334.28,0],[[0,"Move"]]],[[13003,8283.13,2.24113e-05],[[0,"Move"]]],[[13036.6,8209.35,0.000111461],[[0,"Move"]]],[[13052.1,8180.11,9.41753e-06],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[12949,8463.43,1.4782e-05],257,[[301,0]],"g"],[[12949.9,8468.76,1.4782e-05],257,[[301,0]],"r"]],[],[[[12949.6,8431.06,1.09673e-05],[[0,"Move"],[1,"SAFE"]]],[[12967.6,8380.66,0],[[0,"Move"]]],[[12978.8,8329.01,0],[[0,"Move"]]],[[12947,8319.42,0],[[0,"Move"]]],[[12957.2,8380.25,0],[[0,"Move"]]],[[12948.6,8431.42,3.8147e-06],[[0,"Move"]]],[[12945.1,8464.07,1.4782e-05],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[12966.9,8348.88,5.14141],348,"Auto",[[301,0]],"ab"],[[12965.1,8343.54,5.25834],264,"Auto",[[301,0]],"ab"],[[12944.8,8310.63,3.46353],337,"Auto",[[301,0]],"ab"],[[12954.2,8307.94,0.0210161],78,"Auto",[[301,0]],"ab"]],[],[],east] call GW_Common_fnc_spawnGroup;

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

	case 7: {
	};

	case 8: {
	};

	case 9: {
	};

	case 10: {
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