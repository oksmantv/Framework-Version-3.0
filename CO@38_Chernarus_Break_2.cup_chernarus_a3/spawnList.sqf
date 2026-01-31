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

params [
	"_case"
];


systemChat format ["GW_Fnc_spawnList: Case %1 activated.", _case];
private _aacDisabled = false;
private _aacEnabled = ["AAC_Enabled", 1] call BIS_fnc_getParamValue;
if(_aacEnabled == 0) then {
	_aacDisabled = true;
};

switch (_case) do {

	case 0: {
		// Benton
		//"Radio_1" remoteExec ["playSound",0];
		["hq","side","Landing party, be advised, we are beginning our missile barrage, do not exceed 50kph on approach or you might be caught in the strike. USS Liberty, out.","USS LIBERTY"] remoteExec ["OKS_fnc_Chat",0];

		[arty_1,[getPos target_1,getPos target_2,getPos target_7,getPos target_11],west,1,1,true,false,30,false] spawn OKS_fnc_ArtySuppression; sleep 3;
		[arty_2,[getPos target_3,getPos target_4,getPos target_5,getPos target_12],west,1,1,true,false,30,false] spawn OKS_fnc_ArtySuppression; sleep 3;
		[arty_3,[getPos target_5,getPos target_6,getPos target_1,getPos target_13],west,1,1,true,false,30,false] spawn OKS_fnc_ArtySuppression; sleep 3;
		[arty_4,[getPos target_7,getPos target_8,getPos target_9,getPos target_14],west,1,1,true,false,30,false] spawn OKS_fnc_ArtySuppression; sleep 3;

		// Cruise Missiles make it lag to shit..
		// [] spawn {{[missile_1,_X] spawn OKS_CruiseMissile; sleep 6;} foreach [missileTarget_1,missileTarget_2]}; sleep 1;
		// [] spawn {{[missile_2,_X] spawn OKS_CruiseMissile; sleep 6;} foreach [missileTarget_3,missileTarget_4]};

		[east,enemyarty_1,[4451.85,-2277.6,0],10,300,30] spawn OKS_fnc_ArtyFire; sleep 5;
		[east,enemyarty_2,[4451.85,-2277.6,0],10,300,30] spawn OKS_fnc_ArtyFire; sleep 5;
		[east,enemyarty_3,[4451.85,-2277.6,0],10,300,30] spawn OKS_fnc_ArtyFire;
		  
	};

	case 1: {

		_Group1 = [[[[3628.43,2087.38,-7.51019e-006],193,"Up",[]],[[3620.23,2096.66,1.78971],194,"Up",[]],[[3607.83,2094.12,0.0190911],169,"Up",[]],[[3590.84,2087.98,-7.86781e-006],162,"Up",[]],[[3563.26,2094.39,-7.62939e-006],207,"Up",[]],[[3578,2096.04,1.24788],189,"Up",[]],[[3563.72,2130.24,1.68834],169,"Up",[]],[[3585.01,2126.07,1.31333],183,"Up",[]],[[3630.25,2126.7,2.07865],191,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		_Group2 = [[[[3550.32,2108.93,-7.62939e-006],177,"Up",[]],[[3550.72,2118.44,-7.62939e-006],224,"Up",[]],[[3568.81,2093.7,-7.62939e-006],1,"Middle",[]],[[3582.07,2101.54,-7.62939e-006],72,"Middle",[]],[[3586.83,2090.29,-7.62939e-006],41,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		_Group3 = [[[[3604.25,2109.78,0.103876],174,"Middle",[]],[[3609.38,2110.85,0.103876],177,"Middle",[]],[[3640.62,2108.09,0],232,"Middle",[]],[[3602.35,2128.74,0],278,"Middle",[]],[[3618.45,2133.9,0],26,"Middle",[]],[[3628.69,2128.48,1.90808],275,"Middle",[]],[[3628.57,2126.93,1.92514],164,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		_Group4 = [[[[3622.82,2128.74,-7.62939e-006],275,"Middle",[]],[[3612.92,2144.65,-8.10623e-006],252,"Middle",[]],[[3601.89,2129.29,-7.62939e-006],263,"Middle",[]],[[3582.01,2146.89,-7.62939e-006],102,"Middle",[]],[[3569.62,2129.88,-7.15256e-006],3,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		_Group5 = [[[[3612.09,2186.46,0.176346],230,"Up",[]],[[3615.18,2198.43,0.140762],92,"Up",[]],[[3660.93,2184.07,0.0756354],241,"Up",[]],[[3660.07,2205.37,0.186775],292,"Up",[]],[[3665.72,2198.87,0.413019],202,"Up",[]],[[3664.21,2214.83,0.231526],207,"Up",[]],[[3666.28,2209.61,0.340395],288,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		_Group6 = [[[[3645.1,2193.81,3.69665],200,"Up",[[301,0]],"ftl"],[[3638.4,2173.75,0],200,"Middle",[[301,0]],"mat"],[[3637.72,2188.31,6.99754],200,"Up",[[301,0]],"ar"],[[3651.65,2174.2,0],221,"Middle",[[301,0]],"mat"],[[3614.66,2179.48,-0.26756],200,"Up",[[301,0]],"r"],[[3650.77,2159.77,0],202,"Middle",[[301,0]],"mat"],[[3640.96,2187.34,6.94507],200,"Up",[[301,0]],"g"],[[3659.64,2188.92,0],200,"Up",[[301,0]],"mmg"],[[3636.36,2188.52,7.00007],200,"Up",[[301,0]],"r"],[[3632.89,2149.79,0.0679631],217,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		_Group7 = [[[[3594.07,2243.44,1.43051e-06],226,"Middle",[[301,0]],"ftl"],[[3599.34,2241.62,0],26,"Middle",[[301,0]],"mmg"],[[3578.89,2197.78,4.76837e-07],208,"Middle",[[301,0]],"mmg"],[[3605.41,2235.77,-0.0144048],231,"Middle",[[301,0]],"r"],[[3595.18,2193.46,0],203,"Up",[[301,0]],"g"],[[3602.9,2192.38,0],173,"Middle",[[301,0]],"mmg"],[[3588.55,2229.43,2.86102e-06],193,"Middle",[[301,0]],"r"],[[3597.53,2220.53,0],117,"Middle",[[301,1]],"ag"],[[3589.73,2195.03,4.76837e-07],282,"Middle",[[301,0]],"r"],[[3612.99,2239.34,3.8147e-06],26,"Up",[[301,0]],"mmg"]],[],[],east] call GW_Common_fnc_spawnGroup;
		_Group8 = [[[[3675.8,2231.07,0],120,"Up",[[301,0]],"r"],[[3682.51,2231.02,0],27,"Up",[[301,0]],"mmg"],[[3672.25,2242.32,0.184519],7,"Up",[[301,0]],"mmg"],[[3669.3,2242.98,0.185925],352,"Up",[[301,0]],"mmg"],[[3662.44,2234.21,0],282,"Up",[[301,0]],"g"],[[3658.06,2237.1,0],319,"Up",[[301,0]],"r"],[[3672.33,2235.59,0.206658],230,"Middle",[[301,0]],"g"],[[3603.35,2203.23,9.53674e-07],44,"Middle",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		sleep 5;
		{
			_UnitsGroup = _X;
			{
				_unit = _X;
				{
					_player = _X;
					_unit reveal [_player,2.5]
				} foreach allPlayers;
			} foreach _UnitsGroup;
		} foreach [units _Group1,units _Group2,units _Group3,units _Group4,units _Group5,units _Group6,units _Group7,units _Group8];

		sleep 5;

		{
			[_X,east,false,2000,true] spawn OKS_fnc_Ambient_AAA;
		} foreach [aaa_1,aaa_2,aaa_3];

		null = [Radar_1,["rhs_gaz66_zu23_msv","rhs_KORD_high_MSV"],3500,3500,100] spawn OKS_fnc_Radar;
		[[],[
			["rhs_KORD_high_MSV",[2778.35,2468.48,0.2248],118,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[2778.3,2470.75,0.261192],85,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[3029.51,2808.16,0.224434],148,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[3030.6,2810.16,0.268822],115,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[3405.61,2873.77,0.177685],174,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[3407.46,2875.11,0.221527],140,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[4640.37,2314.7,0.194877],340,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[4638.89,2312.98,0.234342],307,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[4683.27,2617.79,0.63609],281,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[4683.99,2615.64,0.638771],248,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[4380.75,2916.23,0.267937],242,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[4382.65,2915,0.389523],209,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[4061.92,3320.76,0.346497],214,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[4064.69,3320.82,0.355263],180,[["gunner",-1,[0]]],[[351,false]]]
		],[],east] call GW_Common_fnc_spawnGroup;

		// Erasmo
		//"Radio_2" remoteExec ["playSound",0];
		["hq","side","Landing party, this is eagle squadron, airstrike inbound, eagle out.","EAGLE"] remoteExec ["OKS_fnc_Chat",0];

		[getpos jetspawn_1, jetstrike_1,getpos jetexit_1,selectRandom ["B_Plane_Fighter_01_Stealth_F"],west,200] spawn OKS_fnc_AirStrike; sleep 5;
		[getpos jetspawn_2, jetstrike_2,getpos jetexit_2,selectRandom ["B_Plane_Fighter_01_Stealth_F"],west,200] spawn OKS_fnc_AirStrike; sleep 5;
		[getpos jetspawn_3, jetstrike_3,getpos jetexit_3,selectRandom ["B_Plane_Fighter_01_Stealth_F"],west,200] spawn OKS_fnc_AirStrike; sleep 5;

		sleep 120;

		{
			{deleteVehicle _X} foreach crew _X;
			deleteVehicle _X;
		} foreach [arty_1,arty_2,arty_3,arty_4];
		
		[east,enemyarty_4,[4451.85,-2277.6,0],5,300,30] spawn OKS_fnc_ArtyFire; sleep 5;
		[east,enemyarty_5,[4451.85,-2277.6,0],5,300,30] spawn OKS_fnc_ArtyFire; sleep 5;
		[east,enemyarty_6,[4451.85,-2277.6,0],5,300,30] spawn OKS_fnc_ArtyFire; sleep 5;
		[east,enemyarty_7,[4451.85,-2277.6,0],5,300,30] spawn OKS_fnc_ArtyFire;

		null = [_aacDisabled] spawn {
			Params ["_aacDisabled"];
			while {_aacDisabled} do {
				{
					_X Params ["_PlaneStart","_PlaneEnd"];
					[_PlaneStart,_PlaneEnd,["rhsusf_f22","UK3CB_B_Osprey_USMC_D","B_Plane_Fighter_01_F","UK3CB_MDF_B_T28Trojan_NAVY_CAS"],west,true,"MOVE",400] spawn OKS_fnc_AirSpawn; sleep 120;
				} foreach [
					[getpos Plane_1,getpos PlaneExit_1],
					[getpos Plane_2,getpos PlaneExit_2],
					[getpos Plane_3,getpos PlaneExit_3],
					[getpos Plane_4,getpos PlaneExit_4]
				];
				sleep 300;
			};	
		};
		null = [_aacDisabled] spawn {
			Params ["_aacDisabled"];
			while {_aacDisabled} do {
				{
					_X Params ["_HeliStart","_HeliEnd"];
					[_HeliStart,_HeliEnd,selectRandom ["RHS_UH1Y_FFAR_d", "rhsusf_CH53E_USMC_GAU21_D"],west,true,"MOVE",100] spawn OKS_fnc_AirSpawn; sleep 10;
				} foreach [
					[getpos Heli_1,getpos HeliExit_1],
					[getpos Heli_2,getpos HeliExit_2]
				];
				sleep 180;
				{
					_X Params ["_HeliStart","_HeliEnd"];
					[_HeliStart,_HeliEnd,selectRandom ["RHS_UH1Y_FFAR_d", "rhsusf_CH53E_USMC_GAU21_D"],west,true,"MOVE",100] spawn OKS_fnc_AirSpawn; sleep 10;
				} foreach [
					[getpos Heli_3,getpos HeliExit_3],
					[getpos Heli_4,getpos HeliExit_4]
				];				
				sleep 600;
			};	
		};		

		// sleep 60;
		// null = [] spawn {
		// 	while {true} do {
		// 		{
		// 			_X Params ["_PlaneStart","_PlaneEnd"];
		// 			[_PlaneStart,_PlaneEnd,selectRandom ["UK3CB_CHD_O_Su25SM","UK3CB_CW_SOV_O_LATE_MIG21_AA"],east,true,"MOVE",400] spawn OKS_fnc_AirSpawn; sleep 120;
		// 		} foreach [
		// 			[getpos EnemyPlane_1,getpos EnemyPlaneExit_1],
		// 			[getpos EnemyPlane_2,getpos EnemyPlaneExit_2]
		// 		];
		// 		sleep 300;
		// 	};	
		// };		

		// null = [] spawn {
		// 	while {true} do {
		// 		{
		// 			_X Params ["_HeliStart","_HeliEnd"];
		// 			[_HeliStart,_HeliEnd,selectRandom ["UK3CB_CW_SOV_O_LATE_Mi8","UK3CB_CW_SOV_O_LATE_Mi_24P"],east,true,"MOVE",100] spawn OKS_fnc_AirSpawn; sleep 10;
		// 		} foreach [
		// 			[getpos EnemyHeli_1,getpos EnemyHeliExit_1],
		// 			[getpos EnemyHeli_2,getpos EnemyHeliExit_2]
		// 		];		
		// 		sleep 300;
		// 	};	
		// };			

	};

	case 2: {

		BattleCase0 = [west_1,east_1,meet_1,west,east,["UK3CB_CW_US_B_LATE_LAV25"],["UK3CB_CHD_O_BMP1"]] spawn OKS_fnc_AI_Battle;   

		// Komarovo
		[[[[3571.14,2470.76,3.8147e-006],197,"Up",[]],[[3603.42,2443.39,4.29153e-006],231,"Up",[]],[[3584.52,2467.5,3.8147e-006],191,"Up",[]],[[3614.75,2451.93,4.29153e-006],266,"Up",[]],[[3598.11,2480.93,5.3179],257,"Up",[]],[[3600.63,2478.49,5.55698],185,"Up",[]],[[3602.22,2485.18,5.06123],257,"Up",[]],[[3603.66,2483.04,0.39104],161,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3633.17,2446.43,0.534638],175,"Up",[]],[[3630.75,2452.32,0.160904],266,"Up",[]],[[3631.57,2457.25,0.0675144],266,"Up",[]],[[3637.05,2451.46,0.188139],266,"Up",[]],[[3637.94,2446.14,0.580378],266,"Up",[]],[[3637.52,2450.67,3.49837],65,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3663.93,2458.4,0.387486],264,"Middle",[]],[[3662.52,2464.26,0.155644],264,"Middle",[]],[[3673.37,2459.38,0.621701],63,"Middle",[]],[[3679.6,2497.66,0.148967],250,"Middle",[]],[[3673.06,2503.58,0.0784292],110,"Middle",[]],[[3678.2,2505.15,0.0966558],209,"Middle",[]],[[3677.4,2504.6,3.25526],152,"Middle",[]],[[3673.31,2502.5,3.24351],99,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[3522.19,2476.75,0],0,[]],[[3527.19,2471.75,0],0,[]],[[3517.19,2471.75,0],0,[]],[[3532.19,2466.75,0],0,[]]],[],[[[3550.72,2552.86,0],[[0,"Move"],[1,"SAFE"]]],[[3636.2,2544.26,-2.38419e-005],[[0,"Move"]]],[[3606.01,2499.62,-5.72205e-006],[[0,"Move"]]],[[3533.1,2476.18,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3648.73,2538.06,0],0,[]],[[3653.73,2533.06,0],0,[]],[[3643.73,2533.06,0],0,[]],[[3658.73,2528.06,9.53674e-007],0,[]]],[],[[[3582.45,2492.04,0],[[0,"Move"],[1,"SAFE"]]],[[3624.48,2424.2,0],[[0,"Move"]]],[[3690.35,2441.93,0],[[0,"Move"]]],[[3659.65,2537.48,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3519.45,2345.02,0],0,[]],[[3524.45,2340.02,0],0,[]],[[3514.45,2340.02,0],0,[]],[[3529.45,2335.02,0],0,[]]],[],[[[3553.24,2421.21,0],[[0,"Move"],[1,"SAFE"]]],[[3623.01,2410.32,0],[[0,"Move"]]],[[3598.97,2361.96,0],[[0,"Move"]]],[[3530.36,2344.45,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		// Kamarovo Counter-Attack.
		// Bentov
		//"Radio_3" remoteExec ["playSound",0];
		["hq","side","1-1 this is USS Liberty, we have reports of an incoming column of vehicles. Repel the counter-attack! Liberty, out.","USS LIBERTY"] remoteExec ["OKS_fnc_Chat",0];
	    [true, ["Defend_1","main"], ["A convoy of vehicles are heading towards Komarovo, you are to repel the attack. Good luck!", "Defend Komarovo", ""], [3640.7,2494.57,0.000324249],"ASSIGNED",-1,true,"defend"] call BIS_fnc_taskCreate;
		sleep 60;

		_ConvoyArray = [];
		[convoy_1,convoy_2,convoy_3,east,[7,["rhs_bmp1_msv","rhs_bmp1_msv","rhs_tigr_msv","rhs_kamaz5350_msv","rhs_kamaz5350_msv","rhs_kamaz5350_msv","rhs_prp3_msv"], 30, 45],[true,4],_ConvoyArray, false, false] spawn OKS_fnc_Convoy_Spawn;

		waitUntil{
			sleep 5; 
			{
				_Group = _X;
				{
					Alive _X || [_X] call ace_common_fnc_isAwake
				} count units _Group <= 2
			} count _ConvoyArray == count _ConvoyArray
		};
		["Defend_1","SUCCEEDED",true] call BIS_fnc_taskSetState;
		sleep 5;

		// Bentov
		//"Radio_5" remoteExec ["playSound",0];
		["hq","side","1-1 this is USS Liberty, we have reports of another mechanized column. Repel the counter-attack! Liberty, out.","USS LIBERTY"] remoteExec ["OKS_fnc_Chat",0];	
		[true, ["Defend_2","main"], ["Another counter-attack is inbound. They will be there in 3 minutes, prepare your defences. Good luck!", "Defend Komarovo", ""], [3640.61,2473.42,0.00143909],"ASSIGNED",-1,true,"defend"] call BIS_fnc_taskCreate;
		sleep 120;
		_ConvoyArray2 = [];
		[convoy_4,convoy_5,convoy_6,east,[7,["rhs_bmp1_msv","rhs_bmp1_msv","RHS_Ural_VDV_01","RHS_Ural_Open_VDV_01","rhs_bmp1_msv","RHS_Ural_Open_VDV_01","rhs_prp3_msv"], 35, 30],[true,4],_ConvoyArray2, false, false] spawn OKS_fnc_Convoy_Spawn;

		waitUntil{
			sleep 5; 
			{
				_Group = _X;
				{
					Alive _X || [_X] call ace_common_fnc_isAwake
				} count units _Group <= 2
			} count _ConvoyArray2 == count _ConvoyArray2
		};
		["Defend_2","SUCCEEDED",true] call BIS_fnc_taskSetState;

		Reinforced1 = false;
		// William

		//"Radio_4" remoteExec ["playSound",0];
		["hq","side","1-1 this is Godfather of the 2nd Marines, our lead elements are inbound from the west, check your fire. Clear the road, they will deploy at the outskirts of the village! Godfather, out.","GODFATHER"] remoteExec ["OKS_fnc_Chat",0];
		
		[convoy_7,convoy_8,convoy_9,west,[2,["UK3CB_B_AAV_US_WDL"], 60, 30],[true,3], false, "Reinforced1","small",false,false] spawn OKS_fnc_Convoy_Reinforce;
		waitUntil {sleep 5; !isNil "Reinforced1"};
		Defend1Complete = true;
	};

	case 4: {

		// Balota
		[[[[4432.86,2462.67,0.209666],209,"Up",[]],[[4439.77,2463.17,0.2307],33,"Up",[]],[[4437.31,2459.6,0.215267],221,"Up",[]],[[4442.26,2458.41,0.21221],118,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4444.68,2496.05,0.285011],295,"Up",[]],[[4447.83,2492.68,0.285011],160,"Up",[]],[[4453.99,2486.03,0.293471],209,"Up",[]],[[4446.85,2488.39,0.285011],209,"Up",[]],[[4443.67,2493.2,0.562158],300,"Up",[]],[[4443.16,2490.76,0.618835],209,"Up",[]],[[4446.82,2494.11,3.53412],162,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4474.94,2444.35,0.0999045],10,"Up",[]],[[4482.22,2441.57,0.13012],290,"Up",[]],[[4483.27,2447.8,0.104352],209,"Up",[]],[[4483.33,2444.69,3.27263],209,"Up",[]],[[4481.41,2447.21,3.26509],199,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4509.51,2406.15,0.149459],329,"Up",[]],[[4504.13,2400.99,0.144674],239,"Up",[]],[[4510.77,2400.78,0.136406],9,"Up",[]],[[4515.58,2398.25,0.132792],324,"Up",[]],[[4510.27,2397.55,0.133052],60,"Up",[]],[[4513.58,2391.79,0.133052],355,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4515.24,2464.89,0.131107],272,"Up",[]],[[4516.5,2468.95,0.126837],164,"Middle",[]],[[4522.09,2467.3,0.11873],272,"Up",[]],[[4526.25,2461.2,0.11873],119,"Up",[]],[[4515.77,2458.39,0.188912],224,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4552.31,2496.32,0.533229],264,"Up",[]],[[4553.74,2494.47,0.524291],213,"Up",[]],[[4561.16,2498.15,0.299222],253,"Up",[]],[[4556.29,2502.15,0.305009],306,"Up",[]],[[4562.25,2503.48,0.531479],215,"Up",[]],[[4564.38,2501,0.257298],52,"Up",[]],[[4557.13,2502.5,3.54907],320,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Vehicles.
		[[],[["rhs_bmp1_msv",[4419.58,2479.83,0],299,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[4449.97,2354.91,0],18,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[4557.85,2516.14,0],226,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[4403.82,2371.28,0],0,[]],[[4408.82,2366.28,0],0,[]],[[4398.82,2366.28,0],0,[]],[[4413.82,2361.28,0],0,[]]],[],[[[4421,2429.38,0],[[0,"Move"],[1,"SAFE"]]],[[4279.53,2550.64,0],[[0,"Move"]]],[[4186.06,2549.63,0],[[0,"Move"]]],[[4351.28,2468.29,0],[[0,"Move"]]],[[4389.67,2393.01,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4475.89,2511.47,0.412916],307,[]],[[4482.88,2512.5,0.412915],307,[]],[[4476.92,2504.47,0.412916],307,[]],[[4489.88,2513.54,0.412916],307,[]]],[],[[[4322.88,2580.62,0],[[0,"Move"],[1,"SAFE"]]],[[4182.58,2619.97,0],[[0,"Move"]]],[[4314.53,2625.93,0],[[0,"Move"]]],[[4483.44,2530.54,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4638.94,2342.22,0.412916],307,[]],[[4645.93,2343.25,0.412915],307,[]],[[4639.97,2335.22,0.412916],307,[]],[[4652.93,2344.29,0.412916],307,[]]],[],[[[4538.39,2431.25,0],[[0,"Move"],[1,"SAFE"]]],[[4490.69,2377.99,0],[[0,"Move"]]],[[4485.53,2292.94,0],[[0,"Move"]]],[[4628.6,2343.41,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4692.19,2434.99,0],327,[]],[[4699.11,2433.52,0],327,[]],[[4690.73,2428.07,0],327,[]],[[4706.03,2432.06,0],327,[]]],[],[[[4547.53,2564.78,0],[[0,"Move"],[1,"SAFE"]]],[[4487.52,2498.41,0],[[0,"Move"]]],[[4531.23,2442.23,2.85592],[[0,"Move"]]],[[4682.93,2439.71,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Airfield Sentries.
		[[[[4714.21,2590.83,9.22541],239,"Up",[]],[[4718.37,2593.74,13.1194],184,"Up",[]],[[4713.56,2599.98,9.28187],213,"Up",[]],[[4719.79,2593.65,9.23805],194,"Up",[]],[[4722.87,2592.78,0.715226],350,"Up",[]],[[4721.73,2596.49,4.877],173,"Up",[]],[[4716.03,2594.64,9.21365],71,"Up",[]],[[4716.76,2598.61,9.25221],122,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		null = [AAA_4,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;
		null = [AAA_5,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;
		null = [AAA_6,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;

		[[aaa_4],"Destroy AAA","ZU-23s","The village of Balota is defended by AAA positions in form of %1. You must destroy the assets to achieve air superiority.","destroy","Main"] spawn OKS_fnc_Destroy_Task;
		[[aaa_5],"Destroy AAA","ZU-23s","The village of Balota is defended by AAA positions in form of %1. You must destroy the assets to achieve air superiority.","destroy","Main"] spawn OKS_fnc_Destroy_Task;
		[[aaa_6],"Destroy AAA","ZU-23s","The village of Balota is defended by AAA positions in form of %1. You must destroy the assets to achieve air superiority.","destroy","Main"] spawn OKS_fnc_Destroy_Task;

		[speaker_1,2500] spawn OKS_fnc_AlarmSound;
	};

	case 5: {

		// Benton
		//"Radio_6" remoteExec ["playSound",0];
		["hq","side","1-1 be advised! A squadron of Mi-8s was spotted inbound from the south-east. We suspect they will insert air assault forces to attack you. Repel all enemy forces. Liberty, out!","USS LIBERTY"] remoteExec ["OKS_fnc_Chat",0];

		[true, ["Defend_3","main"], ["Balota is secure, however more counter-attacks are inbound! An air assault squadron is inbound for Balota Airfield, possible strike from the north. Neutralize the attackers and hold Balota!", "Repel Counter-Attack", ""],[4499.76,2453.48,0.00144482],"ASSIGNED",-1,true,"defend"] call BIS_fnc_taskCreate;
		sleep 60;

		// Balota Counter-Attack
		Enemy_AirAssault = [];
		[independent, "RHS_Mi8mt_vvs", true, "paradrop", helistart_1, land_1, heliend_1, [2,0.7], [[4492.85,2439.17,0]],false,false,objNull,Enemy_AirAssault] spawn OKS_fnc_AirDrop; sleep 5;
		[independent, "RHS_Mi8mt_vvs", false, "paradrop", helistart_2, land_2, heliend_2, [2,0.7], [[4492.85,2439.17,0]],false,false,objNull,Enemy_AirAssault] spawn OKS_fnc_AirDrop; sleep 5;
		[independent, "RHS_Mi8AMT_vvsc", true, "paradrop", helistart_3, land_3, heliend_3, [2,0.7], [[4492.85,2439.17,0]],false,false,objNull,Enemy_AirAssault] spawn OKS_fnc_AirDrop; sleep 120;

		[independent, "RHS_Mi8mt_vvs", false, "paradrop", helistart_1, land_1, heliend_1, [2,0.7], [[4492.85,2439.17,0]],false,false,objNull,Enemy_AirAssault] spawn OKS_fnc_AirDrop; sleep 5;
		[independent, "RHS_Mi8mt_vvs", false, "paradrop", helistart_2, land_2, heliend_2, [2,0.7], [[4492.85,2439.17,0]],false,false,objNull,Enemy_AirAssault] spawn OKS_fnc_AirDrop; sleep 5;
		[independent, "RHS_Mi8AMT_vvsc", true, "paradrop", helistart_3, land_3, heliend_3, [2,0.7], [[4492.85,2439.17,0]],false,false,objNull,Enemy_AirAssault] spawn OKS_fnc_AirDrop;		
		
		_ConvoyGroupArray = [];
		[ConvoySpawn_1,ConvoyWP_1,ConvoyEnd_1,east,[6,["O_G_Quadbike_01_F"],70,25],[true,1],_ConvoyGroupArray,false,false,["assault"],false] spawn OKS_fnc_Convoy_Spawn;

		sleep 10;
		waitUntil{
			sleep 5; 
			(
				{
					Alive _X || [_X] call ace_common_fnc_isAwake
				} count Enemy_AirAssault <= 2 &&
				{
					_Group = _X;
					{
						Alive _X || [_X] call ace_common_fnc_isAwake
					} count units _Group <= 2
				} count _ConvoyGroupArray == count _ConvoyGroupArray &&
				Reinforced3
			)
		};

		["Defend_3","SUCCEEDED",true] call BIS_fnc_taskSetState; sleep 5;
		Reinforced2 = true;
		publicVariable "Reinforced2";

	};

	case 6: {

		// William
		//"Radio_7" remoteExec ["playSound",0];
		"marker_107" setMarkerDir 250;
		["hq","side","1-1 be advised, a large wave of infantry with vehicle support are heading in from the south-east, they are moving along the MSR, ETA 5 minutes. Setup hasty defence and repel their attack. Hold out until relieved by the 2nd marines! Godfather, out.","GODFATHER"] remoteExec ["OKS_fnc_Chat",0];
		[true, ["Defend_4","main"], ["A large force of infantry and vehicles are heading towards Balota from Chernogorsk. Repel the attackers until relieved by friendly forces.", "Repel Counter-Attack", ""], [4710.65,2347.08,0],"ASSIGNED",-1,true,"defend"] call BIS_fnc_taskCreate;
		sleep 300;

		counter2variable = false;
		[[[[5030.38,2132.2,0.0689001],307,[]],[[5037.38,2133.21,-0.351353],307,[]],[[5031.39,2125.2,1.2574],307,[]],[[5044.37,2134.22,-0.305387],307,[]],[[5032.4,2118.2,2.65769],307,[]],[[5051.37,2135.24,-0.232557],307,[]],[[5033.42,2111.2,1.26961],307,[]],[[5058.37,2136.25,-0.190605],307,[]]],[],[[[4978.5,2165.28,-4.76837e-006],[[0,"Move"]]],[[4919.56,2204.56,0.0149903],[[0,"Move"]]],[[4834.52,2266.68,0],[[0,"Move"]]],[[4729.89,2350.38,4.76837e-007],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4971.56,2052.97,0],307,[]],[[4978.56,2053.98,0],307,[]],[[4972.58,2045.97,0],307,[]],[[4985.56,2054.99,0],307,[]],[[4973.59,2038.97,0],307,[]],[[4992.56,2056.01,0],307,[]],[[4974.6,2031.97,0],307,[]],[[4999.56,2057.02,0],307,[]]],[],[[[4955.82,2073.22,0],[[0,"Move"]]],[[4923.49,2098.13,0],[[0,"Move"]]],[[4816.66,2171.36,0],[[0,"Move"]]],[[4665.47,2336.06,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		
		{
			[_X,3,1,east,1500,"counter1variable"] spawn OKS_fnc_LambsChargeSpawn; sleep 4;		
		} foreach [rush_1,rush_3,rush_4];

		{
			[_X,7,1,east,1500,"counter1variable"] spawn OKS_fnc_LambsChargeSpawn; sleep 4;		
		} foreach [rush_2,rush_5];
		
		[convoy_13,convoy_14,convoy_15,independent,[5,["rhs_btr80_vdv","RHS_Ural_MSV_01","RHS_Ural_MSV_01","RHS_Ural_MSV_01","rhs_prp3_msv"], 55, 45],[true,5],[], false, false, ["assault"], true] spawn OKS_fnc_Convoy_Spawn;
		[[[[5030.38,2132.2,0.0689001],307,[]],[[5037.38,2133.21,-0.351353],307,[]],[[5031.39,2125.2,1.2574],307,[]],[[5044.37,2134.22,-0.305387],307,[]],[[5032.4,2118.2,2.65769],307,[]],[[5051.37,2135.24,-0.232557],307,[]],[[5033.42,2111.2,1.26961],307,[]],[[5058.37,2136.25,-0.190605],307,[]]],[],[[[4978.5,2165.28,-4.76837e-006],[[0,"Move"]]],[[4919.56,2204.56,0.0149903],[[0,"Move"]]],[[4834.52,2266.68,0],[[0,"Move"]]],[[4729.89,2350.38,4.76837e-007],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4971.56,2052.97,0],307,[]],[[4978.56,2053.98,0],307,[]],[[4972.58,2045.97,0],307,[]],[[4985.56,2054.99,0],307,[]],[[4973.59,2038.97,0],307,[]],[[4992.56,2056.01,0],307,[]],[[4974.6,2031.97,0],307,[]],[[4999.56,2057.02,0],307,[]]],[],[[[4955.82,2073.22,0],[[0,"Move"]]],[[4923.49,2098.13,0],[[0,"Move"]]],[[4816.66,2171.36,0],[[0,"Move"]]],[[4665.47,2336.06,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 60;

		// if(!triggerActivated MortarSafeZone) then {
		// 	null = ["OffMap",east,"precise","light",[getPosATL MortarTarget_1,50],150,400,20,-1,-1] spawn OKS_fnc_Mortars; sleep 5;
		// 	null = ["OffMap",east,"precise","light",[getPosATL MortarTarget_2,50],150,400,20,-1,-1] spawn OKS_fnc_Mortars; sleep 5;
		// 	null = ["OffMap",east,"precise","light",[getPosATL MortarTarget_3,50],150,400,20,-1,-1] spawn OKS_fnc_Mortars; sleep 5;
		// } else {
		// 	sleep 15;
		// };

		{	
			[_X,"rush",3,east,1500,[]] spawn OKS_fnc_Lambs_SpawnGroup;
			sleep 3;
		} foreach [rush_1,rush_2,rush_3,rush_4,rush_5];
		[getPos LambsGroupSpawn_1, "hunt", [["rhs_btr80_vdv"],5], east, 900, []] spawn OKS_fnc_Lambs_SpawnGroup;

		sleep 120;

		{	
			[_X,"rush",3,independent,1500,[]] spawn OKS_fnc_Lambs_SpawnGroup;
			sleep 3;
		} foreach [rush_1,rush_2,rush_3,rush_4,rush_5];

		[LambsGroupSpawn_2, "hunt", [["rhs_btr80_vdv"],8], east, 900, []] spawn OKS_fnc_Lambs_SpawnGroup;

		sleep 60;
		// William

		if(_aacDisabled) then {
			//"Radio_8" remoteExec ["playSound",0];
			["hq","side","1-1 be advised, a flight of attack helicopters and friendly APCs are inbound from the west, they will assist in repelling the counter-attack. Godfather, out!","GODFATHER"] remoteExec ["OKS_fnc_Chat",0];
			[convoy_10,convoy_11,convoy_12,west,[5,["rhsusf_m1a1aimwd_usarmy","rhsusf_m1a1aimwd_usarmy","UK3CB_CW_US_B_LATE_LAV25","UK3CB_CW_US_B_LATE_LAV25"], 50, 25],[true,5],[], false, false] spawn OKS_fnc_Convoy_Spawn;

			[attackheli_1,attacktarget_1,west,"RHS_AH64DGrey",500] spawn OKS_fnc_Helicopter_Attack;	sleep 5;
			[attackheli_2,attacktarget_2,west,"RHS_AH64DGrey",500] spawn OKS_fnc_Helicopter_Attack;	
		} else {
			["hq","side","1-1 be advised, the 2nd Marines are here, friendly APCs are inbound from the west, they will assist in repelling the counter-attack. Godfather, out!","GODFATHER"] remoteExec ["OKS_fnc_Chat",0];
			[convoy_10,convoy_11,convoy_12,west,[5,["rhsusf_m1a1aimwd_usarmy","rhsusf_m1a1aimwd_usarmy","UK3CB_CW_US_B_LATE_LAV25","UK3CB_CW_US_B_LATE_LAV25"], 50, 25],[true,5],[], false, false] spawn OKS_fnc_Convoy_Spawn;
		};
		counter2variable = true;

		waitUntil {sleep 15; triggerActivated MissionComplete};
		// William
		//"Radio_9" remoteExec ["playSound",0];
		["hq","side","1-1 this is Godfather, regroup and hold your positions, the battle of Chernogorsk is at hand, good work! Mission complete!","GODFATHER"] remoteExec ["OKS_fnc_Chat",0];
		["Defend_4","SUCCEEDED",true] call BIS_fnc_taskSetState;
	};

	case 7: {
		// Resupply Run Beach.
		if(_aacDisabled) then {
		  	["hq","side","Landing party, be advised, resupply helicopters are inbound for a drop. Be on the lookout for the supplies! USS Liberty, out!","USS Liberty"] remoteExec ["OKS_Chat",0]; 

			//"Radio_Resupply" remoteExec ["playSound",0];		
			[] spawn {
				[west,"RHS_UH1Y_FFAR","drop",["helicopter_spawn","resupply","helicopter_despawn"],{[_Box, ["tiny_box","west"]] call GW_Gear_Fnc_Init},false] spawn OKS_fnc_Supply; sleep 6; 
				[west,"RHS_UH1Y_FFAR","drop",["helicopter_spawn","resupply","helicopter_despawn"],{[_Box, ["tiny_box","west"]] call GW_Gear_Fnc_Init},false] spawn OKS_fnc_Supply;
			};
		};

		// Counter-Attack
		[LambsGroupSpawn_3, "rush", 3, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 5;
		[LambsGroupSpawn_4, "hunt", 3, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 5;
		[LambsGroupSpawn_5, "rush", 3, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 5;
		[LambsGroupSpawn_6, "hunt", 3, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 5;
		[LambsGroupSpawn_7, "rush", 3, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 5;
		[LambsGroupSpawn_8, "hunt", 3, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 5;
		[LambsGroupSpawn_9, "rush", 3, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 5;
		[LambsGroupSpawn_10, "hunt", 3, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 5;
		[LambsGroupSpawn_11, "rush", 3, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 5;

		[ConvoySpawn_2,ConvoyWP_2,ConvoyEnd_2,independent,[4,["rhs_bmp1_msv","rhs_bmp1_msv","rhs_tigr_msv","rhs_tigr_msv"],35,50],[true,4],[],false,false,["rush"],false] spawn OKS_fnc_Convoy_Spawn;
	};
	
	case 8:{
		// Airfield Counter
		_AirfieldConvoyGroupArray = [];
		[ConvoySpawn_3,ConvoyWP_3,ConvoyEnd_3,independent,[4,["rhs_tigr_msv"], 45, 45],[true,4],_AirfieldConvoyGroupArray, false, false, ["hunt"], true] spawn OKS_fnc_Convoy_Spawn;
		waitUntil{
			sleep 5; 
			(
				{
					_Group = _X;
					{
						Alive _X || [_X] call ace_common_fnc_isAwake
					} count units _Group <= 2
				} count _AirfieldConvoyGroupArray == count _AirfieldConvoyGroupArray
			)
		};
		Reinforced3 = true;
	};
	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};

