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

		// Snipers
		[[[[5791.5,3195.21,6.58681],261,"Up",[]],[[5767.85,3212.95,3.70881],261,"Up",[]],[[5858.78,3229.78,3.65063],208,"Up",[]],[[5865.56,3239.56,3.31],324,"Up",[]],[[6010.05,2961.3,3.37633],306,"Middle",[]],[[5992.21,2942.84,4.54206],302,"Middle",[]],[[5894.92,2813.96,2.65626],316,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 1: {

		{
			[east,_X,getpos target_1,20,300,150] spawn OKS_ArtyFire; sleep 5;
		} foreach [arty_1,arty_2];

		// Arty 1 & 2
		[[[[4099.37,2550.89,1.90735e-006],64,"Up",[]],[[4111.51,2561.5,0.22435],160,"Up",[]],[[4094.35,2555.17,0.755718],329,"Up",[]],[[4101.48,2558.05,0.501709],0,"Up",[]],[[4139.57,2559.35,0],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4122.06,2602.54,0],237,"Up",[]],[[4111.02,2610.88,0],209,"Up",[]],[[4089.37,2607.73,1.90735e-006],157,"Middle",[]],[[4086.06,2587.78,0],86,"Middle",[]],[[4103.53,2612.1,0.314074],168,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4129.01,2590.52,0],118,"Middle",[]],[[4125.02,2577.26,0],0,"Up",[]],[[4137.97,2570.43,3.37347],38,"Up",[]],[[4130.02,2572.26,0],0,"Up",[]],[[4129.2,2574.97,3.72186],1,"Middle",[]]],[["UK3CB_CHD_W_O_SPG9",[4129.46,2570.36,3.84044],17,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		[[],[["UK3CB_ARD_O_UAZ_SPG9",[3992.13,2521.43,1.90735e-006],29,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_ARD_O_UAZ_SPG9",[4352.54,2237.19,1.90735e-006],333,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[4520.16,2407.36,0],0,[]],[[4525.16,2402.36,0],0,[]],[[4515.16,2402.36,0],0,[]],[[4530.16,2397.36,0],0,[]]],[],[[[4419.14,2562.68,-1.90735e-006],[[0,"Move"]]],[[4309.1,2778.49,-5.72205e-006],[[0,"Move"]]],[[4414.26,2558.71,-3.8147e-006],[[0,"Move"]]],[[4519.7,2394.78,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4084.46,2277.48,3.8147e-006],0,[]],[[4089.46,2272.48,3.8147e-006],0,[]],[[4079.46,2272.48,3.8147e-006],0,[]],[[4094.46,2267.48,3.8147e-006],0,[]]],[],[[[4198.24,2450.38,0],[[0,"Move"]]],[[3879.8,2489.53,0],[[0,"Move"]]],[[3968.52,2379.9,3.8147e-006],[[0,"Move"]]],[[4074.45,2268.24,3.8147e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3677.67,2408.65,0],99,[]],[[3671.92,2404.54,0],99,[]],[[3673.56,2414.4,0],99,[]],[[3666.17,2400.42,0],99,[]]],[],[[[3757.63,2661.54,0],[[0,"Move"]]],[[3919.47,2616.19,0],[[0,"Move"]]],[[3917.6,2395.55,0],[[0,"Move"]]],[[3703.35,2297.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		[aaa_1,east,false,1500,true] spawn GW_Ambient_AAA;

		// Anti-Air Nest.
		[[[[4355.48,1182.83,0],78,"Up",[]],[[4360.02,1199.4,4.8435],352,"Up",[]],[[4358.99,1189.25,3.8147e-006],70,"Middle",[]],[[4361.13,1198.71,7.75233],352,"Up",[]],[[4357.2,1192.82,1.73713],338,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4381.06,1212.69,2.63215],0,"Middle",[]],[[4405.36,1234.48,0],0,"Up",[]],[[4383.57,1201.99,0],352,"Up",[]],[[4388.46,1197.61,0.349998],29,"Up",[]],[[4390.43,1198.83,3.14],21,"Middle",[]],[[4375.49,1224.8,0],71,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ARD_O_UAZ_SPG9",[4324.58,1142.13,1],10,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_ARD_O_UAZ_SPG9",[4575.69,1310.77,1],234,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Sentries.
		[[[[4543.06,1254.01,4.17],320,"Middle",[]],[[4504.46,1333.44,0.192902],306,"Middle",[]],[[4499.16,1331.79,0.0115128],298,"Middle",[]],[[4659.04,1258.45,3.71732],310,"Up",[]],[[4778.73,1374.45,3.6351],304,"Up",[]],[[4781.3,1381.15,3.79591],343,"Up",[]],[[4696.81,942.404,3.58557],308,"Up",[],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[4309.91,1134.13,0],0,[]],[[4314.91,1129.13,0],0,[]],[[4304.91,1129.13,0],0,[]],[[4319.91,1124.13,0],0,[]]],[],[[[4255.48,1087.96,0],[[0,"Move"],[1,"SAFE"]]],[[4185.17,1095.32,-7.62939e-006],[[0,"Move"]]],[[4040.45,1282.25,7.62939e-005],[[0,"Move"]]],[[4112.54,1328.16,9.15527e-005],[[0,"Move"]]],[[4249,1264.6,3.8147e-006],[[0,"Move"]]],[[4326.6,1140.29,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4653.01,1231.66,0],0,[]],[[4658.01,1226.66,0],0,[]],[[4648.01,1226.66,0],0,[]],[[4663.01,1221.66,0],0,[]]],[],[[[4598.58,1185.49,0],[[0,"Move"],[1,"SAFE"]]],[[4421.84,1178.82,3.8147e-006],[[0,"Move"]]],[[4349.68,1429.81,3.8147e-006],[[0,"Move"]]],[[4513.06,1355.65,0],[[0,"Move"]]],[[4666.64,1351.76,0],[[0,"Move"]]],[[4669.69,1237.83,3.8147e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4777.38,1345.75,0],0,[]],[[4782.38,1340.75,7.62939e-006],0,[]],[[4772.38,1340.75,7.62939e-006],0,[]],[[4787.38,1335.75,7.62939e-006],0,[]]],[],[[[4722.96,1299.58,3.8147e-006],[[0,"Move"],[1,"SAFE"]]],[[4614.7,1291.93,0],[[0,"Move"]]],[[4513.21,1553.9,0],[[0,"Move"]]],[[4661.53,1803.73,0],[[0,"Move"]]],[[4730,1527.2,0],[[0,"Move"]]],[[4794.07,1351.91,3.8147e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4746.4,948.013,0],0,[]],[[4751.4,943.013,0],0,[]],[[4741.4,943.013,0],0,[]],[[4756.4,938.013,0],0,[]]],[],[[[4661.24,927.208,0],[[0,"Move"],[1,"SAFE"]]],[[4521.83,844.722,0],[[0,"Move"]]],[[4341.9,982.2,0],[[0,"Move"]]],[[4655.29,1073.18,0],[[0,"Move"]]],[[5031.41,1085.62,0],[[0,"Move"]]],[[4763.09,954.177,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		// HQ 
		[[],[["UK3CB_ARD_O_MTLB_PKT",[5717.59,1056.83,1.90735e-006],335,[["driver",-1,[]],["commander",-1,[0]]],[[6,["ARD",1]]]],["UK3CB_ARD_O_MTLB_PKT",[5579.46,1142.23,1.90735e-006],245,[["driver",-1,[]],["commander",-1,[0]]],[[6,["ARD",1]]]],["UK3CB_ARD_O_MTLB_PKT",[5853.99,1148.71,0],270,[["driver",-1,[]],["commander",-1,[0]]],[[6,["ARD",1]]]],["UK3CB_ADA_O_SPG9",[5662.85,1109.14,3.50057],265,[["gunner",-1,[0]]],[]],["UK3CB_ADA_O_SPG9",[5756.07,1116.57,3.38492],14,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5731.14,1117.51,0],233,"Middle",[]],[[5749.42,1138.94,1.90735e-006],189,"Middle",[]],[[5752.63,1115.14,2.67279],348,"Middle",[]],[[5757.82,1117.03,3.06989],50,"Middle",[]],[[5747.9,1114.07,1.90735e-006],205,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5704.27,1107.44,0],25,"Middle",[]],[[5724.03,1120.21,0.967524],264,"Up",[]],[[5718.93,1128.47,0.797384],341,"Up",[]],[[5717.79,1121.72,3.97266],232,"Up",[]],[[5727.86,1121.13,4.37219],78,"Up",[]],[[5721.56,1126.55,7.14362],310,"Up",[]],[[5723.57,1128.38,7.20891],310,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5667.38,1138.45,1.49192],358,"Up",[]],[[5671.22,1137.6,1.57235],47,"Up",[]],[[5671.07,1140.44,4.28468],36,"Up",[]],[[5666.15,1138.76,4.13739],339,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5657.72,1134.12,-3.8147e-006],145,"Up",[]],[[5660.04,1137.14,0.634295],130,"Up",[]],[[5660.22,1136.93,3.62501],316,"Up",[]],[[5680.58,1119.08,0.27635],240,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5670.12,1113.91,0.509056],50,"Up",[]],[[5661.88,1109.22,0.70882],37,"Up",[]],[[5670.02,1120.33,0],3,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrol.
		[[[[5755.01,870.071,0],0,[]],[[5760.01,865.071,0],0,[]],[[5750.01,865.071,0],0,[]],[[5765.01,860.071,0],0,[]]],[],[[[5260.34,745.482,0],[[0,"Move"]]],[[5200.19,995.274,0],[[0,"Move"]]],[[5585.01,1116.79,0],[[0,"Move"]]],[[5740.9,892.78,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5106.48,1052.21,1.90735e-006],98,[]],[[5100.8,1048.01,1.90735e-006],98,[]],[[5102.28,1057.9,1.90735e-006],98,[]],[[5095.12,1043.8,1.90735e-006],98,[]]],[],[[[5128.39,1342.56,0],[[0,"Move"]]],[[5577.91,1478.03,0],[[0,"Move"]]],[[5628.93,1271.31,1.90735e-006],[[0,"Move"]]],[[5131.03,1062.82,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5926.43,1017.54,0],0,[]],[[5931.43,1012.54,0],0,[]],[[5921.43,1012.54,0],0,[]],[[5936.43,1007.54,0],0,[]]],[],[[[5798.83,1025.72,0],[[0,"Move"]]],[[5707.31,1179,0],[[0,"Move"]]],[[5885.96,1240.24,0],[[0,"Move"]]],[[5943.55,1048.92,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5892.43,1403.19,0],0,[]],[[5897.43,1398.19,0],0,[]],[[5887.43,1398.19,0],0,[]],[[5902.43,1393.19,0],0,[]]],[],[[[6008.57,1208.53,0],[[0,"Move"]]],[[5714.72,1083.65,0],[[0,"Move"]]],[[5750.73,1247.34,0],[[0,"Move"]]],[[5878.31,1425.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 4: {

		// Supply Depot
		[[],[["UK3CB_ARD_O_GAZ_Vodnik_PKT",[5853.23,3242.64,0],214,[["driver",-1,[]],["commander",-1,[2]],["turret",-1,[3]]],[[6,["ARD",1]]]],["UK3CB_ARD_O_Hilux_Spg9",[5927.19,3124.04,1.90735e-006],286,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],["UK3CB_ARD_O_Hilux_Spg9",[5821.69,3275.78,1.90735e-006],268,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],["UK3CB_ARD_O_MTLB_PKT",[5914.16,3195.04,0],259,[["driver",-1,[]],["commander",-1,[0]]],[[6,["ARD",1]]]],["UK3CB_ARD_O_MTLB_PKT",[5725.08,3276.72,0],200,[["driver",-1,[]],["commander",-1,[0]]],[[6,["ARD",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5766.27,3245.69,0],93,"Up",[]],[[5766.77,3232.64,-3.8147e-006],272,"Up",[]],[[5766.75,3237.05,0.125395],344,"Up",[]],[[5758.54,3236.32,0.435581],277,"Up",[]],[[5758.46,3244.72,0.965612],269,"Up",[]],[[5761.4,3245.98,0.970469],26,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5773.98,3263.32,-3.8147e-006],269,"Up",[]],[[5764.64,3248.32,0],269,"Up",[]],[[5758.81,3254.03,0.16],81,"Up",[]],[[5758.34,3260.34,0.519367],353,"Up",[]],[[5767.89,3257.32,0.809656],95,"Up",[]],[[5765.3,3260.33,0.837387],269,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5947.86,3064.42,-3.8147e-006],314,"Up",[]],[[5959.81,3074.46,-3.8147e-006],224,"Up",[]],[[5954.01,3088.66,-3.8147e-006],137,"Up",[]],[[5958.52,3077.3,3.31],111,"Up",[]],[[5955.49,3074.03,3.31],151,"Up",[]],[[5948.94,3069.93,3.62187],236,"Up",[]],[[5947.58,3073.04,0.858297],21,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5953.54,3094.46,-3.8147e-006],314,"Up",[]],[[5945.83,3098.33,0.437254],233,"Up",[]],[[5949.94,3089.07,0.920889],155,"Up",[]],[[5946.96,3091.82,0.892618],314,"Up",[]],[[5945.22,3077.6,3.725],314,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5934.07,3091.35,-3.8147e-006],235,"Up",[]],[[5934.1,3086.96,-3.8147e-006],103,"Up",[]],[[5939.79,3092.45,0.155857],124,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADA_O_LR_SPG9",[5920.48,2924.86,1.90735e-006],352,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]],["UK3CB_ADA_O_LR_SPG9",[6148.73,3132.74,0],289,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[5711.56,3350.18,0],0,[]],[[5716.56,3345.18,0],0,[]],[[5706.56,3345.18,0],0,[]],[[5721.56,3340.18,0],0,[]]],[],[[[5385.85,3364.33,0],[[0,"Move"],[1,"SAFE"]]],[[5479.49,3148.76,0],[[0,"Move"]]],[[5725.38,3200.29,0],[[0,"Move"]]],[[5729.42,3344.79,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5906.11,3153.89,1.90735e-006],0,[]],[[5911.11,3148.89,1.90735e-006],0,[]],[[5901.11,3148.89,1.90735e-006],0,[]],[[5916.11,3143.89,1.90735e-006],0,[]]],[],[[[5548.48,3049.37,0],[[0,"Move"],[1,"SAFE"]]],[[5565.05,2810.01,0],[[0,"Move"]]],[[5943.12,2922.38,0],[[0,"Move"]]],[[5899.54,3116.93,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6230.94,3143.14,0],0,[]],[[6235.94,3138.14,0],0,[]],[[6225.94,3138.14,0],0,[]],[[6240.94,3133.14,0],0,[]]],[],[[[6071.35,3198.02,0],[[0,"Move"],[1,"SAFE"]]],[[5979.36,2977.56,1.90735e-006],[[0,"Move"]]],[[6234.65,2980.83,0],[[0,"Move"]]],[[6248.79,3137.75,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5894.4,3493.1,0],256,[]],[[5898.02,3499.17,0],256,[]],[[5900.48,3489.48,0],256,[]],[[5901.64,3505.25,0],256,[]]],[],[[[5795.08,3219.32,0],[[0,"Move"],[1,"SAFE"]]],[[6201.41,3270.02,0],[[0,"Move"]]],[[6064.78,3456.73,0],[[0,"Move"]]],[[5895.25,3511.73,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 5: {

		// Service Stations.
		[[[[6104.06,2096.44,3.66025],264,"Up",[]],[[6113.43,2095.36,3.65181],204,"Up",[]],[[6106.94,2103.97,4.09463],290,"Middle",[]],[[6098.65,2122.6,2.93664],316,"Up",[]],[[6098.61,2128.03,0.240886],288,"Up",[]],[[6102.53,2130.16,0],162,"Up",[]],[[6112.23,2120.4,0],170,"Up",[]],[[6115.92,2097.39,0.302693],336,"Up",[]],[[6104.93,2098.15,0.877822],162,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6082.86,2102.73,0],103,"Up",[]],[[6082.05,2084,1.76717],60,"Up",[]],[[6090.67,2082.93,1.17847],253,"Up",[]],[[6079.94,2079.95,2.73448],107,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5970.6,2239.69,3.31],12,"Up",[]],[[5973.1,2239.95,3.31],19,"Up",[]],[[5964.16,2230.31,3.71332],275,"Up",[]],[[5967.98,2233.15,0.969003],337,"Up",[]],[[5969.72,2229.09,0.987383],170,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5948.56,2231.86,1.90735e-006],70,"Up",[]],[[5945.86,2239.99,0.52215],275,"Up",[]],[[5948.27,2240.21,3.65192],171,"Up",[]],[[5950.53,2242.3,3.71705],313,"Up",[]],[[5951.72,2236.48,6.65021],164,"Up",[]],[[5945.07,2240.37,6.53956],157,"Up",[]],[[5951.51,2248.2,1.90735e-006],275,"Up",[]],[[5956.3,2255.5,1.90735e-006],257,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6032.58,1976.66,3.31],294,"Up",[]],[[6037.37,1986.09,3.67741],10,"Up",[]],[[6195.71,1923.31,3.66194],294,"Up",[]],[[6227.5,1941.93,3.31505],330,"Up",[]],[[6116.53,2029.5,3.26985],294,"Up",[]],[[6145.81,2164.18,6.56943],278,"Up",[]],[[6140.7,2186.96,3.67113],208,"Up",[]],[[6117.51,2185.11,3.59941],294,"Up",[]],[[6028.67,2214.66,2.60888],294,"Up",[]],[[6041.8,2235.52,6.5686],46,"Up",[]],[[6042.31,2237.06,3.66321],53,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[],[["UK3CB_ARD_O_MTLB_PKT",[6084.85,2174.88,9.53674e-007],332,[["driver",-1,[]],["commander",-1,[0]]],[[6,["ARD",1]]]],["UK3CB_ARD_O_UAZ_SPG9",[6022.84,1985.69,0],354,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_ARD_O_UAZ_SPG9",[5996.25,2227.56,0],4,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrol.
		[[[[5760.92,2274.54,0],0,[]],[[5765.92,2269.54,0],0,[]],[[5755.92,2269.54,0],0,[]],[[5770.92,2264.54,3.8147e-006],0,[]]],[],[[[5378.17,2066.08,0],[[0,"Move"],[1,"SAFE"]]],[[5243.11,2286.44,0],[[0,"Move"]]],[[5153.55,2499.68,0],[[0,"Move"]]],[[5611.96,2535.78,1.90735e-006],[[0,"Move"]]],[[5737.85,2287.86,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6295.96,2177.98,0],0,[]],[[6300.96,2172.98,0],0,[]],[[6290.96,2172.98,0],0,[]],[[6305.96,2167.98,0],0,[]]],[],[[[6108.65,2156.47,0],[[0,"Move"],[1,"SAFE"]]],[[5927.25,2375.43,0],[[0,"Move"]]],[[5962.36,2482.32,0],[[0,"Move"]]],[[6250.26,2444.09,0],[[0,"Move"]]],[[6272.88,2191.3,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6132.21,1947.4,0],0,[]],[[6137.21,1942.4,0],0,[]],[[6127.21,1942.4,0],0,[]],[[6142.21,1937.4,0],0,[]]],[],[[[5944.9,1925.89,0],[[0,"Move"],[1,"SAFE"]]],[[5845.1,2009.62,0],[[0,"Move"]]],[[5763.47,2223.82,0],[[0,"Move"]]],[[5983.25,2208.65,0],[[0,"Move"]]],[[6109.13,1960.72,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 6: {

		// Final Artillery.
		{
			[east,_X,getpos target_1,3,300,300] spawn OKS_ArtyFire; sleep 5;
		} foreach [arty_3,arty_4,arty_5];

		[[[[6846.93,1854.76,2.65204],304,"Up",[]],[[6846.55,1852.52,2.71487],261,"Up",[]],[[6857.83,1831.39,0.309399],360,"Up",[]],[[6848.1,1847.58,0.195091],94,"Up",[]],[[6868.73,1833.75,-4.76837e-007],2,"Up",[]],[[6877.74,1833.16,2.6431],223,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6899.06,1802.92,6.57083],334,"Up",[]],[[6894.22,1769.15,1.90735e-006],256,"Up",[]],[[6875.04,1781.65,0],242,"Up",[]],[[6849.14,1802.32,0],250,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6893.51,1843.84,6.57748],274,"Up",[]],[[6892.55,1842.81,3.66776],273,"Up",[]],[[6895.41,1845.22,3.66616],40,"Up",[]],[[6898.84,1839.6,3.64832],155,"Up",[]],[[6898.95,1839.23,0.56671],177,"Up",[]],[[6887.93,1850.64,0],57,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6897.3,1883.13,0.142656],64,"Up",[]],[[6907.19,1878.89,0.887073],326,"Up",[]],[[6904.9,1887.57,0.448511],180,"Up",[]],[[6903.04,1866.68,0],179,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6876.39,1855.57,2.59635],323,"Up",[]],[[6878.92,1868.59,3.30169],360,"Up",[]],[[6879.42,1878.92,3.66382],344,"Up",[]],[[6877.99,1873.96,3.63445],279,"Up",[]],[[6896.29,1860.98,4.17],182,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[6793.98,1459.18,9.53674e-007],295,"Middle",[]],[[6793.96,1451.01,0],295,"Middle",[]],[[6795.18,1443.75,0],295,"Middle",[]],[[6796.96,1432.26,0],295,"Middle",[]],[[6797.62,1424.49,9.53674e-007],295,"Middle",[]],[[6798.45,1414.89,0],295,"Middle",[]]],[["UK3CB_ADA_O_MTLB_PKT",[6800.51,1439.5,-9.53674e-007],271,[["driver",-1,[]],["commander",-1,[0]]],[[6,["ADA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADA_O_MTLB_PKT",[7049.19,1856.63,0],248,[["driver",-1,[]],["commander",-1,[0]]],[[6,["ADA",1]]]],["UK3CB_ADR_O_LR_SPG9",[6904.18,1965.99,0],221,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["AD",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]],["UK3CB_ADR_O_LR_SPG9",[7191.25,1600.11,0],264,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["AD",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[6912.27,1231.25,0],0,[]],[[6917.27,1226.25,0],0,[]],[[6907.27,1226.25,0],0,[]],[[6922.27,1221.25,0],0,[]]],[],[[[6583.27,1241.81,0],[[0,"Move"],[1,"SAFE"]]],[[6544.56,1430.06,0],[[0,"Move"]]],[[6872.68,1476.68,0],[[0,"Move"]]],[[6948.34,1254.12,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6804.95,1755.82,0],238,[]],[[6806.49,1762.72,0],238,[]],[[6811.85,1754.28,0],238,[]],[[6808.04,1769.62,0],238,[]]],[],[[[6931.62,1649.1,0],[[0,"Move"],[1,"SAFE"]]],[[6667.71,1482.84,9.53674e-007],[[0,"Move"]]],[[6468.91,1582.25,0],[[0,"Move"]]],[[6766.32,1774.03,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7390.96,1559.67,0],0,[]],[[7395.96,1554.67,0],0,[]],[[7385.96,1554.67,0],0,[]],[[7400.96,1549.67,0],0,[]]],[],[[[7061.96,1570.23,0],[[0,"Move"],[1,"SAFE"]]],[[7023.25,1758.48,0],[[0,"Move"]]],[[7351.38,1805.1,0],[[0,"Move"]]],[[7427.03,1582.54,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6929.76,2106.18,0.0984178],204,[]],[[6927.18,2112.76,0],204,[]],[[6936.34,2108.75,0],204,[]],[[6924.6,2119.35,0],204,[]]],[],[[[7083.49,1920.74,0],[[0,"Move"],[1,"SAFE"]]],[[6954.55,1716.42,0],[[0,"Move"]]],[[6814.7,1791.8,0],[[0,"Move"]]],[[6887.54,2099.69,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 7:{

		// Arty Counter-Attack.
		[[],[["UK3CB_ARD_O_Hilux_Spg9",[2671.82,1970.15,0],72,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[[[3820.71,2753.53,0],[[0,"Hold"],[1,"SAFE"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ARD_O_MTLB_BMP",[3197.6,1475.98,0],61,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]]],[[[3951.6,2423.06,0],[[0,"Hold"],[1,"SAFE"]]]]] call GW_Common_fnc_spawnGroup;


	};

	case 8:{

		// AA Counter
		[[[[3901.08,1076.75,0],67,[]],[[3898.43,1070.2,0],67,[]],[[3894.53,1079.41,0],67,[]],[[3895.77,1063.65,0],67,[]],[[3887.97,1082.06,0],67,[]],[[3893.12,1057.09,0],67,[]],[[3881.42,1084.72,0],67,[]],[[3890.46,1050.54,0],67,[]]],[],[[[4127.99,1123.14,3.8147e-005],[[0,"Move"]]],[[4193.25,1140.26,-8.39233e-005],[[0,"Move"]]],[[4423,1228.78,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;	
		[[],[["UK3CB_ARD_O_MTLB_BMP",[3918.45,784.791,3.05176e-005],60,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]]],[[[4358.79,1112.66,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 9:{

		// HQ Counter
		[[[[6105.6,898.272,0],0,[]],[[6110.6,893.272,0],0,[]],[[6100.6,893.272,0],0,[]],[[6115.6,888.272,0],0,[]],[[6095.6,888.272,0],0,[]],[[6120.6,883.272,0],0,[]],[[6090.6,883.272,0],0,[]],[[6125.6,878.272,0],0,[]]],[],[[[5965.99,1114.33,3.8147e-006],[[0,"Move"]]],[[5731.86,1154.2,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5531.94,640.217,0],0,[]],[[5536.94,635.217,0],0,[]],[[5526.94,635.217,0],0,[]],[[5541.94,630.217,0],0,[]],[[5521.94,630.217,0],0,[]],[[5546.94,625.217,0],0,[]],[[5516.94,625.217,0],0,[]],[[5551.94,620.217,0],0,[]]],[],[[[5480.3,997.961,0],[[0,"Move"]]],[[5671.29,1185.04,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ARD_O_MTLB_BMP",[5892.52,275.484,1.14441e-005],325,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]]],[[[5721.07,1042.83,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 10:{

		// Support Counter
		[[],[["UK3CB_ARD_O_MTLB_BMP",[6017.45,3817,-1.90735e-006],183,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]]],[[[5893.97,3352.72,-1.90735e-006],[[0,"Move"]]],[[5813.43,3333.17,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5993.13,3485.46,0],216,[]],[[5992.04,3492.45,0],216,[]],[[6000.12,3486.56,0],216,[]],[[5990.94,3499.44,0],216,[]],[[6007.1,3487.66,0],216,[]],[[5989.84,3506.42,0],216,[]],[[6014.09,3488.76,0],216,[]],[[5988.74,3513.41,0],216,[]]],[],[[[5784.68,3250.12,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 11:{

		// Support Counter 2.
		[[],[["UK3CB_ARD_O_Hilux_Spg9",[6643.81,3054.56,-6.67572e-006],286,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[[[6091.39,3226.38,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ARD_O_Hilux_Spg9",[6672.55,3050.71,0],267,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[[[6268.97,3168.22,0],[[0,"Move"]]],[[6073.4,3133.67,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6339.51,3060.14,0],270,[]],[[6344.48,3065.17,0],270,[]],[[6344.55,3055.17,0],270,[]],[[6349.45,3070.21,0],270,[]],[[6349.58,3050.21,0],270,[]],[[6354.42,3075.24,0],270,[]],[[6354.61,3045.24,0],270,[]],[[6359.38,3080.27,0],270,[]]],[],[[[5946.13,3085.5,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 12:{

		sleep 180;

		// Final Arty Objective Counter.
		[convoy_1,convoy_2,convoy_3,east,[4,["UK3CB_ADA_O_Pickup_SPG9","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup"], 10, 35],[true,3],[], false, false] spawn OKS_Convoy_Spawn;
		
		sleep 180;
		[convoy_4,convoy_5,convoy_6,east,[4,["UK3CB_ARD_O_BMP1","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup","UK3CB_ADA_O_Pickup"], 10, 35],[true,3],[], false, false] spawn OKS_Convoy_Spawn;

	};

	case 13:{
		// Motor Pool 1.
		[[[[6309.89,2228.8,0],246,[]],[[6312.37,2235.42,0],246,[]],[[6316.51,2226.32,0],246,[]],[[6314.85,2242.05,0],246,[]],[[6317.52,2230.71,0],246,[]],[[6315.37,2230.72,0],246,[]],[[6324.14,2228.23,0],246,[]],[[6317.84,2237.35,0],246,[]]],[],[[[5958.28,2241.18,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 14:{
		// Motor Pool 2.
		[[[[6322.66,2209.3,-9.53674e-007],246,[]],[[6325.13,2215.92,0],246,[]],[[6329.28,2206.82,0],246,[]],[[6327.61,2222.55,0],246,[]],[[6330.28,2211.21,0],246,[]],[[6328.13,2211.22,0],246,[]],[[6336.91,2208.73,0],246,[]],[[6330.61,2217.84,0],246,[]]],[],[[[6094.77,2105.61,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
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
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_CreateZone")};

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
			] spawn OKS_CreateZone;
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

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn NEKY_Hunt_HuntBase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Hunt_HuntBase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn NEKY_Hunt_HuntBase;
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

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
