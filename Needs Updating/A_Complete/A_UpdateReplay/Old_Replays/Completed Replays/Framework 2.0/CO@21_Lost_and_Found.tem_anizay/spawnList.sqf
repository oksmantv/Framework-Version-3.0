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
		[Trigger_2,false,[16,40,true,true],east,0,0,0,[0,true,false,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[[],[["rhs_btr80a_vdv",[2356.05,5005.11,1],2,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["commander",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["rhs_btr80a_vv",[2823.65,5224.87,1],257,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["commander",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["O_G_HMG_02_high_F",[2619.77,5272.93,1.08612],214,[["gunner",-1,[0]]],[[7,["Hide_Shield",0,"Hide_Rail",1]]]]],[]] call GW_Common_fnc_spawnGroup;	
		[[],[["O_G_Offroad_01_AT_F",[2113.45,5028.27,0],0,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_07",1]],[7,["HideDoor1",0,"HideDoor2",0,"HideDoor3",1,"HideBackpacks",1,"HideBumper1",0,"HideBumper2",1,"HideConstruction",1]]]]],[[[2081.92,5108.78,0],[[0,"Move"],[1,"COMBAT"],[2,"RED"],[5,"LIMITED"]]],[[2047.51,5133.77,7.62939e-006],[[0,"Move"]]],[[2042.76,5215.94,0],[[0,"Move"]]],[[2033.29,5298.73,3.05176e-005],[[0,"Move"]]],[[1997.34,5381.96,0],[[0,"Move"]]],[[1975.93,5442.34,-1.52588e-005],[[0,"Move"]]],[[1977.17,5476.84,1.52588e-005],[[0,"Move"]]],[[1979.85,5539.26,1.52588e-005],[[0,"Move"]]],[[1973.34,5572.83,0],[[0,"Move"]]],[[1976.47,5596.42,0],[[0,"Move"]]],[[2048.99,5611.49,-3.05176e-005],[[0,"Move"]]],[[2118.67,5623.34,-3.05176e-005],[[0,"Move"]]],[[2181.83,5633.01,0],[[0,"Move"]]],[[2259.69,5645.69,9.91821e-005],[[0,"Move"]]],[[2276.19,5614.1,4.57764e-005],[[0,"Move"]]],[[2300.13,5533.46,-1.52588e-005],[[0,"Move"]]],[[2304.3,5483.65,0],[[0,"Move"]]],[[2313.66,5434.69,0],[[0,"Move"]]],[[2321.03,5362.32,-1.52588e-005],[[0,"Move"]]],[[2316.08,5287.18,0],[[0,"Move"]]],[[2300.92,5234.1,-7.62939e-006],[[0,"Move"]]],[[2292.82,5170.49,-2.28882e-005],[[0,"Move"]]],[[2284.98,5150.02,9.15527e-005],[[0,"Move"]]],[[2233.39,5139.07,1.52588e-005],[[0,"Move"]]],[[2158.03,5126.17,-3.05176e-005],[[0,"Move"]]],[[2102.15,5112.18,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {
		[[],[["UK3CB_FIA_O_SPG9",[2862.98,4870.41,-1.52588e-005],43,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[Trigger_3,false,[16,60,true,true],east,0,0,0,[0,true,false,1],[0,false],[0,false],[0,1,0,1,0],false] spawn OKS_CreateZone;		
		[[],[["rhs_btr80a_vmf",[3480.02,3901.82,0],14,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["commander",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]]]],["rhs_btr80a_vdv",[3441.83,4385.85,0],0,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["commander",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["O_G_HMG_02_high_F",[3493.31,3903.27,3.05176e-005],0,[["gunner",-1,[0]]],[[7,["Hide_Shield",0,"Hide_Rail",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["O_G_Offroad_01_AT_F",[2113.45,5028.27,0],0,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_07",1]],[7,["HideDoor1",0,"HideDoor2",0,"HideDoor3",1,"HideBackpacks",1,"HideBumper1",0,"HideBumper2",1,"HideConstruction",1]]]]],[[[3497.39,4015.93,0],[[0,"Move"],[1,"COMBAT"],[2,"RED"],[5,"LIMITED"]]],[[3464.36,4134.61,0],[[0,"Move"]]],[[3548.27,4189.82,-3.05176e-005],[[0,"Move"]]],[[3577.78,4231.45,0],[[0,"Move"]]],[[3535.7,4264.19,1.52588e-005],[[0,"Move"]]],[[3500.83,4278.96,0],[[0,"Move"]]],[[3482.15,4300.61,-6.10352e-005],[[0,"Move"]]],[[3508.13,4343.8,-1.52588e-005],[[0,"Move"]]],[[3500.42,4387.56,0],[[0,"Move"]]],[[3456.18,4429.59,-1.52588e-005],[[0,"Move"]]],[[3438.03,4455.65,1.52588e-005],[[0,"Move"]]],[[3441.2,4489.27,-1.52588e-005],[[0,"Move"]]],[[3440.18,4525.12,0],[[0,"Move"]]],[[3420.22,4524.09,1.52588e-005],[[0,"Move"]]],[[3349.16,4532.82,-9.15527e-005],[[0,"Move"]]],[[3323.96,4555.05,1.52588e-005],[[0,"Move"]]],[[3318.95,4594.37,3.05176e-005],[[0,"Move"]]],[[3304.04,4628.63,1.52588e-005],[[0,"Move"]]],[[3264.99,4654.45,-9.15527e-005],[[0,"Move"]]],[[3267.68,4718.69,-4.57764e-005],[[0,"Move"]]],[[3222.09,4747.22,1.52588e-005],[[0,"Move"]]],[[3154.99,4780.51,1.52588e-005],[[0,"Move"]]],[[3082.05,4829.08,0],[[0,"Move"]]],[[3008.25,4880.77,0],[[0,"Move"]]],[[2962.47,5020.49,-1.52588e-005],[[0,"Move"]]],[[2905.91,5111.87,1.52588e-005],[[0,"Move"]]],[[2821.53,5182.14,-3.05176e-005],[[0,"Move"]]],[[2715.43,5206.46,7.62939e-006],[[0,"Move"]]],[[2634.02,5216.27,-1.52588e-005],[[0,"Move"]]],[[2596.26,5236.09,3.05176e-005],[[0,"Move"]]],[[2583.74,5215.69,-1.52588e-005],[[0,"Move"]]],[[2510.06,5118.99,3.05176e-005],[[0,"Move"]]],[[2462.79,5085.07,3.05176e-005],[[0,"Move"]]],[[2410.26,5051.24,-3.05176e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {
		[[[[5128.83,3429.39,1.52588e-005],222,[]],[[5147.04,3380.81,0],222,[]],[[5132.92,3380.05,0],222,[]],[[5140.65,3381.17,0],222,[]],[[5125.86,3379.66,0],222,[]],[[5154.1,3381.19,0],222,[]],[[5127.71,3437.12,0],222,[]],[[5125.48,3386.72,0],222,[]]],[["rhsgref_ins_bmp1p",[5126.41,3408.73,-0.237854],222,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["chedaki",1]],[7,["9p135_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1]]]]],[[[5031.36,3350.01,0],[[0,"Move"]]],[[4888.68,3297.05,1.52588e-005],[[0,"Move"]]],[[4712.97,3234.74,0],[[0,"Move"]]],[[4644.43,3235.99,0],[[0,"Move"]]],[[4599.57,3348.14,1.52588e-005],[[0,"Move"]]],[[4550.35,3439.11,0],[[0,"Move"]]],[[4498.01,3541.29,0],[[0,"Move"]]],[[4509.22,3677.75,0],[[0,"Move"]]],[[4440.68,3767.47,0],[[0,"Move"]]],[[4368.41,3899.56,1.52588e-005],[[0,"Move"]]],[[4235.07,3881.49,0],[[0,"Move"]]],[[4030.7,3965.61,0],[[0,"Move"]]],[[3914.81,3982.43,0],[[0,"Move"]]],[[3728.51,3916.39,0],[[0,"SAD"],[5,"LIMITED"]]]]] call GW_Common_fnc_spawnGroup;	[[],[["rhs_bmp1_tv",[4481.19,3523.53,1.52588e-005],5,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["commander",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_FIA_O_SPG9",[4542.88,3618.8,0.0169525],340,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["rhs_btr80a_msv",[5241.89,3525.45,0.5],233,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["commander",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[Trigger_4,false,[16,110,true,true],east,0,0,0,[0,true,false,1],[0,false],[0,false],[0,1,0,1,0],false] spawn OKS_CreateZone;
		[[],[["rhs_btr80a_vmf",[5094.62,3543.34,0],181,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["commander",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["rhs_bmp1_vdv",[5197.03,3428.36,0.00012207],242,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
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
