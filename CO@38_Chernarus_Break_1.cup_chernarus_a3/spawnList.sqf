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
		[west_4,east_4,meet_4,west,east,["UK3CB_CW_US_B_EARLY_M1A1"],["UK3CB_CHD_O_T72A"],sideUnknown] spawn OKS_AI_Battle;    
	};

	case 1: {

		// Statics
		[[[[6054.88,7800.44,0.547638],291,"Up",[]],[[6054.8,7807.8,0.558258],342,"Up",[]],[[6058.16,7801.75,3.82327],179,"Up",[]],[[6052.8,7811.32,3.81827],326,"Up",[]],[[6053.91,7812.15,3.82785],334,"Up",[]],[[6033.92,7779.15,0.592621],102,"Up",[]],[[6032.08,7767.35,0.615295],57,"Up",[]],[[6027.16,7775.68,1.10599],137,"Up",[]],[[6043.33,7768.64,0.567932],195,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6066.21,7742.15,0.988953],333,"Up",[]],[[6064.67,7740.3,0.988953],331,"Up",[]],[[6075.13,7741.67,0.973419],39,"Up",[]],[[6079.64,7734.58,0.968964],242,"Up",[]],[[6074.37,7729.97,0.968964],265,"Up",[]]],[["rhsgref_ins_bmp1",[6056.29,7746.1,0],340,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["chedaki",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[6164.61,7679.62,0.246796],297,"Up",[]],[[6166.99,7683.09,0.3125],110,"Up",[]],[[6176.82,7676.77,0.220093],291,"Up",[]],[[6170.54,7675.06,0.21405],291,"Up",[]],[[6174.81,7684,0.253357],4,"Up",[]]],[["rhsgref_ins_bmp1",[6184.01,7695.57,0],304,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["chedaki",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Vehicles.
		[[],[["rhs_btr80a_msv",[6290.75,7208.8,2],342,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",0]]]],["rhsgref_ins_bmp1",[6300.56,7842.83,2],251,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[6299.95,7617.3,0],0,[]],[[6304.95,7612.3,0],0,[]],[[6294.95,7612.3,0],0,[]],[[6309.95,7607.3,3.05176e-005],0,[]]],[],[[[6203.15,7707.38,0],[[0,"Move"],[1,"SAFE"]]],[[6225.66,7758.85,0],[[0,"Move"]]],[[6343.18,7655.42,0],[[0,"Move"]]],[[6313.24,7619.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6167.36,7613.35,0],0,[]],[[6172.36,7608.35,0],0,[]],[[6162.36,7608.35,0],0,[]],[[6177.36,7603.35,0],0,[]]],[],[[[6066.03,7684.73,0],[[0,"Move"],[1,"SAFE"]]],[[6113.88,7719.58,0],[[0,"Move"]]],[[6229.94,7620.22,2.94971],[[0,"Move"]]],[[6180.66,7615.45,3.05176e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6167.6,7728.92,0],0,[]],[[6172.6,7723.92,0],0,[]],[[6162.6,7723.92,0],0,[]],[[6177.6,7718.92,0],0,[]]],[],[[[6069.12,7782.13,0],[[0,"Move"],[1,"SAFE"]]],[[6086.36,7842.22,0],[[0,"Move"]]],[[6172.4,7761.94,0],[[0,"Move"]]],[[6174.34,7729.87,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5924.69,7613.31,0],69,[]],[[5921.87,7606.83,0],69,[]],[[5918.21,7616.13,3.05176e-005],69,[]],[[5919.04,7600.35,0],69,[]]],[],[[[5976.7,7821.87,0],[[0,"Move"],[1,"SAFE"]]],[[6049.87,7751.02,0],[[0,"Move"]]],[[6003.76,7668.09,0],[[0,"Move"]]],[[5931.51,7601.71,3.05176e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[alarm_1,2000] execVM "Scripts\OKS_Ambience\OKS_AlarmSound.sqf";
		[alarm_2,2000] execVM "Scripts\OKS_Ambience\OKS_AlarmSound.sqf";

		[Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		{
			[_X,east,false,1500,true] spawn GW_Ambient_AAA; sleep 6;
		} foreach [aaa_1,aaa_2];

		[west_3,east_3,meet_3,west,east,["UK3CB_CW_US_B_LATE_LAV25"],["UK3CB_CHD_O_BMP1"],sideUnknown] spawn OKS_AI_Battle;

		null = [] spawn {
			while {true} do {
				{
					_X Params ["_PlaneStart","_PlaneEnd"];
					[_PlaneStart,_PlaneEnd,selectRandom ["rhsusf_f22","UK3CB_CW_US_B_LATE_A10","rhsusf_f22"],west,true,"MOVE",400] spawn OKS_AirSpawn; sleep 120;
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
					[_HeliStart,_HeliEnd,selectRandom ["RHS_UH60M2_d", "RHS_CH_47F_10"],west,true,"MOVE",100] spawn OKS_AirSpawn; sleep 10;
				} foreach [
					[getpos Heli_1,getpos HeliExit_1],
					[getpos Heli_2,getpos HeliExit_2]
				];
				sleep 180;
				{
					_X Params ["_HeliStart","_HeliEnd"];
					[_HeliStart,_HeliEnd,selectRandom ["RHS_UH60M2_d", "RHS_CH_47F_10"],west,true,"MOVE",100] spawn OKS_AirSpawn; sleep 10;
				} foreach [
					[getpos Heli_3,getpos HeliExit_3],
					[getpos Heli_4,getpos HeliExit_4]
				];				
				sleep 600;
			};	
		};		

		sleep 60;
		null = [] spawn {
			while {true} do {
				{
					_X Params ["_PlaneStart","_PlaneEnd"];
					[_PlaneStart,_PlaneEnd,selectRandom ["UK3CB_CHD_O_Su25SM","UK3CB_CW_SOV_O_LATE_MIG21_AA"],east,true,"MOVE",400] spawn OKS_AirSpawn; sleep 120;
				} foreach [
					[getpos EnemyPlane_1,getpos EnemyPlaneExit_1],
					[getpos EnemyPlane_2,getpos EnemyPlaneExit_2]
				];
				sleep 300;
			};	
		};		

		null = [] spawn {
			while {true} do {
				{
					_X Params ["_HeliStart","_HeliEnd"];
					[_HeliStart,_HeliEnd,selectRandom ["UK3CB_CW_SOV_O_LATE_Mi8","UK3CB_CW_SOV_O_LATE_Mi_24P"],east,true,"MOVE",100] spawn OKS_AirSpawn; sleep 10;
				} foreach [
					[getpos EnemyHeli_1,getpos EnemyHeliExit_1],
					[getpos EnemyHeli_2,getpos EnemyHeliExit_2]
				];		
				sleep 300;
			};	
		};			

	};

	case 2: {

		// Vyshnoye.
		[[[[6583.17,6045.7,1.94095],26,"Up",[]],[[6584.7,6044.24,1.85986],26,"Up",[]],[[6580.28,6040.85,2.00485],283,"Up",[]]],[["UK3CB_CHD_O_BMP1",[6589.33,6080.36,0],350,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[6533.51,6109.72,3.32629],152,"Up",[]],[[6538.69,6116.44,0.148651],359,"Up",[]],[[6540.23,6114.02,0.170319],359,"Up",[]],[[6563.45,6096.08,3.27478],157,"Up",[]],[[6559.98,6092.47,3.26477],67,"Up",[]],[[6566.94,6089.64,0.107422],184,"Up",[]],[[6559.86,6094.53,0.110626],102,"Up",[]],[[6564.73,6092.02,3.27017],248,"Up",[]]],[["UK3CB_CHD_O_ZsuTank",[6434.08,6199.93,0],28,[["driver",-1,[]],["gunner",-1,[0]],["gunner",-1,[0,0]]],[[6,["CHDKZ",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[6570.79,6067.22,0.0242615],50,"Up",[]],[[6569.67,6061.43,0.161499],26,"Up",[]],[[6569.49,6068.47,0.0233154],45,"Up",[]],[[6561.48,6070.31,0.124054],340,"Up",[]],[[6566.83,6068.19,0.0578003],309,"Up",[]]],[["UK3CB_CHD_O_BMP1",[6655.99,5885.23,0],317,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;


		// Patrols
		[[[[6701.98,6649.98,0],28,[]],[[6704.06,6643.22,0],28,[]],[[6695.22,6647.9,0],28,[]],[[6706.13,6636.45,0],28,[]]],[],[[[6591.37,6817.55,0],[[0,"Move"],[1,"SAFE"]]],[[6707.47,6836,0],[[0,"Move"]]],[[6741.88,6719.18,0],[[0,"Move"]]],[[6714.71,6645.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6648.96,6630.62,0],237,[]],[[6650.38,6637.55,0],237,[]],[[6655.88,6629.2,0],237,[]],[[6651.81,6644.47,0],237,[]]],[],[[[6665.57,6430.52,0],[[0,"Move"],[1,"SAFE"]]],[[6554.86,6470.05,0],[[0,"Move"]]],[[6580.74,6589.06,0],[[0,"Move"]]],[[6639.89,6640.57,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6430.81,6468.01,0],22,[]],[[6433.6,6461.51,0],22,[]],[[6424.31,6465.22,0],22,[]],[[6436.38,6455.01,0],22,[]]],[],[[[6302.9,6622.78,0],[[0,"Move"],[1,"SAFE"]]],[[6416.35,6653.55,0],[[0,"Move"]]],[[6463.07,6541.09,0],[[0,"Move"]]],[[6443.93,6465.02,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6699.62,6103.16,3.05176e-005],28,[]],[[6701.69,6096.4,3.05176e-005],28,[]],[[6692.86,6101.09,3.05176e-005],28,[]],[[6703.77,6089.64,3.05176e-005],28,[]]],[],[[[6589.01,6270.74,0],[[0,"Move"],[1,"SAFE"]]],[[6705.1,6289.19,3.05176e-005],[[0,"Move"]]],[[6739.52,6172.37,0],[[0,"Move"]]],[[6712.34,6098.79,3.05176e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6562.88,6001.65,0],28,[]],[[6564.95,5994.89,3.05176e-005],28,[]],[[6556.12,5999.58,0],28,[]],[[6567.02,5988.13,3.05176e-005],28,[]]],[],[[[6452.27,6169.23,0],[[0,"Move"],[1,"SAFE"]]],[[6568.36,6187.68,3.05176e-005],[[0,"Move"]]],[[6602.77,6070.86,3.05176e-005],[[0,"Move"]]],[[6575.6,5997.28,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[Trigger_2,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		{
			[_X,east,false,1500,true] spawn GW_Ambient_AAA; sleep 6;
		} foreach [aaa_4,aaa_5];

		[west_2,east_2,meet_2,west,east,["UK3CB_CW_US_B_EARLY_M1A1","UK3CB_CW_US_B_LATE_LAV25"],["UK3CB_CHD_O_T72A","UK3CB_CHD_O_BMP1"],sideUnknown] spawn OKS_AI_Battle;    
	};

	case 3: {

		// Vyshnoye Counter.
		{[_X,4,1,independent,1000,"counter1variable"] spawn OKS_Lambs_ChargeSpawn; sleep 4.5} foreach [charge_1,charge_2,charge_3,charge_4];

		sleep 60;

		_vehicle1 = [[],[["UK3CB_CHD_O_UAZ_MG",[6917.56,5620.97,3.05176e-005],346,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["CHDKZ",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[[[6580.15,6023.12,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 120;
		_Vehicle2 = [[],[["UK3CB_CHD_O_LR_SPG9",[6930.11,5591.89,3.05176e-005],333,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["CHDKZ",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[[[6413.04,6195.45,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[destroyTrigger_3,false,[8,10]] spawn OKS_Destroy_Houses;

		[west_1,east_1,meet_1,west,east,["UK3CB_CW_US_B_EARLY_M1A1","UK3CB_CW_US_B_LATE_LAV25"],["UK3CB_CHD_O_T72A","UK3CB_CHD_O_BMP1"],sideUnknown] spawn OKS_AI_Battle;    

		waitUntil {
			sleep 1; 
			{
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _X == 0
			} count [_vehicle1,_vehicle2] == 2;
		};
		counter2variable = true;
		publicVariable "counter2variable";
	};

	case 4: {

		// Mogilevka
		{[east,_X,[7087.9,7716.6,0],10,300,30] spawn OKS_ArtyFire; sleep 10;} foreach [arty_1,arty_2,arty_3];

		// Patrols.
		[[[[7657.7,5139.07,0],0,[]],[[7662.7,5134.07,0],0,[]],[[7652.7,5134.07,0],0,[]],[[7667.7,5129.07,1.52588e-005],0,[]]],[],[[[7625.61,5215.65,0],[[0,"Move"],[1,"SAFE"]]],[[7554.71,5214.16,-0.000183105],[[0,"Move"]]],[[7570.69,5131.36,-1.52588e-005],[[0,"Move"]]],[[7642.11,5134.02,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7573.81,5083.74,1.52588e-005],0,[]],[[7578.81,5078.74,3.05176e-005],0,[]],[[7568.81,5078.74,0],0,[]],[[7583.81,5073.74,3.05176e-005],0,[]]],[],[[[7576.55,5135.65,0],[[0,"Move"],[1,"SAFE"]]],[[7488.71,5138.63,0],[[0,"Move"]]],[[7500.62,5079.47,0],[[0,"Move"]]],[[7558.22,5078.69,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7458.78,5064.76,0],0,[]],[[7463.78,5059.76,1.52588e-005],0,[]],[[7453.78,5059.76,1.52588e-005],0,[]],[[7468.78,5054.76,1.52588e-005],0,[]]],[],[[[7441.34,5142.68,0],[[0,"Move"],[1,"SAFE"]]],[[7293.27,5183.04,1.52588e-005],[[0,"Move"]]],[[7371.77,5057.05,0],[[0,"Move"]]],[[7443.19,5059.71,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Statics.
		[[[[7493.41,5112.16,0.457886],281,"Up",[]],[[7492.08,5119.52,0.448807],49,"Up",[]],[[7503.39,5111.86,0.450531],182,"Up",[]],[[7501.03,5115.18,0.438568],112,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7524.78,5149.59,0.165253],13,"Up",[]],[[7526.62,5157.01,0.168259],260,"Up",[]],[[7517.68,5160.63,0.2043],281,"Up",[]],[[7520.56,5164.11,0.20755],281,"Up",[]],[[7523.37,5158.82,0.172104],281,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7561.6,5157.06,0.973328],329,"Up",[]],[[7563.7,5157.82,0.973328],345,"Up",[]],[[7567.65,5153.9,0.973328],259,"Up",[]],[[7566.21,5142.79,0.970886],180,"Up",[]],[[7569.8,5143.6,0.96344],143,"Up",[]],[[7569.95,5146.66,0.966766],78,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		[Trigger_3,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		[west_2,east_2,east_2,west,east,["UK3CB_CW_US_B_EARLY_M1A1","UK3CB_CW_US_B_LATE_LAV25"],["UK3CB_CHD_O_T72A","UK3CB_CHD_O_BMP1"],sideUnknown] spawn OKS_AI_Battle;    
	};

	case 5: {

		// Counter Mogilevka.
		{
			[_X,4,1,independent,1000,"counter1variable3"] spawn OKS_Lambs_ChargeSpawn;
			sleep 4.5;
		} foreach [charge_5,charge_6,charge_7,charge_8,charge_9];

	};

	case 6: {

		[Group officer_1,[9169.74,3844.94,0.00143433],west,false,"Main",false] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";

		// Meeting Engagement Ambush Party
		[[[[8440.75,4430.2,0],265,"Middle",[]],[[8447.96,4434.67,3.05176e-005],265,"Middle",[]],[[8444.8,4421.59,0],265,"Middle",[]],[[8449.71,4425.34,0],286,"Middle",[]],[[8444.84,4418.78,0],263,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Pusta Meeting Engagement & HQ.
		[[[[8712.36,4219.1,0],311,[]],[[8719.41,4219.55,0],311,[]],[[8712.81,4212.04,0],311,[]],[[8726.47,4220.01,0],311,[]]],[],[[[8611.62,4323.48,0.000152588],[[0,"Move"]]],[[8509.93,4399.47,-0.000213623],[[0,"Move"]]],[[8363.58,4489.52,-4.57764e-005],[[0,"Move"]]],[[8046.6,4517.4,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8620.74,4100.86,3.05176e-005],311,[]],[[8627.8,4101.31,0],311,[]],[[8621.2,4093.8,3.05176e-005],311,[]],[[8634.85,4101.77,0],311,[]]],[],[[[8565.2,4279.14,0],[[0,"Move"]]],[[8453.28,4371.92,0],[[0,"Move"]]],[[8322.69,4439.67,1.52588e-005],[[0,"Move"]]],[[8053.93,4424.15,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	
		sleep 45;
		[[],[["UK3CB_CHD_O_BMP1",[8944.88,3986.47,-0.00012207],298,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[8607.54,4231.82,0],[[0,"Move"],[1,"SAFE"]]],[[8532.62,4345.67,0],[[0,"Move"],[5,"LIMITED"]]],[[8199.99,4455.8,-6.10352e-005],[[0,"Move"]]],[[7947.81,4454.96,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 60;
		[[],[["UK3CB_CHD_O_BMP1",[8970.74,3974.16,0],298,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[8608.07,4231.37,0],[[0,"Move"],[1,"SAFE"]]],[[8533.15,4345.22,0],[[0,"Move"],[5,"LIMITED"]]],[[8200.51,4455.35,0],[[0,"Move"]]],[[7951.49,4437.54,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		[Trigger_4,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Patrols.
		[[[[9061.95,3655.32,-1.52588e-005],0,[]],[[9066.95,3650.32,0],0,[]],[[9056.95,3650.32,0],0,[]],[[9071.95,3645.32,0],0,[]]],[],[[[9127.83,3737.93,0],[[0,"Move"],[1,"SAFE"]]],[[9105.22,3804.3,0],[[0,"Move"]]],[[8972.54,3740.84,-7.62939e-005],[[0,"Move"]]],[[9053.69,3643.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9293.04,3797.99,0],0,[]],[[9298.04,3792.99,0],0,[]],[[9288.04,3792.99,0],0,[]],[[9303.04,3787.99,0],0,[]]],[],[[[9245.66,3845.54,0],[[0,"Move"],[1,"SAFE"]]],[[9199.71,3946.3,0],[[0,"Move"]]],[[9047.22,3949.52,0],[[0,"Move"]]],[[9284.77,3786.46,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9168.21,3769.54,1.52588e-005],0,[]],[[9173.21,3764.54,1.52588e-005],0,[]],[[9163.21,3764.54,1.52588e-005],0,[]],[[9178.21,3759.54,1.52588e-005],0,[]]],[],[[[9167.28,3839.46,0],[[0,"Move"],[1,"SAFE"]]],[[9184.71,3944.59,1.52588e-005],[[0,"Move"]]],[[9090.06,3856.51,0],[[0,"Move"]]],[[9159.95,3758.02,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Statics.
		[[[[9137.27,3877.35,1.15057],328,"Up",[]],[[9141.1,3875.2,1.16499],76,"Up",[]],[[9135.44,3867.7,1.13504],167,"Middle",[]],[[9147.68,3871.06,0],332,"Middle",[]],[[9142.86,3889.87,0],265,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9132.32,3872.88,1.13885],346,"Middle",[]],[[9125.31,3871.05,1.14885],263,"Up",[]],[[9125.61,3874.91,1.14885],329,"Up",[]],[[9130.94,3869.75,1.13965],356,"Up",[]],[[9130.75,3859.81,0],268,"Middle",[]],[[9118.57,3849.32,0],78,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9153.37,3817.31,0.528458],0,"Up",[]],[[9150.8,3817.35,0.186615],0,"Up",[]],[[9150.58,3822.21,0.313293],0,"Up",[]],[[9155.91,3822.56,0.478592],0,"Up",[]],[[9150.96,3822.42,3.56889],63,"Up",[]],[[9156.28,3822.1,3.74547],72,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9128.7,3829.39,0],72,"Up",[]],[[9151.11,3846.03,0],43,"Up",[]],[[9180.17,3833,0],322,"Up",[]],[[9181.5,3793.14,0],298,"Up",[]],[[9144.48,3780.12,0.261475],8,"Up",[]],[[9145.96,3779.59,0.320908],18,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 7: {

		[east, "UK3CB_CHD_O_Mi8AMT", False, "paradrop", enemyair_1, enemydrop_1, enemyend_1, [2,0.5], [village_1]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 5;
		[east, "UK3CB_CHD_O_Mi8AMT", False, "paradrop", enemyair_2, enemydrop_2, enemyend_2, [2,0.5], [village_1]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 5;
		[east, "UK3CB_CHD_O_Mi8AMT", False, "paradrop", enemyair_3, enemydrop_3, enemyend_3, [2,0.5], [village_1]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 5;
		[east, "UK3CB_CHD_O_Mi8AMT", False, "paradrop", enemyair_4, enemydrop_4, enemyend_4, [2,0.5], [village_1]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 5;
		[east, "UK3CB_CHD_O_Mi8AMT", False, "paradrop", enemyair_5, enemydrop_5, enemyend_5, [2,0.5], [village_1]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf";


		{_X setMarkerAlpha 1} foreach [
			"breach_1","breach_2","breach_3","breach_4","breach_5",
			"breach_6","breach_7","breach_8","breach_9","breach_10",
			"breach_11","breach_12","breach_13","breach_14","breach_15",
			"breach_16","breach_17","breach_18","breach_19","breach_20",
			"breach_21","breach_22","breach_23","breach_24","breach_25",
			"reinforceMarker_1","reinforceMarker_2","reinforceMarker_3","reinforceMarker_4"
		];

		{_X setMarkerAlpha 0} foreach [
			"remove_1","remove_2","remove_3","remove_4","remove_5",
			"remove_6","remove_7","remove_8","remove_9","remove_10",
			"remove_11","remove_12","enemy_4","enemy_3","enemy_2","enemy_1"
		];		

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
		   6 - gunner Split - [How many teams,Procent of gunner] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
