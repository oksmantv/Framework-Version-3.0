/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/

// Hide Phase 2 Markers

if(isServer) then {
	Attack1Complete = false;
	publicVariable "Attack1Complete";
	Attack2Complete = false;
	publicVariable "Attack2Complete";
	Attack3Complete = false;
	publicVariable "Attack3Complete";
	Attack1Time = 0;
	publicVariable "Attack1Time";
	Attack2Time = 0;
	publicVariable "Attack2Time";
	Attack3Time = 0;
	publicVariable "Attack3Time";	

	
	{_X setMarkerAlpha 0} foreach [
		"marker_51", 
		"marker_94", 
		"marker_97", 
		"marker_92", 
		"marker_95", 
		"marker_98", 
		"marker_93", 
		"marker_96", 
		"marker_99", 
		"FLNSEG_WEST_10_INNER_1", 
		"FLNSEG_WEST_10_OUTER_1", 
		"FLNSEG_WEST_11_INNER_1", 
		"FLNSEG_WEST_11_OUTER_1", 
		"FLNSEG_WEST_1_INNER_1", 
		"FLNSEG_WEST_1_OUTER_1", 
		"FLNSEG_WEST_3_INNER_1", 
		"FLNSEG_WEST_3_OUTER_1", 
		"FLNSEG_WEST_4_INNER_1", 
		"FLNSEG_WEST_4_OUTER_1", 
		"FLNSEG_WEST_5_INNER_1", 
		"FLNSEG_WEST_5_OUTER_1", 
		"FLNSEG_WEST_7_INNER_1", 
		"FLNSEG_WEST_7_OUTER_1", 
		"FLNSEG_WEST_8_INNER_1", 
		"FLNSEG_WEST_8_OUTER_1", 
		"FLNSEG_WEST_9_INNER_1", 
		"FLNSEG_WEST_9_OUTER_1",
		"marker_100", 
		"marker_101", 
		"marker_102"
	];
	
	[true, ["MainTask"], ["The front line has collapsed in the south-east, artillery strikes have caused catastrophic casualties and any surviving elements are retreating disorderly to the north.<br/><br/>Your company has been ordered to plug the gap and stabilize the front at the bridge of Bojanovice. 2nd Platoon will hold the currently secured crossing near Karage and 1st Platoon will advance to the bridge and lock it down until relieved.", "Operation Violent Agreement", "cookiemarker2"], objNull, 1, 3, true, "meet"] call BIS_fnc_taskCreate;
	[true, ["Task1","MainTask"], ["The main bridge crossing the river near Bojanovice must be secured to stabilize the front. If allowed, the Soviets will advance their echelons through, and secure the other side of the bridge. They will hold the bridge until more Soviet reserves can be brought up to advance further north.", "Secure Main Bridge", "cookiemarker2"], [8897.95,7647.21,0], 1, 3, true, "run"] call BIS_fnc_taskCreate;

	[] spawn {
		sleep 20;
		[artillery_1,"rhs_ammo_3of56",6,15,200] spawn OKS_fnc_RandomArtillery; sleep 30;
		[artillery_2,"rhs_ammo_3of56",6,15,200] spawn OKS_fnc_RandomArtillery; sleep 30;
		[artillery_3,"rhs_ammo_3of56",6,15,200] spawn OKS_fnc_RandomArtillery; sleep 30;
		[artillery_4,"rhs_ammo_3of56",6,15,200] spawn OKS_fnc_RandomArtillery; sleep 30;
		[artillery_5,"rhs_ammo_3of56",6,15,200] spawn OKS_fnc_RandomArtillery; sleep 30;
		[artillery_6,"rhs_ammo_3of56",6,15,200] spawn OKS_fnc_RandomArtillery;
	};

	[] spawn {
		sleep 20;
		null = [west,Arty_1,getpos ArtyTarget_1,7,300,30,false] spawn OKS_fnc_ArtyFire; sleep 5;
		null = [west,Arty_2,getpos ArtyTarget_2,7,300,30,false] spawn OKS_fnc_ArtyFire; sleep 5;
		null = [west,Arty_3,getpos ArtyTarget_3,7,300,30,false] spawn OKS_fnc_ArtyFire; sleep 5;
		null = [west,Arty_4,getpos ArtyTarget_4,7,300,30,false] spawn OKS_fnc_ArtyFire; sleep 5;
	};

	[] spawn {
		sleep 30;
		[getPos jetspawn_1, jetstrike_1, getPos jetexit_1, "RHS_Su25SM_vvsc", east, 250] spawn OKS_fnc_AirStrike; sleep 180;
		[getPos jetspawn_2, jetstrike_2, getPos jetexit_2, "RHS_Su25SM_vvsc", east, 250] spawn OKS_fnc_AirStrike; sleep 180;
		[getPos jetspawn_3, jetstrike_3, getPos jetexit_3, "RHS_Su25SM_vvsc", east, 250] spawn OKS_fnc_AirStrike; sleep 180;
		[getPos jetspawn_4, jetstrike_4, getPos jetexit_4, "RHS_Su25SM_vvsc", east, 250] spawn OKS_fnc_AirStrike;
	};

	// Friendly Squad & Forces
	Global_FriendlyForce = [];
	[[],[["UK3CB_GAF_B_ZsuTank",[10345.2,8994.41,0],210,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[351,false]]]],[],west] call GW_Common_fnc_spawnGroup;
	_FriendlyGroup = [
		[[[10219.1,8369.9,0],191,"Up",[[301,0]],"lr"],[[10222.5,8367.61,0],184,"Up",[[301,0]],"ar"],[[10230.9,8375.29,0.000180721],173,"Middle",[[301,0]],"ar"],[[10232.1,8377.25,0.00028038],141,"Up",[[301,0]],"mat"],[[10228,8370.74,4.00543e-05],141,"Up",[[301,0]],"mat"],[[10187.3,8378.6,4.76837e-07],136,"Middle",[[301,0]],"ar"],[[10180.4,8379.26,0],133,"Middle",[[301,0]],"mat"],[[10210.4,8390.52,1.39972],120,"Up",[[301,0]],"mat"],[[10213.1,8395.12,0.965437],136,"Down",[[301,0]],"mat"],[[10259.6,8454.95,2.18893],171,"Up",[[301,0]],"mat"],[[10255.2,8448.32,0],165,"Middle",[[301,0]],"mat"],[[10246.5,8445.09,0],169,"Middle",[[301,0]],"lr"],[[10222.6,8433.65,1.25435],178,"Middle",[[301,0]],"mat"],[[10225.8,8435.42,1.69015],178,"Middle",[[301,0]],"mat"],[[10227.7,8437.14,1.49928],156,"Middle",[[301,0]],"ar"]],[],[],west] call GW_Common_fnc_spawnGroup;
	_FriendlyGroup2 = [[
			[[10234.3,8536.11,2.56339],152,"Up",[[301,0]],"mat"],
			[[10233.1,8535.44,2.55746],156,"Up",[[301,0]],"ar"],
			[[10205.3,8538.69,1.80762],204,"Up",[[301,0]],"mat"],
			[[10204,8538.81,1.80496],156,"Up",[[301,0]],"ar"],
			[[10197.2,8544.97,1.85273],200,"Up",[[301,0]],"mat"],
			[[10195.3,8544.35,1.84263],204,"Up",[[301,0]],"ar"],
			[[10216.8,8546.97,2.34503],182,"Up",[[301,0]],"mat"],
			[[10215.6,8549.8,2.64768],286,"Up",[[301,0]],"ar"],
			[[10237.8,8567.18,2.33737],67,"Up",[[301,0]],"ar"],
			[[10207.4,8557.3,0.0287991],256,"Middle",[[301,0]],"ar"],
			[[10223.7,8556.86,2.16962],256,"Middle",[[301,0]],"ar"],
			[[10207.9,8555.08,0],204,"Middle",[[301,0]],"ar"]
		],
		[
			["RHS_M2StaticMG_D",[10224.9,8558.01,2.2581],305,[["gunner",-1,[0]]],[[351,false]]],
			["RHS_M2StaticMG_D",[10208.1,8558.96,0.1],272,[["gunner",-1,[0]]],[[351,false]]]
		],
		[],
		west] call GW_Common_fnc_spawnGroup;
	_FriendlyGroup3 = [[],[["rhsgref_cdf_b_Igla_AA_pod",[10234.4,8549.93,0],175,[["gunner",-1,[0]]],[[351,false]]],["rhsgref_cdf_b_Igla_AA_pod",[10220,8484.45,9.53674e-07],193,[["gunner",-1,[0]]],[[351,false]]]],[],west] call GW_Common_fnc_spawnGroup;
	_FriendlyGroup4 = [[[[10180.8,8378.96,0],259,"Middle",[[301,0]],"mmg"],[[10187.1,8379.05,0],171,"Middle",[[301,0]],"mmg"]],[["UK3CB_ARD_B_DSHkM_Mini_TriPod",[10228.4,8374.75,2.38419e-07],158,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ARD_B_DSHkM_Mini_TriPod",[10248.3,8446.33,0],183,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ARD_B_DSHkM_Mini_TriPod",[10183.5,8377.96,0],143,[["gunner",-1,[0]]],[[351,false]]]],[],west] call GW_Common_fnc_spawnGroup;
	sleep 60;
	{
		_Group = _X;
		{
			Global_FriendlyForce pushbackUnique _X;
		} foreach units _Group;
	} foreach [_FriendlyGroup,_FriendlyGroup2, _FriendlyGroup3,_FriendlyGroup4];
	waitUntil 
	{
		sleep 15; 
		{
			Alive _X || [_X] call ace_common_fnc_isAwake
		} count Global_FriendlyForce <= (count Global_FriendlyForce * 0.75);
	};
	["2ND PLATOON","SIDE","1st Platoon be advised, we are in contact and have taken casualties. Request assistance! 2nd Platoon out"] spawn OKS_fnc_ChatGlobal;
	waitUntil 
	{
		sleep 15; 
		{
			Alive _X || [_X] call ace_common_fnc_isAwake
		} count Global_FriendlyForce <= (count Global_FriendlyForce * 0.5);
	};
	["2ND PLATOON","SIDE","1st Platoon be advised, we are in heavy contact and have taken further casualties. Request assistance! 2nd Platoon out"] spawn OKS_fnc_ChatGlobal;

	waitUntil 
	{
		sleep 15; 
		{
			Alive _X || [_X] call ace_common_fnc_isAwake
		} count Global_FriendlyForce <= (count Global_FriendlyForce * 0.25);
	};
	["2ND PLATOON","SIDE","1st Platoon be advised, we are about to be overrun! Request assistance! 2nd Platoon out"] spawn OKS_fnc_ChatGlobal;

		waitUntil 
	{
		sleep 15; 
		{
			Alive _X || [_X] call ace_common_fnc_isAwake
		} count Global_FriendlyForce <= (count Global_FriendlyForce * 0.1);
	};
	["2ND PLATOON","SIDE","1st Platoon be advised, only a handful soldiers remain, we will surrender. Thanks for nothing 1st Platoon."] spawn OKS_fnc_ChatGlobal;
	sleep 3;
	["Task2_1","FAILED"] call BIS_fnc_taskSetState;
};