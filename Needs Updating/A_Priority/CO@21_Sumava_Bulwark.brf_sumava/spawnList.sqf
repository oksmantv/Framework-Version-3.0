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
		// Paratroopers Statics
	};

	case 2: {
		// Trench 1 First Attack
		Defend_1_Complete = false;
		Defend_1_Destroyed = false;

		["hq","side","1-1 be advised, a motorized element is on approach towards Outpost Starostinec. Expect them in 3 minutes, get ready!"] remoteExec ["OKS_Chat",0];
		//sleep 180;

		[[getPos defend_1_spawn_1,getPos defend_1_spawn_2,getPos defend_1_spawn_3,getPos defend_1_spawn_4],3,2,60,"rush",east,1500,"Defend_1_Destroyed"] spawn OKS_Lambs_Wavespawn;
		sleep 30;

		_Groups = [];
		_Group = [[],[["UK3CB_CW_SOV_O_EARLY_UAZ_MG",[1837.96,7720.19,3.8147e-006],55,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]]],[[[2066.65,7782.86,0],[[0,"Move"]]],[[2155.82,7826.51,-0.0312576],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		{_Groups pushBackUnique _X} foreach units _Group; sleep 30;
	
		_Group = [[],[["UK3CB_CW_SOV_O_EARLY_UAZ_SPG9",[1821.3,7707.93,-7.62939e-006],54,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]]],[[[2066.65,7782.86,0],[[0,"Move"]]],[[2145.47,7789.72,-0.540707],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		{_Groups pushBackUnique _X} foreach units _Group; sleep 30;
		
		_Group = [[],[["UK3CB_CW_SOV_O_EARLY_UAZ_MG",[1804.37,7694.52,0],49,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]]],[[[2066.65,7782.86,0],[[0,"Move"]]],[[2135.48,7762.34,-2.75521],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		{_Groups pushBackUnique _X} foreach units _Group; sleep 30;

		_Group = [[],[["UK3CB_CW_SOV_O_EARLY_T80B",[1874.06,7747.85,1.14441e-005],47,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[7,["kshield_unhide",1,"kdeck_unhide",1,"sideskirt_unhide",0,"fbskirt_unhide",0,"ftskirt_unhide",0,"log_unhide",0,"snorkel_unhide",0]]]]],[[[2008.07,7804.93,0],[[0,"Move"]]],[[2051.29,7793.33,3.8147e-006],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		{_Groups pushBackUnique _X} foreach units _Group;
		waitUntil{sleep 5; Defend_1_Destroyed isEqualTo true && {Alive _X || [_X] call ace_common_fnc_isAwake} count _Groups == 0};

		Defend_1_Complete = true;
		publicVariable "Defend_1_Complete";
	};

	case 3: {
		Defend_2_Complete = false;
		Defend_2_Destroyed = false;

		["hq","side","1-1 redeploy south immediately, a large enemy force is heading in from the south. Set up a hasty defence and hold them off! Expect them in 8 minutes, move out asap!"] remoteExec ["OKS_Chat",0];
		//sleep 480;

		[[getPos defend_2_spawn_1,getPos defend_2_spawn_2,getPos defend_2_spawn_3,getPos defend_2_spawn_4,getPos defend_2_spawn_5],3,2,60,"rush",east,1500,"Defend_2_Destroyed"] spawn OKS_Lambs_Wavespawn;
		sleep 180;	

		_Groups = [];
		// Defend 2
		_Group = [[],[["UK3CB_CW_SOV_O_EARLY_BTR60",[2226.24,6948.98,0],61,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[[[2426.14,7214.28,0],[[0,"Move"]]],[[2468.46,7321.17,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		{_Groups pushBackUnique _X} foreach units _Group;

		_Group = [[],[["UK3CB_CW_SOV_O_EARLY_BTR70",[2145.12,6955.13,0],95,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[[[2426.14,7214.28,0],[[0,"Move"]]],[[2494.42,7304.72,3.05176e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		{_Groups pushBackUnique _X} foreach units _Group;

		[FriendlyConvoy_1,FriendlyConvoy_2,FriendlyConvoy_3,west,[4,["UK3CB_CW_US_B_EARLY_M939","UK3CB_CW_US_B_EARLY_M939_Reammo","UK3CB_CW_US_B_EARLY_M939_Fuel","UK3CB_CW_US_B_EARLY_M939_Repair"], 10, 25],[true,6],[], true, true] spawn OKS_Convoy_Spawn;
		["hq","side","Be advised a friendly supply convoy is moving to reinforce the FOB, they will pass through the T-intersection north of your position. Make sure they get through, HQ o	ut!"] remoteExec ["OKS_Chat",0];
	
		waitUntil{sleep 5; Defend_2_Destroyed isEqualTo true && {Alive _X || [_X] call ace_common_fnc_isAwake} count _Groups == 0};
		Defend_2_Complete = true;
		publicVariable "Defend_2_Complete";
	};

	case 4: {
		Defend_3_Complete = false;

		["hq","side","1-1, Good work on the southern flank. We have reports of a large column of vehicles staging to attack Outpost Cerveny. Relocate north of the outpost and set up an ambush. The enemy column is 10 minutes away. Godspeed, HQ out."] remoteExec ["OKS_Chat",0];
		//sleep 600;
		_EnemyConvoy = [];
		[EnemyConvoy_1,EnemyConvoy_2,EnemyConvoy_3,east,[5,["UK3CB_CW_SOV_O_EARLY_BTR40_MG","UK3CB_CW_SOV_O_EARLY_BTR40_MG","UK3CB_CW_SOV_O_EARLY_BTR40"], 5, 10],[true,6],_EnemyConvoy, false, false] spawn OKS_Convoy_Spawn;
		["hq","side","1-1, the soviet column is inbound as we speak, good luck, HQ out."] remoteExec ["OKS_Chat",0];
		waitUntil{sleep 5; {{Alive _X || [_X] call ace_common_fnc_isAwake} count units _X == 0} count _EnemyConvoy == count _EnemyConvoy};
		Defend_3_Complete = true;
		publicVariable "Defend_3_Complete";
		["hq","side","1-1 excellent ambush. No rest for the wicked, an enemy attack is inbound towards Outpost Bohovo. Redeploy quickly and reinforce the squad defending the outpost, HQ out."] remoteExec ["OKS_Chat",0];

	};

	case 5: {
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
