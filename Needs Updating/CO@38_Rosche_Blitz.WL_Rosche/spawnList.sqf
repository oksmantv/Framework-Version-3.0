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

		[Trigger_1,false,[0,25,false,false],east,2,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;


		/// Village 1 Strongpoints
		// North
		[[[[5169.15,580.897,0.28055],253,"Up",[]],[[5169.01,577.696,0.280506],260,"Up",[]],[[5182.77,580.559,0.280663],248,"Up",[]],[[5182.92,584.167,0.280525],275,"Up",[]],[[5201.43,589.649,0.432528],253,"Up",[]],[[5172.87,598.152,0.28055],210,"Middle",[]],[[5172.17,605.317,0.0933361],210,"Up",[]],[[5176.74,613.065,0],298,"Up",[]],[[5183.29,617.602,0.0933361],72,"Up",[]],[[5192.62,616.951,0.0926685],225,"Up",[]],[[5190.69,620.692,0],278,"Up",[]],[[5203.87,603.732,0.262695],241,"Up",[]],[[5196.04,622.742,0.245502],166,"Up",[]],[[5203.74,613.818,0.230261],215,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Center
		[[[[5257.18,477.04,-7.62939e-006],234,"Up",[]],[[5227.53,472.931,-9.53674e-006],178,"Up",[]],[[5228.49,483.963,0.162621],18,"Up",[]],[[5219.74,476.47,0.293066],87,"Up",[]],[[5218.54,482.935,0.284914],31,"Middle",[]],[[5217.92,493.426,0.370344],100,"Up",[]],[[5250.63,498.265,-9.53674e-006],277,"Middle",[]],[[5224.51,511.564,1.88564],285,"Up",[]],[[5226.84,519.57,1.91616],247,"Up",[]],[[5232.23,507.777,2.03914],295,"Up",[]],[[5226.23,510.506,5.35642],41,"Up",[]],[[5231.69,507.865,5.444],283,"Up",[]],[[5229.47,519.196,5.30327],230,"Up",[]],[[5237.51,518.259,0.335314],306,"Up",[]],[[5235.19,525.224,0.340559],234,"Up",[]],[[5252.96,520.323,0.240019],122,"Up",[]],[[5257.19,527.385,0.309378],190,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// East
		[[[[5410.75,622.201,0.570053],191,"Up",[]],[[5405.27,626.055,0.452383],210,"Up",[]],[[5410.26,629.678,0],347,"Up",[]],[[5415.37,644.993,0.14444],141,"Up",[]],[[5433.76,639.109,0],169,"Up",[]],[[5432.96,645.969,0.237053],332,"Up",[]],[[5425.06,640.774,0.249189],230,"Up",[]],[[5428.22,635.963,0.291336],210,"Up",[]],[[5420.09,652.324,0],278,"Up",[]],[[5393.51,633,0.158878],144,"Up",[]],[[5394.87,638.341,0.155949],157,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		/// SPG-9
		[[],[["UK3CB_CW_SOV_O_EARLY_UAZ_SPG9",[5211.07,645.017,0],180,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_CW_SOV_O_EARLY_UAZ_SPG9",[5143.52,507.641,0],270,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_CW_SOV_O_EARLY_UAZ_SPG9",[5216.73,411.088,-1.90735e-006],347,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		[Trigger_2,false,[0,25,false,false],east,2,2,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

		// North
		[[[[8088.05,951.596,1.90735e-006],250,"Middle",[]],[[8126.86,966.01,0.0385208],263,"Middle",[]],[[8127.11,969.953,0.0385208],249,"Up",[]],[[8108.12,983.216,0.609314],127,"Up",[]],[[8105.88,978.032,0.609314],272,"Up",[]],[[8106.42,968.776,0.609314],201,"Up",[]],[[8100.91,969.474,0.609314],180,"Up",[]],[[8096.55,972.58,0.609314],263,"Up",[]],[[8099.34,982.351,0.609314],207,"Up",[]],[[8103.31,975.015,0.609314],281,"Up",[]],[[8098.75,979.743,3.31818],246,"Up",[]],[[8108.17,970.516,3.31818],92,"Up",[]],[[8097.81,971.626,3.31818],261,"Up",[]],[[8090,987.635,0],225,"Middle",[]],[[8095.59,983.505,0],179,"Up",[]],[[8066.83,982.824,0.573185],270,"Up",[]],[[8071.31,978.82,0.573259],172,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// West
		[[[[7975.57,808.979,3.50325],212,"Up",[]],[[7975.18,816.349,3.72581],210,"Up",[]],[[7969.78,817.136,3.71485],285,"Up",[]],[[7970.58,816.676,0.299908],305,"Up",[]],[[7971.67,811.698,0.17857],145,"Up",[]],[[7977.41,815.875,0.319242],167,"Up",[]],[[7983.64,827.363,0],127,"Up",[]],[[7982.18,822.484,0.347397],78,"Up",[]],[[7974.72,821.615,0.287046],129,"Up",[]],[[7977.95,827.332,0.355503],297,"Up",[]],[[8015.64,820.763,0.0755863],319,"Up",[]],[[8005.58,830.516,0.0755863],169,"Up",[]],[[7997.61,828.997,0.0755882],80,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// East
		[[[[8152.66,726.212,0.0940189],253,"Up",[]],[[8153.42,733.752,0.0980453],175,"Up",[]],[[8152.56,748.259,0.140091],281,"Up",[]],[[8152.64,741.019,0.142485],264,"Up",[]],[[8176.39,740.916,0.0288925],58,"Middle",[]],[[8187.24,746.01,0.097271],285,"Middle",[]],[[8176.93,782.163,0.38685],190,"Middle",[]],[[8183.39,765.388,0.38685],328,"Middle",[]],[[8177.65,769.191,3.72703],225,"Up",[]],[[8157.14,784.451,0.410002],165,"Up",[]],[[8147.48,785.836,0.500002],1,"Up",[]],[[8147.37,786.442,3.92],251,"Up",[]],[[8151.1,782.157,3.92],151,"Up",[]],[[8159.2,785.426,3.92],186,"Up",[]],[[8157.7,792.244,3.92],335,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {

		[Trigger_3,false,[0,25,false,false],east,1,2,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		/// South Mechs
		[[],[["UK3CB_CW_SOV_O_LATE_BMP1",[8211.84,1760.43,-1.90735e-006],191,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_CW_SOV_O_LATE_BMP1",[8404.78,1675.26,0],215,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		/// North Mechs
		[[],[["UK3CB_CW_SOV_O_LATE_BTR80a",[7876.85,2191.95,0],143,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]],["UK3CB_CW_SOV_O_LATE_BTR80a",[8253.07,2085.56,0],176,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrol
		[[[[8002,2144.8,0],0,[]],[[8007,2139.8,0],0,[]],[[7997,2139.8,0],0,[]],[[8012,2134.8,0],0,[]]],[],[[[7954.92,2134.76,0],[[0,"Move"],[1,"SAFE"]]],[[7992.51,2049.83,3.62396e-005],[[0,"Move"]]],[[8051.52,2043.62,1.14441e-005],[[0,"Move"]]],[[8023.26,2135.47,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8115.38,2125.49,0],15,[]],[[8118.92,2119.37,-1.90735e-006],15,[]],[[8109.26,2121.95,0],15,[]],[[8122.46,2113.25,0],15,[]]],[],[[[8067.3,2127.96,0],[[0,"Move"],[1,"SAFE"]]],[[8081.68,2036.2,3.62396e-005],[[0,"Move"]]],[[8137.08,2014.95,9.53674e-006],[[0,"Move"]]],[[8133.51,2110.98,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8104.14,1962.63,1.90735e-006],152,[]],[[8097.39,1964.75,1.90735e-006],152,[]],[[8106.26,1969.38,1.90735e-006],152,[]],[[8090.65,1966.87,1.90735e-006],152,[]]],[],[[[8141.24,1993.31,1.90735e-006],[[0,"Move"],[1,"SAFE"]]],[[8068.62,2051.22,3.8147e-005],[[0,"Move"]]],[[8013.43,2029.43,1.33514e-005],[[0,"Move"]]],[[8080.97,1961.07,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		/// Static
		[[[[8069.31,2028.49,0],216,"Up",[]],[[8064.47,2050.72,0],216,"Up",[]],[[8044.29,2037.39,0],168,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;


	
	};

	case 4: {

		[Trigger_4,false,[0,25,false,false],east,1,2,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;		

		// North Mechs
		[[],[["UK3CB_CW_SOV_O_LATE_BTR80a",[9434.37,1940.95,1.90735e-006],222,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]]]],["UK3CB_CW_SOV_O_EARLY_BMP1",[9455.79,2128.84,-3.8147e-006],312,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CW_SOV_O_EARLY_BMP1",[9458.06,2072.37,0],196,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CW_SOV_O_LATE_BTR80a",[9226.02,2233.93,0],307,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// East Mechs
		[[],[["UK3CB_CW_SOV_O_EARLY_BMP1",[9685.98,2461.17,0],158,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CW_SOV_O_EARLY_BMP1",[9778.5,2227.92,0],181,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrol
		[[[[9647.48,2469.24,0],0,[]],[[9652.48,2464.24,0],0,[]],[[9642.48,2464.24,0],0,[]],[[9657.48,2459.24,-1.90735e-006],0,[]]],[],[[[9600.39,2459.21,0],[[0,"Move"],[1,"SAFE"]]],[[9637.99,2374.27,3.62396e-005],[[0,"Move"]]],[[9697,2368.06,1.14441e-005],[[0,"Move"]]],[[9668.74,2459.91,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9758.96,2433,0],0,[]],[[9763.96,2428,0],0,[]],[[9753.96,2428,1.90735e-006],0,[]],[[9768.96,2423,0],0,[]]],[],[[[9711.88,2422.97,0],[[0,"Move"],[1,"SAFE"]]],[[9749.47,2338.03,3.62396e-005],[[0,"Move"]]],[[9808.48,2331.82,1.14441e-005],[[0,"Move"]]],[[9780.22,2423.67,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[9696.14,2359.08,0],0,[]],[[9701.14,2354.08,0],0,[]],[[9691.14,2354.08,0],0,[]],[[9706.14,2349.08,0],0,[]]],[],[[[9649.05,2349.05,0],[[0,"Move"],[1,"SAFE"]]],[[9686.65,2264.11,3.43323e-005],[[0,"Move"]]],[[9745.66,2257.9,9.53674e-006],[[0,"Move"]]],[[9717.4,2349.75,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		// Static
		[[[[9712.65,2433.45,0],249,"Up",[]],[[9685.1,2449.68,0],92,"Up",[]],[[9702.91,2454.5,0],181,"Up",[]],[[9688.6,2429.87,0],106,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {

		/// Ambush 1
		[ambush_1,6,east,1500] spawn OKS_Rush_SpawnGroup;
		[ambush_2,6,east,1500] spawn OKS_Rush_SpawnGroup;
	};

	case 6: {
		/// Ambush 2
		[ambush_3,6,east,1500] spawn OKS_Rush_SpawnGroup;
		[ambush_4,6,east,1500] spawn OKS_Rush_SpawnGroup;
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
