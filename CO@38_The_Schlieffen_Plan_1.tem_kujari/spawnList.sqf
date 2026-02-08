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

if !(isServer) exitWith {false};

private _Vehicles = ["UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_MTLB_BMP"];

params [
	"_case"
];

systemChat format ["SpawnList started with case %1", _case];

switch (_case) do {

	case 1: {

		[Trigger_1,false,[0,8,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;	
		[Trigger_2,false,[0,25,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

		/// AAA
		[[],[
			["UK3CB_TKA_O_MTLB_ZU23",[3068.41,12435.8,0],178,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]],["cargo",-1,[0,0]]],[[6,["TKA",1]]]],
			["UK3CB_TKA_O_MTLB_ZU23",[4608.94,14319.6,0],148,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]],["cargo",-1,[0,0]]],[[6,["TKA",1]]]],
			["UK3CB_TKA_O_MTLB_ZU23",[3540.99,11609.1,0],148,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]],["cargo",-1,[0,0]]],[[6,["TKA",1]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		/// Trench 2
		[[[[4494.97,10920,1.05025],104,"Up",[]],[[4502.31,10929.2,0.212093],133,"Middle",[]],[[4497.38,10934.9,1.34027],161,"Up",[]],[[4507.91,10936.4,1.76011],144,"Up",[]],[[4527.33,10939.4,1.25203],148,"Up",[]],[[4520.13,10938.1,0.472309],104,"Middle",[]]],[[selectRandom _Vehicles,[4532.6,10945.4,2.20836],148,[["driver",-1,[0]],["gunner",-1,[0]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4468.91,10914.1,2.03659],104,"Up",[]],[[4463.78,10908.4,2.02252],104,"Middle",[]],[[4481.91,10923.1,1.66833],171,"Up",[]],[[4489,10948.5,2.7402],104,"Up",[]],[[4484.99,10949.2,1.52634],104,"Middle",[]],[[4483.57,10942.7,2.15027],73,"Middle",[]],[[4480.22,10947,1.35987],68,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4444.32,10910.8,0.212093],104,"Middle",[]],[[4432.09,10905.5,1.00558],104,"Up",[]],[[4438.14,10905.9,1.13179],104,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4449.04,10862.7,0.948257],104,"Up",[]],[[4465.29,10882,0.799637],140,"Up",[]],[[4459.88,10883.3,1.95192],132,"Up",[]],[[4464.69,10893.4,0.945795],104,"Up",[]]],[[selectRandom _Vehicles,[4453.11,10869.3,2],148,[["driver",-1,[0]],["gunner",-1,[0]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4412.8,10847.3,1.3126],104,"Middle",[]],[[4416.52,10843.2,0.941444],104,"Up",[]],[[4424.15,10852.6,1.74124],104,"Up",[]],[[4435.7,10862.5,0.505911],104,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4415.86,10863.1,1.57131],142,"Middle",[]],[[4410.09,10873.3,2.52979],104,"Up",[]],[[4406.22,10865.5,1.55271],22,"Up",[]],[[4401.9,10868.1,1.6223],36,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4387.82,10828,2.35569],10,"Up",[]],[[4380.69,10831.9,3.81507],104,"Up",[]],[[4390.68,10838.8,1.02529],104,"Up",[]],[[4395.71,10846.1,0.78241],237,"Up",[]],[[4402.8,10846.8,1.97268],104,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4387.05,10805.9,1.25293],104,"Up",[]],[[4380.31,10805.8,1.09281],104,"Up",[]],[[4386.35,10816.4,1.41147],104,"Up",[]],[[4363.82,10835.6,1.46464],104,"Middle",[]],[[4354.41,10833.6,3.25274],72,"Middle",[]],[[4358.9,10827.4,1.20666],104,"Up",[]],[[4353.91,10828.5,2.8302],104,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// AA GUARD
		_AA1 = [getPosATL aa_1,east,50,600,2000,120] call OKS_fnc_IR_AA;
		_AA2 = [getPosATL aa_2,east,50,600,2000,120] call OKS_fnc_IR_AA;
		_AA3 = [getPosATL aa_3,east,50,600,2000,120] call OKS_fnc_IR_AA;
		_AA4 = [getPosATL aa_4,east,50,600,2000,120] call OKS_fnc_IR_AA;

		[
			getPos scout_1,
			getPos scoutTarget_1,
			east,
			"UK3CB_TKA_O_Bell412_Armed_dynamicLoadout",
			["LOITER",false],		
			[500,4],
			[250,500],
			["","","","","","",""],
			false
		] spawn OKS_fnc_AirScout;

		waitUntil {sleep 20; {Alive _X || [_X] call ace_common_fnc_isAwake} count [_AA1,_AA2,_AA3,_AA4] == 0};
		AA_COMPLETE = true;
		publicVariable "AA_COMPLETE";

	};

	case 2: {

		// Artillery Base 
		[[],[["UK3CB_TKA_O_BMP2",[3778.61,11282.6,3.8147e-006],116,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1]]]],["UK3CB_TKA_O_BMP2",[3665.7,11432.3,1.90735e-006],217,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1]]]],[selectRandom _Vehicles,[3706.7,11326.8,-0.00200081],146,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// SP1
		[[[[3790.39,11249.3,-7.62939e-005],296,"Up",[]],[[3800.48,11261.3,-7.62939e-005],148,"Up",[]],[[3789.28,11270.5,-7.62939e-005],194,"Up",[]],[[3779.41,11246.2,-7.43866e-005],24,"Up",[]],[[3789.65,11255.5,0.904131],45,"Up",[]],[[3796.15,11261.6,0.482428],232,"Up",[]],[[3783.03,11269.1,0.568459],153,"Up",[]],[[3779.49,11267.8,0.399529],213,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// SP2
		//[[[[3688.12,11343.3,-7.62939e-005],359,"Up",[]],[[3700.66,11354.2,-7.62939e-005],297,"Up",[]],[[3708.2,11363.6,3.47406],236,"Up",[]],[[3703.56,11348.1,-7.62939e-005],340,"Up",[]],[[3707.39,11344.9,1.15207],332,"Up",[]],[[3716.63,11351.6,0.382124],261,"Up",[]],[[3710.05,11360.2,1.07529],252,"Up",[]],[[3703.84,11364.8,0.807055],147,"Up",[]],[[3699.34,11361.9,0.452099],189,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Arty Sentry
		[[[[3655.89,11366.6,-7.43866e-005],253,"Up",[]],[[3666.09,11374.1,-7.62939e-005],109,"Up",[]],[[3686.24,11393,-7.62939e-005],178,"Up",[]],[[3698.29,11408.7,-7.62939e-005],259,"Up",[]],[[3670.39,11412.6,0],75,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[Trigger_3,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

		// Secondary Mortar Objective.
		[[[[3146.29,10798.3,0.40062],54,"Up",[]],[[3136.04,10798.7,-1.90735e-06],267,"Up",[]],[[3147.73,10792.6,-2.95639e-05],220,"Middle",[]],[[3160.52,10798,0],78,"Middle",[]],[[3168.7,10798.3,2.86102e-06],38,"Middle",[]],[[3191.36,10795.2,-1.52588e-05],80,"Up",[]],[[3189.73,10798,-2.86102e-06],51,"Up",[]],[[3188.64,10800.5,1.04904e-05],37,"Up",[]],[[3186.84,10793.6,9.53674e-07],54,"Middle",[]],[[3185.03,10782.1,-6.67572e-06],360,"Middle",[]],[[3185.13,10777.3,1.23978e-05],72,"Middle",[]]],[["UK3CB_ADE_O_PKM_High",[3143.11,10798.9,0],57,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_BMP1",[3175.2,10773.5,0],79,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3185.11,10769.4,0],54,"Up",[]],[[3178.68,10761.4,1.33514e-05],30,"Middle",[]],[[3185.44,10753.2,-9.53674e-06],52,"Middle",[]],[[3185.56,10742.5,-1.90735e-06],25,"Up",[]],[[3188.4,10726.8,0.262277],62,"Up",[]],[[3189.71,10723.9,0.323528],118,"Up",[]],[[3185.1,10720.6,0.174848],213,"Up",[]],[[3183.72,10725.5,0.123843],159,"Middle",[]],[[3171.08,10726.4,-8.58307e-06],77,"Middle",[]],[[3159.87,10725.4,2.86102e-05],88,"Middle",[]],[[3151.23,10719.9,-6.67572e-06],175,"Up",[]],[[3152.25,10728.1,1.08174],31,"Up",[]],[[3182.17,10757.2,0],30,"Middle",[]]],[["UK3CB_ADE_O_PKM_High",[3185.73,10751.5,-9.53674e-07],57,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_BMP1",[3176.39,10748,0],60,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3143.12,10732.6,0.903166],360,"Up",[]],[[3127.96,10727.2,0.0639305],129,"Up",[]],[[3133.03,10723.6,0.0149059],107,"Middle",[]],[[3122.71,10735.4,0.00476074],157,"Middle",[]],[[3126.02,10746.4,1.14441e-05],161,"Middle",[]],[[3134.65,10740.8,0.674485],62,"Up",[]]],[["UK3CB_ADE_O_PKM_nest_des",[3130.57,10745.8,0],49,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_TKA_O_BMP1",[3013.99,10818.1,0.54433],102,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[2974.44,10630.7,0.535905],63,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		_Vehicles = [
			"UK3CB_TKA_O_BMP1", 
			"UK3CB_TKA_O_BMP1", 
			"UK3CB_TKA_O_BMP1", 
			"UK3CB_TKA_O_BMP2", 
			"UK3CB_TKA_O_BMP1", 
			"UK3CB_TKA_O_MTLB_BMP",
			"UK3CB_TKA_O_MTLB_BMP",
			"UK3CB_TKA_O_MTLB_BMP"
		];
		[Spawn_8, Spawn_8, NEKY_Hunt_Trigger_1, 5,900,east,_Vehicles,90] spawn OKS_fnc_Huntbase;
		[Spawn_9, Spawn_9, NEKY_Hunt_Trigger_1, 5,900,east,_Vehicles,90] spawn OKS_fnc_Huntbase;
		[Spawn_10, Spawn_10, NEKY_Hunt_Trigger_1, 5,900,east,_Vehicles,90] spawn OKS_fnc_Huntbase;
		[Spawn_11, Spawn_11, NEKY_Hunt_Trigger_1, 5,900,east,_Vehicles,90] spawn OKS_fnc_Huntbase;

		[mortar_1, east, "precise", "light", ["auto", 20],250,1000,20] spawn OKS_fnc_Mortars;
		[mortar_2, east, "precise", "light", ["auto", 20],250,1000,20] spawn OKS_fnc_Mortars;

			[
				getPos scout_2,
				getPos scoutTarget_2,
				east,
				"UK3CB_TKA_O_Bell412_Armed_dynamicLoadout",
				["LOITER",false],		
				[500,4],
				[250,500],
				["","","","","","",""],
				true
			] spawn OKS_fnc_AirScout;
	};

	case 3: {

		//[[],[[selectRandom _Vehicles,[3130.21,11902.3,0],343,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[[[3033.42,12337.8,0],[[0,"Move"],[1,"SAFE"]]],[[2786.96,11871.8,0],[[0,"Move"]]],[[3110.09,11887,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[],[[selectRandom _Vehicles,[3259.06,12029.4,0],343,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[[[3819.75,12794.7,-1.90735e-006],[[0,"Move"],[1,"SAFE"]]],[[3266.7,12336.3,0],[[0,"Move"]]],[[3259.06,12029.4,0.5],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[],[[selectRandom _Vehicles,[3287.92,12379.9,0],343,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[[[3289.82,12860.7,0],[[0,"Move"],[1,"SAFE"]]],[[3098.78,11979,-9.53674e-007],[[0,"Move"]]],[[3098.39,12545.6,0],[[0,"Move"]]],[[3320.16,12928.4,0],[[0,"Move"]]],[[3248.9,12212.9,0],[[0,"Move"]]],[[3290.5,12371.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[],[
			[selectRandom _Vehicles,[3266.73,11991.4,1.90735e-006],168,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]],
			[selectRandom _Vehicles,[3330.51,11937.4,0.00147438],189,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]],
			[selectRandom _Vehicles,[3154.55,11839.4,0.00158882],147,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		/// Trench 3
		[[[[3274.91,11848,1.63451],159,"Up",[]],[[3281.38,11856,2.70949],159,"Up",[]],[[3289.05,11859,0.912874],159,"Up",[]],[[3277.87,11857.5,2.6307],256,"Up",[]],[[3264.28,11853.5,1.06265],176,"Up",[]],[[3260.7,11857.8,1.26522],130,"Middle",[]],[[3251.9,11868.1,1.72122],63,"Middle",[]],[[3245.88,11857.5,0.995718],159,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3235.19,11851.1,1.18825],159,"Up",[]],[[3225.93,11850.8,1.17159],65,"Middle",[]],[[3220.37,11846.5,1.84702],51,"Middle",[]],[[3220.14,11830.6,1.58044],116,"Up",[]],[[3216.13,11827,1.12362],137,"Up",[]],[[3210.03,11827.4,0.771818],73,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3250.38,11876.6,1.03995],159,"Up",[]],[[3247.68,11882.8,0.77844],159,"Up",[]],[[3225.27,11863.8,1.23169],155,"Up",[]],[[3229.19,11864.3,1.74895],159,"Middle",[]],[[3230.25,11878,0.141035],207,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3228.49,11898.7,0.535175],175,"Middle",[]],[[3241.36,11901.8,0.0161819],260,"Middle",[]],[[3241.6,11910.6,0.0195942],212,"Middle",[]],[[3233.29,11908.3,0.0195866],159,"Middle",[]],[[3237.61,11903.8,0.0195942],343,"Up",[]],[[3224.09,11909,1.40776],147,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Gray Building 2 Story
		[[[[3251.63,11928,6.8268],184,"Middle",[]],[[3254.68,11934.9,3.62946],345,"Middle",[]],[[3252.42,11931.9,0.533409],140,"Middle",[]],[[3248.59,11932.7,0.97506],174,"Middle",[]],[[3261.09,11948.5,5.34058e-005],244,"Middle",[]],[[3259.37,11966.9,0.302822],261,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[3245.07,11955.8,0],300,EAST] spawn OKS_fnc_Populate_StaticWeapons;

		[
			getPos scout_5,
			getPos scoutTarget_5,
			east,
			"UK3CB_TKA_O_Bell412_Armed_dynamicLoadout",
			["LOITER",false],		
			[500,4],
			[250,500],
			["","","","","","",""],
			true
		] spawn OKS_fnc_AirScout;
	};

	case 4: {

		["HQ","side","1-1 Be advised, the Takistani Counter-attack is building up, expect them to hit you in 5 minutes."] remoteExec ["OKS_fnc_Chat",0];
		sleep 300;

		["HQ","side","Be advised, incoming Takistani Counter-attack from the west. Hold the line!"] remoteExec ["OKS_fnc_Chat",0];
		sleep 5;
		[true, ["Defend_1","Task_1"], ["The Takistanis are sending in a counter-attack! Repel them!", "Defend Trench", "Defend"], [4453.69,10876,0],"ASSIGNED",-1,false,"defend"];
		sleep 10;
		/// Trench 1 Counter-Attack
		_TrenchCounterAttack = [];
		{[getPos _X,"rush",5,east,1000,_TrenchCounterAttack] spawn OKS_fnc_Lambs_SpawnGroup} foreach [rush_1,rush_2,rush_3,rush_4,rush_5];

		_Group1 = [[],[[selectRandom _Vehicles,[3898.14,11211.6,6.67572e-005],118,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[[[4352.02,10968.7,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		_Group2 = [[],[[selectRandom _Vehicles,[4332.58,11433.7,0],194,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[[[4390.04,11186.6,13.8878],[[0,"Move"]]],[[4464.83,11040,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;

		waitUntil { sleep 1; {Alive _X || [_X] call ace_common_fnc_isAwake} count _TrenchCounterAttack == 0 && {Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group1 == 0 && {Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group2 == 0};
		["Defend_1","SUCCCEEDED"] call BIS_fnc_taskSetState;
	};

	case 5: {
		// Secondary AA Objective
		[[[[2430.43,10823.5,1.90735e-06],0,[]],[[2435.43,10818.5,1.90735e-06],0,[]],[[2425.43,10818.5,0],0,[]],[[2440.43,10813.5,0],0,[]]],[],[[[2478.4,10692,1.90735e-06],[[0,"Move"]]],[[2424.33,10663.4,-6.86646e-05],[[0,"Move"]]],[[2357.67,10817.6,-5.14984e-05],[[0,"Move"]]],[[2417.62,10825.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3055.88,10761.6,0.203422],0,[]],[[3060.88,10756.6,0],0,[]],[[3050.88,10756.6,0],0,[]],[[3065.88,10751.6,0],0,[]]],[],[[[3103.85,10630.1,5.08235],[[0,"Move"]]],[[3049.78,10601.5,0.0745859],[[0,"Move"]]],[[2983.12,10755.8,4.29034],[[0,"Move"]]],[[3043.07,10763.2,0.735966],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2335.64,10796.6,0],0,[]],[[2340.64,10791.6,0],0,[]],[[2330.64,10791.6,0.679602],0,[]],[[2345.64,10786.6,0.191954],0,[]]],[],[[[2389.53,10653.8,4.86513],[[0,"Move"]]],[[2310.68,10655,0.604937],[[0,"Move"]]],[[2270.82,10775,0.242016],[[0,"Move"]]],[[2322.83,10798.2,1.28541],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3194.98,10982.1,0],47,[]],[[3194.77,10975,0],47,[]],[[3187.91,10982.3,0],47,[]],[[3194.56,10968,0],47,[]]],[],[[[3132.18,10857,4.87893],[[0,"Move"]]],[[3074.27,10876.7,0],[[0,"Move"]]],[[3140.8,11031,4.08692],[[0,"Move"]]],[[3187.34,10992.5,0.532545],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3476.49,10725.4,9.53674e-07],47,[]],[[3476.28,10718.3,0],47,[]],[[3469.42,10725.6,0],47,[]],[[3476.07,10711.3,9.53674e-07],47,[]]],[],[[[3413.68,10600.3,4.87893],[[0,"Move"]]],[[3355.78,10620,9.53674e-07],[[0,"Move"]]],[[3422.31,10774.3,4.08692],[[0,"Move"]]],[[3468.85,10735.8,0.532545],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Static
		[[[[2401.71,10689.9,2.95131],59,"Up",[]],[[2418.73,10708.6,3.604],74,"Up",[]],[[2417.86,10711.6,3.82078],74,"Up",[]],[[2407.08,10713.1,3.3723],3,"Up",[]],[[2430.65,10732.8,3.57311],73,"Up",[]],[[2427.17,10730.8,3.3337],124,"Up",[]],[[2431.49,10741.8,3.37927],73,"Up",[]],[[2431.48,10738.7,3.30081],73,"Up",[]]],[["UK3CB_TKA_O_BMP1",[2416.54,10721.5,0.00551605],91,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2343.71,10742.1,0],50,"Up",[]],[[2351.55,10761.3,0.00704575],157,"Middle",[]],[[2363.36,10765.3,0.00704575],214,"Up",[]],[[2390.5,10738.1,0.00704575],192,"Up",[]],[[2373.12,10750.7,0.00704575],164,"Up",[]],[[2373.53,10739.7,0.127569],184,"Middle",[]],[[2353.65,10690.6,1.52588e-05],238,"Up",[]],[[2340.45,10690.4,2.93637],51,"Up",[]],[[2341.68,10699.1,3.41553],58,"Up",[]],[[2342.03,10710.9,0.00704575],142,"Up",[]]],[["UK3CB_TKA_O_BMP1",[2379.19,10774,0.00661087],29,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;	

		[
			getPos scout_3,
			getPos scoutTarget_3,
			east,
			"rhs_pchela1t_vvs",
			["LOITER",false],		
			[500,4],
			[250,500],
			["","","","","","",""],
			true
		] spawn OKS_fnc_AirScout;

	};

	case 6: {

		// Radio Tower Objective 
		[[],[["UK3CB_TKA_O_BMP1",[5482.93,14135.9,-8.58307e-06],193,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[5390.45,14199.9,0],227,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[5373.47,14222.1,-0.000663757],227,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP2",[5497.89,14209.9,-0.0100489],193,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["TKA",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		[[[[5473.98,14202.3,2.28882e-05],133,"Up",[]],[[5450.53,14207.8,2.09808e-05],112,"Up",[]],[[5463.85,14219.4,2.09808e-05],7,"Up",[]],[[5477.27,14215.9,2.28882e-05],14,"Up",[]],[[5470.12,14234.2,2.09808e-05],174,"Up",[]],[[5460.06,14227.8,2.28882e-05],110,"Up",[]],[[5488.2,14244,0],184,"Middle",[]],[[5461.3,14220.5,2.73542],124,"Middle",[]],[[5474.81,14217.1,2.71301],50,"Middle",[]],[[5478.45,14236.3,2.64901],128,"Middle",[]],[[5462.84,14238.2,2.56274],113,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[
			getPos scout_4,
			getPos scoutTarget_4,
			east,
			"rhs_pchela1t_vvs",
			["LOITER",false],		
			[500,4],
			[250,500],
			["","","","","","",""],
			true
		] spawn OKS_fnc_AirScout;

	};

	case 7: {
		// Radio Tower Counter-Attack.
		[mech_4,NEKY_Hunt_Trigger_4,"UK3CB_TKA_O_BMP1",8,east,1500] spawn OKS_fnc_Mechanized_Spawn;
		[mech_5,NEKY_Hunt_Trigger_4,"UK3CB_TKA_O_BMP1",8,east,1500] spawn OKS_fnc_Mechanized_Spawn;

		{
			[getPos _X,"rush",5,east,1500,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [rush_6,rush_7,rush_8];
	};

	case 8: {

		// Headquarters Objective
		[Group Civilian_1,[8066.11,7552.96,0],west,false,nil,true] spawn OKS_fnc_Evacuate_HVT;

		[[[[1927.06,13942.4,5.42447],175,"Up",[]],[[1930.19,13944.5,5.3631],140,"Up",[]],[[1900.04,14011.7,5.44537],97,"Up",[]],[[1896.24,14009.9,5.32162],131,"Up",[]],[[1897.01,14012.6,5.3223],0,"Up",[]],[[1846.96,13981.2,5.37953],0,"Up",[]],[[1848.52,13977.7,5.17748],0,"Up",[]],[[1845.49,13975.9,5.22001],245,"Up",[]]],[["UK3CB_TKA_O_BRDM2",[1767.43,13905.2,-1.33514e-05],139,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]],["UK3CB_TKA_O_BRDM2",[2211.21,14259.5,0],197,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]],["UK3CB_TKA_O_Hilux_Spg9",[1968.14,13981.2,0],174,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],["UK3CB_TKA_O_BMP1",[1937.88,13946,8.01086e-05],142,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[1880.55,14013.2,1.90735e-06],136,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[1912.91,14002.7,0],233,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_TKA_O_BMP1",[1838.86,13951.3,7.62939e-06],57,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1907.44,13956.4,0.87303],321,"Auto",[]],[[1910.73,13958.6,0.844501],302,"Middle",[]],[[1912.34,13959.6,0.84285],33,"Middle",[]],[[1916.9,13963.4,0.830814],301,"Auto",[]],[[1913.69,13967.4,3.92399],239,"Auto",[]],[[1911.53,13961.4,4.0053],46,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1900.51,13964.2,0.701349],27,"Auto",[]],[[1898.84,13958.5,0.812059],319,"Auto",[]],[[1900.39,13957,0.849461],61,"Auto",[]],[[1905.91,13963.5,0.735306],52,"Auto",[]],[[1905.96,13961.8,3.95709],149,"Auto",[]],[[1904.61,13958.4,4.35167],299,"Auto",[]],[[1902.02,13962.3,3.90945],34,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1875.87,13965.8,3.62238],264,"Auto",[]],[[1879.25,13958.7,3.33248],264,"Auto",[]],[[1882.29,13956.4,3.2967],264,"Auto",[]],[[1891.57,13976.2,0.467897],222,"Auto",[]],[[1887.83,13972.7,0.652088],105,"Auto",[]],[[1899.91,13985.3,0.342178],70,"Auto",[]],[[1894.37,13963.7,0.713545],87,"Auto",[]],[[1891.61,13967.1,0.674517],99,"Auto",[]],[[1899.3,13976.5,0.780405],130,"Auto",[]],[[1897.72,13966.4,4.16945],224,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[Trigger_4,false,[0,0,false,false],east,0,3,1,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

		[[[[1827.1,13905.7,1.90735e-06],0,[]],[[1832.1,13903.7,0],0,[]]],[],[[[1888.06,13909.8,-1.14441e-05],[[0,"Move"]]],[[1873.69,13946.1,-1.14441e-05],[[0,"Move"]]],[[1820.21,13912.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1826.68,13981.5,0],0,[]],[[1831.68,13979.5,0],0,[]]],[],[[[1879.41,13999,1.14441e-05],[[0,"Move"]]],[[1853.8,14026.7,0],[[0,"Move"]]],[[1819.79,13988.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1903.89,14022.9,1.90735e-06],90,[]],[[1901.88,14017.9,1.90735e-06],90,[]]],[],[[[1881.05,14000.8,0],[[0,"Move"]]],[[1930.77,14005.2,1.90735e-06],[[0,"Move"]]],[[1911.1,14029.8,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1949.35,13976.7,0],282,[]],[[1952.31,13981.2,0],282,[]]],[],[[[1949.4,14017.4,0],[[0,"Move"]]],[[1919.75,13972.6,1.90735e-06],[[0,"Move"]]],[[1949.49,13973.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1871.16,13922,7.62939e-06],0,[]],[[1876.16,13920,7.62939e-06],0,[]]],[],[[[1936.06,13915.6,0],[[0,"Move"]]],[[1908.34,13950.6,1.90735e-06],[[0,"Move"]]],[[1871.08,13925.4,4.3869e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		_Vehicles = [
			"UK3CB_TKA_O_BMP1", 
			"UK3CB_TKA_O_BMP1", 
			"UK3CB_TKA_O_BMP1", 
			"UK3CB_TKA_O_BMP2", 
			"UK3CB_TKA_O_BMP1", 
			"UK3CB_TKA_O_MTLB_BMP",
			"UK3CB_TKA_O_MTLB_BMP",
			"UK3CB_TKA_O_MTLB_BMP"
		];
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_5, 5,900,east,_Vehicles,90] spawn OKS_fnc_Huntbase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_5, 5,900,east,_Vehicles,90] spawn OKS_fnc_Huntbase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_5, 5,900,east,_Vehicles,90] spawn OKS_fnc_Huntbase;
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_5, 5,900,east,_Vehicles,90] spawn OKS_fnc_Huntbase;
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_5, 5,900,east,_Vehicles,90] spawn OKS_fnc_Huntbase;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_5, 5,900,east,_Vehicles,90] spawn OKS_fnc_Huntbase;
		[Spawn_7, Spawn_7, NEKY_Hunt_Trigger_5, 5,900,east,_Vehicles,90] spawn OKS_fnc_Huntbase;
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};

};


