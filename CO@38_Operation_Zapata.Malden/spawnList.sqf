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

Private _ConvoyVehicle = ["UK3CB_CSAT_M_O_BRDM2","UK3CB_CSAT_M_O_BRDM2","UK3CB_CSAT_M_O_Tigr_FFV","UK3CB_CSAT_M_O_Tigr_FFV","UK3CB_CSAT_M_O_Tigr_FFV","UK3CB_CSAT_M_O_Tigr_FFV"];

switch (_case) do {

	case 0:{
		// AAA Sites
		{
			[_X,east,false,3000,true] spawn OKS_fnc_Ambient_AAA; sleep 1;
		} foreach [SAM_1,SAM_2,SAM_3];

		private _RevealNearTargets = {
			Params ["_Group"];
			waitUntil {sleep 5; {alive _X} count units _Group > 0};
			while {{alive _X || [_x] call ace_common_fnc_isAwake} count units _Group > 0} do {

				private _targets = _Group targets [true,500];
				{
					if (alive _x || [_x] call ace_common_fnc_isAwake) then {
						_KnowsAboutValue = _Group knowsAbout _X;
						_Group reveal [_X, (_KnowsAboutValue + 2)];
						sleep 0.1;
					};
				} foreach _targets;
				sleep 15;
			};
		};

		/// Hostages Air Defence.
		[group hostage_1,"Task_1",true] spawn OKS_fnc_Hostage;
		[group hostage_4,"Task_2",true] spawn OKS_fnc_Hostage;
		[group hostage_7,"Task_3",true] spawn OKS_fnc_Hostage;

		// Lolisse Strongpoint
		[[5457.59,10905.7,0],30,EAST] spawn OKS_fnc_Populate_StaticWeapons;
		_Strongpoint1 = [[[[5450.27,10909.7,0.281403],0,"Up",[]],[[5451.92,10909.7,0.282936],0,"Up",[]],[[5453.7,10909.7,0.264229],0,"Up",[]],[[5461.4,10905.3,3.8147e-05],180,"Up",[]],[[5460.31,10915.8,0],0,"Up",[]],[[5462.26,10914.6,3.8147e-05],0,"Up",[]],[[5468.28,10915.1,3.8147e-05],0,"Up",[]],[[5469.52,10914.4,3.8147e-05],0,"Up",[]],[[5470.4,10905.9,3.8147e-05],115,"Up",[]],[[5446.46,10900.7,3.8147e-05],263,"Up",[]],[[5454.85,10900.8,3.8147e-05],263,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[_Strongpoint1] spawn _RevealNearTargets;

		// Air Defence Strongpoint
		_Strongpoint2 = [[[[5204.95,10366.2,1.31087],240,"Up",[]],[[5205.61,10365,1.44328],240,"Up",[]],[[5207.54,10360.9,1.93939],240,"Up",[]],[[5208.68,10358.9,2.10394],240,"Up",[]],[[5200.34,10376.5,0],269,"Middle",[]],[[5201.45,10375,0],257,"Middle",[]],[[5202.38,10373.4,0],247,"Middle",[]],[[5210.4,10361,4.68143],243,"Middle",[]],[[5209.46,10362,4.44731],243,"Middle",[]],[[5208.66,10363.3,4.27998],243,"Middle",[]],[[5208.05,10364.7,4.05704],243,"Middle",[]],[[5207.14,10366.2,3.92842],243,"Middle",[]],[[5206.11,10364.1,1.46149],240,"Up",[]],[[5208.19,10360,2.03069],240,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[_Strongpoint2] spawn _RevealNearTargets;

		_Strongpoint4 = [[[[4766.21,9900.25,1.79408],28,"Up",[[301,0]],"ar"],[[4764.33,9900.82,2.10867],24,"Up",[[301,0]],"mmg"],[[4762.46,9901.33,2.38463],23,"Up",[[301,0]],"lr"],[[4754.91,9900.94,1.83957],10,"Up",[[301,0]],"ar"],[[4752.94,9900.9,1.81505],6,"Up",[[301,0]],"mmg"],[[4751,9900.8,1.74297],5,"Up",[[301,0]],"lr"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[_Strongpoint4] spawn _RevealNearTargets;

		// Goisse Strongpoint
		_Strongpoint3 = [[[[3429.51,8380.99,0],316,"Up",[]],[[3431.91,8387.81,0],316,"Up",[]],[[3430.91,8386.32,0],316,"Middle",[]],[[3436.32,8385.65,-7.62939e-06],17,"Up",[]],[[3436.24,8375.24,0],7,"Up",[]],[[3665.49,8280.79,0],348,"Up",[]],[[3667.3,8280.8,0],27,"Up",[]],[[3660.27,8277.42,0],348,"Up",[]],[[3663.16,8269.24,0],86,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[_Strongpoint3] spawn _RevealNearTargets;
		
		[[3436.85,8379.87,0],30,EAST] spawn OKS_fnc_Populate_StaticWeapons;
		[[3665.78,8271.35,0],30,EAST] spawn OKS_fnc_Populate_StaticWeapons;

		_Strongpoint5 = [[],[["UK3CB_ADE_O_PKM_nest",[5001.51,10510.2,0.0433502],202,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]],[351,false]]],["UK3CB_ADE_O_PKM_nest",[4953.04,10331.5,-0.0268173],6,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]],[351,false]]],["UK3CB_ADE_O_PKM_nest",[4952.92,10275,-0.0246658],274,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]],[351,false]]],["UK3CB_ADE_O_PKM_nest",[5104.93,10183.3,0.721649],325,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		[_Strongpoint5] spawn _RevealNearTargets;

		waitUntil {sleep 1; triggerActivated BeachAssaultTrigger};
		{
			_Group = _x;
			{
				_Unit = _X;
				_playerTargets = (list BeachAssaultTrigger) select { isPlayer _X && alive _X};
				{
					_Unit reveal [_X,3.5];
					sleep 0.1;
				} foreach _playerTargets;
				sleep 0.1;
			} foreach units _Group;
			sleep 0.1;
		} foreach [_Strongpoint1,_Strongpoint2,_Strongpoint3,_Strongpoint4,_Strongpoint5];
	};

	case 1: {
		// Air Defence Strongpoints
		[[[[5112.11,10507.5,0],276,"Middle",[]],[[5112.31,10503.1,0],273,"Middle",[]],[[5051.58,10537.6,0],258,"Middle",[]]],[["UK3CB_ADE_O_PKM_Low",[5111.94,10504.4,0],269,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5001.52,10114.3,0],353,"Middle",[]],[[4997.3,10113.1,0],349,"Middle",[]]],[["UK3CB_ADE_O_DSHkM_Mini_TriPod",[4999.43,10113.5,0.0277557],353,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4954.59,10292.2,0],77,"Up",[]],[[4984.53,10263.9,0.359947],320,"Up",[]],[[4984.15,10270.1,0.698662],204,"Up",[]],[[4992.25,10277.5,0.5886],232,"Up",[]],[[4986.8,10275,0.750755],310,"Up",[]],[[4987.98,10295.9,0.325272],9,"Up",[]],[[4987.33,10292.6,0.260941],227,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4967.44,10326.4,0],101,"Up",[]],[[4959.46,10327.9,0],288,"Up",[]],[[4962.51,10305.7,0],13,"Middle",[]],[[4959.21,10310,3.24075],267,"Up",[]],[[4959.41,10311,0.339706],280,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4952.41,10309.2,0],281,"Middle",[]],[[4952.62,10306.7,0],277,"Middle",[]],[[4953.2,10307.9,3.26211],257,"Up",[]],[[5010.21,10508.1,7.62939e-06],353,"Middle",[]],[[4996.17,10511.6,0],195,"Middle",[]],[[4991.66,10516.2,0],13,"Middle",[]],[[5001.65,10544.1,0],342,"Middle",[]]],[["UK3CB_ADE_O_PKM_High",[4952.7,10303.8,0],274,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4744.46,9896.08,0],21,"Middle",[]],[[4742.02,9896.3,1.52588e-05],17,"Middle",[]],[[4722.41,9891.84,0],337,"Up",[]],[[4713.56,9878.58,0],291,"Up",[]],[[4763.64,9898.77,0],25,"Middle",[]]],[["UK3CB_ADE_O_KORD_high",[4739.84,9896.71,0],14,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4714.73,9821.54,-4.57764e-05],1,"Up",[]],[[4737.62,9805.64,0],341,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Hostage Guards.
		[[[[4985.02,10263.7,0.337486],305,"Up",[[301,0]],"ab"],[[4983.84,10270.3,0.651665],0,"Up",[[301,0]],"ar"],[[4986.17,10274.7,0.725418],339,"Up",[[301,0]],"mmg"],[[4993.12,10278,0.489418],261,"Up",[[301,0]],"g"],[[4991.17,10274.2,0.34185],327,"Up",[[301,0]],"ab"],[[4977.89,10256.7,0],179,"Up",[[301,0]],"ab"],[[4975.67,10279.9,0],327,"Middle",[[301,0]],"ab"],[[4977.39,10290.9,0],218,"Middle",[[301,0]],"ab"],[[4983.32,10303.9,0],0,"Up",[[301,0]],"ab"],[[4986.44,10303.8,7.62939e-06],339,"Middle",[[301,0]],"mmg"],[[4988.41,10296.2,0.326286],334,"Up",[[301,0]],"ab"],[[4987.7,10292.4,0.248894],240,"Up",[[301,0]],"ab"]],[],[],east] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[4733.16,9825.74,0],0,[]],[[4738.16,9820.74,0],0,[]],[[4728.16,9820.74,0],0,[]],[[4743.16,9815.74,0],0,[]]],[],[[[4785.62,9909.06,0],[[0,"Move"],[1,"SAFE"]]],[[4811.19,10029.9,0.000221252],[[0,"Move"]]],[[4837.84,10129.6,7.62939e-05],[[0,"Move"]]],[[4814.53,10029,0],[[0,"Move"]]],[[4790.16,9910.44,-0.000137329],[[0,"Move"]]],[[4743.06,9823.65,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5048.87,10514.3,0],175,[]],[[5043.45,10518.8,0],175,[]],[[5053.41,10519.7,0],175,[]],[[5038.03,10523.3,0],175,[]]],[],[[[4997.19,10426,0],[[0,"Move"],[1,"SAFE"]]],[[5006.99,10349.1,0],[[0,"Move"]]],[[4968.84,10298.9,0],[[0,"Move"]]],[[5005.17,10350.3,0],[[0,"Move"]]],[[4999.58,10424.8,0],[[0,"Move"]]],[[5038.83,10515.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5060.78,10078.7,3.05176e-05],0,[]],[[5065.78,10073.7,1.52588e-05],0,[]],[[5055.78,10073.7,1.52588e-05],0,[]],[[5070.78,10068.7,1.52588e-05],0,[]]],[],[[[5147.51,10114.8,1.52588e-05],[[0,"Move"],[1,"SAFE"]]],[[5171.2,10196.4,0],[[0,"Move"]]],[[5088.94,10318.2,0],[[0,"Move"]]],[[5174.54,10195.5,0],[[0,"Move"]]],[[5152.05,10116.2,0],[[0,"Move"]]],[[5070.68,10076.6,1.52588e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4796.6,10161.6,0],0,[]],[[4801.6,10156.6,0],0,[]],[[4791.6,10156.6,0],0,[]],[[4806.6,10151.6,0],0,[]]],[],[[[4782.69,10257,0],[[0,"Move"],[1,"SAFE"]]],[[4771.43,10339.4,0],[[0,"Move"]]],[[4934.06,10422.4,3.8147e-06],[[0,"Move"]]],[[4774.77,10338.5,0],[[0,"Move"]]],[[4787.23,10258.3,0],[[0,"Move"]]],[[4806.5,10159.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {
		// Counter-Attack SAM
		private _sleep = 200;
		if(!isDedicated) then {
			_sleep * 0.1;
		};

		sleep _sleep;
		[[[[4937.13,9648.26,-0.168396],0,[]],[[4937.15,9645.42,0.943604],0,[]],[[4934.18,9646.83,0.20813],0,[]],[[4934.86,9641.99,2.53546],0,[]]],[],[[[4952.7,9769.54,3.05176e-05],[[0,"Move"]]],[[4885.34,9868.28,0.000152588],[[0,"Move"]]],[[4737.35,9850.65,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5025.67,9700.38,3.13229],0,[]],[[5025.68,9697.53,3.51202],0,[]],[[5022.71,9698.94,2.81503],0,[]],[[5023.39,9694.1,3.97043],0,[]]],[],[[[5007.13,9828.75,0],[[0,"Move"]]],[[4959.25,9903.44,0],[[0,"Move"]]],[[4816.21,10046.6,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4841.46,9616.32,0],0,[]],[[4841.48,9613.47,0.83374],0,[]],[[4838.51,9614.89,2.46722],0,[]],[[4839.19,9610.05,1.29053],0,[]]],[],[[[4773.72,9620.34,0],[[0,"Move"]]],[[4688.45,9692.32,0],[[0,"Move"]]],[[4728.99,9853.96,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		[convoystart_1,convoywp_1,convoyend_1,independent,[5,_ConvoyVehicle, 45, 40],[true,4],[], false, false] spawn OKS_fnc_Convoy_Spawn;
		[convoystart_2,convoywp_2,convoyend_2,independent,[5,_ConvoyVehicle, 45, 40],[true,4],[], false, false] spawn OKS_fnc_Convoy_Spawn;
	};

	case 3: {
		// Red Beach Lolisse - Beach Assault
		{
			[east,_X,(getPos (selectRandom [artyTarget_1,artyTarget_2,artyTarget_3,artyTarget_4,artyTarget_5])),10,300,180] spawn OKS_fnc_ArtyFire; sleep 6;
		} foreach [arty_1,arty_2,arty_3,arty_4,arty_5];

		[[[[5427.16,11507.5,8.2016e-05],272,"Up",[]],[[5432.93,11499.6,0],272,"Up",[]],[[5422.13,11442,0],354,"Up",[]],[[5366.84,11432.2,3.8147e-06],281,"Middle",[]],[[5336.19,11409.5,1.90735e-06],320,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5441.73,11382.8,3.61993],337,"Up",[]],[[5438.04,11385.1,3.61993],73,"Up",[]],[[5431,11384.7,3.61993],329,"Up",[]],[[5431.98,11376.7,3.55993],156,"Up",[]],[[5445.97,11370.6,0.424629],337,"Up",[]],[[5433.04,11385.5,0.259193],151,"Up",[]],[[5437.17,11379.2,0.259193],325,"Up",[]],[[5436.66,11386.9,2.00994],150,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5443.44,11404.4,0],52,"Middle",[]],[[5458.01,11394.5,3.91955],6,"Middle",[]],[[5461.55,11391.7,3.91955],349,"Middle",[]],[[5460.63,11391.4,0.499554],314,"Middle",[]],[[5455.52,11382.8,0.499554],312,"Middle",[]],[[5454.94,11382.1,3.91955],344,"Middle",[]],[[5450.7,11386.4,3.91955],87,"Middle",[]],[[5450.3,11386.7,3.91955],340,"Up",[]],[[5455.85,11392.8,4.03148],340,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5463.3,11555.3,3.8147e-06],333,"Middle",[]],[[5469.57,11577.9,3.8147e-06],280,"Middle",[]],[[5595.31,11556.7,6.14228],342,"Middle",[]],[[5590.54,11553.6,5.98474],326,"Middle",[]],[[5576.45,11557.5,3.0289],326,"Middle",[]],[[5565.92,11558.6,1.8686],324,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Lolisse Garrison
		[[[[5566.49,11133.6,3.74319],26,"Up",[]],[[5561.6,11137.9,3.83762],330,"Up",[]],[[5560.71,11131.7,4.09661],284,"Up",[]],[[5548.85,11146.5,3.03754],106,"Up",[]],[[5541.94,11148,0.185608],113,"Up",[]],[[5531.17,11134.4,0],275,"Up",[]],[[5555.11,11140.7,0],250,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5543.16,11178.1,3.76144],353,"Up",[]],[[5537.72,11173.4,3.76144],276,"Up",[]],[[5519.24,11160.6,7.62939e-06],204,"Up",[]],[[5508.82,11171.9,0.486717],32,"Up",[]],[[5516.13,11164.7,3.90118],201,"Up",[]],[[5556.02,11170.1,0.420181],110,"Up",[]],[[5550.22,11171.5,0.421349],213,"Up",[]],[[5518.24,11172,3.95689],40,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5537.48,11237.6,0],35,"Middle",[]],[[5535.54,11223.8,0.302444],104,"Up",[]],[[5536.55,11217,0.293938],104,"Up",[]],[[5531.78,11220.1,0.307861],240,"Up",[]],[[5534.53,11212.1,0.422058],98,"Up",[]],[[5529.28,11206.3,0.419769],201,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5510.74,11246.1,3.05176e-05],184,"Middle",[]],[[5494.72,11213.1,0],329,"Middle",[]],[[5544.49,11205.1,3.05176e-05],1,"Middle",[]],[[5566.86,11207.1,3.86514],324,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5596.21,11243.6,0],61,"Middle",[]],[[5605.41,11233.1,0.281303],211,"Up",[]],[[5606.29,11240.9,0.348236],34,"Up",[]],[[5590.66,11236.4,7.62939e-06],306,"Up",[]],[[5586.75,11224.5,0.230858],345,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5563.21,11199.5,3.85375],272,"Up",[]],[[5563.14,11196,3.79375],233,"Middle",[]],[[5573.15,11242.1,0.304649],191,"Up",[]],[[5584.69,11267.3,0],326,"Up",[]],[[5574.99,11257.2,0],2,"Up",[]],[[5569.02,11248.2,0.520126],18,"Up",[]],[[5567.68,11244.3,0.371216],200,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[5608.85,11620.9,0],0,[]],[[5613.85,11615.9,4.76837e-07],0,[]],[[5603.85,11615.9,0],0,[]],[[5618.85,11610.9,-9.53674e-07],0,[]]],[],[[[5672.5,11538.6,0],[[0,"Move"],[1,"SAFE"]]],[[5579.87,11464,-0.000358582],[[0,"Move"]]],[[5542.18,11568.3,6.00815e-05],[[0,"Move"]]],[[5595.21,11610,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5353.1,11389.9,0],0,[]],[[5358.1,11384.9,0],0,[]],[[5348.1,11384.9,0.0482597],0,[]],[[5363.1,11379.9,1.90735e-06],0,[]]],[],[[[5430.69,11318.4,0],[[0,"Move"],[1,"SAFE"]]],[[5330.01,11214.4,0],[[0,"Move"]]],[[5264.43,11302.2,0],[[0,"Move"]]],[[5339.46,11379,3.8147e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5597.94,11346.8,0],0,[]],[[5602.94,11341.8,0],0,[]],[[5592.94,11341.8,0],0,[]],[[5607.94,11336.8,0],0,[]]],[],[[[5633,11260.1,1.94923],[[0,"Move"],[1,"SAFE"]]],[[5558.32,11234.1,7.62939e-06],[[0,"Move"]]],[[5538.91,11306.2,0],[[0,"Move"]]],[[5591.31,11347.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5586.17,11106.4,0],73,[]],[[5582.84,11100.2,0],73,[]],[[5579.94,11109.7,0],73,[]],[[5579.5,11093.9,0],73,[]]],[],[[[5483.53,11127.5,1.94917],[[0,"Move"],[1,"SAFE"]]],[[5461.58,11187.1,0],[[0,"Move"]]],[[5548.49,11191.5,0],[[0,"Move"]]],[[5597.96,11149.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5522.57,11254.8,0],155,[]],[[5515.93,11257.2,0],155,[]],[[5525.01,11261.4,-7.62939e-06],155,[]],[[5509.29,11259.6,-7.62939e-06],155,[]]],[],[[[5466.1,11343.1,1.9491],[[0,"Move"],[1,"SAFE"]]],[[5506.94,11353.5,0],[[0,"Move"]]],[[5555.33,11298.4,0],[[0,"Move"]]],[[5528.89,11256.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[5445.13,11387.5,0],"sector",50,EAST,false, false, false, "Task_2"] spawn OKS_fnc_CreateObjectives;
		[[[[5505.69,11169.1,0.430428],63,"Middle",[[301,0]],"ftl"],[[5513.8,11172.6,4.03304],41,"Up",[[301,0]],"mmg"],[[5518.15,11168.3,0.527542],214,"Middle",[[301,1]],"ag"],[[5507.74,11175.5,3.94691],108,"Up",[[301,0]],"r"],[[5514.34,11165.6,3.9],262,"Up",[[301,0]],"mat"],[[5506,11172.2,3.88743],12,"Up",[[301,0]],"mat"],[[5505.79,11169.1,3.85327],45,"Middle",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;

		[AirBase_1, AirSpawn_1, AirHuntTrigger_2, independent, "O_Heli_Transport_04_covered_F", 'fastrope', [1,0.5], 900, 100, 90, 5] spawn OKS_fnc_Airbase; sleep 20;
		[AirBase_2, AirSpawn_2, AirHuntTrigger_2, independent, "O_Heli_Transport_04_covered_F", 'fastrope', [1,0.5], 900, 100, 90, 5] spawn OKS_fnc_Airbase; sleep 20;
		[AirBase_3, AirSpawn_3, AirHuntTrigger_2, independent, "O_Heli_Transport_04_covered_F", 'fastrope', [1,0.5], 900, 100, 90, 5] spawn OKS_fnc_Airbase;		
	};

	case 4: {
		// Lolisse Counter-Attack
		["hq","side","1-1 be advised a large counter-attack is inbound towards Lolisse. Defend the position and repel the attackers! Expect a platoon of infantry from the south and a motorised company from the east. Godspeed! HQ out!"] remoteExec ["OKS_fnc_Chat",0];
		[true, ["Defend_1", "Task_2"], ["You have been tasked with holding the village of Lilosse. Counter-attacks are coming in from the south and the east.", "Defend Lolisse", "Defend"], nil, 1, 3, true, "defend"] call BIS_fnc_taskCreate;

		// Infantry
		_InfantryArray = [];

		_Group = [[[[5472.01,10875.4,0],0,[]],[[5477.01,10870.4,0],0,[]],[[5467.01,10870.4,0],0,[]],[[5482.01,10865.4,0],0,[]],[[5462.01,10865.4,0],0,[]],[[5487.01,10860.4,0],0,[]],[[5457.01,10860.4,0],0,[]],[[5492.01,10855.4,0],0,[]]],[],[[[5475.54,11046,-7.62939e-06],[[0,"Move"]]],[[5506.59,11201.2,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_InfantryArray append (units _Group);
		_Group = [[[[5567.92,10899.6,0],0,[]],[[5572.92,10894.6,0],0,[]],[[5562.92,10894.6,0],0,[]],[[5577.92,10889.6,0],0,[]],[[5557.92,10889.6,0],0,[]],[[5582.92,10884.6,0],0,[]],[[5552.92,10884.6,0],0,[]],[[5587.92,10879.6,0],0,[]]],[],[[[5571.45,11070.2,0],[[0,"Move"]]],[[5545.84,11195.1,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_InfantryArray append (units _Group);
		_Group = [[[[5689.67,10909,0],0,[]],[[5694.67,10904,0],0,[]],[[5684.67,10904,0],0,[]],[[5699.67,10899,0],0,[]],[[5679.67,10899,0],0,[]],[[5704.67,10894,0],0,[]],[[5674.67,10894,0],0,[]],[[5709.67,10889,0],0,[]]],[],[[[5693.2,11079.5,0],[[0,"Move"]]],[[5584.5,11196.6,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_InfantryArray append (units _Group);

		_ConvoyArray1 = [];
		_ConvoyArray2 = [];
		[convoystart_3,convoywp_3,convoyend_3,independent,[6,_ConvoyVehicle, 50, 45],[true,4], _ConvoyArray1, false, false] spawn OKS_fnc_Convoy_Spawn;
		[convoystart_4,convoywp_4,convoyend_4,independent,[6,_ConvoyVehicle, 50, 45],[true,4], _ConvoyArray2, false, false] spawn OKS_fnc_Convoy_Spawn;

		waitUntil {
			sleep 10;	
			{
				_Group = _X;
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group == 0
			} count _ConvoyArray1 == count _ConvoyArray1
			and
			{
				_Group = _X;
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group == 0
			} count _ConvoyArray2 == count _ConvoyArray2
			and			
			{
				_Group = _X;
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group == 0
			} count _InfantryArray == count _InfantryArray
		};

		["Defend_1","SUCCEEDED"] call BIS_fnc_taskSetState;
		DefendComplete = true;
		publicVariable "DefendComplete";
	};

	case 5: {
		// Green Beach Goisse
		[[[[3205.69,8480.35,0.0648041],240,"Up",[]],[[3204.9,8486.42,0.131432],240,"Up",[]],[[3210.53,8499.36,0.0648041],240,"Up",[]],[[3226.19,8500.02,0.0648041],240,"Up",[]],[[3215.35,8510.55,0.564724],240,"Up",[]],[[3212.81,8501.32,0.564724],240,"Up",[]],[[3215.89,8505.09,3.98473],240,"Up",[]],[[3219.93,8509.87,3.98473],240,"Up",[]],[[3215.03,8513.15,3.98473],240,"Up",[]],[[3208.7,8505.11,4.06386],240,"Up",[]],[[3245.38,8492.49,1.1033],240,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3620.64,8563.98,0],216,"Up",[]],[[3635.72,8569.74,-1.52588e-05],268,"Up",[]],[[3645.72,8564.04,0],76,"Middle",[]],[[3634.3,8556.06,3.83916],285,"Up",[]],[[3640.66,8555.5,3.55841],17,"Up",[]],[[3600.66,8575.24,0.0299377],109,"Middle",[]],[[3629.44,8579.23,0.523438],222,"Up",[]],[[3621.99,8542.92,0],248,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3550.98,8519.17,4.26071],325,"Up",[]],[[3549.35,8514.35,0.61908],325,"Up",[]],[[3546.42,8511.67,4.66592],247,"Up",[]],[[3556.25,8501.46,4.62875],211,"Up",[]],[[3559.85,8503.52,4.6499],136,"Up",[]],[[3557.38,8510,4.32639],325,"Up",[]],[[3556.01,8507.02,0.452667],54,"Up",[]],[[3557.14,8501.34,0.672775],325,"Up",[]],[[3563.32,8507.55,4.53064],104,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3570.33,8489.54,0.768967],226,"Up",[]],[[3576.89,8489.63,0.554535],5,"Up",[]],[[3582.63,8487.69,3.87503],46,"Up",[]],[[3570.07,8489.82,4.20204],215,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3600.52,8490.12,4.42905],341,"Up",[]],[[3596.67,8486.41,4.40866],301,"Up",[]],[[3602.37,8488.15,0.451523],276,"Up",[]],[[3603,8479.49,4.05142],311,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[3493.59,8613.65,0],0,[]],[[3498.59,8608.65,-7.62939e-06],0,[]],[[3488.59,8608.65,0],0,[]],[[3503.59,8603.65,0],0,[]]],[],[[[3273.04,8623.41,-0.000171661],[[0,"Move"]]],[[3206.24,8602.7,-0.000104904],[[0,"Move"]]],[[3415.99,8501.9,6.10352e-05],[[0,"Move"]]],[[3480,8599.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3413.38,8459.41,0],0,[]],[[3418.38,8454.41,0],0,[]],[[3408.38,8454.41,0],0,[]],[[3423.38,8449.41,0],0,[]]],[],[[[3240.34,8468.88,0],[[0,"Move"]]],[[3119.96,8431.19,0],[[0,"Move"]]],[[3335.78,8347.66,6.10352e-05],[[0,"Move"]]],[[3399.79,8445.26,7.62939e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3667.58,8530.95,0.948288],0,[]],[[3672.58,8525.95,0],0,[]],[[3662.58,8525.95,1.16879],0,[]],[[3677.58,8520.95,0],0,[]]],[],[[[3566.79,8580.8,0],[[0,"Move"]]],[[3498.01,8507.94,0],[[0,"Move"]]],[[3569.08,8439.73,0],[[0,"Move"]]],[[3653.99,8516.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[3226.55,8493.46,0],"sector",50,EAST,false, false, false, "Task_3"] spawn OKS_fnc_CreateObjectives;
		[[3552.68,8487.15,0],"sector",50,EAST,false, false, false, "Task_3"] spawn OKS_fnc_CreateObjectives;
		[[3612.76,8571.86,0],"sector",50,EAST,false, false, false, "Task_3"] spawn OKS_fnc_CreateObjectives;

		[AirBase_1, AirSpawn_1, AirHuntTrigger_1, independent, "O_Heli_Transport_04_covered_F", 'fastrope', [1,0.5], 900, 100, 90, 5] spawn OKS_fnc_Airbase; sleep 20;
		[AirBase_2, AirSpawn_2, AirHuntTrigger_1, independent, "O_Heli_Transport_04_covered_F", 'fastrope', [1,0.5], 900, 100, 90, 5] spawn OKS_fnc_Airbase; sleep 20;
		[AirBase_3, AirSpawn_3, AirHuntTrigger_1, independent, "O_Heli_Transport_04_covered_F", 'fastrope', [1,0.5], 900, 100, 90, 5] spawn OKS_fnc_Airbase;
	};

	case 6: {
		// Counter-Attack Strongpoint	
		[[[[3436.42,8293.18,0],0,[]],[[3436.23,8289.27,1.52588e-05],0,[]],[[3432.86,8289.58,0],0,[]],[[3441.23,8284.27,1.52588e-05],0,[]],[[3427.1,8285.91,1.52588e-05],0,[]],[[3433.18,8284.35,1.52588e-05],0,[]],[[3431.04,8281.98,1.52588e-05],0,[]],[[3438.18,8279.35,1.52588e-05],0,[]]],[],[[[3209.09,8485.83,0.0900688],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3477.47,8385.61,1.52588e-05],0,[]],[[3477.28,8381.7,3.05176e-05],0,[]],[[3473.91,8382.01,0],0,[]],[[3482.28,8376.7,0],0,[]],[[3468.14,8378.34,1.52588e-05],0,[]],[[3474.23,8376.78,1.52588e-05],0,[]],[[3472.09,8374.41,1.52588e-05],0,[]],[[3479.23,8371.78,1.52588e-05],0,[]]],[],[[[3228.23,8501.56,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3544.67,8573.29,1.52588e-05],283,[]],[[3548.44,8572.21,3.05176e-05],283,[]],[[3547.36,8569,0],283,[]],[[3554.44,8575.94,0],283,[]],[[3549.62,8562.55,-7.62939e-06],283,[]],[[3552.53,8568.12,0],283,[]],[[3554.35,8565.5,0],283,[]],[[3558.54,8571.85,1.52588e-05],283,[]]],[],[[[3260.97,8570.88,3.8147e-06],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 7:{
		// Counter-Attack Goisse	
		["hq","side","1-1 be advised a large counter-attack is inbound towards Goisse. Defend the position and repel the attackers! Expect three platoons of motorised forces each from the south, east and north. Godspeed! HQ out!"] remoteExec ["OKS_fnc_Chat",0];
		[true, ["Defend_2", "Task_3"], ["You have been tasked with holding the village of Goisse. Counter-attacks are coming in from the south,east and the north.", "Defend Goisse", "Defend"], nil, 1, 3, true, "defend"] call BIS_fnc_taskCreate;

		_ConvoyArray1 = [];
		_ConvoyArray2 = [];
		_ConvoyArray3 = [];
		[convoystart_5,convoywp_5,convoyend_5,independent,[6,_ConvoyVehicle, 50, 40],[true,4], _ConvoyArray1, false, false] spawn OKS_fnc_Convoy_Spawn;
		[convoystart_6,convoywp_6,convoyend_6,independent,[6,_ConvoyVehicle, 50, 40],[true,4], _ConvoyArray2, false, false] spawn OKS_fnc_Convoy_Spawn;
		[convoystart_7,convoywp_7,convoyend_7,independent,[6,_ConvoyVehicle, 50, 40],[true,4], _ConvoyArray3, false, false] spawn OKS_fnc_Convoy_Spawn;

		waitUntil {
			sleep 10;	
			{
				_Group = _X;
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group == 0
			} count _ConvoyArray1 == count _ConvoyArray1
			and
			{
				_Group = _X;
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group == 0
			} count _ConvoyArray2 == count _ConvoyArray2
			and			
			{
				_Group = _X;
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group == 0
			} count _ConvoyArray3 == count _ConvoyArray3
		};

		["Defend_2","SUCCEEDED"] call BIS_fnc_taskSetState;
		DefendComplete2 = true;
		publicVariable "DefendComplete2";
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
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_CreateZone")};

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
			] spawn OKS_fnc_CreateZone;
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

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn OKS_fnc_Huntbase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Huntbase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn OKS_fnc_Huntbase;
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
		   6 - Cargo Split - [How many teams,Procent of Cargo] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_OKS_fnc_AirDrop isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};


