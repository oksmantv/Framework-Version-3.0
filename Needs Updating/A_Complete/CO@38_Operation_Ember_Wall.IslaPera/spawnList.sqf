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

switch (_case) do {

	case 1: {

		[[[[3749.53,6436.03,4.00967],0,"Up",[]],[[3750.38,6435.71,4.1296],21,"Up",[]],[[3688.18,6471.63,0.201442],21,"Up",[]],[[3658.14,6488.23,-6.91414e-06],316,"Up",[]],[[3662.23,6480.65,0],70,"Up",[]],[[3688.61,6473.53,6.08923],342,"Up",[]],[[3732.18,6439.1,3.4885],44,"Up",[]]],[["UK3CB_ADM_O_Datsun_Pkm",[3726.83,6436.15,0.5],135,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["FIA_01",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3749.85,6392.05,-2.38419e-07],354,"Middle",[]],[[3736.22,6381.98,-9.0003e-06],20,"Middle",[]],[[3735.98,6377.57,-2.68221e-06],91,"Middle",[]],[[3737.35,6364.2,0.458973],252,"Up",[]],[[3744.68,6363.02,0.559586],309,"Up",[]],[[3760.3,6373.33,0.827909],76,"Up",[]],[[3757.33,6373.15,1.00484],230,"Up",[]],[[3752.15,6355.1,0.341924],349,"Up",[]],[[3747.68,6350.65,0.341925],346,"Up",[]],[[3753.52,6347.15,0.341924],319,"Up",[]]],[["UK3CB_ADE_O_PKM_nest",[3709.55,6396.01,0],88,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3729.63,6354.98,0.425809],72,"Up",[]],[[3728.98,6349.12,0.390261],54,"Up",[]],[[3734.42,6351.94,0.445121],221,"Up",[]],[[3723.33,6333.04,0.544971],175,"Up",[]],[[3717.91,6339.32,0.399211],68,"Up",[]],[[3723.12,6338.32,0.778934],27,"Up",[]],[[3710.92,6364.93,0.0962926],22,"Up",[]],[[3711.17,6360.78,0.191249],215,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3742.77,6352.23,0.341924],72,"Up",[]],[[3747.73,6344.41,0.341924],185,"Up",[]],[[3770.15,6344.8,0],324,"Up",[]],[[3771.89,6348.01,5.96046e-08],324,"Middle",[]],[[3756.89,6338.45,0.193221],88,"Up",[]],[[3752.95,6338.17,0.193221],284,"Up",[]],[[3762.6,6334.44,0.559172],89,"Up",[]],[[3760.83,6328.4,0.559172],168,"Up",[]],[[3777.52,6327.46,0],71,"Up",[]]],[["UK3CB_ADM_O_Datsun_Pkm",[3764.58,6340.73,5.96046e-08],158,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["FIA_01",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],["UK3CB_ADE_O_PKM_nest",[3778.13,6342.44,0],326,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3743.81,6322.92,5.96046e-08],359,"Middle",[]],[[3743.34,6317.79,5.96046e-08],162,"Middle",[]],[[3750.38,6320.8,1.01914],222,"Up",[]],[[3748.75,6323.38,1.01914],268,"Up",[]],[[3752.7,6323.19,1.01914],76,"Up",[]],[[3731.37,6319,5.96046e-08],191,"Middle",[]],[[3728.41,6323.47,0.94082],300,"Up",[]],[[3731.35,6324.59,0.94082],340,"Up",[]],[[3726.1,6334.36,0.701972],144,"Up",[]],[[3771.42,6308.11,3.94044],122,"Up",[]],[[3771.12,6309.03,3.97197],37,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[3651.01,6483.58,0],0,[]],[[3656.01,6481.58,0],0,[]]],[],[[[3721.62,6442.38,0],[[0,"Move"],[1,"SAFE"]]],[[3705.84,6421.2,0],[[0,"Move"]]],[[3651.61,6458.51,0],[[0,"Move"]]],[[3652.85,6479.22,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3658.95,6387.36,0],233,[]],[[3657.54,6392.56,0],233,[]]],[],[[[3649.47,6468.56,0],[[0,"Move"],[1,"SAFE"]]],[[3675.89,6468.67,2.54583],[[0,"Move"]]],[[3678.62,6402.89,0],[[0,"Move"]]],[[3661.32,6391.45,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3670.32,6382.62,0],291,[]],[[3673.95,6386.6,0],291,[]]],[],[[[3716.13,6425.12,0],[[0,"Move"],[1,"SAFE"]]],[[3730.42,6402.89,2.35088],[[0,"Move"]]],[[3676.42,6365.24,0.15358],[[0,"Move"]]],[[3675.05,6382.82,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3685.99,6229.92,0.148125],233,[]],[[3684.58,6235.11,0.148125],233,[]]],[],[[[3676.51,6311.12,0.148125],[[0,"Move"],[1,"SAFE"]]],[[3702.93,6311.22,3.56397],[[0,"Move"]]],[[3705.66,6245.45,0.850097],[[0,"Move"]]],[[3688.36,6234.01,0.148125],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3783.79,6278.83,6.60419e-05],148,[]],[[3778.48,6277.92,6.60419e-05],148,[]]],[],[[[3702.06,6277.01,6.59227e-05],[[0,"Move"],[1,"SAFE"]]],[[3704.43,6303.32,3.41591],[[0,"Move"]]],[[3770.17,6299.88,0.702039],[[0,"Move"]]],[[3779.94,6281.58,6.60419e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3757.74,6399.96,0.352682],306,[]],[[3762.29,6402.84,0.352682],306,[]]],[],[[[3840.42,6407.82,2.79753],[[0,"Move"]]],[[3778.4,6385.76,0.352682],[[0,"Move"]]],[[3762.35,6398.91,0.352682],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3802.41,6296.58,2.43187e-05],216,[]],[[3799.54,6301.14,2.45571e-05],216,[]]],[],[[[3769.56,6371.44,2.41995e-05],[[0,"Move"],[1,"SAFE"]]],[[3794.79,6379.29,2.44487],[[0,"Move"]]],[[3816.67,6317.2,2.43187e-05],[[0,"Move"]]],[[3803.47,6301.19,2.43187e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3818.18,6333.83,3.26633e-05],216,[]],[[3815.32,6338.39,3.29018e-05],216,[]]],[],[[[3785.33,6408.69,3.25441e-05],[[0,"Move"],[1,"SAFE"]]],[[3810.56,6416.53,2.44488],[[0,"Move"]]],[[3832.44,6354.45,3.26633e-05],[[0,"Move"]]],[[3819.25,6338.44,3.26633e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3950.94,6435.93,2.93255e-05],190,[]],[[3946.36,6438.77,2.90871e-05],190,[]]],[],[[[3888.57,6488.78,2.88486e-05],[[0,"Move"],[1,"SAFE"]]],[[3907.8,6506.9,2.44488],[[0,"Move"]]],[[3954.71,6460.72,2.88486e-05],[[0,"Move"]]],[[3949.88,6440.54,2.88486e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3977.74,6472.28,2.94447e-05],190,[]],[[3973.16,6475.12,2.90871e-05],190,[]]],[],[[[3915.37,6525.13,2.88486e-05],[[0,"Move"],[1,"SAFE"]]],[[3934.6,6543.25,2.44488],[[0,"Move"]]],[[3981.5,6497.07,2.88486e-05],[[0,"Move"]]],[[3976.68,6476.89,2.88486e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3999.29,6511.59,1.7643e-05],190,[]],[[3994.71,6514.43,1.71661e-05],190,[]]],[],[[[3936.92,6564.44,1.66893e-05],[[0,"Move"],[1,"SAFE"]]],[[3956.15,6582.56,2.44486],[[0,"Move"]]],[[4003.05,6536.38,1.71661e-05],[[0,"Move"]]],[[3998.23,6516.2,1.62125e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		[Group hostage_1,getPos flag_west_1,west,false,"task_0"] spawn OKS_fnc_Evacuate_HVT;
		[Group hostage_4,getPos flag_west_1,west,false,"task_0"] spawn OKS_fnc_Evacuate_HVT;
	};

	case 2: {

		sleep 5;
		[true, ["defend_1","task_0"], ["An enemy reaction forces will react to our assault, we know their forces will reinforce from the east, set up an ambush.", "Setup Ambush", "Ambush"], [4774.64,6485.92,-0.0396414], "ASSIGNED", 2, true, "mine"] call BIS_fnc_taskCreate;

		// // Patrols
		// [[[[4406.55,6265.9,0],0,[]],[[4411.55,6260.9,0],0,[]],[[4401.55,6260.9,0],0,[]],[[4416.55,6255.9,0],0,[]]],[],[[[4244.5,6254.27,0],[[0,"Move"]]],[[4234.96,6336.81,0],[[0,"Move"]]],[[4374.78,6336.03,0],[[0,"Move"]]],[[4418.47,6273.51,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		// [[[[4192.16,6379.48,4.76837e-07],130,[]],[[4185.12,6378.81,4.76837e-07],130,[]],[[4191.49,6386.52,4.76837e-07],130,[]],[[4178.08,6378.14,4.76837e-07],130,[]]],[],[[[4286.47,6511.77,4.76837e-07],[[0,"Move"]]],[[4356.17,6466.52,9.53674e-07],[[0,"Move"]]],[[4266.45,6359.26,7.15256e-07],[[0,"Move"]]],[[4190.43,6365.44,9.53674e-07],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		// [[[[4347.05,6337.72,0],130,[]],[[4340.01,6337.06,4.76837e-07],130,[]],[[4346.39,6344.76,4.76837e-07],130,[]],[[4332.97,6336.39,0],130,[]]],[],[[[4441.36,6470.01,4.76837e-07],[[0,"Move"]]],[[4511.06,6424.77,9.53674e-07],[[0,"Move"]]],[[4421.34,6317.51,7.15256e-07],[[0,"Move"]]],[[4345.32,6323.69,9.53674e-07],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		// [[[[4519.61,6462.68,0],70,[]],[[4516.59,6456.28,0],70,[]],[[4513.21,6465.69,0],70,[]],[[4513.58,6449.89,0],70,[]]],[],[[[4453.87,6611.25,0],[[0,"Move"]]],[[4528.32,6648.15,0],[[0,"Move"]]],[[4574.87,6516.29,0],[[0,"Move"]]],[[4530.8,6454.04,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		// [[[[4407.41,6425.83,0],350,[]],[[4413.22,6421.8,0],350,[]],[[4403.38,6420.03,0],350,[]],[[4419.02,6417.76,0],350,[]]],[],[[[4249.99,6385.68,0],[[0,"Move"]]],[[4225.97,6465.23,0],[[0,"Move"]]],[[4363.72,6489.23,0],[[0,"Move"]]],[[4417.79,6435.43,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		// [[[[4339.14,6546.7,0],350,[]],[[4344.94,6542.67,1.19209e-07],350,[]],[[4335.1,6540.9,0],350,[]],[[4350.75,6538.63,0],350,[]]],[],[[[4181.71,6506.55,1.19209e-07],[[0,"Move"]]],[[4157.69,6586.1,0],[[0,"Move"]]],[[4295.45,6610.1,0],[[0,"Move"]]],[[4349.52,6556.3,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		_Multiplier = 1;
		if(!isDedicated) then {
			_Multiplier = 0.1;
		};
		
		["hq","side","1st Platoon be advised, incoming enemy convoy from the east. A large convoy has been spotted, dig in around the ambush site and deal the maximum damage possible, avoid early detection. Be ready to fallback if necessary. ETA 5 minutes!"] remoteExec ["OKS_fnc_Chat",0];
		sleep (300 * _Multiplier);

		_ConvoyGroups = [];
		[convoy_1,convoy_2,convoy_3,east,[8,["UK3CB_ADA_O_Pickup_DSHKM","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup_SPG9","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup_M2","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup"], 10, 10],[true,4], _ConvoyGroups, false, false] spawn OKS_fnc_Convoy_Spawn;

		waitUntil { sleep 5; {_Group = _X; {Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group < 1} count _ConvoyGroups == count _ConvoyGroups};
		["defend_1","SUCCEEDED"] call BIS_fnc_taskSetState; sleep 5;
		[true, ["fallback_1","task_0"], ["You have been targeted by enemy artillery, fallback to safety and prepare defences for a second wave.", "Fallback to Safety", "Fallback"], [3954.63,6400.15,0], "ASSIGNED", 2, true, "run"] call BIS_fnc_taskCreate;
		sleep 5;
		[[arty_1],"UK3CB_BAF_Sh_60mm_AMOS",5,60,12,150,true,"fallback_1"] spawn OKS_fnc_Fallback_Artillery; sleep 60;
		[[arty_2],"UK3CB_BAF_Sh_60mm_AMOS",5,60,12,150,true,"fallback_1"] spawn OKS_fnc_Fallback_Artillery; sleep 60;
		[[arty_3],"UK3CB_BAF_Sh_60mm_AMOS",5,60,12,150,true,"fallback_1"] spawn OKS_fnc_Fallback_Artillery; sleep 60;
		[[arty_4],"UK3CB_BAF_Sh_60mm_AMOS",5,60,12,150,true,"fallback_1"] spawn OKS_fnc_Fallback_Artillery; sleep 60;
		sleep (120 * _Multiplier);
		waitUntil { sleep 1; {_X distance [3954.63,6400.15,0] < 100 && vehicle _X == _X} count AllPlayers > 0};
		["fallback_1","SUCCEEDED"] call BIS_fnc_taskSetState;
		sleep 10;
		_defend = "defend_2";
		[true, ["defend_2","task_0"], ["Another wave of infantry is inbound from the east. Hold the crossing and defend it at all costs!", "Defend Crossing", "Fallback"], [3954.63,6400.15,0], "ASSIGNED", 2, true,"defend"] call BIS_fnc_taskCreate;
		["hq","side","1st Platoon be advised, incoming enemy infantry and vehicles from the east. A large concentration of infantry, with a supporting convoy. Repel their attack! ETA 5 minutes."] remoteExec ["OKS_fnc_Chat",0];
		sleep (300 * _Multiplier);

		_SecondConvoyGroups = [];
		[convoy_4,convoy_5,convoy_6,east,[8,["UK3CB_ADA_O_Pickup_DSHKM","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup_SPG9","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup_M2","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup"], 10, 10],[true,4], _SecondConvoyGroups, false, false] spawn OKS_fnc_Convoy_Spawn;

		waitUntil { sleep 5; {_Group = _X; {!Alive _X || !([_X] call ace_common_fnc_isAwake)} count units _Group > 2} count _SecondConvoyGroups > 0};

		// Main Infantry Attack
		_AttackGroups = [];
		_Grp1 = [[[[4136.53,6528.9,0],231,[]],[[4137.23,6535.93,0],231,[]],[[4143.57,6528.2,0],231,[]],[[4137.93,6542.97,1.19209e-07],231,[]],[[4150.6,6527.5,0],231,[]],[[4138.63,6550.01,0],231,[]],[[4157.64,6526.8,0],231,[]],[[4139.33,6557.04,0],231,[]]],[],[[[4030.01,6444.58,0],[[0,"Move"]]],[[3959.7,6398.33,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Grp2 = [[[[4173.78,6428.79,2.38419e-07],250,[]],[[4176.82,6435.18,0],250,[]],[[4180.16,6425.75,0],250,[]],[[4179.86,6441.56,2.38419e-07],250,[]],[[4186.55,6422.71,0],250,[]],[[4182.9,6447.94,0],250,[]],[[4192.93,6419.67,0],250,[]],[[4185.94,6454.33,0],250,[]]],[],[[[4045,6385.53,0],[[0,"Move"]]],[[3963.18,6365.83,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Grp3 = [[[[4206.75,6322.51,0],272,[]],[[4211.96,6327.29,0],272,[]],[[4211.54,6317.3,0],272,[]],[[4217.16,6332.08,0],272,[]],[[4216.32,6312.09,0],272,[]],[[4222.37,6336.86,0],272,[]],[[4221.11,6306.89,0],272,[]],[[4227.58,6341.65,0],272,[]]],[],[[[4063.87,6297.87,0],[[0,"Move"]]],[[3941.68,6294.89,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Grp4 = [[[[4277.83,6177.85,0],250,[]],[[4280.88,6184.23,0],250,[]],[[4284.22,6174.81,0],250,[]],[[4283.92,6190.62,0],250,[]],[[4290.6,6171.77,0],250,[]],[[4286.96,6197,0],250,[]],[[4296.99,6168.73,0],250,[]],[[4290,6203.38,0],250,[]]],[],[[[4123.64,6119.06,0],[[0,"Move"]]],[[3978.41,6137.7,0],[[0,"Move"]]],[[3918.33,6217.87,1.14441e-05],[[0,"Move"]]],[[3933.53,6375.81,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Grp5 = [[[[4349.23,6128.3,0],250,[]],[[4352.27,6134.68,0],250,[]],[[4355.61,6125.26,0],250,[]],[[4355.31,6141.06,2.38419e-07],250,[]],[[4362,6122.22,0],250,[]],[[4358.35,6147.45,2.38419e-07],250,[]],[[4368.38,6119.17,0],250,[]],[[4361.39,6153.83,2.38419e-07],250,[]]],[],[[[4125.1,6105.78,2.38419e-07],[[0,"Move"]]],[[3979.88,6124.42,4.76837e-07],[[0,"Move"]]],[[3919.8,6204.59,1.19209e-05],[[0,"Move"]]],[[3935,6362.53,1.49427],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Grp6 = [[[[4375.58,6184.73,0],250,[]],[[4378.62,6191.11,0],250,[]],[[4381.97,6181.69,0],250,[]],[[4381.66,6197.5,3.57628e-07],250,[]],[[4388.35,6178.65,0],250,[]],[[4384.7,6203.88,0],250,[]],[[4394.73,6175.61,0],250,[]],[[4387.75,6210.26,0],250,[]]],[],[[[4128.75,6100.98,0],[[0,"Move"]]],[[3973.3,6111.03,0],[[0,"Move"]]],[[3922.67,6190.69,0],[[0,"Move"]]],[[3890,6372,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		{_AttackGroups pushBack _X} foreach [_Grp1, _Grp2, _Grp3, _Grp4, _Grp5, _Grp6];

		{
			[getPos _X, "rush", 4, east, 1500, _AttackGroups] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [rush_1,rush_2,rush_3,rush_4];

		waitUntil {
			sleep 5;
			{_Group = _X; {Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group < 1} count _AttackGroups == count _AttackGroups &&
			{_Group = _X; {Alive _X || ([_X] call ace_common_fnc_isAwake)} count units _Group < 1} count _SecondConvoyGroups == count _SecondConvoyGroups
			|| ({isPlayer _X} count list CrossingTrigger < {!isPlayer _X} count list CrossingTrigger)
		};
		if(({isPlayer _X} count list CrossingTrigger < {!isPlayer _X} count list CrossingTrigger)) then {
			["defend_2","FAILED"] call BIS_fnc_taskSetState; sleep 5;
			[true, ["defend_2_1","task_0"], ["The crossing cannot be held! Fallback to the village and defend it!", "Defend Village", "Fallback"], [3742.65,6359.99,0], "ASSIGNED", 2, true, "defend"] call BIS_fnc_taskCreate;
			waitUntil {
				sleep 5;
				{_Group = _X; {Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group < 1} count _AttackGroups == count _AttackGroups &&
				{_Group = _X; {Alive _X || ([_X] call ace_common_fnc_isAwake)} count units _Group < 1} count _SecondConvoyGroups == count _SecondConvoyGroups
				|| {_X distance [3742.65,6359.99,0] < 500} count allPlayers == 0
			};			
		};

		if({_X distance [3742.65,6359.99,0] < 500} count allPlayers == 0) exitWith {
			if("defend_2" call BIS_fnc_taskState != "FAILED") then {
				["defend_2","FAILED"] call BIS_fnc_taskSetState;
				sleep 5;
			};
			["defend_2_1","FAILED"] call BIS_fnc_taskSetState;
			sleep 5;
			["task_0","FAILED"] call BIS_fnc_taskSetState;
		};

		if("defend_2" call BIS_fnc_taskState != "FAILED") then {
			["defend_2","SUCCEEDED"] call BIS_fnc_taskSetState;
			sleep 5;
		};

		["defend_2_1","SUCCEEDED"] call BIS_fnc_taskSetState;
		sleep 5;

		// South Task Pos [3972.11,6066.22,0]
		["hq","side","1st Platoon be advised, incoming enemy infantry and vehicles from the south. A large concentration of infantry, with a supporting convoy. Repel their attack! ETA 8 minutes."] remoteExec ["OKS_fnc_Chat",0];
		[true, ["defend_3","task_0"], ["Another convoy is inbound from the south. Ambush the convoy!", "Ambush Convoy", "Fallback"], [3856.47,6005.57,0.00147533], "ASSIGNED", 2, true,"defend"] call BIS_fnc_taskCreate;
		sleep (480 * _Multiplier);
		_ThirdConvoyGroups = [];
		[convoy_7,convoy_8,convoy_9,east,[8,["UK3CB_ADA_O_Pickup_DSHKM","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup_SPG9","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup_M2","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup"], 10, 20],[true,6], _ThirdConvoyGroups, false, false] spawn OKS_fnc_Convoy_Spawn;

		waitUntil { sleep 5; {_Group = _X; {!Alive _X || !([_X] call ace_common_fnc_isAwake)} count units _Group > 2} count _ThirdConvoyGroups > 0};
		{
			[getPos _X, "rush", 8, east, 1500, _ThirdConvoyGroups] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [rush_5,rush_6,rush_7];	
		waitUntil { 
			sleep 5; 
			{_Group = _X; {Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group < 3} count _ThirdConvoyGroups == count _ThirdConvoyGroups
			|| {_X distance [3742.65,6359.99,0] < 700} count allPlayers == 0
		};
		if({_X distance [3742.65,6359.99,0] < 700} count allPlayers == 0) exitWith {
			["defend_3","FAILED"] call BIS_fnc_taskSetState; sleep 5;
			["task_0","FAILED"] call BIS_fnc_taskSetState;
		};

		["defend_3","SUCCEEDED"] call BIS_fnc_taskSetState;
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
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*
	GOL SCRIPT EXAMPLES:
	Link to README: https://github.com/oksmantv/Guerrillas-of-Liberations-Misc-Addon?tab=readme-ov-file#readme 
*/ 