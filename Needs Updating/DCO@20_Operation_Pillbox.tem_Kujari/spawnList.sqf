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

	case 0:  {

		[[[[11340.3,5397.7,3.78297],268,"Middle",[]],[[11339.7,5384.93,3.23386],259,"Middle",[]],[[11336.8,5477.64,0],230,"Up",[]],[[11344.2,5457.91,0],222,"Up",[]]],[["UK3CB_ADA_O_BTR40_MG",[11427.1,5452.61,1.5],252,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		[[[[12569.8,5013.9,0],214,"Middle",[]],[[12584.4,5036.7,0.5],30,"Middle",[]],[[12560.7,4999.31,0],214,"Middle",[]]],[["UK3CB_ADM_O_Hilux_Pkm",[12541,5014.9,1.53674e-006],222,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]],["UK3CB_ADM_O_Hilux_Pkm",[12556.7,5041.5,1.5],13,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		[Trigger_1,false,[6,10,true,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
		[Trigger_2,false,[0,8,false,false],east,0,0,0,[1,false,false,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

	};

	case 1: {

		[[[[12582.5,5647.55,0.916872],272,"Up",[]],[[12586.7,5656.53,0],327,"Up",[]],[[12664.6,5678.37,3.81587],266,"Up",[]],[[12669.7,5677.89,3.97151],314,"Up",[]],[[12666.9,5732.28,2.65046],217,"Up",[]],[[12643.9,5736.63,3.09529],222,"Up",[]],[[12643.7,5747.78,4.06053],233,"Up",[]],[[12645.4,5760.22,2.79212],266,"Middle",[]],[[12664,5772.32,3.40393],257,"Up",[]],[[12673.2,5763.48,3.32621],266,"Up",[]],[[12647.9,5776.64,3.24391],211,"Middle",[]],[[12666.1,5438.8,2.6052],311,"Middle",[]]],[["UK3CB_ADM_O_MTLB_PKT",[12685.3,5798.41,1.62125e-005],256,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		[Trigger_3,false,[0,8,false,false],east,2,0,0,[2,false,false,1],[0,false],[3,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_4,false,[12,5,true,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
		[Trigger_7,false,[0,0,false,false],east,0,0,0,[0,false,false,1],[0,false],[0,false],[1,0,2,0,0],false] spawn OKS_CreateZone;
	};

	case 2: {

		[[[[14267.6,5530.38,0.5],217,"Middle",[]],[[14261.9,5535.98,0.5],251,"Middle",[]],[[14255.5,5542.97,0],251,"Middle",[]],[[14136,5777.27,3.97943],150,"Middle",[]],[[14128.2,5773.94,3.53941],187,"Middle",[]],[[14124.5,5781.7,2.99808],206,"Middle",[]],[[14151.2,5756.2,0],192,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[14484.7,5091.92,4.73695],6,"Up",[]],[[14485.6,5096.43,5.02167],316,"Middle",[]],[[14484.8,5091.87,1.38168],217,"Middle",[]],[[14491.4,5092.84,1.14418],28,"Middle",[]],[[14494.8,5093.07,0],19,"Middle",[]],[[14486,5110.17,0],93,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[14738.5,5756.16,3.64274],200,"Up",[]],[[14818.2,5787.19,2.55439],253,"Up",[]],[[14838,5784.94,3.14507],320,"Up",[]],[[14820.4,5818.31,3.74824],186,"Up",[]],[[14794.8,5812.39,3.5205],294,"Up",[]],[[14795.2,5802.8,3.31981],200,"Middle",[]],[[14880.1,5784.35,3.61581],299,"Up",[]],[[14891,5791.97,3.2102],277,"Up",[]],[[14821,5875.84,3.83207],244,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		[Trigger_5,false,[15,0,true,false],east,0,0,0,[0,true,false,0],[0,false],[2,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
		[Trigger_6,false,[0,15,false,false],east,1,2,0,[2,false,false,0.6],[0,false],[3,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
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
