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

if !(isServer) then {false};

params [
	"_case"
];

switch (_case) do {
//Main vehicle course
	case 1: {
	};

	case 2: {
	};

	case 3: {
	};

	case 11: {
	};

	case 12: {
	};

	case 13: {
	};

	case 14: {
	};

	case 15: {
	};

	case 16: {
	};

// Repair shop
	case 4: {
	};
// Gunner course
	case 5: {
	[["Land_VR_Target_MRAP_01_F",[22861.3,17200.8,8.12848],[[-1.37013,2.51017,84.4795],[357.633,358.396,84.5427]],[],false]] call GW_Common_fnc_spawnObjects;
	[[[[22897.3,17172.3,0],119,"Auto",[]],[[22886.5,17168.1,0],111,"Auto",[]],[[22897.3,17178.8,0],111,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;	
	};
	case 6: {
	[[[[23097,16891.9,0],323,"Auto",[]],[[23079.6,16899,0],324,"Auto",[]],[[23103.3,16898.7,0],300,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[["Land_VR_Target_MRAP_01_F",[23103.2,16864.9,10.9538],[[1.38951,-3.89037,84.4382],[3.73801,1.75658,84.5427]],[],false]] call GW_Common_fnc_spawnObjects;	
	};
	case 7: {
	[[[[22707,17015.6,6.10352e-005],108,"Auto",[]],[[22708.8,17037.6,0],92,"Auto",[]],[[22690.3,17029,-0.000125885],94,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[["Land_VR_Target_APC_Wheeled_01_F",[22688.4,17043.7,11.2096],[[1.87678,1.47511,30.8133],[357.633,359.695,30.7955]],[],false]] call GW_Common_fnc_spawnObjects;
	};
	case 8: {
	[["TK_GUE_WarfareBBarrier10xTall_EP1",[23039.8,17154.6,4.27658],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[23048.3,17167.8,4.27658],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[23056.7,17181,4.27658],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[23065.2,17194.3,4.27658],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[23027.5,17162.6,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[23036,17175.8,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[23044.4,17189,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[23052.9,17202.3,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["ArrowDesk_R_F",[23069.6,17202.1,3.68392],[[0,0,189.18],[0,0,189.18]],[[1,false],[2,false]],false],["ArrowDesk_L_F",[23057.9,17209.7,3.68392],[[0,0,224.746],[0,0,224.746]],[[1,false],[2,false]],false]] call GW_Common_fnc_spawnObjects;
	[["TK_GUE_WarfareBBarrier10x_EP1",[23011.5,17135.7,3.74425],[[0,-0,122.247],[0,0,122.247]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[23019.3,17149.4,4.28637],[[0,-0,121.922],[0,0,121.922]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10x_EP1",[23003.1,17122.3,3.74425],[[0,0,301.652],[0,0,301.652]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22994.4,17109.4,4.28637],[[0,-0,121.922],[0,0,121.922]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22986.2,17096.2,4.28637],[[0,-0,121.922],[0,0,121.922]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22997.5,17088.5,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[23006,17101.8,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[23014.4,17115,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[23022.9,17128.2,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[23031.4,17141.5,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false]] call GW_Common_fnc_spawnObjects;
	[["TK_GUE_WarfareBBarrier10xTall_EP1",[22977.9,17082.9,4.28637],[[0,-0,121.922],[0,0,121.922]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22969.5,17069.5,4.28637],[[0,-0,121.922],[0,0,121.922]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10x_EP1",[22963.4,17036,3.74425],[[0,0,302.862],[0,0,302.862]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22955.5,17022.4,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10x_EP1",[22971.8,17049.3,3.74425],[[0,-0,122.267],[0,0,122.267]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22980.7,17062.1,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22989.1,17075.3,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22944.2,17029.7,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22952.6,17042.9,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22961.1,17056.2,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false]] call GW_Common_fnc_spawnObjects;
	[["TK_GUE_WarfareBBarrier10x_EP1",[22910.3,16977.1,3.74425],[[0,-0,123.579],[0,0,123.579]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22918.4,16990.7,4.28637],[[0,-0,123.254],[0,0,123.254]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10x_EP1",[22901.7,16963.9,3.74425],[[0,0,302.984],[0,0,302.984]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22913.2,16956.4,4.29617],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22921.6,16969.6,4.29617],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22930.2,16982.9,4.29617],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22938.6,16996,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22947,17009.2,4.28637],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22927,17003.7,4.28637],[[0,0,303.869],[0,0,303.869]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22935.7,17016.7,4.28637],[[0,0,303.869],[0,0,303.869]],[[1,false],[2,false]],false]] call GW_Common_fnc_spawnObjects;
	[["TK_GUE_WarfareBBarrier10xTall_EP1",[22892.7,16951.3,4.28637],[[0,-0,123.254],[0,0,123.254]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22884.2,16938.2,4.28637],[[0,-0,123.254],[0,0,123.254]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22896.2,16929.9,4.29617],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22904.8,16943.1,4.29617],[[0,0,302.537],[0,0,302.537]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22875.6,16925.1,4.28637],[[0,-0,123.254],[0,0,123.254]],[[1,false],[2,false]],false],["TK_GUE_WarfareBBarrier10xTall_EP1",[22876.1,16914,4.28637],[[0,0,33.948],[0,0,33.948]],[[1,false],[2,false]],false],["ArrowDesk_L_F",[22877.7,16914.8,3.68392],[[0,0,212.145],[0,0,212.145]],[[1,false],[2,false]],false]] call GW_Common_fnc_spawnObjects;	
	};
//Driver commander course	
	case 9: {
	
	};
//FOB Shark	
	case 10: {
	[[],[["LOP_ISTS_OPF_Landrover_M2",[20536.4,20188.2,0],223,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LOP_ISTS",1]]]]],[[[20534.4,20184.6,-1.90735e-006],[[0,"Move"],[1,"AWARE"],[5,"LIMITED"]]],[[20303.7,20014.1,0],[[0,"Move"]]],[[20235.4,19822.2,1.10515],[[0,"Loiter"]]]]] call GW_Common_fnc_spawnGroup;
	[[],[["LOP_ISTS_OPF_Landrover_M2",[19928.4,19790.5,3.51904],128,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LOP_ISTS",1]]]]],[[[19936.9,19787.6,0],[[0,"Move"],[1,"AWARE"],[5,"LIMITED"]]],[[20039,19759.4,-0.000331879],[[0,"Move"]]],[[20203,19647.5,0],[[0,"Loiter"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[20390.7,19451.4,0.861057],0,"Auto",[]],[[20382.9,19470.6,0.770749],0,"Auto",[]],[[20369.4,19488.3,1.07829],0,"Auto",[]],[[20340.1,19508.9,0.907575],0,"Auto",[]],[[20205.3,19733.7,0.407826],80,"Auto",[]],[[20210.1,19741.7,3.1526],137,"Auto",[]],[[20239.9,19748.4,9.91821e-005],80,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;	
	};
	
	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
