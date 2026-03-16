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

	case 1: {

		/// AAA
		[[],[["UK3CB_CW_SOV_O_EARLY_Ural_Zu23",[5822.34,15245.9,3.05176e-005],217,[["driver",-1,[]],["gunner",-1,[0]],["cargo",2,[1]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]],["UK3CB_CW_SOV_O_EARLY_Ural_Zu23",[7818.66,14805.6,0],154,[["driver",-1,[]],["gunner",-1,[0]],["cargo",2,[1]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]],["UK3CB_CW_SOV_O_EARLY_Ural_Zu23",[8527.4,13885.6,0],97,[["driver",-1,[]],["gunner",-1,[0]],["cargo",2,[1]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]],["UK3CB_CW_SOV_O_LATE_2S6_Tunguska",[4836.7,15197.8,0],107,[["driver",-1,[]],["cargo",-1,[0]],["cargo",-1,[0,0]]],[[6,["SOV",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// First Area
		[Trigger_1,false,[0,9,false,false],east,0,0,0,[2,true,true,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_2,false,[0,9,false,false],east,0,0,0,[2,true,true,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_3,false,[0,0,false,false],east,0,2,0,[0,true,true,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Sentries Town
		[[[[9450.87,14608.9,3.05176e-005],246,"Up",[]],[[9439.46,14600.7,3.05176e-005],35,"Up",[]],[[9442.96,14596.1,0.30957],330,"Up",[]],[[9451.01,14586.2,0.467697],5,"Up",[]],[[9453.64,14594.6,0.260971],131,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9277.59,14618.2,3.59109],162,"Up",[]],[[9279.56,14616.5,3.64566],195,"Middle",[]],[[9279.47,14616.9,0.885025],157,"Up",[]],[[9277.51,14616.7,0.855682],175,"Up",[]],[[9279.81,14622.2,0.841385],253,"Middle",[]],[[9273.34,14619.2,0.766586],356,"Middle",[]],[[9281.57,14624.4,3.6329],262,"Up",[]],[[9269.65,14619.2,3.05176e-005],192,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		// Second Area
		[Trigger_4,false,[0,9,false,false],east,0,1,0,[1,true,true,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_4,false,[0,9,false,false],east,0,0,0,[2,true,true,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_6,false,[0,0,false,false],east,0,2,0,[0,true,true,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Artillery Guards
		[[[[8469.25,13939.7,3.05176e-005],321,"Up",[]],[[8467.39,13939.1,0.668015],67,"Up",[]],[[8495.64,13935.2,0],351,"Up",[]],[[8499.7,13972.2,0.080719],186,"Up",[]],[[8465.19,13973.7,3.05176e-005],152,"Up",[]],[[8472.92,13984.5,0.599396],301,"Up",[]],[[8477.55,13980.7,0.693542],176,"Up",[]],[[8485.8,14005.6,3.05176e-005],144,"Up",[]],[[8479.63,14010.2,3.05176e-005],245,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		/// Artillery Guards North
		[[[[7954.54,14618.8,0],175,"Up",[]],[[7948.96,14620,2.74759],175,"Up",[]],[[7916.52,14615,0],232,"Up",[]],[[7917.84,14650.4,0],309,"Up",[]],[[7939.84,14651.2,-3.05176e-005],175,"Up",[]],[[7965.84,14630.5,0],286,"Up",[]],[[7962.99,14624.3,3.05176e-005],354,"Up",[]],[[7952.6,14628.6,-3.05176e-005],259,"Up",[]],[[7973.43,14590,0],290,"Up",[]],[[7975.24,14591.9,0],324,"Up",[]],[[7995.11,14667.4,0],202,"Up",[]],[[7997.54,14666.8,0],179,"Up",[]],[[7936.11,14680.5,0],200,"Up",[]],[[7939.1,14679,0.471893],171,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7861.86,14640.3,0],178,"Up",[]],[[7860.79,14640.7,0],194,"Up",[]],[[7870.42,14648,0],162,"Up",[]],[[7873.78,14650.5,3.05176e-005],114,"Up",[]],[[7719.32,14780.7,-3.05176e-005],111,"Up",[]],[[7736.98,14770.9,0],110,"Up",[]],[[7750.08,14752.9,0],135,"Middle",[]],[[7752.24,14754.7,0.0571594],100,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7724.08,14804.1,0],57,"Middle",[]],[[7724.67,14816.4,6.67206],133,"Up",[]],[[7724.94,14822.6,6.64917],128,"Up",[]],[[7720.52,14848.5,0.2966],60,"Up",[]],[[7715.95,14818.6,0.117126],36,"Up",[]],[[7717.51,14832.7,0.201752],73,"Up",[]],[[7762.68,14853.5,0],250,"Up",[]],[[7759.71,14846.3,0.140167],172,"Up",[]],[[7754.36,14804.6,-3.05176e-005],280,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		{[east,_X,getPos Target_1,20,400,180] spawn OKS_ArtyFire; sleep 30 + (random 30)} foreach [arty_1,arty_2,arty_3];
		{[east,_X,getPos Target_1,20,400,180] spawn OKS_ArtyFire; sleep 30 + (random 30)} foreach [arty_4,arty_5,arty_6];
	
	};

	case 3: {

		// Final Area
		[Trigger_7,false,[0,9,false,false],east,2,0,0,[0,true,true,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_8,false,[0,9,false,false],east,0,1,0,[1,true,true,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_9,false,[0,9,false,false],east,0,1,0,[2,true,true,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Lumbermill
		[[[[5771.33,15175.4,0],350,"Middle",[]],[[5756.08,15173.8,-3.05176e-005],360,"Middle",[]],[[5749.63,15198.8,0],165,"Middle",[]],[[5770.26,15211.1,0],224,"Middle",[]],[[5774.67,15203.2,0.662201],273,"Middle",[]],[[5793.6,15212.9,0.839539],113,"Middle",[]],[[5775.8,15213.1,0.324829],208,"Middle",[]],[[5783.44,15194,7.87399],99,"Middle",[]],[[5782.86,15196.3,7.91541],68,"Middle",[]],[[5752.14,15237.7,0.105927],168,"Middle",[]],[[5773.57,15240.5,0.156006],153,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// HQ
		[[[[4957.12,15098.5,0.14856],75,"Up",[]],[[4957.36,15096.3,0.144226],75,"Up",[]],[[4983.25,15097.7,0.168152],69,"Up",[]],[[4984.88,15089.3,3.29358],83,"Up",[]],[[5003.17,15138.6,0.623291],181,"Up",[]],[[5016.54,15140.7,0],134,"Middle",[]],[[4990.25,15140.8,0],179,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4984.86,15117.2,0.54718],83,"Up",[]],[[4981.46,15115.1,0.546906],316,"Up",[]],[[4983.25,15120.3,3.81192],194,"Up",[]],[[4977.24,15118,0.554382],272,"Middle",[]],[[4978.29,15121.8,0.559113],106,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4975.17,15140.8,3.28934],349,"Up",[]],[[4973.88,15139.5,0.133392],180,"Up",[]],[[4977.75,15145.9,3.2514],184,"Up",[]],[[4972.37,15145.3,0.134125],56,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	
		{[_X,0.5,100,true,true] spawn OKS_Surrender;} foreach [officer_1,officer_2,officer_1];

		
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
