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

if !(isServer) then {false};

params [
	"_case"
];
systemChat format ["GW_Fnc_spawnList called with case %1", _case];
switch (_case) do {
//Main vehicle course
	case 1: {
	};

	case 2: {
	};

	case 3: {
	};

	case 11: {
		// Strongpoint 1
		[[[[12170.4,18844.9,0.000202179],211,"Auto",[[301,0]],"ar"],[[12169.7,18845.6,0.00195694],229,"Auto",[[301,0]],"mat"],[[12185,18831.8,0.184235],211,"Auto",[[301,0]],"ar"],[[12182.3,18833.8,0.198456],229,"Auto",[[301,0]],"mat"],[[12200.2,18830,0.0727196],211,"Auto",[[301,0]],"ar"],[[12197.4,18832.5,-0.0127068],229,"Auto",[[301,0]],"mat"],[[12202.3,18818.2,-3.8147e-06],211,"Auto",[[301,0]],"ar"],[[12212.2,18830.1,0.000221252],33,"Auto",[[301,0]],"ar"],[[12208,18826.6,0.00105667],241,"Middle",[[301,0]],"ar"],[[12192.9,18847.9,0.717796],16,"Auto",[[301,0]],"mat"],[[12195.9,18844.5,0.856525],87,"Auto",[[301,0]],"mat"],[[12176.8,18854.3,-2.67029e-05],203,"Middle",[[301,0]],"mat"],[[12181.9,18844.7,8.01086e-05],305,"Middle",[[301,0]],"mat"]],[],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 12: {
		// Strongpoint 2
		[[[[11726.6,18272.3,0.523308],156,"Auto",[[301,0]],"mat"],[[11725.3,18271.4,0.286907],156,"Auto",[[301,0]],"mat"],[[11721.8,18282.5,1.31525],332,"Middle",[[301,0]],"mat"],[[11721,18277.6,0.976143],239,"Middle",[[301,0]],"mat"],[[11725.6,18281.9,0.871407],239,"Middle",[[301,0]],"mat"],[[11738.7,18235.4,0.49614],190,"Auto",[[301,0]],"mat"],[[11734.2,18240.2,6.86646e-05],190,"Auto",[[301,0]],"mat"],[[11733.5,18294.3,-4.57764e-05],27,"Auto",[[301,0]],"mat"],[[11734.3,18311.5,0.264233],162,"Auto",[[301,0]],"mat"],[[11723.3,18297.4,3.43323e-05],125,"Auto",[[301,0]],"mat"],[[11714.2,18275.4,0.580082],119,"Auto",[[301,0]],"mat"],[[11733,18288.6,-3.43323e-05],284,"Middle",[[301,0]],"mat"]],[],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 13: {
		// Strongpoint 3.
		[[[[11403.9,17673.8,-2.28882e-05],47,"Auto",[[301,0]],"mat"],[[11404,17650.8,0],155,"Auto",[[301,0]],"mat"],[[11395.7,17639.4,-2.28882e-05],47,"Auto",[[301,0]],"mat"],[[11383.7,17632.7,0.448231],171,"Auto",[[301,0]],"mat"],[[11370.1,17645.3,-2.28882e-05],293,"Middle",[[301,0]],"mat"],[[11368.3,17665.1,-1.90735e-05],185,"Auto",[[301,0]],"mat"],[[11375.6,17677.1,-2.28882e-05],47,"Auto",[[301,0]],"mat"],[[11366.1,17679.5,0.398605],342,"Auto",[[301,0]],"mat"],[[11388.5,17676,0.394169],40,"Auto",[[301,0]],"mat"],[[11386.1,17672,0.222309],133,"Auto",[[301,0]],"mat"]],[["rhs_bmp1_msv",[11409.6,17663.1,0.37228],102,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 14: {
		// Strongpoint 4.
		[[[[12187.6,17046.9,0.0001297],17,"Auto",[[301,0]],"mmg"],[[12194.4,17040.3,4.95911e-05],152,"Auto",[[301,0]],"mmg"],[[12194.3,17046.1,1.90735e-05],63,"Auto",[[301,0]],"mat"],[[12148.9,17041.7,0.0227165],262,"Middle",[[301,0]],"mmg"],[[12154.1,17048.9,0.223457],37,"Middle",[[301,0]],"mmg"],[[12149.2,17047.8,-0.0116806],180,"Middle",[[301,0]],"mat"],[[12149.3,17023.2,0.0619888],190,"Auto",[[301,0]],"mmg"],[[12141.8,17028.9,0.413906],325,"Auto",[[301,0]],"mmg"],[[12141,17023.8,0],12,"Middle",[[301,0]],"mat"],[[12177.7,17010.6,0.170391],113,"Auto",[[301,0]],"mmg"],[[12170.4,17004.7,0.147709],249,"Auto",[[301,0]],"mmg"],[[12176.2,17004.1,1.14441e-05],159,"Auto",[[301,0]],"mat"],[[12154,17028,0.321678],305,"Auto",[[301,0]],"mmg"],[[12169.8,17032.3,0.202145],305,"Auto",[[301,0]],"mmg"]],[["rhs_bmp1_msv",[12179.7,17019.1,0.1576],92,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 15: {
		// Strongpoint 5.
		[[[[13362.5,16893.7,4.3869e-05],316,"Auto",[[301,0]],"mat"],[[13364.2,16900.7,0.207708],306,"Auto",[[301,0]],"ar"],[[13377.3,16935.9,4.3869e-05],359,"Auto",[[301,0]],"mat"],[[13417.4,16925.3,0],16,"Auto",[[301,0]],"mat"],[[13396.2,16886.5,0],316,"Auto",[[301,0]],"mat"],[[13341.5,16911,4.3869e-05],119,"Auto",[[301,0]],"mat"],[[13328.5,16907.3,4.3869e-05],300,"Auto",[[301,0]],"mat"],[[13338.9,16917.1,0.1912],28,"Auto",[[301,0]],"mat"],[[13391.1,16903.5,0.467022],306,"Auto",[[301,0]],"ar"],[[13370.7,16923.4,0.00358963],306,"Auto",[[301,0]],"ar"],[[13395.8,16905.2,4.43894],340,"Middle",[[301,0]],"ar"],[[13404.1,16922.1,0],106,"Middle",[[301,0]],"mat"]],[["rhs_bmp1_msv",[13329.4,16880.9,5.53131e-05],41,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 16: {
		// Strongpoint 6.
		[[[[14206.5,17112.9,6.67572e-06],0,"Middle",[[301,0]],"ar"],[[14218.6,17092,4.673e-05],162,"Auto",[[301,0]],"mat"],[[14210.5,17074,4.57764e-05],162,"Auto",[[301,0]],"mat"],[[14198.5,17097.2,0.0589151],293,"Auto",[[301,0]],"mat"],[[14194.5,17118.9,0.170905],162,"Middle",[[301,0]],"mat"],[[14219.1,17128,4.76837e-05],234,"Middle",[[301,0]],"mat"],[[14245.2,17138.1,4.673e-05],304,"Middle",[[301,0]],"mat"],[[14248.2,17123.8,0.820083],273,"Auto",[[301,0]],"mat"],[[14205.3,17099.8,0.098525],1,"Up",[[301,0]],"ar"],[[14218.2,17102.5,0.019803],330,"Up",[[301,0]],"ar"]],[["rhs_bmp1_msv",[14213.7,17120,-0.000203133],348,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 17: {
		// Strongpoint 7.
		[[[[14009.6,17873.3,0.621869],271,"Auto",[[301,0]],"mat"],[[14018.3,17870.4,0.351038],271,"Auto",[[301,0]],"mat"],[[14025.6,17862.5,0.0985699],271,"Auto",[[301,0]],"mat"],[[14022.7,17865.5,0.271212],332,"Middle",[[301,0]],"mat"],[[14023.9,17864.3,0.194576],236,"Up",[[301,1]],"ag"],[[14014.5,17879.1,0.819393],271,"Auto",[[301,0]],"mat"],[[14007.6,17883.9,0.0900955],336,"Auto",[[301,0]],"mat"],[[14008.4,17881,0.820351],271,"Auto",[[301,0]],"mat"],[[14018.2,17880.1,0.481878],237,"Middle",[[301,0]],"mat"],[[14032.2,17879.7,1.07861],312,"Middle",[[301,0]],"mat"],[[14031.7,17873.5,0.308831],48,"Middle",[[301,0]],"mat"],[[14048.8,17876,0.999065],131,"Auto",[[301,0]],"mat"],[[14047.5,17881.1,1.36086],18,"Auto",[[301,0]],"mat"],[[14038,17885.4,0.700922],253,"Auto",[[301,0]],"mat"],[[14041.4,17883.2,0.876761],206,"Auto",[[301,0]],"mat"],[[14037.9,17883.4,0.938942],230,"Auto",[[301,0]],"mat"]],[["rhs_bmp1_msv",[14045.7,17862.3,0.0754194],250,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 18: {
		// Strongpoint 8.
		[[[[13595.5,18683.3,7.62939e-06],48,"Auto",[[301,0]],"mmg"],[[13582,18675.7,4.3869e-05],239,"Auto",[[301,0]],"mmg"],[[13593.8,18669.8,0.142403],234,"Auto",[[301,0]],"mmg"],[[13581.9,18639.2,-0.000242233],356,"Auto",[[301,0]],"mat"],[[13589.6,18645.7,3.8147e-06],271,"Middle",[[301,0]],"mat"],[[13607.8,18645.6,-0.0112648],88,"Auto",[[301,0]],"mat"],[[13606.1,18628.3,7.62939e-06],270,"Middle",[[301,0]],"mat"],[[13586.7,18632,-9.53674e-06],134,"Middle",[[301,0]],"mat"],[[13613.7,18662,-2.67029e-05],234,"Middle",[[301,0]],"mat"],[[13596.4,18675.2,4.76837e-05],143,"Middle",[[301,0]],"mat"]],[["rhs_bmp1_msv",[13624.6,18666.7,0.138634],169,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 19: {
		// Strongpoint 9.
	};


	/// LEGACY CASES BELOW - TO BE REMOVED LATER ///
	///////////////////////////////////////////////
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
		[[],[["UK3CB_ADA_O_Offroad_M2",[20536.4,20188.2,0],223,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["",1]]]]],[[[20534.4,20184.6,-1.90735e-006],[[0,"Move"],[1,"AWARE"],[5,"LIMITED"]]],[[20303.7,20014.1,0],[[0,"Move"]]],[[20235.4,19822.2,1.10515],[[0,"Loiter"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADA_O_Offroad_M2",[19928.4,19790.5,3.51904],128,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["",1]]]]],[[[19936.9,19787.6,0],[[0,"Move"],[1,"AWARE"],[5,"LIMITED"]]],[[20039,19759.4,-0.000331879],[[0,"Move"]]],[[20203,19647.5,0],[[0,"Loiter"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[20390.7,19451.4,0.861057],0,"Auto",[]],[[20382.9,19470.6,0.770749],0,"Auto",[]],[[20369.4,19488.3,1.07829],0,"Auto",[]],[[20340.1,19508.9,0.907575],0,"Auto",[]],[[20205.3,19733.7,0.407826],80,"Auto",[]],[[20210.1,19741.7,3.1526],137,"Auto",[]],[[20239.9,19748.4,9.91821e-005],80,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;	
	};
	
	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};


