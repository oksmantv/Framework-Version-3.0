/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

if(isServer) then {

	// Static MGs.
	[radar_1, ["UK3CB_ADE_O_PKM_High"], 1500, 2500, 15] spawn OKS_fnc_Radar;
	[[],[["UK3CB_ADE_O_PKM_High",[1648.56,993.769,17.18],0,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_PKM_High",[1684.71,1320.38,17.2023],0,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_PKM_High",[1206.93,1053.84,17.1931],171,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_PKM_High",[939.856,781.668,0],120,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_PKM_High",[1279.55,1537.59,17.1909],295,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_PKM_High",[1162.25,1325.72,17.19],140,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

	[artyTarget_1, "rhs_ammo_3of56", 30, 999, 400] spawn OKS_fnc_RandomArtillery; sleep 5;
	[artyTarget_2, "rhs_ammo_3of56", 40, 999, 300] spawn OKS_fnc_RandomArtillery;

  	_battleRef1 = [
		west_1,
		east_1,
		meet_1,
		west,
		east,
		["UK3CB_GAF_B_BMP1", "UK3CB_GAF_B_T55"],
		["UK3CB_CW_SOV_O_LATE_BMD1", "UK3CB_CW_SOV_O_LATE_BMP1", "UK3CB_CW_SOV_O_LATE_MTLB_BMP", "UK3CB_CW_SOV_O_LATE_T55", "UK3CB_CW_SOV_O_LATE_T72A"],
		east,
		true,
		300,
		-1,
		60,
		2,
		2000
  	] call OKS_fnc_AI_Battle; sleep 60;

  	_battleRef2 = [
		west_2,
		east_2,
		meet_2,
		west,
		east,
		["UK3CB_GAF_B_BMP1", "UK3CB_GAF_B_T55"],
		["UK3CB_CW_SOV_O_LATE_BMD1", "UK3CB_CW_SOV_O_LATE_BMP1", "UK3CB_CW_SOV_O_LATE_MTLB_BMP", "UK3CB_CW_SOV_O_LATE_T55", "UK3CB_CW_SOV_O_LATE_T72A"],
		east,
		true,
		300,
		-1,
		60,
		2,
		2000
  	] call OKS_fnc_AI_Battle; sleep 60;

	_battleRef3 = [
		west_3,
		east_3,
		meet_3,
		west,
		east,
		["UK3CB_GAF_B_BMP1", "UK3CB_GAF_B_T55"],
		["UK3CB_CW_SOV_O_LATE_BMD1", "UK3CB_CW_SOV_O_LATE_BMP1",  "UK3CB_CW_SOV_O_LATE_MTLB_BMP", "UK3CB_CW_SOV_O_LATE_T55", "UK3CB_CW_SOV_O_LATE_T72A"],
		east,
		true,
		300,
		-1,
		60,
		2,
		2000
  	] call OKS_fnc_AI_Battle;

	waitUntil { sleep 10; !isNil "Complete_Battle"};
	waitUntil { sleep 1; Complete_Battle isEqualTo True};
	_battleRef1 setVariable ["OKS_AIBattle_On", false];
	_battleRef2 setVariable ["OKS_AIBattle_On", false];
	_battleRef3 setVariable ["OKS_AIBattle_On", false];
};