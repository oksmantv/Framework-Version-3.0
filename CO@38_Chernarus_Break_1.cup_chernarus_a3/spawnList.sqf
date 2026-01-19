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

SystemChat format ["SpawnList Executed - Case: %1", _case];

switch (_case) do {

	case 0: {
		OKS_Battle_Case0 = [west_4,east_4,meet_4,west,east,["UK3CB_CW_US_B_EARLY_M1A1"],["UK3CB_CHD_O_T72A"],sideUnknown] call OKS_fnc_AI_Battle;  
	};

	case 1: {

		// Statics
		[[[[6054.88,7800.44,0.547638],291,"Up",[]],[[6054.8,7807.8,0.558258],342,"Up",[]],[[6058.16,7801.75,3.82327],179,"Up",[]],[[6052.8,7811.32,3.81827],326,"Up",[]],[[6053.91,7812.15,3.82785],334,"Up",[]],[[6033.92,7779.15,0.592621],102,"Up",[]],[[6032.08,7767.35,0.615295],57,"Up",[]],[[6027.16,7775.68,1.10599],137,"Up",[]],[[6043.33,7768.64,0.567932],195,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6066.21,7742.15,0.988953],333,"Up",[]],[[6064.67,7740.3,0.988953],331,"Up",[]],[[6075.13,7741.67,0.973419],39,"Up",[]],[[6079.64,7734.58,0.968964],242,"Up",[]],[[6074.37,7729.97,0.968964],265,"Up",[]]],[["UK3CB_CHD_O_BMP1",[6056.29,7746.1,0],340,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["chedaki",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[6164.61,7679.62,0.246796],297,"Up",[]],[[6166.99,7683.09,0.3125],110,"Up",[]],[[6176.82,7676.77,0.220093],291,"Up",[]],[[6170.54,7675.06,0.21405],291,"Up",[]],[[6174.81,7684,0.253357],4,"Up",[]]],[["UK3CB_CHD_O_BMP1",[6184.01,7695.57,0],304,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["chedaki",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[6561.73,6129.07,0.209961],0,"Up",[[301,0]],"mmg"],[[6558.81,6128.56,0.172546],0,"Up",[[301,0]],"mat"],[[6559.58,6124.23,0.107819],246,"Middle",[[301,0]],"ar"],[[6562.88,6122.81,0.107788],235,"Middle",[[301,0],[302,1]],"ab"],[[6556.21,6127.65,0.178345],0,"Up",[[301,0]],"mat"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5611.84,7346.9,-1.56412],58,"Up",[[301,0]],"sl"],[[5629.25,7328.12,-0.886353],52,"Up",[[301,0]],"g"],[[5683.27,7265.83,3.05176e-05],175,"Up",[[301,0]],"r"],[[5651.98,7305.25,0],45,"Up",[[301,0]],"g"],[[5681.42,7273.12,1.00812],52,"Up",[[301,0]],"mat"],[[5667.42,7296.12,0],39,"Up",[[301,0]],"lr"],[[5742.52,7258.03,0],125,"Up",[[301,0]],"r"],[[5731.85,7264.69,-3.05176e-05],326,"Up",[[301,0]],"r"]],[["rhs_brm1k_msv",[5684.5,7270.17,0],37,[["driver",-1,[]],["gunner",0,[0]],["turret",-1,[1]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]],[351,false]]],["rhs_brm1k_msv",[5738.15,7263.23,0],40,[["driver",-1,[]],["gunner",0,[0]],["turret",-1,[1]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]],[351,false]]],["rhs_brm1k_msv",[5636.35,7320.72,0],58,[["driver",-1,[]],["gunner",0,[0]],["turret",-1,[1]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]],[351,false]]],["rhs_brm1k_msv",[5609.51,7349.96,0],40,[["driver",-1,[]],["gunner",0,[0]],["turret",-1,[1]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]],[351,false]]]],[],independent] call GW_Common_fnc_spawnGroup;

		// Vehicles.
		[[],[["UK3CB_CHD_O_BMP1",[6290.75,7208.8,2],342,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",0]]]],["UK3CB_CHD_O_BMP1",[6300.56,7842.83,2],251,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["rhs_brm1k_msv",[6307.29,6895.32,0],24,[["driver",-1,[]],["gunner",0,[0]],["turret",-1,[1]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]],[351,false]]],["rhs_brm1k_msv",[6368.94,6861.08,0],12,[["driver",-1,[]],["gunner",0,[0]],["turret",-1,[1]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]],[351,false]]],["rhs_brm1k_msv",[6149.31,6735.95,0],263,[["driver",-1,[]],["gunner",0,[0]],["turret",-1,[1]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]],[351,false]]],["rhs_brm1k_msv",[6299.65,6633.21,3.05176e-05],278,[["driver",-1,[]],["gunner",0,[0]],["turret",-1,[1]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CHD_W_O_T55",[5685.31,7003.86,0],54,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CHDKZ",1]],[7,["Barrels_Hide",0]],[351,false]]],["UK3CB_CHD_W_O_T55",[5704.66,6959.78,0],39,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CHDKZ",1]],[7,["Barrels_Hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		
		// Patrols
		[[[[6299.95,7617.3,0],0,[]],[[6304.95,7612.3,0],0,[]],[[6294.95,7612.3,0],0,[]],[[6309.95,7607.3,3.05176e-005],0,[]]],[],[[[6203.15,7707.38,0],[[0,"Move"],[1,"SAFE"]]],[[6225.66,7758.85,0],[[0,"Move"]]],[[6343.18,7655.42,0],[[0,"Move"]]],[[6313.24,7619.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6167.36,7613.35,0],0,[]],[[6172.36,7608.35,0],0,[]],[[6162.36,7608.35,0],0,[]],[[6177.36,7603.35,0],0,[]]],[],[[[6066.03,7684.73,0],[[0,"Move"],[1,"SAFE"]]],[[6113.88,7719.58,0],[[0,"Move"]]],[[6229.94,7620.22,2.94971],[[0,"Move"]]],[[6180.66,7615.45,3.05176e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6167.6,7728.92,0],0,[]],[[6172.6,7723.92,0],0,[]],[[6162.6,7723.92,0],0,[]],[[6177.6,7718.92,0],0,[]]],[],[[[6069.12,7782.13,0],[[0,"Move"],[1,"SAFE"]]],[[6086.36,7842.22,0],[[0,"Move"]]],[[6172.4,7761.94,0],[[0,"Move"]]],[[6174.34,7729.87,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5924.69,7613.31,0],69,[]],[[5921.87,7606.83,0],69,[]],[[5918.21,7616.13,3.05176e-005],69,[]],[[5919.04,7600.35,0],69,[]]],[],[[[5976.7,7821.87,0],[[0,"Move"],[1,"SAFE"]]],[[6049.87,7751.02,0],[[0,"Move"]]],[[6003.76,7668.09,0],[[0,"Move"]]],[[5931.51,7601.71,3.05176e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[alarm_1,2000] spawn OKS_fnc_AlarmSound;

		[Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		null = [Mortar_1,east,"precise","light",["auto",35],150,1500,20,-1,-1] spawn OKS_fnc_Mortars; sleep 2;
		null = [Mortar_2,east,"precise","light",["auto",35],150,1500,20,-1,-1] spawn OKS_fnc_Mortars;

		{
			[_X,east,2] call OKS_fnc_AddVehicleCrew; sleep 1;
		}  foreach [aaa_1,aaa_2,aaa_3,aaa_4,aaa_5];

		null = [radar_1,["rhsgref_ins_ural_Zu23","UK3CB_CW_SOV_O_LATE_BTR40_ZU23"],3500,3500,30] spawn OKS_fnc_Radar; sleep 1;

		// Vyshnoye Vehicles.
		[[],[["UK3CB_CHD_O_BMP1",[6589.33,6080.36,0],350,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CW_SOV_O_LATE_BTR40_ZU23",[6434.08,6199.93,0],28,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CHD_O_BMP1",[6655.99,5885.23,0],317,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		sleep 10; 
		
		OKS_Battle_Case1 = [west_3,east_3,meet_3,west,east,["UK3CB_CW_US_B_LATE_LAV25","rhsusf_M1117_W"],["UK3CB_CHD_O_BMP1"],east] call OKS_fnc_AI_Battle;
		null = [] spawn {
			while {true} do {
				{
					_X Params ["_PlaneStart","_PlaneEnd"];
					[_PlaneStart,_PlaneEnd,selectRandom ["UK3CB_B_Osprey_IDWS_HMG_USMC_D"],west,false,"MOVE",400,[]] spawn OKS_fnc_AirSpawn; sleep 120;
				} foreach [
					[getpos Plane_1,getpos PlaneExit_1],
					[getpos Plane_2,getpos PlaneExit_2],
					[getpos Plane_3,getpos PlaneExit_3],
					[getpos Plane_4,getpos PlaneExit_4]
				];
				sleep 300;
			};	
		};
	};

	case 2: {

		// Vyshnoye.
		[[
			[[6583.17,6045.7,1.94095],26,"Up",[]],[[6584.7,6044.24,1.85986],26,"Up",[]],[[6580.28,6040.85,2.00485],283,"Up",[]],[[6533.51,6109.72,3.32629],152,"Up",[]],
			[[6538.69,6116.44,0.148651],359,"Up",[]],[[6540.23,6114.02,0.170319],359,"Up",[]],[[6563.45,6096.08,3.27478],157,"Up",[]],[[6559.98,6092.47,3.26477],67,"Up",[]],
			[[6566.94,6089.64,0.107422],184,"Up",[]],[[6559.86,6094.53,0.110626],102,"Up",[]],[[6564.73,6092.02,3.27017],248,"Up",[]],[[6570.79,6067.22,0.0242615],50,"Up",[]],
			[[6569.67,6061.43,0.161499],26,"Up",[]],[[6569.49,6068.47,0.0233154],45,"Up",[]],[[6561.48,6070.31,0.124054],340,"Up",[]],[[6566.83,6068.19,0.0578003],309,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;

		// Trenches.
		[[[[5915.57,6687.64,0.834839],341,"Up",[[301,0]],"ar"],[[5915.52,6686.34,1.42926],10,"Middle",[[301,0]],"ar"],[[5914.91,6682.93,1.1947],7,"Middle",[[301,0]],"ar"]],[],[],independent] call GW_Common_fnc_spawnGroup;
		[[[[6349.39,6322.95,0.579163],280,"Up",[[301,0]],"ab"],[[6345.98,6318.23,0.782745],35,"Middle",[[301,0]],"ab"],[[6341.3,6311.96,0.490875],308,"Up",[[301,0]],"ab"],[[6335.25,6309.04,0.337006],293,"Up",[[301,0]],"mmg"],[[6336.96,6309.3,0.602997],325,"Up",[[301,0]],"mat"],[[6356,6335.84,0.611176],282,"Up",[[301,0]],"mat"],[[6359.24,6341.24,0.803955],271,"Up",[[301,0]],"mat"],[[6362.04,6356.62,0.336426],293,"Up",[[301,0]],"mat"],[[6363.08,6350.88,0.998627],250,"Middle",[[301,0]],"mmg"],[[6361.83,6353.77,0.491119],293,"Up",[[301,0]],"mmg"],[[6370.9,6363.37,0.56842],303,"Up",[[301,0]],"mmg"],[[6371.36,6351.76,0.176666],321,"Middle",[[301,0]],"ab"],[[6367.81,6356.38,0.041626],207,"Up",[[301,0]],"ab"],[[6373.89,6347.68,0.676544],207,"Up",[[301,0]],"ab"],[[6377.44,6343.06,0.485931],321,"Middle",[[301,0]],"ab"],[[6374.38,6334.67,0.710602],24,"Middle",[[301,0]],"ab"],[[6376.89,6339.93,0.332642],270,"Up",[[301,0]],"ab"],[[6375.37,6340.54,-0.181946],230,"Middle",[[301,0]],"ab"],[[6370.85,6336.87,0.504883],115,"Middle",[[301,0]],"ab"],[[6376.49,6306.16,0.473663],280,"Middle",[[301,0]],"ab"],[[6366.73,6314.95,0.457184],280,"Middle",[[301,0]],"ab"],[[6343.83,6328.79,0.574005],310,"Up",[[301,0]],"ar"]],[],[],independent] call GW_Common_fnc_spawnGroup;
		[[[[6121.82,6510.81,0.709137],305,"Up",[[301,0]],"ar"],[[6125.87,6510.52,0.761322],268,"Middle",[[301,1]],"ag"],[[6130.05,6508.16,0.6745],327,"Middle",[[301,0]],"lr"],[[6130.3,6510.81,0.972504],0,"Middle",[[301,0]],"r"],[[6135.66,6515.35,0.959198],54,"Up",[[301,0]],"mat"],[[6134.36,6515.74,0.758026],1,"Up",[[301,0]],"mat"],[[6145.85,6548.64,0.489594],321,"Up",[[301,0]],"mat"],[[6144.75,6544.2,0.494019],348,"Middle",[[301,0]],"mat"],[[6145.03,6546.73,0.47168],1,"Middle",[[301,0]],"mat"],[[6158.61,6565.47,0.445221],290,"Up",[[301,0]],"mat"],[[6158.84,6564.17,0.30954],254,"Up",[[301,0]],"mmg"],[[6161,6567.2,1.25665],302,"Up",[[301,0]],"mmg"],[[6165.57,6570.49,1.94742],247,"Middle",[[301,0]],"ab"],[[6162.5,6569.49,0.954376],186,"Middle",[[301,0]],"ab"],[[6145.48,6542.39,0.36087],339,"Middle",[[301,0]],"ab"]],[],[],independent] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[6701.98,6649.98,0],28,[]],[[6704.06,6643.22,0],28,[]],[[6695.22,6647.9,0],28,[]],[[6706.13,6636.45,0],28,[]]],[],[[[6591.37,6817.55,0],[[0,"Move"],[1,"SAFE"]]],[[6707.47,6836,0],[[0,"Move"]]],[[6741.88,6719.18,0],[[0,"Move"]]],[[6714.71,6645.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6648.96,6630.62,0],237,[]],[[6650.38,6637.55,0],237,[]],[[6655.88,6629.2,0],237,[]],[[6651.81,6644.47,0],237,[]]],[],[[[6665.57,6430.52,0],[[0,"Move"],[1,"SAFE"]]],[[6554.86,6470.05,0],[[0,"Move"]]],[[6580.74,6589.06,0],[[0,"Move"]]],[[6639.89,6640.57,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6430.81,6468.01,0],22,[]],[[6433.6,6461.51,0],22,[]],[[6424.31,6465.22,0],22,[]],[[6436.38,6455.01,0],22,[]]],[],[[[6302.9,6622.78,0],[[0,"Move"],[1,"SAFE"]]],[[6416.35,6653.55,0],[[0,"Move"]]],[[6463.07,6541.09,0],[[0,"Move"]]],[[6443.93,6465.02,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6699.62,6103.16,3.05176e-005],28,[]],[[6701.69,6096.4,3.05176e-005],28,[]],[[6692.86,6101.09,3.05176e-005],28,[]],[[6703.77,6089.64,3.05176e-005],28,[]]],[],[[[6589.01,6270.74,0],[[0,"Move"],[1,"SAFE"]]],[[6705.1,6289.19,3.05176e-005],[[0,"Move"]]],[[6739.52,6172.37,0],[[0,"Move"]]],[[6712.34,6098.79,3.05176e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6562.88,6001.65,0],28,[]],[[6564.95,5994.89,3.05176e-005],28,[]],[[6556.12,5999.58,0],28,[]],[[6567.02,5988.13,3.05176e-005],28,[]]],[],[[[6452.27,6169.23,0],[[0,"Move"],[1,"SAFE"]]],[[6568.36,6187.68,3.05176e-005],[[0,"Move"]]],[[6602.77,6070.86,3.05176e-005],[[0,"Move"]]],[[6575.6,5997.28,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[Trigger_2,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		null = [radar_2,["rhsgref_ins_ural_Zu23","UK3CB_CW_SOV_O_LATE_BTR40_ZU23"],3500,3500,30] spawn OKS_fnc_Radar;
		OKS_Battle_Case1 setVariable ["OKS_AIBattle_On", false, true];
		OKS_Battle_Case2 = [west_2,east_2,meet_2,west,east,["UK3CB_CW_US_B_EARLY_M1A1","UK3CB_CW_US_B_LATE_LAV25","rhsusf_M1117_W"],["UK3CB_CHD_O_T72A","UK3CB_CHD_O_BMP1"],east] call OKS_fnc_AI_Battle;    
	};

	case 3: {

		// Vyshnoye Counter.
		["Secure2","SUCCEEDED"] call BIS_fnc_taskSetState;
		sleep 5;
		[true, ["Defend_1","Sub0"], ["Surveillance suggest a large force of infantry is heading towards Vyshnoye from the south-west and from the east. Prepare to defend the village!", "Defend Vyshnoye", "AD"], [6551.67,6056.52,0.00143433], "CREATED", 2, true,"defend"] call BIS_fnc_taskCreate;
		["hq","side","1st Platoon, be advised, a counter-attack is imminent. Hold your positions and prepare to defend."] remoteExec ["OKS_fnc_Chat",0];
		sleep 15;
		{[_X,8,1,east,1000,"counter1variable"] spawn OKS_fnc_LambsChargeSpawn; sleep 4.5} foreach [charge_1,charge_2,charge_3,charge_4];

		sleep 20;
		null = [AirSpawnPosition_2, AirSpawnTarget_2, [["UK3CB_CW_SOV_O_LATE_MIG21",["","rhs_mag_fab250","rhs_mag_fab250",""]]], east] spawn OKS_fnc_AirSpawn;

		_vehicle1 = [[],[["UK3CB_CHD_O_UAZ_MG",[6917.56,5620.97,3.05176e-005],346,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["CHDKZ",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[[[6580.15,6023.12,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 30;
		_Vehicle2 = [[],[["UK3CB_CHD_O_LR_SPG9",[6930.11,5591.89,3.05176e-005],333,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["CHDKZ",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[[[6413.04,6195.45,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		
		// Mogilevka Setup
		[destroyTrigger_3,false,[8,10]] spawn OKS_fnc_Destroy_Houses;
		OKS_Battle_Case2 setVariable ["OKS_AIBattle_On", false, true];
		OKS_Battle_Case3 = [west_1,east_1,meet_1,west,east,["UK3CB_CW_US_B_EARLY_M1A1","UK3CB_CW_US_B_LATE_LAV25"],["UK3CB_CHD_O_T72A","UK3CB_CHD_O_BMP1"],east] call OKS_fnc_AI_Battle;    

		waitUntil {
			sleep 1; 
			{
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _X == 0
			} count [_vehicle1,_vehicle2] == 2;
		};
		counter2variable = true;
		publicVariable "counter2variable";
		deleteVehicle alarm_1;
		[alarm_2,2000] spawn OKS_fnc_AlarmSound;
	};

	case 4: {

		// Mogilevka
		{[east,_X,[7087.9,7716.6,0],10,300,30] spawn OKS_fnc_ArtyFire; sleep 10;} foreach [arty_1,arty_2,arty_3];
		null = [radar_3,["rhsgref_ins_ural_Zu23","UK3CB_CW_SOV_O_LATE_BTR40_ZU23"],3500,3500,30] spawn OKS_fnc_Radar;
		OKS_Battle_Case0 setVariable ["OKS_AIBattle_On", false, true];

		// Patrols.
		[[[[7657.7,5139.07,0],0,[]],[[7662.7,5134.07,0],0,[]],[[7652.7,5134.07,0],0,[]],[[7667.7,5129.07,1.52588e-005],0,[]]],[],[[[7625.61,5215.65,0],[[0,"Move"],[1,"SAFE"]]],[[7554.71,5214.16,-0.000183105],[[0,"Move"]]],[[7570.69,5131.36,-1.52588e-005],[[0,"Move"]]],[[7642.11,5134.02,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7573.81,5083.74,1.52588e-005],0,[]],[[7578.81,5078.74,3.05176e-005],0,[]],[[7568.81,5078.74,0],0,[]],[[7583.81,5073.74,3.05176e-005],0,[]]],[],[[[7576.55,5135.65,0],[[0,"Move"],[1,"SAFE"]]],[[7488.71,5138.63,0],[[0,"Move"]]],[[7500.62,5079.47,0],[[0,"Move"]]],[[7558.22,5078.69,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7458.78,5064.76,0],0,[]],[[7463.78,5059.76,1.52588e-005],0,[]],[[7453.78,5059.76,1.52588e-005],0,[]],[[7468.78,5054.76,1.52588e-005],0,[]]],[],[[[7441.34,5142.68,0],[[0,"Move"],[1,"SAFE"]]],[[7293.27,5183.04,1.52588e-005],[[0,"Move"]]],[[7371.77,5057.05,0],[[0,"Move"]]],[[7443.19,5059.71,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Statics.
		[[[[7493.41,5112.16,0.457886],281,"Up",[]],[[7492.08,5119.52,0.448807],49,"Up",[]],[[7503.39,5111.86,0.450531],182,"Up",[]],[[7501.03,5115.18,0.438568],112,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7524.78,5149.59,0.165253],13,"Up",[]],[[7526.62,5157.01,0.168259],260,"Up",[]],[[7517.68,5160.63,0.2043],281,"Up",[]],[[7520.56,5164.11,0.20755],281,"Up",[]],[[7523.37,5158.82,0.172104],281,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7561.6,5157.06,0.973328],329,"Up",[]],[[7563.7,5157.82,0.973328],345,"Up",[]],[[7567.65,5153.9,0.973328],259,"Up",[]],[[7566.21,5142.79,0.970886],180,"Up",[]],[[7569.8,5143.6,0.96344],143,"Up",[]],[[7569.95,5146.66,0.966766],78,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		[Trigger_3,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		OKS_Battle_Case3 setVariable ["OKS_AIBattle_On", false, true];
		OKS_Battle_Case4 = [west_2,east_2,east_2,west,east,["UK3CB_CW_US_B_EARLY_M1A1","UK3CB_CW_US_B_LATE_LAV25"],["UK3CB_CHD_O_T72A","UK3CB_CHD_O_BMP1"],sideUnknown] call OKS_fnc_AI_Battle;    
	};

	case 5: {

		// Counter Mogilevka.
		["Secure3","SUCCEEDED"] call BIS_fnc_taskSetState;
		sleep 5;
		[true, ["Defend_2","Sub0"], ["Surveillance suggest a large force of infantry is heading towards Mogilevka from the south-west. Prepare to defend the village!", "Defend Mogilevka", "AD"], [7536.9,5138.46,0.00144958], "ASSIGNED", 2, true,"defend"] call BIS_fnc_taskCreate;
		OKS_Battle_Case4 setVariable ["OKS_AIBattle_On", false, true];
		["hq","side","1st Platoon be advised, a large counter-attack is building up to the south-east and south-west. Expect two columns and infantry support. ETA Momentarily."] remoteExec ["OKS_fnc_Chat",0];
		sleep 15;
		deleteVehicle alarm_2;
		{
			[_X,8,1,east,1000,"counter3variable"] spawn OKS_fnc_LambsChargeSpawn;
			sleep 4.5;
		} foreach [charge_5,charge_6,charge_7,charge_8,charge_9];

		null = [AirSpawnPosition_2, AirSpawnTarget_2, [["UK3CB_CW_SOV_O_LATE_MIG21",["rhs_mag_fab250","rhs_mag_fab250","rhs_mag_fab250","rhs_mag_fab250"]]], east] spawn OKS_fnc_AirSpawn;

		sleep 15;
		_ConvoyArray = [];
		[ConvoySpawn_1,ConvoyWP_1,ConvoyEnd_1,east,[6,["UK3CB_CHD_W_O_BMP1","UK3CB_CHD_W_O_BMP1","UK3CB_CHD_W_O_BMP1","UK3CB_CHD_W_O_Gaz66_Open","UK3CB_CHD_W_O_Gaz66_Open","UK3CB_CHD_W_O_Gaz66_Open"],35,50],[true,4],_ConvoyArray,false,false,["rush"],false] spawn OKS_fnc_Convoy_Spawn;
		sleep 15;
		[ConvoySpawn_2,ConvoyWP_2,ConvoyEnd_2,independent,[6,["UK3CB_FIA_O_Quadbike"],60,35],[true,1],_ConvoyArray,false,false,["rush"],false] spawn OKS_fnc_Convoy_Spawn;
		null = [AirSpawnPosition_2, AirSpawnTarget_2, [["UK3CB_CW_SOV_O_LATE_MIG21",["rhs_mag_fab250","rhs_mag_fab250","rhs_mag_fab250","rhs_mag_fab250"]]], east] spawn OKS_fnc_AirSpawn;
		waitUntil {
			sleep 15;
			{
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _X == 0
			} count _ConvoyArray == count _ConvoyArray
		};
		counter4variable = true;
		publicVariable "counter4variable";
	};

	case 6: {

		// Pusta West Trench.
		[[[[8743.67,4026.73,0.797668],0,"Middle",[[301,0]],"mat"],[[8742.59,4026.3,0.726715],335,"Up",[[301,0]],"mat"],[[8743.08,4021.26,0.0324402],335,"Middle",[[301,0]],"mat"],[[8761.06,4016.01,0.583527],351,"Up",[[301,0]],"mat"],[[8760.3,4015.64,0.54953],314,"Up",[[301,0]],"mat"],[[8781.96,4006.09,0.175323],351,"Up",[[301,0]],"mat"],[[8783.93,4006.73,0.316498],351,"Up",[[301,0]],"mat"],[[8798.7,4007.6,0.523407],322,"Up",[[301,0]],"mat"],[[8800.54,4004.29,0.803467],327,"Middle",[[301,0]],"ar"],[[8787.06,4003.62,1.23682],295,"Middle",[[301,0]],"ar"],[[8787.85,4000.39,0.558014],333,"Middle",[[301,0]],"ar"],[[8773.36,4008.25,0.354614],3,"Up",[[301,0]],"ar"],[[8771.12,4009.63,0.338318],279,"Middle",[[301,0]],"ar"],[[8763.67,4007.92,0.876038],32,"Middle",[[301,0]],"ar"],[[8762.82,4011.85,0.595581],322,"Middle",[[301,0]],"ar"]],[],[],independent] call GW_Common_fnc_spawnGroup;

		[Trigger_4,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

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

		// Pusta Defence
		["Main1","SUCCEEDED"] call BIS_fnc_taskSetState;
		sleep 5;
		[true, ["Defend_3","Sub0"], ["Surveillance suggest a large force air assault group has just left Balota, we suspect air assault infantry is heading towards Pusta for a combat drop. We also detect a follow up mechanized force is detaching from the siege of Elektrozavodsk. Prepare to defend the village!", "Defend Pusta", "AD"], [9173.2,3833.5,0], "CREATED", 2, true,"defend"] call BIS_fnc_taskCreate;
		["hq","side","1st Platoon be advised, radar has picked up a large helicopter formation heading towards your position, we also picked up on a mechanized force detaching from the siege of Elektrozavodsk to counter-attack. ETA 3 minutes"] remoteExec ["OKS_fnc_Chat",0];
		sleep 120;

		[independent, "UK3CB_CHD_O_Mi8AMT", False, "paradrop", enemyair_1, enemydrop_1, enemyend_1, [2,0.5], [village_1]] spawn OKS_fnc_AirDrop; sleep 5;
		[independent, "UK3CB_CHD_O_Mi8AMT", true, "paradrop", enemyair_2, enemydrop_2, enemyend_2, [2,0.5], [village_1]] spawn OKS_fnc_AirDrop; sleep 5;
		[independent, "UK3CB_CHD_O_Mi8AMT", False, "paradrop", enemyair_3, enemydrop_3, enemyend_3, [2,0.5], [village_1]] spawn OKS_fnc_AirDrop; sleep 5;
		[independent, "UK3CB_CHD_O_Mi8AMT", true, "paradrop", enemyair_4, enemydrop_4, enemyend_4, [2,0.5], [village_1]] spawn OKS_fnc_AirDrop; sleep 5;
		[independent, "UK3CB_CHD_O_Mi8AMT", False, "paradrop", enemyair_5, enemydrop_5, enemyend_5, [2,0.5], [village_1]] spawn OKS_fnc_AirDrop;

		{_X setMarkerAlpha 1} foreach [
			"breach_1","breach_2","breach_3","breach_4","breach_5",
			"breach_6","breach_7","breach_8","breach_9","breach_10",
			"breach_11","breach_12","breach_13","breach_14","breach_15",
			"breach_16","breach_17","breach_18","breach_19","breach_20",
			"breach_21","breach_22","breach_23","breach_24","breach_25","enemy_4_2",
			"reinforceMarker_1","reinforceMarker_2","reinforceMarker_3",
			"reinforceMarker_4","remove_13","remove_8"
		];

		{_X setMarkerAlpha 0} foreach [
			"remove_1","remove_2","remove_3","remove_4","remove_5",
			"remove_6","remove_7","remove_9","remove_10",
			"remove_11","remove_12","enemy_4","enemy_4_1","enemy_4_2","enemy_3","enemy_2","enemy_1",
			"break_1","break_2","break_3","break_4","break_5","break_6",
			"enemy_6_1","enemy_6_2","enemy_6",
			"enemy_5","enemy_5_1","enemy_5_2",
			"enemy_7","enemy_7_1","enemy_7_2"
		];		

		// Convoy Attack.
		[ConvoySpawn_3,ConvoyWP_3,ConvoyEnd_3,independent,[9,["rhs_t80","rhs_t80","rhs_bmp1_vmf","rhs_bmp1_vmf","rhs_kamaz5350_msv","rhs_kamaz5350_msv","rhs_kamaz5350_msv","rhs_kamaz5350_msv","rhs_t80"],25,40],[true,6],[],false,false,["hunt"],false] spawn OKS_fnc_Convoy_Spawn;
	};

	case 8: {
		// MLRS Strikes.
		["hq","side","1-1 Be advised, friendly artillery is targeting Mogilevka to assist your assault, HQ out"] remoteExec ["OKS_fnc_Chat",0];

		[mlrs_1,[getPos target_5,getPos target_6],west,3,1,true,false,30,false] spawn OKS_fnc_ArtySuppression;
		[mlrs_2,[getPos target_7,getPos target_8],west,3,1,true,false,30,false] spawn OKS_fnc_ArtySuppression;
	};

	case 9: {
		// Vyshnoye Artillery Strikes.
		["hq","side","1-1 Be advised, friendly artillery is targeting Zub Castle to neutralize the strongpoint, HQ out"] remoteExec ["OKS_fnc_Chat",0];

		[mlrs_1,[getPos target_1,getPos target_2],west,3,1,true,false,30,false] spawn OKS_fnc_ArtySuppression;
		[mlrs_2,[getPos target_3,getPos target_4],west,3,1,true,false,30,false] spawn OKS_fnc_ArtySuppression;
	};

	case 10: {

		// Reinforce Stary Sobor
		["Secure1","SUCCEEDED"] call BIS_fnc_taskSetState;
		"reinforceMarker_1" setMarkerAlpha 1; "enemy_1" setMarkerAlpha 0; "enemy_1_1" setMarkerAlpha 0;  
		[reinforce_1,reinforce_2,reinforce_3,west,[2,["UK3CB_B_BTR40_M2_CDF","UK3CB_B_BTR40_M2_CDF"],60,50],[true,2],[],false,false,["defend"],false] spawn OKS_fnc_Convoy_Spawn;
		//[reinforce_1,reinforce_2,reinforce_3,west,[2,["rhsgref_BRDM2_b"], 15, 30],[true,5], false, "Reinforced1"] spawn OKS_fnc_Convoy_Reinforce;
		["hq","side","1-1 be advised friendly forces are inbound from the north-west to garrison the village of Stary Sobor, get clear of the MSR. Once they arrive you are cleared to proceed on mission, HQ out."] remoteExec ["OKS_fnc_Chat",0];
	
		{_X setMarkerAlpha 1} foreach [
			"break_1","break_2","break_3","break_4","break_5","break_6"
		];

		{_X setMarkerAlpha 0} foreach [
			"remove_5",
			"remove_6","remove_7","remove_8","remove_9","remove_10",
			"remove_11","remove_13"
		];	
	
	};

	case 11: {

		// Reinforce Vyshnoye

		"reinforceMarker_2" setMarkerAlpha 1; "enemy_2" setMarkerAlpha 0; "enemy_2_1" setMarkerAlpha 0;
		[reinforce_4,reinforce_5,reinforce_6,west,[2,["UK3CB_B_BTR40_M2_CDF","UK3CB_B_BTR40_M2_CDF"],60,50],[true,3],[],false,false,["defend"],false] spawn OKS_fnc_Convoy_Spawn;

		//[reinforce_4,reinforce_5,reinforce_6,west,[2,["rhsgref_BRDM2_b"], 15, 30],[true,5], false, "Reinforced2"] spawn OKS_fnc_Convoy_Reinforce;

		["hq","side","1-1 be advised friendly forces are inbound from the north to garrison the village of Vyshnoye, clear the road. Once they arrive you are cleared to proceed on mission, HQ out."] remoteExec ["OKS_fnc_Chat",0];
	};

	case 12: {

		// Reinforce Mogilevka
		"reinforceMarker_3" setMarkerAlpha 1; "enemy_3" setMarkerAlpha 0; "enemy_3_1" setMarkerAlpha 0;
		[reinforce_7,reinforce_8,reinforce_9,west,[2,["UK3CB_B_BTR40_M2_CDF","UK3CB_B_BTR40_M2_CDF"],60,50],[true,4],[],false,false,["defend"],false] spawn OKS_fnc_Convoy_Spawn;

		//[reinforce_7,reinforce_8,reinforce_9,west,[2,["rhsgref_BRDM2_b"], 15, 25],[true,5], false, "Reinforced3"] spawn OKS_fnc_Convoy_Reinforce;

		["hq","side","1-1 be advised friendly forces are inbound from the north-west to garrison the village of Mogilevka, clear the road. Once they arrive you are cleared to proceed on mission, HQ out."] remoteExec ["OKS_fnc_Chat",0];
	};

	case 13: {

		// Reinforce Pusta
		["Secure4","SUCCEEDED"] call BIS_fnc_taskSetState;
		[reinforce_10,reinforce_11,reinforce_12,west,[2,["UK3CB_B_BTR40_M2_CDF","UK3CB_B_BTR40_M2_CDF"],60,50],[true,6],[],false,false,["defend"],false] spawn OKS_fnc_Convoy_Spawn;
		
		//[reinforce_10,reinforce_11,reinforce_12,west,[2,["rhsgref_BRDM2_b"], 15, 25],[true,5], false, "Reinforced4","small",true,false] spawn OKS_fnc_Convoy_Reinforce;

		["hq","side","1-1 be advised friendly forces are inbound from the north-west to garrison the village of Pusta, clear the road. Once they arrive you are to regroup and prepare for the final push to Elektrozavodsz, mission complete! HQ out."] remoteExec ["OKS_fnc_Chat",0];

		"reinforceMarker_4" setMarkerAlpha 1; "enemy_4" setMarkerAlpha 0; "enemy_4_1" setMarkerAlpha 0;
	};

	case 14:{

		// Eastern Ambush Party.
		[getPos LambsGroupSpawn_1, "ambushhunt", 6, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_2, "ambushhunt", 6, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_3, "ambushhunt", 6, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;

		[ConvoySpawn_4,ConvoyWP_4,ConvoyEnd_4,east,[4,["UK3CB_CHD_O_BMP1","UK3CB_CHD_O_BMP1","UK3CB_CHD_O_BMP1","UK3CB_CHD_O_BMP1"],40,50],[true,4],[],false,false,["rush"],false] spawn OKS_fnc_Convoy_Spawn;
	};

	case 15:{

		/// Pusta Ambush Party North.
		[getPos LambsGroupSpawn_4, "ambushhunt", 6, independent, 300, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_5, "ambushhunt", 6, independent, 300, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_6, "ambushhunt", 6, independent, 300, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_7, "ambushhunt", 6, independent, 300, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_8, "ambushhunt", 6, independent, 300, []] spawn OKS_fnc_Lambs_SpawnGroup;

		// Trench Ambush.
		[[[[9321.64,4615.94,1.27094],356,"Up",[[301,0]],"ftl"],[[9338.74,4601.34,0.610153],357,"Up",[[301,0]],"r"],[[9318.03,4618.46,0.644928],311,"Up",[[301,0]],"ar"],[[9338.16,4598.86,0.850189],311,"Up",[[301,0]],"g"],[[9339.77,4596.15,0.762115],311,"Middle",[[301,0]],"r"],[[9319.34,4618.48,0.830994],337,"Up",[[301,0]],"mat"],[[9325.66,4612.15,0.669052],356,"Middle",[[301,0]],"ftl"],[[9339.24,4592.64,0.535995],17,"Middle",[[301,0]],"r"],[[9344.94,4592.95,0.366379],295,"Middle",[[301,0]],"r"],[[9348.63,4590.54,0.435913],111,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;

	};

	case 16: {

		// Ambush North Mogilevka.
		[getPos LambsGroupSpawn_9, "ambushhunt", 6, east, 400, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_10, "ambushhunt", 6, east, 400, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_11, "ambushhunt", 6, east, 400, []] spawn OKS_fnc_Lambs_SpawnGroup;

	};

	case 17: {

		// Meeting Engagement Ambush Party
		[[[[8440.75,4430.2,0],265,"Middle",[]],[[8447.96,4434.67,3.05176e-005],265,"Middle",[]],[[8444.8,4421.59,0],265,"Middle",[]],[[8449.71,4425.34,0],286,"Middle",[]],[[8444.84,4418.78,0],263,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Pusta Meeting Engagement & HQ.
		[[[[8712.36,4219.1,0],311,[]],[[8719.41,4219.55,0],311,[]],[[8712.81,4212.04,0],311,[]],[[8726.47,4220.01,0],311,[]]],[],[[[8611.62,4323.48,0.000152588],[[0,"Move"]]],[[8509.93,4399.47,-0.000213623],[[0,"Move"]]],[[8363.58,4489.52,-4.57764e-005],[[0,"Move"]]],[[8046.6,4517.4,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8620.74,4100.86,3.05176e-005],311,[]],[[8627.8,4101.31,0],311,[]],[[8621.2,4093.8,3.05176e-005],311,[]],[[8634.85,4101.77,0],311,[]]],[],[[[8565.2,4279.14,0],[[0,"Move"]]],[[8453.28,4371.92,0],[[0,"Move"]]],[[8322.69,4439.67,1.52588e-005],[[0,"Move"]]],[[8053.93,4424.15,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 45;
		[[],[["UK3CB_CHD_O_BMP1",[8944.88,3986.47,-0.00012207],298,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[8607.54,4231.82,0],[[0,"Move"],[1,"SAFE"]]],[[8532.62,4345.67,0],[[0,"Move"],[5,"LIMITED"]]],[[8199.99,4455.8,-6.10352e-005],[[0,"Move"]]],[[7947.81,4454.96,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 60;
		[[],[["UK3CB_CHD_O_BMP1",[8970.74,3974.16,0],298,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[8608.07,4231.37,0],[[0,"Move"],[1,"SAFE"]]],[[8533.15,4345.22,0],[[0,"Move"],[5,"LIMITED"]]],[[8200.51,4455.35,0],[[0,"Move"]]],[[7951.49,4437.54,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 18: {
		// Friendly in Novy Sobor.
		[[[[7053.22,7689.32,0],194,"Middle",[[301,0]],"r"],[[7053.06,7692.57,0],305,"Middle",[[301,0]],"r"],[[7040.59,7681.19,0],211,"Middle",[[301,0]],"r"],[[7044.22,7680.71,3.05176e-05],202,"Up",[[301,0]],"mmg"],[[7046.5,7679.4,0],186,"Middle",[[301,0]],"r"]],[["rhsgref_cdf_b_t72bb_tv",[7082.88,7685.27,0],84,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["RHS_CDF",1]],[7,["hide_com_shield",0,"hide_sideskirts",0]],[351,false]]]],[],west] call GW_Common_fnc_spawnGroup;
		[[[[7088.99,7663.97,0],144,"Up",[[301,0]],"officer"],[[7086.8,7663.55,0],191,"Up",[[301,0]],"officer"],[[7083.74,7673.61,0],310,"Up",[[301,0]],"r"],[[7080.69,7669.86,0],246,"Middle",[[301,0]],"r"]],[["UK3CB_KRG_B_M270_Avenger",[7085.21,7671.17,0],224,[["gunner",-1,[0]]],[[6,["GREEN",1]],[7,["Hide_External_Kit",1]],[351,false]]]],[],west] call GW_Common_fnc_spawnGroup;
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
