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
#include "\OKS_GOL_MISC\script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) then {false};

params [
	"_case"
];

switch (_case) do {

	case 0:{

		/// Beach Counter-Attack
		[[],[["UK3CB_TKA_O_Bell412_Armed",[3385.21,11730.5,41.722],226,[["driver",-1,[]],["turret",-1,[0]],["turret",-1,[1]],["turret",-1,[2]],["commander",-1,[3]]],[[6,["TKA",1]],[7,["AddCargohook",0,"AddCargoHook_cover",1,"AddFlareLauncher",0,"AddNoseradar",1,"AddWinch",0,"AddRocketLaunchers",0,"AddGuns",0,"DoorL2_Hide",0,"DoorR2_Hide",0,"RotorCover_Hide",0]]]]],[[[2955.54,10889.4,38.8185],[[0,"Move"],[1,"STEALTH"],[2,"BLUE"]]],[[2721.87,8895.33,99.846],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_Bell412_Armed",[3125.93,11808.1,41.722],226,[["driver",-1,[]],["turret",-1,[0]],["turret",-1,[1]],["turret",-1,[2]],["commander",-1,[3]]],[[6,["TKA",1]],[7,["AddCargohook",0,"AddCargoHook_cover",1,"AddFlareLauncher",0,"AddNoseradar",1,"AddWinch",0,"AddRocketLaunchers",0,"AddGuns",0,"DoorL2_Hide",0,"DoorR2_Hide",0,"RotorCover_Hide",0]]]]],[[[2673.84,10947.2,41.4348],[[0,"Move"],[1,"STEALTH"],[2,"BLUE"]]],[[2463.25,8973.2,99.846],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 1: {

		// Top Sentries
		_Group = [[[[2667.56,9885.21,3.8327],173,"Up",[]],[[2664.37,9885.93,4.03091],180,"Up",[]],[[2730.14,9833.27,3.87554],173,"Up",[]],[[2727.44,9833.64,3.92928],173,"Up",[]],[[2656.24,9825.96,4.2403],173,"Up",[]],[[2665.3,9830.51,3.99732],173,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		{[_x] remoteExec ["GW_SetDifficulty_fnc_setSkill",3]} foreach units _Group;
		// Entry A
		_Group = [[[[2654.37,9824.04,1.11839],182,"Up",[]],[[2664.11,9832.09,0.331407],246,"Up",[]],[[2652.57,9834.29,0.565376],188,"Up",[]],[[2661.35,9835.38,-0.000222683],84,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		{[_x] remoteExec ["GW_SetDifficulty_fnc_setSkill",3]} foreach units _Group;
		// Entry B
		_Group = [[[[2726.11,9821.52,1.18809],169,"Up",[]],[[2715.05,9829.9,0.411513],271,"Up",[]],[[2717.87,9830.34,0.363447],109,"Up",[]],[[2728.25,9832.28,0.665486],161,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		{[_x] remoteExec ["GW_SetDifficulty_fnc_setSkill",3]} foreach units _Group;
		// Point Romeo
		_Group = [[[[2674.64,9870.47,-6.19888e-005],191,"Middle",[]],[[2662.49,9871.26,-6.19888e-005],191,"Middle",[]],[[2667.6,9883.49,0.743295],191,"Up",[]],[[2665.98,9890.82,0.431598],121,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		{[_x] remoteExec ["GW_SetDifficulty_fnc_setSkill",3]} foreach units _Group;
		_Group = [[[[2716.35,9889.2,3.03562],181,"Middle",[]],[[2715.56,9895.88,0.189874],250,"Middle",[]],[[2699.95,9891.41,0.358809],250,"Up",[]],[[2693.17,9882.14,0],327,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		{[_x] remoteExec ["GW_SetDifficulty_fnc_setSkill",3]} foreach units _Group;
		_Group = [[[[2735.63,9891.7,3.80592],181,"Middle",[]],[[2732.34,9891.3,3.39357],181,"Middle",[]],[[2732.75,9881.4,0.24998],250,"Middle",[]],[[2731.12,9898.61,0],214,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		{[_x] remoteExec ["GW_SetDifficulty_fnc_setSkill",3]} foreach units _Group;
		// Point Zulu
		_Group = [[[[2815.46,9877.14,0],239,"Middle",[]],[[2822.07,9852.4,0],236,"Middle",[]],[[2817.98,9861.08,1.90735e-006],355,"Middle",[]],[[2840.9,9855.4,0.254465],7,"Up",[]],[[2827.53,9871.53,0.423618],343,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		{[_x] remoteExec ["GW_SetDifficulty_fnc_setSkill",3]} foreach units _Group;
		_Group = [[[[2809.74,9893.12,0],250,"Middle",[]],[[2845.52,9887.6,0],286,"Up",[]],[[2825.28,9897.17,0.363049],176,"Up",[]],[[2834.84,9891.94,0.505779],262,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		{[_x] remoteExec ["GW_SetDifficulty_fnc_setSkill",3]} foreach units _Group;
		[Beach_Trigger,0,EAST] spawn OKS_fnc_Populate_StaticWeapons;

		[aa_3,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;
		[aa_4,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;
		
	};

	case 2: {
		[aa_1,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;
		[aa_2,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;

		[[[[3306.21,10477.6,-4.57764e-005],204,"Up",[]],[[3332.08,10459,0],204,"Up",[]],[[3339.83,10454.9,-4.57764e-005],204,"Up",[]],[[3324.71,10465.5,-4.57764e-005],204,"Up",[]],[[3313.32,10474.3,-4.57764e-005],204,"Up",[]],[[3302.23,10485.1,-4.57764e-005],278,"Up",[]],[[3313.39,10495,-5.34058e-005],242,"Up",[]],[[3338.95,10481.1,-4.57764e-005],204,"Up",[]],[[3318.26,10469.6,-5.34058e-005],249,"Up",[]]],[["UK3CB_TKA_O_BRDM2",[3305.36,10482.4,0],224,[["driver",-1,[]],["commander",-1,[0]]],[[6,["TKA",1]]]],["UK3CB_TKA_O_BRDM2",[3331.06,10470.4,0],224,[["driver",-1,[]],["commander",-1,[0]]],[[6,["TKA",1]]]],["UK3CB_TKA_O_T72A",[3336.35,10458.5,0],209,[["driver",-1,[]],["commander",-1,[0,0]]],[[6,["TKA",1]]]],["UK3CB_TKA_O_T72A",[3313.96,10479.9,0],218,[["driver",-1,[]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		{deleteVehicle _X} foreach [turret_1,turret_2];
		[Trigger_4,false,[0,0,false,false],east,2,1,0,[4,true,false,1],[0,false],[2,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		[Trigger_1,false,[14,15,true,false],east,0,0,0,[0,true,false,0],[0,false],[1,false],[0,0,0,0,0],true] spawn OKS_fnc_CreateZone;
		[Trigger_2,false,[12,20,false,false],east,0,0,0,[0,true,false,0],[0,false],[1,false],[0,0,0,0,0],true] spawn OKS_fnc_CreateZone;
	};

	case 3: {
		[Trigger_3,false,[24,25,true,false],east,0,0,0,[0,true,false,0],[0,false],[1,false],[0,0,0,0,0]] spawn OKS_fnc_CreateZone;
	};

	case 4: {

		// Beach strike 1
		[arty_1,independent,[getPos target_13,getPos target_14,getPos target_15,getPos target_16],1,0,true] execVM "Scripts\OKS_Spawn\OKS_fnc_ArtySuppression.sqf";
		[arty_2,independent,[getPos target_9,getPos target_10,getPos target_11,getPos target_12],1,0,true] execVM "Scripts\OKS_Spawn\OKS_fnc_ArtySuppression.sqf"; 
		[arty_3,independent,[getPos target_1,getPos target_2,getPos target_3,getPos target_4],1,0,true] execVM "Scripts\OKS_Spawn\OKS_fnc_ArtySuppression.sqf"; 
		[arty_4,independent,[getPos target_5,getPos target_6,getPos target_7,getPos target_8],1,0,true] execVM "Scripts\OKS_Spawn\OKS_fnc_ArtySuppression.sqf"; 
	
		["HQ","side","Missile strike inbound on beach defences. Assault the beach, good luck!"] remoteExec ["OKS_fnc_Chat",0];
	};

	case 5: {

		if(((Alive nest_1) && !isNull (gunner nest_1) || (Alive nest_2) && !isNull (gunner nest_2))) then {

			// Beach strike 2
			[arty_3,independent,[getPos zulu_1,getPos zulu_2],1,0,true] execVM "Scripts\OKS_Spawn\OKS_fnc_ArtySuppression.sqf"; 
			[arty_4,independent,[getPos zulu_3,getPos zulu_4],1,0,true] execVM "Scripts\OKS_Spawn\OKS_fnc_ArtySuppression.sqf"; 
			[arty_2,independent,[getPos zulu_5,getPos zulu_6],1,0,true] execVM "Scripts\OKS_Spawn\OKS_fnc_ArtySuppression.sqf"; 
			[arty_1,independent,[getPos zulu_7,getPos zulu_8],1,0,true] execVM "Scripts\OKS_Spawn\OKS_fnc_ArtySuppression.sqf";

			sleep 10;
			["HQ","side","Additional Missile strike inbound on Point Zulu. Take cover, take cover, take cover!"] remoteExec ["OKS_fnc_Chat",0];
		};
	};

	case 6: {

		// Point Bear Strike
		[arty_3,independent,[getPos bear_1,getPos bear_2,getPos bear_3],1,0,true] execVM "Scripts\OKS_Spawn\OKS_fnc_ArtySuppression.sqf"; 
		[arty_4,independent,[getPos bear_4,getPos bear_5,getPos bear_6],1,0,true] execVM "Scripts\OKS_Spawn\OKS_fnc_ArtySuppression.sqf"; 
		[arty_2,independent,[getPos bear_7,getPos bear_8,getPos bear_9],1,0,true] execVM "Scripts\OKS_Spawn\OKS_fnc_ArtySuppression.sqf"; 
		[arty_1,independent,[getPos bear_10,getPos bear_11,getPos bear_12],1,0,true] execVM "Scripts\OKS_Spawn\OKS_fnc_ArtySuppression.sqf";

		sleep 5; ["HQ","side","Additional Missile strike inbound on Point Bear. Once complete you may approach your next objective!"] remoteExec ["OKS_fnc_Chat",0];
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};

