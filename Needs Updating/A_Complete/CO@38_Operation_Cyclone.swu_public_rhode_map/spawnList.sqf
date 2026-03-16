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

	case 0: {

		// Case 0
		[getpos LambsGroupSpawn_22, "ambushhunt", 3, EAST, 350] spawn OKS_fnc_Lambs_SpawnGroup; sleep 10;
		[getpos LambsGroupSpawn_23, "ambushhunt", 3, EAST, 350] spawn OKS_fnc_Lambs_SpawnGroup; sleep 10;
		[getpos LambsGroupSpawn_24, "ambushhunt", 3, EAST, 350] spawn OKS_fnc_Lambs_SpawnGroup; sleep 10;
		[getpos LambsGroupSpawn_25, "ambushhunt", 3, EAST, 350] spawn OKS_fnc_Lambs_SpawnGroup; sleep 10;
		[getpos LambsGroupSpawn_26, "ambushhunt", 3, EAST, 350] spawn OKS_fnc_Lambs_SpawnGroup; sleep 10;
		[getpos LambsGroupSpawn_27, "ambushhunt", 3, EAST, 350] spawn OKS_fnc_Lambs_SpawnGroup; sleep 10;

		[[],[
			["UK3CB_ADE_O_LR_M2",[2905.44,2537.18,2],328,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["ADE",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"Spare_Wheel_Hide",0,"Beacons_Hide",1,"ClanLogo_Hide",1]]]],
			["UK3CB_ADE_O_LR_M2",[2873.5,2531.11,1],257,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["ADE",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"Spare_Wheel_Hide",0,"Beacons_Hide",1,"ClanLogo_Hide",1]]]],
			["UK3CB_ADE_O_LR_M2",[2830.86,2311.9,1],188,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["ADE",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"Spare_Wheel_Hide",0,"Beacons_Hide",1,"ClanLogo_Hide",1]]]],
			["UK3CB_ADE_O_LR_M2",[2801.91,2408.12,1],289,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["ADE",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"Spare_Wheel_Hide",0,"Beacons_Hide",1,"ClanLogo_Hide",1]]]]
		],[]] call GW_Common_fnc_spawnGroup;
	
		// AA HMGs.
		[[],[["UK3CB_TKA_O_KORD_high",[1158.02,1653.93,0],148,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_KORD_high",[1102.85,1742.17,-0.000488281],148,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_KORD_high",[1140.35,1752.25,-0.00137711],125,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_KORD_high",[1211.55,1683.52,-0.000938416],84,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_KORD_high",[1493.04,291.578,-0.00188637],358,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_KORD_high",[1460.71,268.325,-0.00518322],296,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_KORD_high",[1529.72,278.479,-0.00354671],15,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_KORD_high",[1569.56,264.534,-0.0078907],343,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_KORD_high",[1016.31,797.335,-0.111879],148,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_KORD_high",[1086.03,913.797,-0.000228882],148,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_KORD_high",[1161.61,914.386,-6.67572e-05],186,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_KORD_high",[1194.24,1000.98,-0.00282669],148,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_KORD_high",[1142.63,1055.11,-0.0122528],99,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_LR_M2",[2780.77,801.761,0.927176],274,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["Red",1]],[7,["Front_Grill_Hide",0,"Spare_Wheel_Hide",0,"Fuel_Cans_Hide",1,"Beacons_Hide",1,"Radio_Hide",1,"Light_Covers_Hide",1,"ClanLogo_Hide",1]]]],["UK3CB_ADG_O_LR_M2",[2786.96,768.175,0.384991],306,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["Red",1]],[7,["Front_Grill_Hide",0,"Spare_Wheel_Hide",0,"Fuel_Cans_Hide",1,"Beacons_Hide",1,"Radio_Hide",1,"Light_Covers_Hide",1,"ClanLogo_Hide",1]]]],["UK3CB_ADG_O_LR_M2",[3009.2,1675.63,0.927176],353,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["Red",1]],[7,["Front_Grill_Hide",0,"Spare_Wheel_Hide",0,"Fuel_Cans_Hide",1,"Beacons_Hide",1,"Radio_Hide",1,"Light_Covers_Hide",1,"ClanLogo_Hide",1]]]],["UK3CB_ADG_O_LR_M2",[2803.77,1562.31,0.927176],273,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["Red",1]],[7,["Front_Grill_Hide",0,"Spare_Wheel_Hide",0,"Fuel_Cans_Hide",1,"Beacons_Hide",1,"Radio_Hide",1,"Light_Covers_Hide",1,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		/// AAA outskirts.
		[[],[["UK3CB_ADM_O_V3S_Zu23",[458.576,478.132,0],34,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADM",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_ADM_O_V3S_Zu23",[531.643,582.708,0],51,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADM",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_ADM_O_V3S_Zu23",[290.091,345.528,0],18,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADM",1]],[7,["ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 1: {

		// Spawn units for case 1
		// Patrols.
		[[[[1929.87,1533.61,0],134,[]],[[1922.81,1533.43,0],134,[]],[[1929.7,1540.68,0],134,[]],[[1915.74,1533.25,0],134,[]]],[],[[[1965.02,1467.4,0],[[0,"Move"],[1,"SAFE"]]],[[1935.91,1364.82,9.53674e-07],[[0,"Move"]]],[[1882.07,1318.34,9.53674e-07],[[0,"Move"]]],[[1863.05,1389.32,1.90735e-06],[[0,"Move"]]],[[1898.23,1543.72,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1745.96,1550.24,0],71,[]],[[1742.83,1543.9,0],71,[]],[[1739.62,1553.37,0],71,[]],[[1739.71,1537.56,0],71,[]]],[],[[[1820.92,1550.6,0],[[0,"Move"],[1,"SAFE"]]],[[1898.22,1477.15,0],[[0,"Move"]]],[[1914.36,1407.88,0],[[0,"Move"]]],[[1842.67,1424.02,1.90735e-06],[[0,"Move"]]],[[1722.3,1526.92,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1633.43,1436.03,0],53,[]],[[1632.43,1429.03,0],53,[]],[[1626.43,1437.03,0],53,[]],[[1631.42,1422.03,0],53,[]]],[],[[[1704.59,1459.6,0],[[0,"Move"],[1,"SAFE"]]],[[1800.85,1413.74,0],[[0,"Move"]]],[[1837.67,1352.89,0],[[0,"Move"]]],[[1764.51,1346.01,1.90735e-06],[[0,"Move"]]],[[1618.17,1406.52,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1823.79,1251.7,0],55,[]],[[1822.61,1244.72,0],55,[]],[[1816.82,1252.88,0],55,[]],[[1821.42,1237.75,0],55,[]]],[],[[[1895.51,1273.48,0],[[0,"Move"],[1,"SAFE"]]],[[1990.59,1225.21,0],[[0,"Move"]]],[[2025.87,1163.45,0],[[0,"Move"]]],[[1952.56,1158.41,0],[[0,"Move"]]],[[1807.79,1222.58,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2285.65,980.405,0],0,[]],[[2290.65,975.405,0],0,[]],[[2280.65,975.405,0],0,[]],[[2295.65,970.405,0],0,[]],[[2275.65,970.405,0],0,[]],[[2300.65,965.405,0],0,[]],[[2270.65,965.405,0],0,[]],[[2305.65,960.405,0],0,[]]],[],[[[2267.23,989.275,0],[[0,"Cycle"]]],[[2294.03,1130.62,0],[[0,"Move"],[1,"SAFE"]]],[[2256.98,1132.42,0],[[0,"Move"]]],[[2285.9,1314.96,0],[[0,"Move"]]],[[2270.53,1314.05,0],[[0,"Move"]]],[[2594.49,1672.91,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1504.1,1056.16,1.90735e-06],8,[]],[[1508.37,1050.52,0],8,[]],[[1498.46,1051.88,0],8,[]],[[1512.64,1044.89,1.90735e-06],8,[]],[[1492.83,1047.61,0],8,[]],[[1516.92,1039.26,0],8,[]],[[1487.19,1043.34,0],8,[]],[[1521.19,1033.62,0],8,[]]],[],[[[1532.82,1203.83,0],[[0,"Move"],[1,"SAFE"]]],[[1549.84,1387.57,1.90735e-06],[[0,"Move"]]],[[1155.53,1578.76,0],[[0,"Move"]]],[[1534.5,1388.76,0],[[0,"Move"]]],[[1496.37,1210.66,0],[[0,"Move"]]],[[1487.05,1067.45,3.8147e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2024.95,971.547,0],302,[]],[[2031.84,973.139,0],302,[]],[[2026.54,964.658,0],302,[]],[[2038.73,974.73,0],302,[]]],[],[[[1977.25,1029.37,0],[[0,"Move"],[1,"SAFE"]]],[[1985.22,1135.7,1.90735e-06],[[0,"Move"]]],[[2028.66,1192.03,0],[[0,"Move"]]],[[2061.51,1126.3,1.90735e-06],[[0,"Move"]]],[[2057.98,967.979,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1799.91,1031.86,0],302,[]],[[1806.8,1033.46,0],302,[]],[[1801.5,1024.97,0],302,[]],[[1813.69,1035.05,9.53674e-07],302,[]]],[],[[[1698.42,1076.58,0],[[0,"Move"],[1,"SAFE"]]],[[1718.45,1173.32,0],[[0,"Move"]]],[[1754.73,1228.82,0],[[0,"Move"]]],[[1822.7,1163,0],[[0,"Move"]]],[[1832.94,1028.3,9.53674e-07],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1643.23,917.017,0],115,[]],[[1636.6,914.578,0],115,[]],[[1640.8,923.654,0],115,[]],[[1629.96,912.139,0],115,[]],[[1638.36,930.291,0],115,[]],[[1623.32,909.701,0],115,[]],[[1635.92,936.928,0],115,[]],[[1616.69,907.262,0],115,[]]],[],[[[1776.05,846.349,0],[[0,"Move"],[1,"SAFE"]]],[[1946.77,776.334,0],[[0,"Move"]]],[[2140.12,388.304,0],[[0,"Move"]]],[[1952.4,790.656,0],[[0,"Move"]]],[[1793.24,879.216,0],[[0,"Move"]]],[[1659.02,930.017,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Statics.
		[[[[1687.96,1349.03,-1.90735e-06],303,"Middle",[]],[[1687,1368.59,0.30628],353,"Up",[]],[[1690.87,1368.02,0.359867],199,"Up",[]],[[1701.27,1356.23,2.47955e-05],49,"Up",[]]],[["UK3CB_ADR_O_Hilux_Pkm",[1695.87,1356.32,0.0522575],66,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["AD",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1644.57,1346.79,0.484068],110,"Up",[]],[[1643.32,1351.38,0.288324],78,"Up",[]],[[1656.49,1358.66,0.468348],152,"Up",[]],[[1657.06,1362.92,0.307924],229,"Middle",[]],[[1652.24,1362.78,0.261875],23,"Up",[]],[[1667.74,1371.94,1.90735e-06],16,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Trench 1.
		[[[[2137.38,1252,0.0125561],342,"Up",[]],[[2136.04,1251.08,0.00415802],308,"Up",[]],[[2143.73,1245.5,-0.00976944],125,"Middle",[]],[[2130.84,1246.84,9.53674e-06],65,"Middle",[]],[[2123.21,1238.49,-1.90735e-06],57,"Middle",[]]],[["UK3CB_ADE_O_PKM_High",[2126.36,1242.08,0.026228],339,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2113.65,1245.3,0],344,"Up",[]],[[2111.11,1243.35,-1.90735e-06],309,"Up",[]],[[2108.82,1241.72,-1.90735e-06],302,"Up",[]],[[2109.7,1238.82,-3.8147e-06],249,"Up",[]],[[2114.35,1240.19,0],69,"Middle",[]],[[2110.63,1231.65,0],71,"Middle",[]],[[2104.34,1227.01,-9.53674e-06],312,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2103.9,1223.15,-1.90735e-06],300,"Up",[]],[[2100.46,1201.97,-2.47955e-05],220,"Up",[]],[[2100.86,1206.55,2.76566e-05],265,"Up",[]],[[2094.05,1217.57,0.162628],332,"Up",[]],[[2093.55,1214.68,0.177958],268,"Up",[]],[[2093.32,1212.3,0.194936],225,"Up",[]],[[2100.44,1214.56,0.173355],77,"Middle",[]]],[["UK3CB_ADE_O_PKM_High",[2103.8,1219.92,-0.00516319],293,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrol Base.
		[[[[1919.68,1128.17,-1.23978e-05],355,"Up",[]],[[1920.65,1128.17,3.8147e-06],9,"Up",[]],[[1912.64,1121.69,8.58307e-06],71,"Middle",[]],[[1915.58,1103.33,-1.90735e-06],85,"Middle",[]],[[1904.81,1114.12,6.67572e-06],33,"Up",[]],[[1903.7,1111.07,9.53674e-07],296,"Up",[]],[[1905.69,1108.11,0.140154],164,"Up",[]],[[1908.67,1109.52,0.236772],205,"Middle",[]]],[["UK3CB_ADA_O_BRDM2",[1924.74,1114.6,0.320445],7,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ADA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1942.04,1115.76,-3.8147e-06],17,"Up",[]],[[1937.54,1118.85,0],86,"Up",[]],[[1934.07,1107.61,0.419715],230,"Up",[]],[[1931.2,1107.71,0.57815],177,"Up",[]],[[1935.73,1113.58,0.618645],273,"Up",[]],[[1934.79,1110,0.471267],315,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1938.94,1097.54,4.76837e-06],86,"Up",[]],[[1938.62,1096.47,2.86102e-06],113,"Up",[]],[[1927.91,1096.87,-6.67572e-06],285,"Middle",[]],[[1926.78,1087.75,0.326649],240,"Up",[]],[[1921.37,1079.84,0.690275],350,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {

		// Spawn units for case 2
		[[[[1328.35,1079.25,1.90735e-06],63,[]],[[1326.21,1072.51,1.90735e-06],63,[]],[[1321.61,1081.39,1.90735e-06],63,[]],[[1324.07,1065.77,1.90735e-06],63,[]]],[],[[[1402.41,1090.85,0],[[0,"Move"],[1,"SAFE"]]],[[1489.86,1029.84,3.8147e-06],[[0,"Move"]]],[[1516.21,963.774,3.8147e-06],[[0,"Move"]]],[[1442.91,968.974,1.90735e-06],[[0,"Move"]]],[[1308.46,1052.64,3.8147e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1276.23,910.614,3.49436],14,[]],[[1279.83,904.53,6.48499e-05],14,[]],[[1270.14,907.012,3.44388],14,[]],[[1283.43,898.445,6.48499e-05],14,[]]],[],[[[1316.9,973.583,6.10352e-05],[[0,"Move"],[1,"SAFE"]]],[[1420.66,998.171,6.86646e-05],[[0,"Move"]]],[[1487.48,973.826,6.67572e-05],[[0,"Move"]]],[[1432.99,916.843,0],[[0,"Move"]]],[[1282.83,878.054,6.67572e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1612.59,528.554,0],302,[]],[[1619.48,530.145,9.53674e-07],302,[]],[[1614.18,521.664,0],302,[]],[[1626.37,531.737,0],302,[]]],[],[[[1564.89,586.379,0],[[0,"Move"],[1,"SAFE"]]],[[1572.86,692.711,2.86102e-06],[[0,"Move"]]],[[1616.3,749.032,0],[[0,"Move"]]],[[1649.15,683.303,0],[[0,"Move"]]],[[1645.62,524.985,3.8147e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1470.09,600.346,0],302,[]],[[1476.98,601.937,0],302,[]],[[1471.68,593.456,0],302,[]],[[1483.87,603.529,9.53674e-07],302,[]]],[],[[[1422.39,658.171,0],[[0,"Move"],[1,"SAFE"]]],[[1430.36,764.503,1.90735e-06],[[0,"Move"]]],[[1473.8,820.825,0],[[0,"Move"]]],[[1506.65,755.095,0],[[0,"Move"]]],[[1503.12,596.778,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1344.45,624.277,0],302,[]],[[1351.34,625.868,0],302,[]],[[1346.04,617.387,0],302,[]],[[1358.23,627.46,0],302,[]]],[],[[[1296.75,682.102,0],[[0,"Move"],[1,"SAFE"]]],[[1304.73,788.434,0],[[0,"Move"]]],[[1348.16,844.756,2.55599],[[0,"Move"]]],[[1381.02,779.026,1.90735e-06],[[0,"Move"]]],[[1377.48,620.709,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Static.
		[[[[1451.79,910.526,0],25,"Up",[]],[[1459.58,895.834,0.188414],164,"Up",[]],[[1448.14,885.586,0.315451],142,"Up",[]],[[1451.93,885.521,0.313366],357,"Up",[]],[[1453.27,881.64,0.335066],186,"Up",[]],[[1453.71,878.965,0],85,"Up",[]],[[1435.63,905.441,0.108131],99,"Up",[]],[[1434.31,910.856,0.767176],63,"Middle",[]]],[["rhs_KORD_VDV",[1445.58,884.987,0.315451],32,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1484.88,888.382,0.170532],34,"Up",[]],[[1487.3,885.985,0.290838],45,"Up",[]],[[1484.75,884.804,0],212,"Middle",[]],[[1481.09,888.175,1.1121],71,"Up",[]],[[1479.28,898.733,0.779215],77,"Up",[]],[[1494.04,911.869,0.204821],8,"Middle",[]],[[1506.73,905.852,0.764435],46,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1475.31,887.931,0.901052],18,"Up",[]],[[1474.69,901.935,0.498344],35,"Middle",[]],[[1473.84,919.385,0.473688],53,"Up",[]],[[1476.31,913.817,0.617689],336,"Up",[]],[[1472.63,913.104,0.578409],236,"Up",[]],[[1511.79,933.556,0.23781],112,"Middle",[]],[[1510.71,938.038,0.49629],112,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1464.63,952.236,0],46,"Up",[]],[[1465.97,948.979,0],135,"Middle",[]],[[1494.48,961.58,-1.90735e-06],99,"Middle",[]],[[1493.16,960.723,0],155,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1434.36,952.237,0.676741],178,"Middle",[]],[[1431.01,938.981,0],67,"Up",[]],[[1451.33,929.915,0.501585],41,"Up",[]],[[1453.54,925.107,0.762732],67,"Up",[]],[[1451.04,923.245,0.725742],347,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Last Compound.
		[[[[1354.21,875.586,0.0343132],263,"Up",[]],[[1362.96,875.823,0],37,"Up",[]],[[1369.38,880.602,0],30,"Up",[]],[[1371.73,875.357,0.401827],72,"Up",[]],[[1373.68,872.339,0.571056],125,"Up",[]],[[1368.86,869.405,0.576839],154,"Up",[]],[[1368.2,874.328,0.293987],247,"Middle",[]],[[1371.43,880.596,1.123],95,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1370.72,895.645,0],180,"Up",[]],[[1370.54,909.195,0],318,"Middle",[]],[[1379.04,897.67,0.0848064],144,"Up",[]],[[1378.82,903.411,0],39,"Up",[]],[[1379.15,901.215,-1.90735e-06],76,"Up",[]],[[1373.96,901.297,0.0915565],64,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1369.95,922.687,-1.90735e-06],64,"Up",[]],[[1370.12,918.718,0],78,"Up",[]],[[1370.09,926.427,0],2,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1357.39,956.475,0.0290985],215,"Up",[]],[[1358.22,950.184,9.53674e-05],275,"Up",[]],[[1345.21,959.704,0.275852],358,"Middle",[]],[[1345.21,948.238,0.269398],183,"Middle",[]]],[["rhs_KORD_high_MSV",[1357.95,951.766,0.254646],96,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[1357.98,953.413,0.254623],96,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1351.79,905.667,0],29,"Up",[]],[[1356.35,915.791,0],335,"Up",[]],[[1355.16,923.77,0.248972],66,"Up",[]],[[1350.32,923.474,0],346,"Up",[]],[[1345,905.765,0],22,"Up",[]],[[1346.83,889.209,-1.90735e-06],28,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;


	};

	case 3: {

		["hq","side","1st Platoon, be advised, enemy insurgent forces are massing to your west. Be ready for a counter-attack, ETA 4 minutes. Good luck, HQ out."] remoteExec ["OKS_fnc_Chat",0];

		private _time = 200;
		if(hasInterface && isServer) then {
			sleep (_time * 0.15);
		} else {
			sleep 200;
		};

		// Case 3. Counter-Attack.
		[getpos LambsGroupSpawn_1, "rush", 6, independent, 500] spawn OKS_fnc_Lambs_SpawnGroup; sleep 10;
		[getpos LambsGroupSpawn_2, "hunt", 6, independent, 500] spawn OKS_fnc_Lambs_SpawnGroup; sleep 10;
		[getpos LambsGroupSpawn_3, "rush", 6, independent, 500] spawn OKS_fnc_Lambs_SpawnGroup; sleep 10;
		[getpos LambsGroupSpawn_4, "hunt", 6, independent, 500] spawn OKS_fnc_Lambs_SpawnGroup; sleep 10;
		[getpos LambsGroupSpawn_5, "rush", 6, independent, 500] spawn OKS_fnc_Lambs_SpawnGroup; sleep 10;

		[[],[["UK3CB_TKM_O_T55",[969.801,949.68,-1.90735e-06],82,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["Camo1",1]],[7,["Barrels_Hide",0]]]]],[[[1309.18,936.166,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup; sleep 30;
		[[],[["UK3CB_TKM_O_T55",[1228.56,489.936,3.8147e-06],359,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["Camo1",1]],[7,["Barrels_Hide",0]]]]],[[[1312.84,852.451,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;

		[convoy_1, convoy_2, convoy_3, east, [6, ["UK3CB_TKM_O_BMP1", "UK3CB_TKM_O_BMP1", "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_BTR40_MG"], 25, 45], [true, 6], [], false, false] spawn OKS_fnc_Convoy_Spawn;
	};

	case 4: {

		// CASE 4.
		[getpos LambsGroupSpawn_6, "rush", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_7, "hunt", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_8, "rush", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_9, "hunt", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_10, "hunt", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
	};

	case 5: {

		// CASE 5.
		[getpos LambsGroupSpawn_11, "hunt", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_12, "rush", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_13, "hunt", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_14, "rush", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_15, "hunt", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;

		[[],[["UK3CB_TKM_O_BTR60",[1520.34,942.017,0],56,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[[[1866.03,1008.59,-9.53674e-07],[[0,"Move"]]],[[1883.09,1059.76,9.53674e-07],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKM_O_BTR60",[1510.46,956.574,0],110,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[[[1866.03,1008.59,-9.53674e-07],[[0,"Move"]]],[[1901.22,1044.65,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 6: {

		// Counter-Attack Hamlet.
		[getpos LambsGroupSpawn_16, "hunt", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_17, "rush", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_18, "hunt", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_19, "rush", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_20, "hunt", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_21, "rush", 5, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;

	};

	case 7: {

		// Ambush 1
		[[],[["UK3CB_MEE_O_BRDM2",[2142.47,2129.69,0],40,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["MEE",1]]]]],[[[2314.83,2372.91,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2104.29,2248.59,1.90735e-06],56,[]],[[2102.99,2241.64,3.8147e-06],56,[]],[[2108.49,2244.33,0],56,[]],[[2099.45,2253.1,1.90735e-06],56,[]],[[2101.54,2245.63,3.8147e-06],56,[]],[[2098.15,2246.14,0],56,[]],[[2101.8,2251.36,0],56,[]],[[2105.19,2238.44,0],56,[]]],[],[[[2319.65,2471.72,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2111.71,2212.98,0],56,[]],[[2110.41,2206.03,1.90735e-06],56,[]],[[2115.91,2208.72,0],56,[]],[[2106.86,2217.48,0],56,[]],[[2108.96,2210.02,0],56,[]],[[2105.56,2210.53,0],56,[]],[[2109.21,2215.75,0],56,[]],[[2112.6,2202.83,0],56,[]]],[],[[[2324.27,2431.03,1.90735e-06],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2136.91,2196.96,0],56,[]],[[2135.61,2190.01,1.90735e-06],56,[]],[[2141.11,2192.7,0],56,[]],[[2132.06,2201.46,0],56,[]],[[2134.16,2194,0],56,[]],[[2130.77,2194.51,0],56,[]],[[2134.42,2199.73,0],56,[]],[[2137.81,2186.81,0],56,[]]],[],[[[2317.06,2390.71,1.90735e-06],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 20;
		[[],[["UK3CB_MEE_O_BTR40_MG",[2680.59,2448.63,1.90735e-06],230,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["MEE",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]]]]],[[[2435.45,2347.24,-9.53674e-06],[[0,"Move"]]],[[2368.71,2395.64,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 80;
		[[],[["UK3CB_MEE_O_BRDM2",[2045.54,1927.71,0],65,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["MEE",1]]]]],[[[2296.66,2325.31,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		[getpos LambsGroupSpawn_28, "ambushrush", 5, EAST, 200] spawn OKS_fnc_Lambs_SpawnGroup; sleep 5;
		[getpos LambsGroupSpawn_29, "ambushrush", 5, EAST, 200] spawn OKS_fnc_Lambs_SpawnGroup; sleep 5;
		[getpos LambsGroupSpawn_30, "ambushrush", 5, EAST, 200] spawn OKS_fnc_Lambs_SpawnGroup;
	
	};	

	case 8: {

		// Ambush 2
		[[[[1890.97,1804.56,-1.90735e-06],0,[]],[[1895.97,1802.56,0],0,[]]],[],[[[1827.67,1807.64,5.72205e-06],[[0,"Move"]]],[[1889.51,1802.89,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1895.57,1793.89,0],96,[]],[[1893.1,1789.11,0],96,[]]],[],[[[1904.74,1856.6,3.8147e-06],[[0,"Move"]]],[[1894.04,1795.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1836.62,1800.81,0],96,[]],[[1834.15,1796.02,0],96,[]]],[],[[[1845.78,1863.51,3.8147e-06],[[0,"Move"]]],[[1835.09,1802.42,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1843.78,1876.31,0],173,[]],[[1838.59,1877.72,0],173,[]]],[],[[[1907.01,1880.62,3.8147e-06],[[0,"Move"]]],[[1845.04,1878.15,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1807.3,1844.51,1.90735e-06],170,[]],[[1802.02,1845.58,1.90735e-06],170,[]]],[],[[[1870.11,1852.94,5.72205e-06],[[0,"Move"]]],[[1808.43,1846.43,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1860.75,1787.39,1.90735e-06],89,[]],[[1858.83,1782.36,3.8147e-06],89,[]]],[],[[[1862.86,1850.73,5.72205e-06],[[0,"Move"]]],[[1859.05,1788.82,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Ground Level Static.
		[[[[1889.27,1844.16,0.73303],271,"Up",[]],[[1892.63,1845.3,0.592386],55,"Up",[]],[[1882.61,1826.33,0.718231],357,"Up",[]],[[1885.91,1826.41,0.519295],336,"Middle",[]],[[1888.81,1861.42,1.90735e-06],170,"Middle",[]],[[1896.36,1843.4,0.330837],352,"Middle",[]],[[1897.37,1841.92,0.393295],55,"Up",[]],[[1867.33,1867.11,-1.90735e-06],163,"Up",[]],[[1876.09,1861.86,1.03271],166,"Up",[]],[[1855.38,1830.2,0.529024],36,"Up",[]],[[1855.64,1834.96,0.578869],42,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Top Floor Static.
		[[[[1877.86,1845.33,3.78539],84,"Up",[]],[[1877.94,1846.07,3.77397],84,"Up",[]],[[1875.19,1845.62,3.95022],84,"Up",[]],[[1870.69,1845.23,4.17215],262,"Up",[]],[[1870.64,1846.32,4.15598],262,"Up",[]],[[1877.89,1838.35,3.60931],89,"Up",[]],[[1877.85,1834.43,3.5311],74,"Up",[]],[[1877.82,1835.89,3.55866],126,"Up",[]],[[1875.86,1835.52,3.6776],94,"Up",[]],[[1874.69,1833.96,3.72447],206,"Up",[]],[[1873.67,1833.99,3.78597],161,"Up",[]],[[1870.19,1836.69,4.06317],274,"Up",[]],[[1870.1,1837.63,4.08809],224,"Up",[]],[[1870.24,1840.55,4.13213],294,"Up",[]],[[1870.58,1841.41,4.1326],254,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};	

	case 9: {

		[convoy_4, convoy_5, convoy_6, east, [5, ["UK3CB_TKM_O_BMP1", "UK3CB_TKM_O_BMP1", "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_BTR40_MG"], 20, 45], [true, 6], [], false, false] spawn OKS_fnc_Convoy_Spawn;

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