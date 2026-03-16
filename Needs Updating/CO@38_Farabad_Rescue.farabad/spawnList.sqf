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

		[Speaker_1, "dynamic", 600, 0, 2, []] spawn OKS_fnc_IncomingAlarm;
		[mortar_1, east, "precise", "light", ["auto", 80], 150, 400, 15] spawn OKS_fnc_Mortars;
		
		waitUntil {sleep 0.5; !isNull gunner mortar_1};
		{
			_player = _x;
			gunner mortar_1 reveal [_player, 4];
		} foreach allPlayers;
		sleep 3;
		[mortar_2, east, "precise", "light", ["auto", 80], 150, 400, 15] spawn OKS_fnc_Mortars;
		sleep 3;
		[mortar_3, east, "precise", "light", ["auto", 80], 150, 400, 15] spawn OKS_fnc_Mortars;

		["Task_2", "CANCELED", true] call BIS_fnc_taskSetState; sleep 2;
		["Task_3", "CANCELED", true] call BIS_fnc_taskSetState;

		// Outpost Ambush Attack.
		_OutpostAttack = [[
			[[4197.71,6052.44,5.90225],201,"Up",[]],[[4195.72,6053.45,6.12681],201,"Up",[]],[[4193.97,6054.22,6.26389],201,"Up",[]],[[4192.14,6055.11,6.35328],201,"Up",[]],[[4184.86,6058.26,6.17161],201,"Up",[]],[[4182.01,6059.51,6.16492],201,"Up",[]],
			[[4187.02,6057.64,8.80895],201,"Up",[]],[[4190.42,6056.13,8.90453],201,"Up",[]],[[4227.94,6018.12,6.33012],201,"Up",[]],[[4226.3,6019.08,6.5489],201,"Up",[]],[[4225.94,6025.07,6.65229],225,"Up",[]],[[4233.1,6014.93,8.72746],201,"Up",[]],[[4230.91,6017.83,8.79947],201,"Up",[]],
			[[4190.5,5946.64,2.59728],220,"Up",[]],[[4194.09,5945.24,3.35523],214,"Up",[]],[[4196.61,5943.85,3.26926],214,"Up",[]],[[4199.21,5942.62,3.27677],214,"Up",[]],[[4202.19,5943.5,3.29626],116,"Up",[]],[[4223.39,6019.22,3.31668],214,"Up",[]],[[4226.71,6019.6,3.18946],203,"Up",[]],
			[[4078.6,5444.62,3.13633],0,"Up",[]],[[4075.88,5446.05,3.07244],340,"Up",[]],[[4074.01,5444.24,3.06561],343,"Up",[]],[[4072.48,5439.79,3.09194],321,"Up",[]],[[4080.32,5437.28,3.2567],2,"Up",[]],[[4053.53,5457.05,3.30676],0,"Up",[]],[[4054.93,5456.16,3.29746],6,"Up",[]],
			[[3812.06,5565.52,-1.43051e-06],40,"Up",[]],[[3816.15,5565.38,-4.76837e-07],40,"Up",[]],[[3811.89,5571.58,6.4373e-05],40,"Up",[]],[[3809.77,5575.57,8.10623e-06],40,"Up",[]],[[3805.19,5575.56,9.53674e-06],40,"Up",[]],[[3881.71,5884.24,-4.72069e-05],117,"Up",[]],
			[[3881.97,5889.1,1.26362e-05],126,"Up",[]],[[3885.27,5903.61,-3.02792e-05],135,"Up",[]],[[3881.12,5954.91,-0.220802],150,"Up",[]],[[3878.32,5953.95,1.95503e-05],154,"Up",[]],[[3876.38,5952.51,-3.38554e-05],157,"Up",[]],[[3802.94,5577.82,2.28882e-05],40,"Up",[]]
		],[
			["UK3CB_ADE_O_DSHkM_Mini_TriPod",[4188.55,6057.5,9.00942],202,[["gunner",-1,[0]]],[]],
			["UK3CB_ADE_O_DSHkM_Mini_TriPod",[4224.18,6020.53,6.45037],227,[["gunner",-1,[0]]],[]]
		],[]] call GW_Common_fnc_spawnGroup;

		{
			_EnemyUnit = _X;
			{
				_Group = _X;
				{
					_EnemyUnit reveal [_X, 3.75]
				} foreach units _Group;
			} foreach (allGroups select {side _Group == west});
		} foreach units _OutpostAttack;

		[true,["Task_5","Task_1"], ["An enemy mortar section is targeting your outpost, find and eliminate the mortars, we suspect they are nearby, look for covered positions, find and silence the mortars!", "Search and Destroy Mortars", ""], nil,"ASSIGNED",-1, true, "destroy"] call BIS_fnc_taskCreate; sleep 4;
		[true,["Task_4","Task_1"], ["The outpost is under attack! You must repel the attackers, attack the enemies surrounding the compound!", "Eliminate Attackers", ""], nil,"ASSIGNED",-1, true, "kill"] call BIS_fnc_taskCreate; sleep 4;

		[] spawn {
			waitUntil {sleep 15; {alive _X || getDammage _X < 0.5 || !(isNull _X)} count [mortar_1, mortar_2, mortar_3] == 0};
			["Task_5", "SUCCEEDED", true] call BIS_fnc_taskSetState;
		};

		// Mobile Attackers.
		_Attack1 = [[[[4177.5,6090.45,0],220,[]],[[4176.9,6097.5,0],220,[]],[[4184.54,6091.05,0],220,[]],[[4176.3,6104.55,0],220,[]],[[4191.59,6091.65,0],220,[]],[[4175.71,6111.59,0],220,[]],[[4198.64,6092.25,0],220,[]],[[4175.11,6118.64,1.43051e-06],220,[]]],[],[[[4129.71,6084.43,1.19209e-05],[[0,"Move"]]],[[4004.84,5959.96,2.26498e-05],[[0,"Move"]]],[getMarkerPos "respawn_west",[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;
		_Attack4 = [[[[4213.65,5807.25,0],264,[]],[[4218.09,5812.75,0],264,[]],[[4219.16,5802.81,0],264,[]],[[4222.53,5818.26,0],264,[]],[[4224.66,5798.37,0],264,[]],[[4226.96,5823.76,0],264,[]],[[4230.17,5793.93,0],264,[]],[[4231.4,5829.27,4.76837e-07],264,[]]],[],[[[4136.96,5795.43,9.05991e-06],[[0,"Move"]]],[[4084.2,5778.55,5.72205e-06],[[0,"Move"]]],[getMarkerPos "respawn_west",[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;
		_Attack2 = [[[[4243.91,5678.7,0],258,[]],[[4247.75,5684.64,0],258,[]],[[4249.85,5674.86,0],258,[]],[[4251.59,5690.58,0],258,[]],[[4255.78,5671.02,0],258,[]],[[4255.43,5696.51,0],258,[]],[[4261.72,5667.18,0],258,[]],[[4259.28,5702.45,0],258,[]]],[],[[[4145.17,5690.7,0],[[0,"Move"]]],[[4074.55,5699.88,0],[[0,"Move"]]],[getMarkerPos "respawn_west",[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;
		_Attack3 = [[[[3923.49,5462.5,0],20,[]],[[3926.46,5456.08,0],20,[]],[[3917.07,5459.53,0],20,[]],[[3929.42,5449.66,0],20,[]],[[3910.65,5456.57,0],20,[]],[[3932.39,5443.24,0],20,[]],[[3904.23,5453.61,0],20,[]],[[3935.35,5436.82,0],20,[]]],[],[[[3938.23,5516.45,8.9407e-06],[[0,"Move"]]],[[3936.81,5599.07,3.33786e-06],[[0,"Move"]]],[getMarkerPos "respawn_west",[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;
		// [[[[4125.81,5389.81,1.90735e-06],326,[]],[[4132.75,5388.45,1.90735e-06],326,[]],[[4124.45,5382.87,2.38419e-06],326,[]],[[4139.69,5387.1,1.43051e-06],326,[]],[[4123.1,5375.93,1.43051e-06],326,[]],[[4146.63,5385.74,1.90735e-06],326,[]],[[4121.74,5368.99,1.90735e-06],326,[]],[[4153.57,5384.38,2.38419e-06],326,[]]],[],[[[4100.16,5451.21,0.53377],[[0,"Move"]]],[[4074.63,5561.09,4.76837e-07],[[0,"Move"]]],[[4004.58,5696.61,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;
		// [[[[3288.08,5308.89,0],57,[]],[[3286.66,5301.96,3.8147e-06],57,[]],[[3281.15,5310.31,3.8147e-06],57,[]],[[3285.23,5295.04,0],57,[]],[[3274.23,5311.73,3.8147e-06],57,[]],[[3283.81,5288.11,3.8147e-06],57,[]],[[3267.3,5313.16,7.62939e-06],57,[]],[[3282.39,5281.18,7.62939e-06],57,[]]],[],[[[3486.47,5414.05,0],[[0,"Move"]]],[[3710.93,5556.85,9.53674e-06],[[0,"Move"]]],[[3963.74,5680.41,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;
		// [[[[3135.32,5694.9,0],82,[]],[[3131.04,5689.28,0],82,[]],[[3129.7,5699.19,0],82,[]],[[3126.75,5683.65,0],82,[]],[[3124.07,5703.47,0],82,[]],[[3122.47,5678.03,0],82,[]],[[3118.45,5707.76,0],82,[]],[[3118.18,5672.4,0],82,[]]],[],[[[3276.87,5686.89,5.14984e-05],[[0,"Move"]]],[[3591.47,5718.47,0],[[0,"Move"]]],[[3832.34,5750.89,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;
		_Attack5 = [[[[4259.62,6066.06,0],220,[]],[[4259.02,6073.11,0],220,[]],[[4266.66,6066.66,0],220,[]],[[4258.42,6080.16,0],220,[]],[[4273.71,6067.26,0],220,[]],[[4257.82,6087.2,0],220,[]],[[4280.75,6067.86,0],220,[]],[[4257.23,6094.25,0],220,[]]],[],[[[4208.67,6044.24,0],[[0,"Move"]]],[[4132.48,5861.04,0],[[0,"Move"]]],[getMarkerPos "respawn_west",[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;

		_AttackArray = [];

		sleep 90;
		_ConvoyArray = [];
		[
			convoy_4, convoy_5, convoy_6,
			east,
			[7, ["UK3CB_TKM_O_BRDM2", "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_V3S_Closed", "UK3CB_TKM_O_V3S_Open", "UK3CB_TKM_O_Pickup", "UK3CB_TKM_O_LR_Open", "UK3CB_TKM_O_LR_Closed"], 30, 40],
			[true, 4],
			_ConvoyArray,
			false,
			false
		] spawn OKS_fnc_Convoy_Spawn;

		sleep 30;
		_InfantryGroups = [_Attack1, _Attack2, _Attack3, _Attack4, _Attack5, _OutpostAttack];
		_InfantryGroups append _ConvoyArray;
		{
			_Group = _X;
			{
				_EnemyUnit = _X;
				_AttackArray pushBack _EnemyUnit;
			} foreach units _Group;	
		} foreach _InfantryGroups;

		// Mortar 1 Guards.
		[[[[4173.19,5719.76,0],289,"Up",[]],[[4173.65,5723.19,0.1701],289,"Up",[]],[[4182.29,5725.19,0.114812],106,"Up",[]],[[4178.97,5726.18,0.113352],280,"Up",[]],[[4176.13,5722.15,0.185462],241,"Middle",[]],[[4173.08,5718.09,0.241795],15,"Middle",[]],[[4177.9,5717.05,0.242097],32,"Middle",[]],[[4180.42,5719.33,0],190,"Middle",[]],[[4185.61,5722.5,2.86102e-06],181,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Mortar 2 Guards.
		[[[[4284.89,5696.85,0],278,"Middle",[]],[[4294.59,5721.91,0],278,"Middle",[]],[[4315.99,5725.19,0],278,"Middle",[]],[[4334.27,5689.59,0],232,"Middle",[]],[[4304.45,5657.82,4.76837e-07],233,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Mortar 3 Guards.
		[[[[4380.12,5826.82,0],107,"Up",[]],[[4402.19,5817.58,0],107,"Up",[]],[[4394.58,5812.56,3.44956],257,"Up",[]],[[4384.09,5792.87,6.95038],246,"Middle",[]],[[4383.61,5796.26,6.94201],290,"Middle",[]],[[4381.46,5788.08,3.58745],238,"Middle",[]],[[4398.82,5827.53,6.96667],225,"Middle",[]],[[4403,5824.56,3.56622],233,"Middle",[]],[[4394.82,5835.35,6.91485],283,"Middle",[]],[[4399.35,5839.72,0],295,"Up",[]],[[4372.24,5856.62,0],174,"Up",[]],[[4384.86,5867.53,0],259,"Up",[]],[[4386.07,5796.73,0.228229],28,"Up",[]],[[4385.23,5792.23,3.56351],214,"Up",[]],[[4391.2,5815.32,3.15739],203,"Up",[]],[[4386.05,5809.49,4.76837e-07],185,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		waitUntil {sleep 15; {alive _X || [_X] call ace_common_fnc_IsAwake} count _AttackArray <= 8};
		["Task_4", "SUCCEEDED", true] call BIS_fnc_taskSetState;

		waitUntil {
			sleep 15;
			"task_5" call BIS_fnc_taskState == "SUCCEEDED" && "task_4" call BIS_fnc_taskState == "SUCCEEDED"
		};
		["Task_1", "SUCCEEDED", true] call BIS_fnc_taskSetState; sleep 5;

		[true,["Task_6","Task_0"], ["Marines are pinned down in the city with casualties and have requested support. Leave the outpost and find the pinned friendlies and assist with casualties.", "Rescue Friendly Forces", ""], nil,"ASSIGNED",-1,false, "help"] call BIS_fnc_taskCreate; sleep 3;
		[10, 2, getPos RescueFriendly_1, west, true, ["lot"], "Task_6"] spawn OKS_fnc_Rescue_Friendly; sleep 5;
		[10, 2, getPos RescueFriendly_2, west, true, ["lot"], "Task_6"] spawn OKS_fnc_Rescue_Friendly;
	};

	case 2: {

		// Counter-Mortars.
		[[[[4334.37,5728.42,0],293,[]],[[4340.93,5731.04,0],293,[]],[[4336.99,5721.85,0],293,[]],[[4347.5,5733.67,0],293,[]],[[4339.62,5715.29,0],293,[]],[[4354.06,5736.3,0],293,[]],[[4342.25,5708.72,0],293,[]],[[4360.63,5738.92,0],293,[]]],[],[[getMarkerPos "respawn_west",[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4292.32,5656.65,4.76837e-07],293,[]],[[4298.88,5659.27,4.76837e-07],293,[]],[[4294.94,5650.08,0],293,[]],[[4305.45,5661.9,4.76837e-07],293,[]],[[4297.57,5643.51,-4.76837e-07],293,[]],[[4312.01,5664.52,4.76837e-07],293,[]],[[4300.2,5636.95,0],293,[]],[[4318.58,5667.15,0],293,[]]],[],[[getMarkerPos "respawn_west",[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		// Mortar Patrols.
		[[[[4429.36,5919.73,0],0,[]],[[4434.36,5914.73,0],0,[]],[[4424.36,5914.73,0],0,[]],[[4439.36,5909.73,0],0,[]]],[],[[[4275.55,5988.97,0],[[0,"Move"]]],[[4334.44,5919.09,0],[[0,"Move"]]],[[4426.79,5907.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4543.09,5714.74,0],40,[]],[[4543.65,5707.69,0],40,[]],[[4536.04,5714.17,0],40,[]],[[4544.21,5700.64,0],40,[]]],[],[[[4453.32,5867.65,0],[[0,"Move"]]],[[4405.75,5795.83,4.76837e-07],[[0,"Move"]]],[[4533.19,5707.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4472.3,5614.62,0],0,[]],[[4477.3,5609.62,0],0,[]],[[4467.3,5609.62,0],0,[]],[[4482.3,5604.62,0],0,[]]],[],[[[4466.06,5718.29,0],[[0,"Move"]]],[[4371.5,5566.92,0],[[0,"Move"]]],[[4469.73,5602.39,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {

		// Convoy Counter-Attack
		[convoy_1, convoy_2, convoy_3, east, [8, ["UK3CB_TKM_O_BTR40_MG", "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_Hilux_Zu23", "UK3CB_TKM_O_V3S_Closed", "UK3CB_TKM_O_V3S_Open", "UK3CB_TKM_O_Pickup", "UK3CB_TKM_O_LR_Open", "UK3CB_TKM_O_LR_Closed"], 50, 50], [true, 6], [], false, false] spawn OKS_fnc_Convoy_Spawn;
	
	};

	case 4: {

		{
			[7,getPos _X] spawn OKS_fnc_Garrison_Rooftops; sleep 10;
		} foreach [rooftop_1, rooftop_2, rooftop_3, rooftop_4, rooftop_5, rooftop_6, rooftop_7, rooftop_8, rooftop_9, rooftop_10, rooftop_11, rooftop_12];

		sleep 20;
		// Patrols
		[[[[4510.92,5337.55,0],0,[]],[[4514.47,5336.11,0],0,[]],[[4510.04,5334.2,0],0,[]],[[4513.47,5331.27,0],0,[]],[[4509.36,5330.37,0],0,[]],[[4516.49,5333.09,0],0,[]],[[4515.3,5338.55,0],0,[]],[[4512.76,5334.05,0],0,[]]],[],[[[4441.71,5368.54,0],[[0,"Move"],[1,"SAFE"]]],[[4461.93,5416.62,0],[[0,"Move"]]],[[4337.96,5469.97,0],[[0,"Move"]]],[[4460.21,5415.47,0],[[0,"Move"]]],[[4443.8,5368.7,0],[[0,"Move"]]],[[4513.02,5339.56,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;
		[[[[4646.94,5325.51,0.105234],0,[]],[[4650.5,5324.07,0.0695763],0,[]],[[4646.07,5322.17,0],0,[]],[[4649.5,5319.23,0],0,[]],[[4645.38,5318.33,0],0,[]],[[4652.51,5321.05,0],0,[]],[[4651.33,5326.51,0.119359],0,[]],[[4648.79,5322.01,0],0,[]]],[],[[[4531.2,5375.77,0],[[0,"Move"],[1,"SAFE"]]],[[4544.67,5406.98,0],[[0,"Move"]]],[[4472.03,5437.73,0],[[0,"Move"]]],[[4542.96,5405.83,0],[[0,"Move"]]],[[4533.3,5375.93,0],[[0,"Move"]]],[[4649.05,5327.52,0.120788],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;
		[[[[4682,5405.59,0],0,[]],[[4685.56,5404.15,0],0,[]],[[4681.13,5402.25,0],0,[]],[[4684.55,5399.31,0],0,[]],[[4680.44,5398.41,0],0,[]],[[4687.57,5401.13,0],0,[]],[[4686.39,5406.59,0],0,[]],[[4683.85,5402.09,0],0,[]]],[],[[[4624.74,5429.98,0],[[0,"Move"],[1,"SAFE"]]],[[4494.81,5487.35,0.0959086],[[0,"Move"]]],[[4514.72,5533.15,0],[[0,"Move"]]],[[4493.09,5486.2,0],[[0,"Move"]]],[[4626.83,5430.14,0],[[0,"Move"]]],[[4684.11,5407.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;
		[[[[4510.12,5480.83,0],0,[]],[[4513.68,5479.39,0],0,[]],[[4509.25,5477.49,0],0,[]],[[4512.67,5474.55,0],0,[]],[[4508.56,5473.65,0],0,[]],[[4515.69,5476.37,0],0,[]],[[4514.51,5481.83,0],0,[]],[[4511.97,5477.33,0],0,[]]],[],[[[4446.88,5506.04,0],[[0,"Move"],[1,"SAFE"]]],[[4417.63,5520.54,0],[[0,"Move"]]],[[4308.81,5523.96,0],[[0,"Move"]]],[[4415.91,5519.38,0],[[0,"Move"]]],[[4448.97,5506.2,0],[[0,"Move"]]],[[4512.22,5482.84,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;
		[[[[4525.78,5415.06,0],0,[]],[[4529.34,5413.62,0],0,[]],[[4524.91,5411.71,0],0,[]],[[4528.33,5408.78,0],0,[]],[[4524.22,5407.88,0],0,[]],[[4531.35,5410.6,0],0,[]],[[4530.17,5416.06,0],0,[]],[[4527.63,5411.56,0],0,[]]],[],[[[4474.36,5437.3,0],[[0,"Move"],[1,"SAFE"]]],[[4453.11,5420.38,0],[[0,"Move"]]],[[4327.53,5469.96,0],[[0,"Move"]]],[[4451.4,5419.23,0],[[0,"Move"]]],[[4476.46,5437.46,0],[[0,"Move"]]],[[4527.88,5417.07,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;

		[HuntSpawn_1, HuntSpawn_1, NEKY_Hunt_Trigger_1, 5, 400, EAST, 4, 90] spawn OKS_fnc_HuntBase;
		[HuntSpawn_2, HuntSpawn_2, NEKY_Hunt_Trigger_1, 5, 400, EAST, 4, 90] spawn OKS_fnc_HuntBase;
		[HuntSpawn_3, HuntSpawn_3, NEKY_Hunt_Trigger_1, 5, 400, EAST, 4, 90] spawn OKS_fnc_HuntBase;
		[HuntSpawn_4, HuntSpawn_4, NEKY_Hunt_Trigger_1, 5, 400, EAST, 4, 90] spawn OKS_fnc_HuntBase;
		[HuntSpawn_5, HuntSpawn_5, NEKY_Hunt_Trigger_1, 5, 400, EAST, 4, 90] spawn OKS_fnc_HuntBase;
		[HuntSpawn_6, HuntSpawn_6, NEKY_Hunt_Trigger_1, 5, 400, EAST, 4, 90] spawn OKS_fnc_HuntBase;

	};

	case 5: {
		// North-Gate Rush Spawn.
		[getpos LambsGroupSpawn_2, "rush", 9, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
	};

	case 6: {
		// South-Gate Rush Spawn.
		[getpos LambsGroupSpawn_1, "rush", 9, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
	};

	case 7: {
		// East-Gate Rush Spawn.
		[getpos LambsGroupSpawn_3, "rush", 9, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
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