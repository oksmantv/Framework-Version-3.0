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

		// Crossing Dynamic South/North
		[Trigger_1,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
		[Trigger_2,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

		// Active Mortar
		[mortar_1, east, "precise", "light", ["auto", 25],250,1000,15] execVM "Scripts\NEKY_Mortars\NEKY_Mortars.sqf";

		// Captive Task
		[Group HVT_1,getPos ExfilSite_1,west,true,"task_2"] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";

		// Static
		[[[[5419.04,4881.34,4.22166],355,"Up",[]],[[5418.92,4874.54,4.31416],205,"Up",[]],[[5429.28,4880.85,4.71131],31,"Up",[]],[[5422.1,4877.34,0.870345],0,"Up",[]],[[5430.28,4874.33,5.38605],0,"Up",[]],[[5427.48,4880.11,0.529928],0,"Up",[]],[[5454.31,4875.27,3.48628],17,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5535.28,4895.93,0.321931],198,"Up",[]],[[5537.89,4895.59,0.321931],166,"Up",[]],[[5532.55,4902.54,0.321931],198,"Up",[]],[[5538.64,4901.62,0.321931],198,"Up",[]],[[5536.35,4908.26,0.321931],198,"Up",[]],[[5538.25,4900.77,3.571],97,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5550.89,4889.42,3.36267],252,"Up",[]],[[5552.62,4886.67,0],229,"Middle",[]],[[5541.45,4795.55,7.68696],331,"Middle",[]],[[5541.59,4810.63,7.5506],331,"Middle",[]]],[["UK3CB_AAF_O_PKM_nest",[5558.07,4884.7,0],273,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5570.85,4840.92,2.67592],334,"Up",[]],[[5574.84,4841.14,1.84479],334,"Up",[]],[[5566.01,4837.42,4.38592],334,"Up",[]],[[5567.76,4834.52,5.24791],334,"Up",[]],[[5571.76,4834.42,6.68884],334,"Up",[]],[[5569.7,4831.09,0.321931],334,"Up",[]],[[5572.85,4838.22,0.859439],186,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5568.44,4770.04,0.453671],331,"Up",[]],[[5566.59,4767.8,0.413971],265,"Up",[]],[[5577.74,4772.27,0.346653],288,"Up",[]],[[5573.77,4773.11,0],337,"Up",[]],[[5563.73,4765,0],331,"Up",[]],[[5541.98,4779.21,3.2716],331,"Up",[]],[[5540.28,4770.95,0.461098],15,"Up",[]],[[5548.44,4791.41,7.92903],59,"Middle",[]]],[["UK3CB_AAF_O_PKM_High",[5575.02,4773.48,2.0504e-005],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5528.4,4734.83,0.900541],331,"Up",[]],[[5530.6,4732.14,5.27124],331,"Up",[]],[[5522.56,4731,5.27124],331,"Up",[]],[[5521.24,4736.49,5.27124],331,"Up",[]],[[5517.32,4732.22,5.27124],331,"Up",[]],[[5522.93,4736.92,5.27124],331,"Up",[]]],[["UK3CB_AAF_O_PKM_nest",[5510.41,4759.42,0],20,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5581.91,4745.5,4.76837e-007],331,"Up",[]],[[5581.52,4740.31,0.0985584],331,"Up",[]],[[5588.92,4745.4,4.76837e-007],331,"Up",[]],[[5593.12,4740.67,4.76837e-007],331,"Up",[]],[[5586.02,4739.9,4.76837e-007],331,"Up",[]],[[5583.19,4744.05,3.24911],331,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5489.67,4898.06,1.12626],166,"Up",[]],[[5493.98,4898.36,1.07557],166,"Up",[]],[[5489.99,4905.62,0.986029],166,"Up",[]],[[5477.93,4904.16,3.97292],176,"Up",[]],[[5518.31,4896.15,2.19639],176,"Up",[]],[[5516.1,4896.15,2.18535],176,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5375.37,4879.36,0],264,"Up",[]],[[5373.35,4882.77,0],264,"Middle",[]],[[5373.29,4887.48,0],264,"Up",[]],[[5370.46,4903.08,0],32,"Up",[]],[[5397.05,4909.12,0],270,"Middle",[]],[[5379.82,4893.5,0],32,"Middle",[]],[[5409.29,4889.54,-9.53674e-007],178,"Up",[]],[[5424.15,4883.95,0],269,"Middle",[]],[[5433.41,4856.72,0.297983],344,"Up",[]],[[5392.52,4833.89,2.38419e-007],324,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 2: {

		// Counter north-side bridge
		[[],[["UK3CB_CW_SOV_O_LATE_BRDM2",[6164.79,4669.06,0],281,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["SOV",1]]]]],[[[5821.2,4827.68,0],[[0,"Move"],[1,"SAFE"]]],[[5570.02,4851.51,1.00136e-005],[[0,"Move"]]],[[5524.67,4873.37,0.473036],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CW_SOV_O_LATE_Ural",[6203.37,4668.32,0],271,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]],["cargo",4,[]],["cargo",11,[0]],["cargo",10,[1]]],[[6,["SOV2",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]],[[[5821.2,4827.68,0],[[0,"Move"],[1,"SAFE"]]],[[5570.02,4851.51,1.00136e-005],[[0,"Move"]]],[[5542.47,4843.45,1.48525],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CW_SOV_O_LATE_Ural",[6239.28,4675.57,0],258,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]],["cargo",4,[]],["cargo",11,[0]],["cargo",10,[1]]],[[6,["SOV2",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]],[[[5821.2,4827.68,0],[[0,"Move"],[1,"SAFE"]]],[[5570.02,4851.51,1.00136e-005],[[0,"Move"]]],[[5540.13,4885.55,0.361525],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		// Counter south-side bridge
		[[],[["UK3CB_CW_SOV_O_LATE_BRDM2",[6148.77,4498.72,0],286,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["SOV",1]]]]],[[[5795.52,4671.91,0],[[0,"Move"],[1,"SAFE"]]],[[5644.19,4739.77,0],[[0,"Move"]]],[[5520.6,4754.86,0.21284],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CW_SOV_O_LATE_Ural",[6191.56,4490.33,0],276,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]],["cargo",4,[]],["cargo",11,[0]],["cargo",10,[1]]],[[6,["SOV2",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]],[[[5795.52,4671.91,0],[[0,"Move"],[1,"SAFE"]]],[[5644.19,4739.77,0],[[0,"Move"]]],[[5564.49,4749.07,0.216512],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CW_SOV_O_LATE_Ural",[6246.7,4490.57,0],263,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]],["cargo",4,[]],["cargo",11,[0]],["cargo",10,[1]]],[[6,["SOV2",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]],[[[5795.52,4671.91,0],[[0,"Move"],[1,"SAFE"]]],[[5644.19,4739.77,0],[[0,"Move"]]],[[5546.05,4759.58,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	
		// Forest
		[[[[5836.47,4341.8,3.8147e-006],316,"Up",[]],[[5841.87,4345.7,7.62939e-006],345,"Up",[]],[[5811.49,4368.28,7.62939e-006],25,"Up",[]],[[5804.63,4366.3,7.62939e-006],351,"Up",[]],[[5792.27,4365.91,7.62939e-006],2,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5773.37,4301.95,7.62939e-006],273,"Up",[]],[[5778.3,4315.84,7.62939e-006],318,"Up",[]],[[5781.17,4317.92,7.62939e-006],10,"Up",[]],[[5783.52,4317.17,7.62939e-006],359,"Up",[]],[[5786.66,4317.68,7.62939e-006],359,"Up",[]],[[5789.46,4307.92,7.62939e-006],74,"Up",[]]],[["UK3CB_ADA_O_PKM_High",[5788.63,4317.37,0],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5806.54,4237.75,0],359,"Up",[]],[[5810.91,4238.86,7.62939e-006],359,"Up",[]],[[5815.63,4239.12,7.62939e-006],359,"Up",[]],[[5822.15,4240.79,7.62939e-006],359,"Up",[]],[[5826.79,4242.35,7.62939e-006],359,"Up",[]],[[5800.17,4235.75,7.62939e-006],359,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5751.61,4070.05,7.62939e-006],7,"Up",[]],[[5755.57,4071.88,7.62939e-006],359,"Up",[]],[[5759.14,4076.38,0],359,"Up",[]],[[5764.65,4076.87,7.62939e-006],33,"Up",[]],[[5768.37,4071.26,0],359,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5838.9,4056.61,6.10352e-005],30,"Up",[]],[[5842.96,4040.72,7.62939e-005],30,"Up",[]],[[5826.92,4041.31,6.10352e-005],30,"Up",[]],[[5830.04,4046.71,6.10352e-005],30,"Up",[]],[[5833.2,4055.59,7.62939e-005],30,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Dynamic Trigger Mountain
		[Trigger_3,false,[0,16,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
	};

	case 4: {

		// Camp 1 Counter
		[[rush_1,rush_2,rush_3,rush_4],4,1,1,east,1500,"VariableNameSetTrueUponAllClear"] spawn OKS_Rush_Wavespawn;
	};

	case 5: {

		// Camp 2 Counter	
		[[rush_1,rush_2,rush_3,rush_4],4,1,1,east,1500,"VariableNameSetTrueUponAllClear"] spawn OKS_Rush_Wavespawn;	
	};

	case 6: {

		// HLS Counter
		[[attack_1,attack_2,attack_3],4,1,1,east,1500,"VariableNameSetTrueUponAllClear"] spawn OKS_Rush_Wavespawn;
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
