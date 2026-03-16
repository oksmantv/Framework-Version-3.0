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

	case 0: {
		// Benton
		"Radio_1" remoteExec ["playSound",0];
		["hq","side","Landing party, be advised, we are beginning our missile barrage, do not exceed 50kph on approach or you might be caught in the strike. USS Liberty, out."] remoteExec ["OKS_Chat",0];

		[arty_1,[getPos target_1,getPos target_2,getPos target_7,getPos target_11],west,1,1,true,false,30,false] spawn OKS_ArtySupression; sleep 3;
		[arty_2,[getPos target_3,getPos target_4,getPos target_5,getPos target_12],west,1,1,true,false,30,false] spawn OKS_ArtySupression; sleep 3;
		[arty_3,[getPos target_5,getPos target_6,getPos target_1,getPos target_13],west,1,1,true,false,30,false] spawn OKS_ArtySupression; sleep 3;
		[arty_4,[getPos target_7,getPos target_8,getPos target_9,getPos target_14],west,1,1,true,false,30,false] spawn OKS_ArtySupression; sleep 3;

		// Cruise Missiles make it lag to shit..
		// [] spawn {{[missile_1,_X] spawn OKS_CruiseMissile; sleep 6;} foreach [missileTarget_1,missileTarget_2]}; sleep 1;
		// [] spawn {{[missile_2,_X] spawn OKS_CruiseMissile; sleep 6;} foreach [missileTarget_3,missileTarget_4]};

		[east,enemyarty_1,[4451.85,-2277.6,0],10,300,30] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf"; sleep 5;
		[east,enemyarty_2,[4451.85,-2277.6,0],10,300,30] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf"; sleep 5;
		[east,enemyarty_3,[4451.85,-2277.6,0],10,300,30] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";
		  
	};

	case 1: {

		_Group1 = [[[[3628.43,2087.38,-7.51019e-006],193,"Up",[]],[[3620.23,2096.66,1.78971],194,"Up",[]],[[3607.83,2094.12,0.0190911],169,"Up",[]],[[3590.84,2087.98,-7.86781e-006],162,"Up",[]],[[3563.26,2094.39,-7.62939e-006],207,"Up",[]],[[3578,2096.04,1.24788],189,"Up",[]],[[3563.72,2130.24,1.68834],169,"Up",[]],[[3585.01,2126.07,1.31333],183,"Up",[]],[[3630.25,2126.7,2.07865],191,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		_Group2 = [[[[3550.32,2108.93,-7.62939e-006],177,"Up",[]],[[3550.72,2118.44,-7.62939e-006],224,"Up",[]],[[3568.81,2093.7,-7.62939e-006],1,"Middle",[]],[[3582.07,2101.54,-7.62939e-006],72,"Middle",[]],[[3586.83,2090.29,-7.62939e-006],41,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		_Group3 = [[[[3604.25,2109.78,0.103876],174,"Middle",[]],[[3609.38,2110.85,0.103876],177,"Middle",[]],[[3640.62,2108.09,0],232,"Middle",[]],[[3602.35,2128.74,0],278,"Middle",[]],[[3618.45,2133.9,0],26,"Middle",[]],[[3628.69,2128.48,1.90808],275,"Middle",[]],[[3628.57,2126.93,1.92514],164,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		_Group4 = [[[[3622.82,2128.74,-7.62939e-006],275,"Middle",[]],[[3612.92,2144.65,-8.10623e-006],252,"Middle",[]],[[3601.89,2129.29,-7.62939e-006],263,"Middle",[]],[[3582.01,2146.89,-7.62939e-006],102,"Middle",[]],[[3569.62,2129.88,-7.15256e-006],3,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		_Group5 = [[[[3612.09,2186.46,0.176346],230,"Up",[]],[[3615.18,2198.43,0.140762],92,"Up",[]],[[3660.93,2184.07,0.0756354],241,"Up",[]],[[3660.07,2205.37,0.186775],292,"Up",[]],[[3665.72,2198.87,0.413019],202,"Up",[]],[[3664.21,2214.83,0.231526],207,"Up",[]],[[3666.28,2209.61,0.340395],288,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

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
		} foreach [units _Group1,units _Group2,units _Group3,units _Group4,units _Group5];

		sleep 5;

		// Erasmo
		"Radio_2" remoteExec ["playSound",0];
		["hq","side","Landing party, this is eagle squadron, airstrike inbound, eagle out."] remoteExec ["OKS_Chat",0];

		[getpos jetspawn_1, jetstrike_1,getpos jetexit_1,selectRandom ["B_Plane_Fighter_01_Stealth_F"],west,200] spawn OKS_AirStrike;  sleep 2;
		[getpos jetspawn_2, jetstrike_2,getpos jetexit_2,selectRandom ["B_Plane_Fighter_01_Stealth_F"],west,200] spawn OKS_AirStrike;  sleep 2; 
		[getpos jetspawn_3, jetstrike_3,getpos jetexit_3,selectRandom ["B_Plane_Fighter_01_Stealth_F"],west,200] spawn OKS_AirStrike;  sleep 2; 


		sleep 30;

		
		[east,enemyarty_4,[4451.85,-2277.6,0],5,300,30] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf"; sleep 5;
		[east,enemyarty_5,[4451.85,-2277.6,0],5,300,30] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf"; sleep 5;
		[east,enemyarty_6,[4451.85,-2277.6,0],5,300,30] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf"; sleep 5;
		[east,enemyarty_7,[4451.85,-2277.6,0],5,300,30] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";

		{
			[_X,east,false,2000,true] spawn GW_Ambient_AAA; sleep 6;
		} foreach [aaa_1,aaa_2,aaa_3];

		null = [] spawn {
			while {true} do {
				{
					_X Params ["_PlaneStart","_PlaneEnd"];
					[_PlaneStart,_PlaneEnd,selectRandom ["rhsusf_f22","UK3CB_B_Osprey_USMC_D","B_Plane_Fighter_01_F","UK3CB_MDF_B_T28Trojan_NAVY_CAS"],west,true,"MOVE",400] spawn OKS_AirSpawn; sleep 120;
				} foreach [
					[getpos Plane_1,getpos PlaneExit_1],
					[getpos Plane_2,getpos PlaneExit_2],
					[getpos Plane_3,getpos PlaneExit_3],
					[getpos Plane_4,getpos PlaneExit_4]
				];
				sleep 300;
			};	
		};
		null = [] spawn {
			while {true} do {
				{
					_X Params ["_HeliStart","_HeliEnd"];
					[_HeliStart,_HeliEnd,selectRandom ["RHS_UH1Y_FFAR_d", "rhsusf_CH53E_USMC_GAU21_D"],west,true,"MOVE",100] spawn OKS_AirSpawn; sleep 10;
				} foreach [
					[getpos Heli_1,getpos HeliExit_1],
					[getpos Heli_2,getpos HeliExit_2]
				];
				sleep 180;
				{
					_X Params ["_HeliStart","_HeliEnd"];
					[_HeliStart,_HeliEnd,selectRandom ["RHS_UH1Y_FFAR_d", "rhsusf_CH53E_USMC_GAU21_D"],west,true,"MOVE",100] spawn OKS_AirSpawn; sleep 10;
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
		// 			[_PlaneStart,_PlaneEnd,selectRandom ["UK3CB_CHD_O_Su25SM","UK3CB_CW_SOV_O_LATE_MIG21_AA"],east,true,"MOVE",400] spawn OKS_AirSpawn; sleep 120;
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
		// 			[_HeliStart,_HeliEnd,selectRandom ["UK3CB_CW_SOV_O_LATE_Mi8","UK3CB_CW_SOV_O_LATE_Mi_24P"],east,true,"MOVE",100] spawn OKS_AirSpawn; sleep 10;
		// 		} foreach [
		// 			[getpos EnemyHeli_1,getpos EnemyHeliExit_1],
		// 			[getpos EnemyHeli_2,getpos EnemyHeliExit_2]
		// 		];		
		// 		sleep 300;
		// 	};	
		// };			

	};

	case 2: {

		{
			{deleteVehicle _X} foreach crew _X;
			deleteVehicle _X;
		} foreach [arty_1,arty_2,arty_3,arty_4];

		[west_1,east_1,meet_1,west,east,["UK3CB_CW_US_B_LATE_LAV25"],["UK3CB_CHD_O_BMP1"]] spawn OKS_AI_Battle;   

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
		"Radio_3" remoteExec ["playSound",0];
		["hq","side","1-1 this is USS Liberty, UAV spotted an incoming column of vehicles from the north-west, ETA 3 minutes. Repel the counter-attack! Liberty, out."] remoteExec ["OKS_Chat",0];
		sleep 180;

		_ConvoyArray = [];
		[convoy_1,convoy_2,convoy_3,east,[4,["rhs_tigr_msv"], 9, 25],[true,4],_ConvoyArray, false, false] spawn OKS_Convoy_Spawn;
	    [true, ["Defend_1","main"], ["A convoy of vehicles are heading towards Komarovo, you are to repel the attack. Good luck!", "Defend Komarovo (NW)", ""], [3586.52,2532.27,0],"ASSIGNED",-1,true,"defend"] call BIS_fnc_taskCreate;

		waitUntil{
			sleep 5; 
			{
				_Group = _X;
				{
					Alive _X || [_X] call ace_common_fnc_isAwake
				} count units _Group == 0
			} count _ConvoyArray == count _ConvoyArray
		};
		["Defend_1","SUCCEEDED",true] call BIS_fnc_taskSetState;
		sleep 5;

		// Bentov
		"Radio_5" remoteExec ["playSound",0];
		["hq","side","1-1 this is USS Liberty, UAV spotted an incoming mechanized column from Balota, ETA 4 minutes. Repel the counter-attack! Liberty, out."] remoteExec ["OKS_Chat",0];	
		
		[true, ["Defend_2","main"], ["Another counter-attack is inbound from the east. They will be there in 4 minutes, prepare your defences. Good luck!", "Defend Komarovo (E)", ""], [3758.1,2552.13,0],"ASSIGNED",-1,true,"defend"] call BIS_fnc_taskCreate;
		sleep 240;
		_ConvoyArray2 = [];
		[convoy_4,convoy_5,convoy_6,east,[4,["rhs_bmp1_msv","rhs_bmp1_msv","RHS_Ural_VDV_01","RHS_Ural_Open_VDV_01"], 8, 30],[true,4],_ConvoyArray2, false, false] spawn OKS_Convoy_Spawn;

		waitUntil{
			sleep 5; 
			{
				_Group = _X;
				{
					Alive _X || [_X] call ace_common_fnc_isAwake
				} count units _Group == 0
			} count _ConvoyArray2 == count _ConvoyArray2
		};
		["Defend_2","SUCCEEDED",true] call BIS_fnc_taskSetState;

		Reinforced1 = false;
		// William

		"Radio_4" remoteExec ["playSound",0];
		["hq","side","1-1 this is Godfather of the 2nd Marines, we are inbound from the west, check your fire. Clear the road for us, we will arrive at the intersection with resupply! Godfather, out."] remoteExec ["OKS_Chat",0];
		[convoy_7,convoy_8,convoy_9,west,[2,["UK3CB_B_AAV_US_WDL"], 15, 30],[true,3], false, "Reinforced1"] spawn OKS_Convoy_Reinforce;
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

		[speaker_1,2500] execVM "Scripts\OKS_Ambience\OKS_AlarmSound.sqf";
	};

	case 5: {


		// Benton
		"Radio_6" remoteExec ["playSound",0];
		["hq","side","1-1 be advised! A squadron of Mi-8s was spotted inbound from the south-east. We suspect they will insert air assault forces to attack you. Repel all enemy forces. Liberty, out!"] remoteExec ["OKS_Chat",0];

		[true, ["Defend_3","main"], ["Balota is secure, however more counter-attacks are inbound! An air assault squadron is inbound for Balota Airfield. Neutralize them!", "Repel air-assault", ""], [4540.79,2503.15,0],"ASSIGNED",-1,true,"defend"] call BIS_fnc_taskCreate;

		// Balota Counter-Attack
		Enemy_AirAssault = [];
		[independent, "RHS_Mi8mt_vvs", False, "paradrop", helistart_1, land_1, heliend_1, [2,0.5], [[4492.85,2439.17,0]],false,false,objNull,Enemy_AirAssault] spawn NEKY_AirDrop; sleep 5;
		[independent, "RHS_Mi8mt_vvs", False, "paradrop", helistart_2, land_2, heliend_2, [2,0.5], [[4492.85,2439.17,0]],false,false,objNull,Enemy_AirAssault] spawn NEKY_AirDrop; sleep 5;
		[independent, "RHS_Mi8AMT_vvsc", False, "paradrop", helistart_3, land_3, heliend_3, [2,0.5], [[4492.85,2439.17,0]],false,false,objNull,Enemy_AirAssault] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 15;

		waitUntil{
			sleep 5; 
			{
				Alive _X || [_X] call ace_common_fnc_isAwake
			} count Enemy_AirAssault == 0
		};

		["Defend_3","SUCCEEDED",true] call BIS_fnc_taskSetState; sleep 5;
		Reinforced2 = true;
		publicVariable "Reinforced2";

	};

	case 6: {

		// William
		"Radio_7" remoteExec ["playSound",0];
		["hq","side","1-1 be advised, a large wave of infantry is heading in from the south-east, they are moving along the MSR, ETA 5 minutes. Setup hasty defence in the forest and repel their attack. Hold out until relieved by the second marines! Godfather, out."] remoteExec ["OKS_Chat",0];
		[true, ["Defend_4","main"], ["A large force of infantry is heading towards Balota from Chernogorsk, we suspect its a human wave attack. Hold the forest and repel the attackers until relieved by friendly forces.", "Repel Human Wave", ""], [4710.65,2347.08,0],"ASSIGNED",-1,true,"defend"] call BIS_fnc_taskCreate;
		sleep 300;

		counter2variable = false;
		[[[[5030.38,2132.2,0.0689001],307,[]],[[5037.38,2133.21,-0.351353],307,[]],[[5031.39,2125.2,1.2574],307,[]],[[5044.37,2134.22,-0.305387],307,[]],[[5032.4,2118.2,2.65769],307,[]],[[5051.37,2135.24,-0.232557],307,[]],[[5033.42,2111.2,1.26961],307,[]],[[5058.37,2136.25,-0.190605],307,[]]],[],[[[4978.5,2165.28,-4.76837e-006],[[0,"Move"]]],[[4919.56,2204.56,0.0149903],[[0,"Move"]]],[[4834.52,2266.68,0],[[0,"Move"]]],[[4729.89,2350.38,4.76837e-007],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4971.56,2052.97,0],307,[]],[[4978.56,2053.98,0],307,[]],[[4972.58,2045.97,0],307,[]],[[4985.56,2054.99,0],307,[]],[[4973.59,2038.97,0],307,[]],[[4992.56,2056.01,0],307,[]],[[4974.6,2031.97,0],307,[]],[[4999.56,2057.02,0],307,[]]],[],[[[4955.82,2073.22,0],[[0,"Move"]]],[[4923.49,2098.13,0],[[0,"Move"]]],[[4816.66,2171.36,0],[[0,"Move"]]],[[4665.47,2336.06,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		
		{[_X,4,1,east,1000,"counter1variable"] spawn OKS_Lambs_ChargeSpawn; sleep 4;} foreach [rush_1,rush_2,rush_3,rush_4,rush_5];

		[[[[5030.38,2132.2,0.0689001],307,[]],[[5037.38,2133.21,-0.351353],307,[]],[[5031.39,2125.2,1.2574],307,[]],[[5044.37,2134.22,-0.305387],307,[]],[[5032.4,2118.2,2.65769],307,[]],[[5051.37,2135.24,-0.232557],307,[]],[[5033.42,2111.2,1.26961],307,[]],[[5058.37,2136.25,-0.190605],307,[]]],[],[[[4978.5,2165.28,-4.76837e-006],[[0,"Move"]]],[[4919.56,2204.56,0.0149903],[[0,"Move"]]],[[4834.52,2266.68,0],[[0,"Move"]]],[[4729.89,2350.38,4.76837e-007],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4971.56,2052.97,0],307,[]],[[4978.56,2053.98,0],307,[]],[[4972.58,2045.97,0],307,[]],[[4985.56,2054.99,0],307,[]],[[4973.59,2038.97,0],307,[]],[[4992.56,2056.01,0],307,[]],[[4974.6,2031.97,0],307,[]],[[4999.56,2057.02,0],307,[]]],[],[[[4955.82,2073.22,0],[[0,"Move"]]],[[4923.49,2098.13,0],[[0,"Move"]]],[[4816.66,2171.36,0],[[0,"Move"]]],[[4665.47,2336.06,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 120;

		// William
		"Radio_8" remoteExec ["playSound",0];
		["hq","side","1-1 be advised, a flight of attack helicopters and friendly APCs are inbound from the west, they will assist in repelling the counter-attack. Godfather, out!"] remoteExec ["OKS_Chat",0];
		[convoy_10,convoy_11,convoy_12,west,[3,["UK3CB_B_AAV_US_WDL"], 15, 20],[true,3], false, "Reinforced3","small",false,false] spawn OKS_Convoy_Reinforce;	

		[attackheli_1,attacktarget_1,west,"RHS_AH64DGrey",500] spawn OKS_Helicopter_Attack;	sleep 5;
		[attackheli_2,attacktarget_2,west,"RHS_AH64DGrey",500] spawn OKS_Helicopter_Attack;	
		counter2variable = true;

		waitUntil {sleep 5; triggerActivated MissionComplete};
		// William
		"Radio_9" remoteExec ["playSound",0];
		["hq","side","1-1 this is Godfather, regroup and hold your positions, the battle of Chernogorsk is at hand, good work! Mission complete!"] remoteExec ["OKS_Chat",0];
	};

	case 7: {

	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   Dynamic Script Params
		   0 - Trigger Name (Object)
		   1 - Disabled - Keep False
		   2 - Number of Infantry - [Static Integer,Patrol Integer,CreateSectorObjective?,LocalPatrols?] (Array) -
		   3 - Wheeled Patrols (Integer/Number)
		   4 - APC Patrols (Integer/Number)
		   5 - Tank Patrols (Integer/Number)
		   6 - Roadblocks [RoadBlocksCount,OnlyOnTarmac,LocalPatrols?,NumberChanceForVehicle(0-1)] (Array)
		   7 - Mortar Pits [MortarCount,LocalPatrols?] (Array)
		   8 - Random Objectives [ObjectiveCount,LocalPatrols?] (Array)
		   9 - Hunt Array Bases [Infantry,Wheeled,APC,Tank,Helicopter]
		   10 - Dynamic Civilians on? (Boolean)

			Local Patrols - This means that the strongpoints / roadblocks / mortar pits / objectives have their own local patrols near their position.
			If you use it on Parameter 2, 30% of the static contacts will be turned into patrols.

		   Note:
		   The Dynamic Scripts does work on its own however is very limited in selecting positions for strongpoints.
		   You as an editor can assist the dynamic script by placing down locations for pinpointing different positions.
		   In Eden-Editor "Location"s can be found in Systems (F5) and Game Logics > Locations.

		   Area, Base, City, Evac Point, Resupply Point & Town -> Spawns Strongpoints & Sector Tasks (Selects Random Buildings in Area. Generally more contacts per building)
		   Outpost -> Spawns Compounds & Sector Tasks (Selects all buildings in range of compoundSize (Settings) and spawns even-spread over all buildings)
		   FOB -> Spawns Roadblocks, use the direction of the logic to define the direction of the roadblock.
		   Respawn Point -> If you use HuntBases these locations will be picked, use the direction of the logic to choose the spawn direction 15-25m away from logic.
		   Camp -> Static Objective positions, once again direction of logic defines direction of Objective compositions.
		   Village -> Defines village area for the Dynamic Civilian presence, radius is found in Settings.sqf

		   All Locations are not required, the script will find its own locations, however for the best experience and best result, help the dynamic script by placing these logics.

		   Example:
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_CreateZone")};

			//// START OF ZONE /////
			[	Trigger_1,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					8,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					25,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				0,    // Number of Wheeled on Patrol
				0,    // Number of APCs on Patrol
				0,    // Number of Tanks on Patrol
				[
					0,     // Number of Roadblocks - Preferred Game Logic Location 'FOB'"
					true,  // Should be on tarmac.
					false, // Should have dedicated patrol.
					0  	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
				],
				[
					0,     // Number of Mortars
					false  // Should have dedicated patrols around it
				],[
					0,    // Number of Random Objectives - Preferred Game Logic Location 'Camp'"
					false // Should have dedicated patrols around it
				],
				[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Preferred Game Logic Location 'Respawn Point'"
				,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;
			//// END OF ZONE ////

		};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   	HuntBase Params

		   	0 - Base Object (Object)
		   	1 - Spawn Object (Object)
		   	2 - Hunt Trigger (Trigger)
		   	3 - Wave Count (Integer/Number)
		   	4 - Respawn Delay in Seconds (Integer/Number)
		   	5 - Enemy Side (Side)
		   	6 - Unit Selection - (Integer/String/Array with Strings)
		   	7 - Refresh Rate in Seconds (Integer/Number)

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn NEKY_Hunt_HuntBase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Hunt_HuntBase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn NEKY_Hunt_HuntBase;
		};

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   AirBase Params

		   0 - Base Object (Object)
		   1 - Spawn Object (Object)
		   2 - Hunt Trigger (Trigger)
		   3 - Enemy Side (Side)
		   4 - Classname of Helicopter (String)
		   5 - Type of Insert (Unload ONLY) (String)
		   6 - Gunner Split - [How many teams,Procent of gunner] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
