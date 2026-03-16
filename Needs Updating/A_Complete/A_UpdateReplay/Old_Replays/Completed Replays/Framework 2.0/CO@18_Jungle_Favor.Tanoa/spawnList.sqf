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

		/// First Patrol Area
		[Trigger_1,false,[0,15,true,false],west,1,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0]] spawn OKS_CreateZone;
		
		/// First Town
		[Trigger_2,false,[12,0,true,false],west,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0]] spawn OKS_CreateZone;
		
		/// Second Patrol Area
		[Trigger_3,false,[0,20,true,false],west,1,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0]] spawn OKS_CreateZone;
		
		/// Second Town
		[Trigger_4,false,[12,0,true,false],west,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0]] spawn OKS_CreateZone;
		
		/// Area of Operations
		[Trigger_5,false,[0,0,false,false],west,1,2,1,[2,true,false,0.5],[0,false],[3,false],[0,0,0,0,0]] spawn OKS_CreateZone;

		[[[[2386.47,8136.44,4.29153e-006],0,[]]],[],[[[2366.04,8144.12,0],[[0,"Move"],[1,"SAFE"],[5,"LIMITED"]]],[[2361.7,8171.47,0],[[0,"Move"]]],[[2350.33,8159.39,7.62939e-006],[[0,"Move"]]],[[2353.9,8147.96,5.72205e-005],[[0,"Move"]]],[[2385.93,8135.75,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[2365.58,8173.58,3.8147e-006],0,[]]],[],[[[2365.77,8190.71,0],[[0,"Move"],[1,"SAFE"],[5,"LIMITED"]]],[[2347.12,8216.02,4.76837e-007],[[0,"Move"]]],[[2328.81,8216.16,0],[[0,"Move"]]],[[2355.64,8194.31,0],[[0,"Move"]]],[[2365.03,8172.89,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[2345.79,8156.97,4.76837e-006],12,[]]],[],[[[2330.47,8171.63,0],[[0,"Move"],[1,"SAFE"],[5,"LIMITED"]]],[[2295.16,8216.5,0],[[0,"Move"]]],[[2291.66,8215.96,0],[[0,"Move"]]],[[2329.03,8170.07,0],[[0,"Move"]]],[[2345.12,8156.4,-4.76837e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[2353.72,8206.01,4.76837e-006],0,[]]],[],[[[2332.09,8220.99,0],[[0,"Move"],[1,"SAFE"],[5,"LIMITED"]]],[[2312.73,8226.57,0],[[0,"Move"]]],[[2291.22,8223.11,0],[[0,"Move"]]],[[2320.78,8221.17,4.76837e-007],[[0,"Move"]]],[[2353.18,8205.32,4.76837e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[2354.11,8144.12,-4.19617e-005],327,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2350.92,8136.9,0.496595],39,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2356.2,8135.14,0.450333],32,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2362.91,8137.83,0.73637],277,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[2722.75,7316.32,3.57125],280,"Up",[]],[[2724.68,7322.13,3.63777],280,"Up",[]],[[2726.39,7326.77,3.5131],280,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		// Counter Village 1
		{[(getPos _X),"hunt",5,west,1500,[]] spawn OKS_Lambs_SpawnGroup} foreach [rush_1,rush_2,rush_3];

		[[],[["I_C_Offroad_02_LMG_F",[2206.19,7511.86,1.14441e-005],60,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Olive",1]],[7,["hideLeftDoor",1,"hideRightDoor",0,"hideRearDoor",0,"hideFenders",1,"hideHeadSupportFront",0,"hideSpareWheel",1]]]]],[[[2105.33,7788.51,-9.53674e-007],[[0,"Move"]]],[[2090.99,7987.31,0],[[0,"Move"]]],[[2201.21,8092.76,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {

		// Counter Village 2
		{[(getPos _X),"hunt",5,west,1500,[]] spawn OKS_Lambs_SpawnGroup} foreach [rush_4,rush_5,rush_6];
		[[],[["UK3CB_GAF_B_T72BM",[3089.58,6909.85,3.8147e-006],275,[["driver",-1,[]],["cargo",-1,[0]],["commander",-1,[0,0]]],[[6,["GAF",1]],[7,["Tanks_Hide",0]]]]],[[[2598.89,7223.12,0],[[0,"Move"]]],[[2578.98,7334.98,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
	
	};

	case 4: {

		// Meeting Engagement
		{[(getPos _X),"hunt",5,west,1500,[]] spawn OKS_Lambs_SpawnGroup} foreach [rush_7,rush_8,rush_9];
	};

	case 5: {
		// Counter Final
		[convoy_1,convoy_2,convoy_3,west,[4,["I_C_Offroad_02_LMG_F","I_C_Offroad_02_unarmed_F","I_C_Offroad_02_unarmed_F",	"I_C_Offroad_02_LMG_F"], 6, 25],[true,6],[], false, false] spawn OKS_Convoy_Spawn;
		{[(getPos _X),"hunt",5,west,1500,[]] spawn OKS_Lambs_SpawnGroup} foreach [rush_10,rush_11,rush_12];
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
