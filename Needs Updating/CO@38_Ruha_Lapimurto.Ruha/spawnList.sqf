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
		CONVOY_DEAD = false;
		publicVariable "CONVOY_DEAD";
		["hq","side","1-1 be advised, the enemy armored column is inbound from the south. ETA 4 minutes! The column is led by two T-72 tanks, followed by 4 IFVs, drone surveilance will give you an early warning when they are nearby, HQ out!"] remoteExec ["OKS_Chat",0];
		"ambush1" remoteExec ["playSound",0];
		sleep 240;
		["hq","side","1-1 be advised, the enemy armored column in your area. ETA momentarily! Good luck! HQ out."] remoteExec ["OKS_Chat",0];
		"ambush2" remoteExec ["playSound",0];
		setAccTime 1;
		// Convoy Ambush
		[convoy_1,convoy_2,convoy_3,east,[6,["UK3CB_CHD_W_O_T72BA","UK3CB_CHD_W_O_T72BA","UK3CB_CHD_O_BMP1","UK3CB_CHD_O_BMP1","UK3CB_CHD_O_MTLB_PKT","UK3CB_CHD_O_MTLB_PKT"], 6, 20],[true,6],ENEMY_CONVOY_ARRAY, false, false] spawn OKS_Convoy_Spawn;
		sleep 30;
		waitUntil { sleep 5; {{!Alive _X || !([_X] call ace_common_fnc_isAwake)} count units _X == count units _X} count ENEMY_CONVOY_ARRAY == count ENEMY_CONVOY_ARRAY};
		CONVOY_DEAD = true;
		publicVariable "CONVOY_DEAD";
	};

	case 1: {

		/// Dynamic + Static
		[Trigger_1,false,[0,14,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// BMP-1
		[[],[["UK3CB_CHD_O_BMP1",[4241.65,4686.77,-4.76837e-007],32,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_CHD_O_BMP1",[4384.97,4470.69,0.692341],321,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		[[[[4229.37,4742.41,2.59877],47,"Up",[]],[[4225.13,4745.16,3.54444],350,"Up",[]],[[4224.7,4745.67,0.299817],263,"Up",[]],[[4219.14,4773.2,0.334828],172,"Up",[]],[[4221.83,4764.53,0],71,"Middle",[]],[[4189.65,4784.76,0.52153],28,"Up",[]],[[4198.01,4779.74,0.944952],71,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4256.16,4693.2,0],285,"Up",[]],[[4275.93,4715.85,4.76837e-007],358,"Middle",[]],[[4252.77,4740.31,0],118,"Up",[]],[[4220.69,4706.24,0],133,"Middle",[]],[[4310.8,4724.4,1.10562],350,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4235.61,4663.5,0.00329685],358,"Up",[]],[[4232.83,4662.18,0.687147],350,"Up",[]],[[4268.77,4658.94,0.84286],263,"Up",[]],[[4274.5,4640.96,0],18,"Middle",[]],[[4273.23,4645.4,0.794996],308,"Middle",[]],[[4288.47,4662.88,0.188423],1,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4309.97,4703.92,0],344,"Up",[]],[[4315.93,4739.06,0],306,"Middle",[]],[[4313.91,4730.73,1.02764],327,"Up",[]],[[4317.62,4728.98,0.899029],210,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4262.79,4536.15,0],12,"Middle",[]],[[4249.56,4540.27,0],350,"Middle",[]],[[4258.47,4569.13,0.528188],26,"Up",[]],[[4250.71,4577.41,0.770272],350,"Up",[]],[[4236.28,4593.83,0.765347],2,"Middle",[]],[[4239.71,4586.79,0.458209],52,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4282.37,4513.92,-4.29153e-006],350,"Up",[]],[[4278.4,4510.35,0],300,"Up",[]],[[4280.62,4512.5,0],350,"Up",[]],[[4285.48,4537.94,1.157],337,"Up",[]],[[4281.51,4534.35,1.30395],308,"Up",[]],[[4279.73,4532.51,1.2739],333,"Up",[]],[[4281.95,4530.28,1.37078],350,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Small Store
		[[[[4425.74,4472.69,0.24439],228,"Up",[]],[[4431.52,4467.55,0.24439],342,"Up",[]],[[4433,4464.65,0.24439],59,"Middle",[]],[[4436.87,4477.44,0.24439],290,"Up",[]],[[4441.72,4476.79,0.24439],329,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		// Large Store + Tank
		[[[[4454.92,4453.24,0.915557],322,"Middle",[]],[[4446.15,4446.71,0.915557],302,"Middle",[]],[[4453.28,4445.82,0.915557],55,"Middle",[]],[[4452.73,4439.77,0.915557],47,"Up",[]],[[4463.43,4450.8,0.915557],155,"Up",[]]],[["UK3CB_CHD_O_T55",[4450.51,4467.59,0],230,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CHDKZ",1]],[7,["Barrels_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Fuel Station
		[[[[4345.61,4474.38,0.302346],342,"Up",[]],[[4328.28,4463.16,0.075366],66,"Up",[]],[[4336.15,4443.05,0.277592],54,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// HQ Building
		[[[[4418.54,4395.49,0.419126],37,"Up",[]],[[4412.74,4396.25,2.98212],142,"Middle",[]],[[4420.65,4388.89,0.466694],1,"Up",[]],[[4417.11,4385.37,1.01436],352,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Trench North
		[[[[4382.29,4492.39,2.88486e-005],311,"Up",[]],[[4389.88,4502.16,0.45574],311,"Up",[]],[[4395.75,4508.97,0.605309],311,"Up",[]],[[4400.5,4518.61,4.76837e-007],192,"Middle",[]],[[4396.24,4518.26,0.0703835],311,"Up",[]],[[4395.4,4515.5,0.0815086],268,"Up",[]],[[4386.44,4490.57,0.30415],13,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Trench South
		[[[[4393.2,4446.47,0.229646],356,"Up",[]],[[4388.06,4445.68,0.540878],311,"Up",[]],[[4392.98,4435.6,8.34465e-006],77,"Middle",[]],[[4376.42,4430.53,0.494429],311,"Up",[]],[[4366.71,4428.08,0.0113363],311,"Up",[]],[[4369.21,4429.78,1.28746e-005],311,"Up",[]],[[4362.8,4415.65,-1.78814e-005],35,"Middle",[]],[[4352.37,4405.54,-4.64916e-006],25,"Middle",[]],[[4360.13,4405.9,0.608769],311,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Anti Air if AAC is present
		if({!isNil _X} count ["wecho1","wecho2","wecho3","wecho4","wecho5","wecho6","eecho1","eecho2","eecho3","eecho4","eecho5","eecho6"] > 0) then {            
			[[],[["UK3CB_CHD_O_Ural_Zu23",[4485.6,4412.82,-1.43051e-006],353,[["driver",-1,[]],["gunner",-1,[0]],["cargo",2,[1]]],[[6,["CHDKZ",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
			[[],[["UK3CB_CHD_O_Ural_Zu23",[4184.87,4765.83,0],112,[["driver",-1,[]],["gunner",-1,[0]],["cargo",2,[1]]],[[6,["CHDKZ",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		};
		
		// Officer
		 [officer_1,0.5,50,true,true] spawn OKS_Surrender;
		  [officer_2,0.5,50,true,true] spawn OKS_Surrender;
		   [officer_3,0.5,50,true,true] spawn OKS_Surrender;
	};

	case 2: {

		/// Sawmill Objective
		[Trigger_2,false,[0,20,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		/// Static Infantry
		[[[[3436.19,7045.2,0],43,"Up",[]],[[3480.89,7042.59,0],43,"Middle",[]],[[3492.29,7046.23,0],43,"Middle",[]],[[3504.48,7049.21,3.24143],115,"Middle",[]],[[3504.44,7059.46,4.07391],110,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3475.66,7078.49,3.8147e-006],133,"Middle",[]],[[3478.51,7097.71,-3.8147e-006],116,"Up",[]],[[3487.04,7100.95,0.234898],208,"Up",[]],[[3485.77,7112.09,0.692425],107,"Up",[]],[[3476.69,7103.22,0.741901],76,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3468.81,7103,0.795429],266,"Up",[]],[[3464.18,7114.14,0],43,"Up",[]],[[3441.04,7090.77,0.0898323],87,"Up",[]],[[3449.79,7095.31,0.0748634],214,"Up",[]],[[3452.9,7143.44,3.38092],170,"Up",[]],[[3450.34,7153.12,3.34252],20,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Static Vehicles
		[[],[["UK3CB_CHD_O_BMP1",[3465.39,7036.52,7.62939e-006],161,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_CHD_O_BMP1",[3443.87,7267.39,-0.0127335],195,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_CHD_O_BMP1",[3332.99,6973.5,0],100,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Anti Air if AAC is present
		if({!isNil _X} count ["wecho1","wecho2","wecho3","wecho4","wecho5","wecho6","eecho1","eecho2","eecho3","eecho4","eecho5","eecho6"] > 0) then {            
			[[],[["UK3CB_CHD_O_Ural_Zu23",[3395.59,7102.27,0],180,[["driver",-1,[]],["gunner",-1,[0]],["cargo",2,[1]]],[[6,["CHDKZ",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		};
		
	};

	case 3: {

		// Ammo Stockpile Objective
		[Trigger_3,false,[0,25,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Infantry Static
		[[[[7291.65,5394.43,0],297,"Auto",[]],[[7290.62,5390.95,0.0637169],87,"Auto",[]],[[7268.39,5390.08,0.255505],28,"Auto",[]],[[7266.67,5379.89,0.644205],359,"Auto",[]],[[7270.74,5375.87,0.69313],26,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7295.55,5370.44,3.73289],33,"Auto",[]],[[7303.8,5365.12,3.54957],27,"Auto",[]],[[7297.98,5361.7,0.419621],87,"Auto",[]],[[7293.09,5369.94,0.456314],207,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7306.33,5391.93,0],87,"Auto",[]],[[7313.23,5426.93,0],207,"Auto",[]],[[7307.58,5430.13,0],298,"Auto",[]],[[7268.46,5337.48,2.67131],34,"Auto",[]],[[7266.89,5337.51,0.195316],37,"Auto",[]],[[7268.18,5330.84,0.14579],87,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Vehicle Static
		[[],[["UK3CB_CHD_O_MTLB_Cannon",[7353.02,5251.1,-3.8147e-006],299,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["CHDKZ",1]]]],["UK3CB_CHD_O_BMD1PK",[7324.67,5390.97,1.90735e-006],306,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["antena2_hide",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"wood_2_unhide",1]]]],["UK3CB_CHD_O_BMD1PK",[7389.41,5463.48,1.90735e-006],312,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["antena2_hide",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"wood_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		if({!isNil _X} count ["wecho1","wecho2","wecho3","wecho4","wecho5","wecho6","eecho1","eecho2","eecho3","eecho4","eecho5","eecho6"] > 0) then {            
			[[],[["UK3CB_CHD_O_Ural_Zu23",[7286.71,5344.97,1.90735e-006],327,[["driver",-1,[]],["gunner",-1,[0]],["cargo",2,[1]]],[[6,["CHDKZ",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		};
	};

	case 4: {

		/// Trench Objective
		[[[[5791.01,3199.33,0],0,"Auto",[]],[[5785.52,3189.15,-9.53674e-006],121,"Auto",[]],[[5784.94,3197.71,0.26946],0,"Auto",[]],[[5782.75,3194.3,0.257653],74,"Auto",[]],[[5780.74,3192.91,0.237656],246,"Auto",[]],[[5777.21,3202.63,0.574649],190,"Auto",[]],[[5769.07,3203.92,0.438],179,"Auto",[]],[[5774.67,3202.15,0.989849],179,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5785.16,3218,0.475551],84,"Auto",[]],[[5783.74,3223.3,9.53674e-007],84,"Middle",[]],[[5784.71,3206.41,0.806704],84,"Auto",[]],[[5788.62,3213.03,0],52,"Auto",[]],[[5788.76,3210.16,0],69,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5778.82,3237.73,0.173298],264,"Auto",[]],[[5782.14,3242.61,0.51751],84,"Auto",[]],[[5778.88,3248.86,0],161,"Middle",[]],[[5781.01,3256.07,0],225,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5785.47,3259.39,0.11241],17,"Auto",[]],[[5790.71,3256.96,0.0711288],120,"Auto",[]],[[5793.97,3263.86,0.331081],17,"Auto",[]],[[5789.99,3265.18,0.415909],195,"Middle",[]],[[5786.23,3268.56,0],213,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5787.44,3279.9,0.546029],90,"Up",[]],[[5783.71,3293.76,0],155,"Middle",[]],[[5790.66,3286.56,0.269413],92,"Auto",[]],[[5790.57,3289.6,0.17368],247,"Middle",[]],[[5778.77,3306.5,-9.53674e-007],134,"Middle",[]],[[5774.83,3309.88,0.388573],156,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5795.13,3337.09,0],202,"Auto",[]],[[5788.16,3345.9,0],75,"Middle",[]],[[5776.5,3339.82,-9.53674e-007],343,"Middle",[]],[[5787.28,3330.32,9.53674e-007],202,"Auto",[]],[[5789.25,3341.95,0.678431],110,"Auto",[]],[[5783.7,3337.07,0.718974],87,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Static Vehicles
		[[],[["UK3CB_CHD_O_BMP2",[5733.84,3181.32,1.90735e-006],141,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["CHDKZ",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]]]],["UK3CB_CHD_O_BMP2",[5608.87,3368.16,1.90735e-006],331,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["CHDKZ",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]]]],["UK3CB_CHD_O_BMP2",[5700.36,3345.61,1.90735e-006],119,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["CHDKZ",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		if({!isNil _X} count ["wecho1","wecho2","wecho3","wecho4","wecho5","wecho6","eecho1","eecho2","eecho3","eecho4","eecho5","eecho6"] > 0) then {            
			[[],[["UK3CB_CHD_O_ZsuTank",[5468.78,3284.65,9.53674e-007],47,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CHDKZ",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		};

		// Officer
		[officer_4,0.5,50,true,true] spawn OKS_Surrender;
	};


	case 5: {

		// Counter Sawmill
		_Vehicles = ["UK3CB_CHD_O_MTLB_BMP", "UK3CB_CHD_O_MTLB_Cannon", "UK3CB_CHD_O_BRM1K", "UK3CB_CHD_O_BMP2K", "UK3CB_CHD_O_BMD1", "UK3CB_CHD_O_BMP1"];

		// Infantry
		[[3510.13,7526.03,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 20;
		[[3312,7425.3,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 20;
		[[3012.24,7100.75,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 20;
		[[3256.82,6712.19,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 20;
		[[2674.06,7106.76,0],5,east,000,[]] spawn OKS_Rush_SpawnGroup; sleep 20;

		// Vehicle
		[VehicleCounter_1,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup; sleep 60;
		[VehicleCounter_2,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;

	};

	case 6: {

		// Sawmill Ambush 1
		_Vehicles = ["UK3CB_CHD_O_MTLB_BMP", "UK3CB_CHD_O_MTLB_Cannon", "UK3CB_CHD_O_BRM1K", "UK3CB_CHD_O_BMP2K", "UK3CB_CHD_O_BMD1", "UK3CB_CHD_O_BMP1"];

		// Infantry
		[[4473.17,7385.67,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[4258.13,7258.74,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[4383.52,6948.04,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[3991.55,6901.19,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;

		// Vehicle
		[VehicleCounter_3,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;
	};

	case 7:{

		// Sawmill Ambush 2
		_Vehicles = ["UK3CB_CHD_O_MTLB_BMP", "UK3CB_CHD_O_MTLB_Cannon", "UK3CB_CHD_O_BRM1K", "UK3CB_CHD_O_BMP2K", "UK3CB_CHD_O_BMD1", "UK3CB_CHD_O_BMP1"];

		// Infantry
		[[2708.96,6096.1,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[3469.76,6450.7,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[3501.54,6487.3,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[3527.79,6535.67,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;

		// Vehicle
		[VehicleCounter_1,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;	

	};

	case 8:{

		// Ammo Stockpile Ambush 2
		_Vehicles = ["UK3CB_CHD_O_MTLB_BMP", "UK3CB_CHD_O_MTLB_Cannon", "UK3CB_CHD_O_BRM1K", "UK3CB_CHD_O_BMP2K", "UK3CB_CHD_O_BMD1", "UK3CB_CHD_O_BMP1"];

		// Infantry
		[[7674.12,5705.14,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[7836.08,5870.96,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[7835.63,5952.59,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[7309.72,5908.96,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;

		// Vehicle
		[VehicleCounter_4,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;	

	};

	case 9:{

		// Ammo Stockpile Ambush 2
		_Vehicles = ["UK3CB_CHD_O_MTLB_BMP", "UK3CB_CHD_O_MTLB_Cannon", "UK3CB_CHD_O_BRM1K", "UK3CB_CHD_O_BMP2K", "UK3CB_CHD_O_BMD1", "UK3CB_CHD_O_BMP1"];

		// Infantry
		[[8134.31,4905.34,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[8047.73,4910.06,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[7978.37,5792.84,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[7775.71,5590.13,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;

		// Vehicle
		[VehicleCounter_5,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;			

	};

	case 10:{

		// Trench Ambush 1
		_Vehicles = ["UK3CB_CHD_O_MTLB_BMP", "UK3CB_CHD_O_MTLB_Cannon", "UK3CB_CHD_O_BRM1K", "UK3CB_CHD_O_BMP2K", "UK3CB_CHD_O_BMD1", "UK3CB_CHD_O_BMP1"];

		// Infantry
		[[5665.56,2506.81,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[6022.67,2343.37,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[6283.76,2349.66,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[6446.66,2310.14,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;

		// Vehicle
		[VehicleCounter_6,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;			

	};

	case 11:{
		// Trench Ambush 2
		_Vehicles = ["UK3CB_CHD_O_MTLB_BMP", "UK3CB_CHD_O_MTLB_Cannon", "UK3CB_CHD_O_BRM1K", "UK3CB_CHD_O_BMP2K", "UK3CB_CHD_O_BMD1", "UK3CB_CHD_O_BMP1"];

		// Infantry
		[[6539.28,3484.07,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[6673.15,3344.46,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[6409.02,2781.41,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[6134.15,3048.96,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;

		// Vehicle
		[VehicleCounter_7,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;			

	};

	case 12:{
		// Trench Counter-Attack
		_Vehicles = ["UK3CB_CHD_O_MTLB_BMP", "UK3CB_CHD_O_MTLB_Cannon", "UK3CB_CHD_O_BRM1K", "UK3CB_CHD_O_BMP2K", "UK3CB_CHD_O_BMD1", "UK3CB_CHD_O_BMP1"];

		// Infantry
		[[5597.48,3123.08,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[5563.54,3267.16,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[5785.53,2948.26,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;
		[[5246.84,3387.45,0],5,east,2000,[]] spawn OKS_Rush_SpawnGroup; sleep 5;

		// Vehicle
		[VehicleCounter_6,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;	sleep 90;	
		[VehicleCounter_7,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;	sleep 90;	
		[VehicleCounter_8,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;	sleep 90;	
	};

	case 13:{

		// Ruha West Counter-Attack
		[VehicleCounter_10,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;	sleep 120;
		[VehicleCounter_10,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;
	};		

	case 14:{

		// Ruha East Counter-Attack
		[VehicleCounter_9,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;	sleep 120;
		[VehicleCounter_9,nil,selectRandom _Vehicles,east,3000] spawn OKS_Hunt_SpawnGroup;
	};	

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
