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

	case 0: {
		[Static_1,false,[20,0,true,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0]] spawn OKS_CreateZone; sleep 5;
		[Static_2,false,[(20),0,true,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone; sleep 5;
		[Static_3,false,[(20),0,true,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone; sleep 5;
		[Static_4,false,[(16),12,true,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone; sleep 5;
		[Patrol_1,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone; sleep 5;
		[Patrol_2,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0]] spawn OKS_CreateZone; sleep 5;

		[VehiclePatrol_1,false,[0,0,false,false],east,3,1,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0]] spawn OKS_CreateZone; sleep 15;
		[Objectives_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[3,false],[0,0,0,0,0]] spawn OKS_CreateZone;

		sleep 150;
		[east,1500,30,true,0.2] spawn OKS_FINALE;
	};

	case 1: {

		/* Fortification */
		[[[[5253.61,5339.32,-7.62939e-006],40,"Up",[]],[[5256.99,5331.24,1.90778],63,"Up",[]],[[5257.07,5329.8,1.93491],87,"Up",[]],[[5230.57,5318.63,1.62036],355,"Middle",[]],[[5243.26,5324.49,0],340,"Up",[]],[[5226.55,5337.78,0],357,"Middle",[]],[[5226.65,5320.62,0],292,"Middle",[]],[[5216.3,5348.59,0],69,"Up",[]],[[5207.39,5341.73,-7.62939e-006],103,"Up",[]],[[5201.4,5327.72,0],133,"Up",[]]],[["LOP_ISTS_OPF_Static_M2",[5255.3,5336.66,5.34058e-005],69,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		[[[[4911.21,5050.75,3.31001],12,"Up",[]],[[4914.95,5046.36,3.64001],29,"Up",[]],[[4867.73,5092.76,5.79997],12,"Middle",[]],[[4870.21,5094,3.04998],25,"Middle",[]],[[4842.67,5112.94,5.79996],25,"Middle",[]],[[4842.97,5116.22,3.04996],25,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

			//[Static_5,false,[12,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[1,false],[0,0,0,0,0]] spawn OKS_CreateZone; sleep 15;
			//[Patrol_3,false,[0,25,false,false],east,0,0,0,[0,true,false,0],[0,false],[2,false],[0,0,0,0,0]] spawn OKS_CreateZone; sleep 15;
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
