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

// Prevent duplicate execution of the same case
private _varName = format ["GW_SpawnList_Case_%1_Executed", _case];
if (missionNamespace getVariable [_varName, false]) exitWith {
	format ["[SpawnList] Case %1 already executed, preventing duplicate spawn", _case] spawn OKS_fnc_LogDebug;
	false
};
missionNamespace setVariable [_varName, true, true];

switch (_case) do {

	case 1: {

		["hq","side","1-1 this is Crossroads, we are reports of morning prayer, you still have time to setup your defences, make the best of the situation, crossroads out!"] remoteExec ["OKS_fnc_Chat",0];	
		sleep 200;
		deleteVehicle PrayerTrigger;

		sleep 30;

		[] spawn {
			[mortar_1,[getPos target_1,getPos target_2,getPos target_3,getPos target_4],east,4,5,true] spawn OKS_fnc_ArtySuppression;
			sleep 40;
			[
				mortar_1,
				"Counter Mortar",
				"Mortar",
				"A mortar position is located in the area of operations and is shelling our positions. Make use of our own support assets and silence the enemy mortar!",
				nil,
				"TaskDefend"
			] spawn OKS_fnc_Destroy_Task;;
			sleep 30;
			[mortar_2,[getPos target_5,getPos target_6,getPos target_7],east,4,5,true] spawn OKS_fnc_ArtySuppression;
			sleep 40;
			[
				mortar_2,
				"Counter Mortar",
				"Mortar",
				"A mortar position is located in the area of operations and is shelling our positions. Make use of our own support assets and silence the enemy mortar!",
				nil,
				"TaskDefend"
			] spawn OKS_fnc_Destroy_Task;;
			sleep 30;
			[mortar_3,[getPos target_8,getPos target_9,getPos target_10],east,4,5,true] spawn OKS_fnc_ArtySuppression;
			sleep 40;
			[
				mortar_3,
				"Counter Mortar",
				"Mortar",
				"A mortar position is located in the area of operations and is shelling our positions. Make use of our own support assets and silence the enemy mortar!",
				nil,
				"TaskDefend"
			] spawn OKS_fnc_Destroy_Task;;
		};	

		Wave1Complete = false;
		Wave2Complete = false;

		// Standard Infantry Attack
		_Group1 = [[[[1066.82,2073.9,0],281,[]],[[1072.69,2077.84,0],281,[]],[[1070.76,2068.03,0],281,[]],[[1078.56,2081.78,0],281,[]],[[1074.7,2062.16,0],281,[]],[[1084.43,2085.73,0],281,[]],[[1078.64,2056.29,0],281,[]],[[1090.3,2089.67,0.19923],281,[]]],[],[[[882.145,2123,0],[[0,"Move"],[4,"LINE"]]],[[614.562,2204.46,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Group2 = [[[[1033.96,2411.48,3.8147e-006],243,[]],[[1036.09,2418.22,3.8147e-006],243,[]],[[1040.7,2409.35,0],243,[]],[[1038.23,2424.96,3.8147e-006],243,[]],[[1047.44,2407.21,0],243,[]],[[1040.36,2431.7,0],243,[]],[[1054.18,2405.08,0.0898247],243,[]],[[1042.49,2438.45,0.199234],243,[]]],[],[[[858.926,2334.81,0],[[0,"Move"],[4,"LINE"]]],[[598.884,2231.78,3.8147e-006],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Group3 = [[[[1079.82,2222.26,0],266,[]],[[1084.5,2227.55,0],266,[]],[[1085.12,2217.57,0],266,[]],[[1089.19,2232.85,0],266,[]],[[1090.42,2212.89,0],266,[]],[[1093.87,2238.15,0],266,[]],[[1095.71,2208.21,0],266,[]],[[1098.56,2243.45,0.199226],266,[]]],[],[[[888.735,2223.09,0],[[0,"Move"],[4,"LINE"]]],[[609.251,2234.29,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Group4 = [[[[929.895,2473.94,0],233,[]],[[930.859,2480.95,0],233,[]],[[936.9,2472.98,0],233,[]],[[931.824,2487.95,0],233,[]],[[943.904,2472.01,0],233,[]],[[932.788,2494.96,0],233,[]],[[950.91,2471.05,0],233,[]],[[933.753,2501.96,0.199223],233,[]]],[],[[[770.347,2368.78,0],[[0,"Move"],[4,"LINE"]]],[[604.442,2250.28,0.332165],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		_Group5 = [[],[["UK3CB_ADA_O_BTR40_MG",[1121.32,1993.28,0],283,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]]]]],[[[732.102,2067.07,0],[[0,"Move"]]],[[664.28,2146.32,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 120;
		// Rush Attack Waves
		[[attack_1,attack_2,attack_3,attack_4,attack_5,attack_6,attack_7],2,3,180,"rush",east,1500,"Wave1Complete"] spawn OKS_fnc_Lambs_Wavespawn;
		sleep 60;
		_Group6 = [[],[["UK3CB_ADA_O_MTLB_KPVT",[1001.69,2349.04,0],258,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ADA",1]]]]],[[[859.937,2310.58,0],[[0,"Move"]]],[[767.755,2280.49,1.36547],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 180;
		_Group7 = [[],[["UK3CB_ADA_O_MTLB_PKT",[925.149,2477.05,0],178,[["driver",-1,[]],["commander",-1,[0]]],[[6,["ADA",1]]]]],[[[862.712,2426.11,16.3595],[[0,"Move"]]],[[742.326,2312.51,2.12179],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		[[attack_8,attack_9,attack_10,attack_11,attack_12],2,2,180,"rush",east,1500,"Wave2Complete"] spawn OKS_fnc_Lambs_Wavespawn;
		sleep 60;
		_Group8 = [[],[["UK3CB_ADA_O_T55",[1133.59,2031.18,0],178,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["AD",1]],[7,["Barrels_Hide",0]]]]],[[[873.382,2023.56,0],[[0,"Move"]]],[[693.372,2113.66,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;

		SpawnedWave = [];
		{{SpawnedWave pushBackUnique _X} foreach units _x} foreach [_Group1,_Group2,_Group3,_Group4,_Group5,_Group6,_Group7,_Group8];
		publicVariable "SpawnedWave";
		sleep 5;

		_Group8 spawn {
			Params ["_Group"];
			waitUntil {sleep 5; !(canFire (Vehicle (Leader _Group))) && !(canMove (Vehicle (Leader _Group)))};
			_Group leaveVehicle (vehicle leader _Group);	
		};

		waitUntil {sleep 10; Wave2Complete && Wave1Complete && {Alive _X || [_X] call ace_common_fnc_isAwake} count SpawnedWave == 0};
		["TaskDefend","SUCCEEDED",true] call BIS_fnc_taskSetState;
		sleep 60;
		Phase1Complete = true;
		publicVariable "Phase1Complete";
		["hq","side","1-1 this is Crossroads, we have reports of insurgents retreating, good work! Prepare for the counter-attack, crossroads out!"] remoteExec ["OKS_fnc_Chat",0];	
	};

	case 2: {

		// Patrols
		[[[[1164.18,2056.29,3.8147e-006],0,[]],[[1169.18,2051.29,0.633026],0,[]],[[1159.18,2051.29,0.485504],0,[]],[[1174.18,2046.29,1.51841],0,[]]],[],[[[1127.32,2009.68,0],[[0,"Move"]]],[[1077.7,2042.85,0],[[0,"Move"]]],[[1079.76,2108.94,0],[[0,"Move"]]],[[1129.77,2143.12,0],[[0,"Move"]]],[[1154.56,2062.57,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1092.89,2270.92,0],0,[]],[[1097.89,2265.92,0],0,[]],[[1087.89,2265.92,0],0,[]],[[1102.89,2260.92,0.885387],0,[]]],[],[[[1056.03,2224.31,0],[[0,"Move"]]],[[1006.41,2257.48,0],[[0,"Move"]]],[[1008.47,2323.57,0],[[0,"Move"]]],[[1058.47,2357.75,0],[[0,"Move"]]],[[1083.27,2277.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Silawa
		[[[[1127.72,2040.49,-3.8147e-006],202,"Up",[]],[[1121.58,2041.73,0.172062],124,"Up",[]],[[1120.68,2050.21,0.115906],141,"Up",[]],[[1112.14,2083.98,-7.62939e-006],66,"Up",[]],[[1121.81,2069.97,3.8147e-006],127,"Up",[]],[[1119.41,2062.58,0.0362129],257,"Up",[]],[[1120.37,2081.52,-3.8147e-006],253,"Up",[]],[[1139.5,2090.37,0.39584],202,"Up",[]],[[1135.57,2093.48,0.265369],202,"Up",[]],[[1137.44,2100.29,0.56279],202,"Up",[]],[[1134.79,2097.23,0.32542],202,"Up",[]],[[1137.97,2063.49,0.609451],209,"Up",[]]],[["UK3CB_ADE_O_BTR40_MG",[1125.46,2031.72,3.8147e-006],264,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADE_2",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		
		// Patrol Base
		[[[[1045.67,2270.4,-3.8147e-006],156,"Up",[]],[[1037.9,2270.23,-3.8147e-006],156,"Up",[]],[[1030.64,2273.31,0.170162],252,"Up",[]],[[1029.14,2276.77,0.22023],156,"Up",[]],[[1033.09,2276.7,0.20359],156,"Up",[]],[[1040.73,2272.22,0],156,"Up",[]],[[1034.48,2295.59,0],280,"Up",[]],[[1035.29,2296.74,3.8147e-006],336,"Up",[]],[[1032.48,2288.08,3.8147e-006],280,"Up",[]],[[1059.4,2283.76,0.870861],260,"Up",[]],[[1057.83,2287.35,0.751591],260,"Up",[]],[[1052.71,2292.56,0.219671],260,"Up",[]],[[1056.48,2292.17,0.667221],198,"Up",[]]],[["UK3CB_AAF_O_DSHKM",[1046.18,2271.81,1.90735e-006],156,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Hill Bunker
		[[[[1282.82,2377.44,1.52588e-005],199,"Up",[]],[[1279.33,2379.22,-1.14441e-005],199,"Up",[]],[[1292.79,2382.21,0],199,"Middle",[]],[[1262.34,2398.04,-3.8147e-006],234,"Middle",[]],[[1280.31,2388.1,0.500534],199,"Up",[]],[[1277.82,2389.42,0.579865],199,"Up",[]],[[1268.35,2381.62,1.07967],199,"Up",[]],[[1261.09,2385.55,0.511456],228,"Up",[]],[[1261.19,2384.08,0.525131],228,"Up",[]]],[["UK3CB_O_Static_PKM_High",[1264.01,2381.14,-0.0763435],208,[["gunner",-1,[0]]],[]],["UK3CB_O_Static_PKM_High",[1262.56,2381.95,-0.0185738],208,[["gunner",-1,[0]]],[]],["UK3CB_O_Static_PKM_High",[1284.97,2376.37,0.0864639],208,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {
		// Silawa Counter-attack
		[[rush_1,rush_2,rush_3,rush_4],3,1,1,"rush",east,1500,"SilawaCounter"] spawn OKS_fnc_Lambs_Wavespawn;
	};

	case 4: {
		// Outpost Counter-attack
		[[counter_1,counter_2,counter_3],3,1,1,"rush",east,1500,"OutpostCounter"] spawn OKS_fnc_Lambs_Wavespawn;
		[counter_4,"attack",[["UK3CB_ADA_O_Hilux_Pkm"],0],east,1500,[]] spawn OKS_fnc_Lambs_SpawnGroup;
	};

	case 5: {

		["hq","side","1-1 this is Crossroads, intel suggests captives are held in the city, clear the buildings with extreme caution, rescue the captives. Crossroads out!"] remoteExec ["OKS_fnc_Chat",0];	
		[Group HVT_1,getPos ExfilSite_1,west,false,"TaskRescue"] spawn OKS_fnc_Evacuate_HVT;

		// Patrols
		[[[[985.859,2640.82,0],35,[]],[[987.07,2633.86,2.85419],35,[]],[[983.256,2637.69,0],35,[]],[[988.281,2626.89,1.00126],35,[]]],[],[[[960.187,2614.8,3.37107],[[0,"Move"]]],[[872.296,2611.11,0],[[0,"Move"]]],[[884.533,2659.54,0],[[0,"Move"]]],[[939.334,2691.68,0],[[0,"Move"]]],[[981.723,2645.86,3.8147e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1246.87,2590.57,0],35,[]],[[1248.08,2583.6,2.27331],35,[]],[[1239.9,2589.36,0.0316467],35,[]],[[1249.29,2576.63,1.03291],35,[]]],[],[[[1164.6,2565.2,0],[[0,"Move"]]],[[1098.01,2604.27,3.8147e-006],[[0,"Move"]]],[[1088.01,2662.55,0],[[0,"Move"]]],[[1191.24,2665.7,0],[[0,"Move"]]],[[1242.62,2601.24,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1096.83,2639.44,4.36417],321,[]],[[1103.86,2638.65,2.2733],321,[]],[[1096.04,2632.42,0.0316429],321,[]],[[1110.88,2637.86,1.0329],321,[]]],[],[[[1092.11,2590.38,0],[[0,"Move"]]],[[1023.27,2606.23,0],[[0,"Move"]]],[[999.227,2647.32,8.11457],[[0,"Move"]]],[[1016.94,2665.13,0],[[0,"Move"]]],[[1085.39,2638.35,0.433907],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1448.61,2656.25,0],344,[]],[[1454.79,2652.81,0.147522],344,[]],[[1445.17,2650.07,0],344,[]],[[1460.97,2649.37,1.03291],344,[]]],[],[[[1416.58,2576.34,0],[[0,"Move"]]],[[1344.31,2549.16,0],[[0,"Move"]]],[[1292.72,2578.05,0],[[0,"Move"]]],[[1355.22,2660.28,0],[[0,"Move"]]],[[1437.64,2659.66,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// City
		[[[[897.882,2619.7,0.807842],186,"Up",[]],[[878.449,2619.91,0.493328],184,"Up",[]],[[871.894,2632.94,0],81,"Up",[]],[[897.771,2631.46,0.709953],357,"Up",[]],[[879.43,2655.73,4.41262],171,"Up",[]],[[871.866,2651.6,3.8147e-006],108,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[889.175,2646.08,3.12187],211,"Up",[]],[[889.207,2646.17,0.0500908],186,"Up",[]],[[891.322,2644.39,0.539867],220,"Up",[]],[[895.109,2640.81,0.685928],360,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[898.77,2647.89,0.962498],254,"Up",[]],[[897.39,2640.52,4.16653],180,"Up",[]],[[898.691,2644.53,4.30528],101,"Up",[]],[[900.561,2647.39,4.36042],91,"Up",[]],[[902.782,2661.51,3.8147e-006],241,"Up",[]],[[907.919,2654.54,0.393593],192,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[991.104,2611.31,1.60175],354,"Up",[]],[[996.275,2629.19,4.12394],258,"Up",[]],[[996.503,2636.39,4.56892],259,"Up",[]],[[997.504,2629.23,0.590374],6,"Up",[]],[[1007.52,2628.8,4.20882],238,"Middle",[]],[[970.458,2610.39,3.99237],3,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1003.08,2638.03,3.8147e-006],294,"Up",[]],[[1009.1,2632.82,0.850006],281,"Up",[]],[[1010.48,2637.19,0.816151],311,"Up",[]],[[1009.33,2636.03,4.49932],297,"Up",[]],[[1017.15,2651.46,4.27821],245,"Up",[]],[[1039.17,2658.87,4.01303],193,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1024.07,2635.28,0.603294],303,"Up",[]],[[1026.02,2630.28,0.709518],163,"Up",[]],[[1033.41,2637.12,0.848347],303,"Up",[]],[[1024.03,2635.48,4.0791],301,"Up",[]],[[1023.66,2631.61,4.08685],223,"Up",[]],[[1036.35,2630.15,4.54518],167,"Middle",[]],[[1039.64,2610.2,3.8147e-006],313,"Up",[]],[[1058.76,2624.94,4.72248],259,"Middle",[]],[[1076.92,2608.13,0.141186],279,"Middle",[]]],[["UK3CB_AAF_O_PKM_High",[1030.04,2626.77,4.40439],267,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[993.577,2701.28,4.94294],194,"Middle",[]],[[999.653,2702.22,4.84282],194,"Middle",[]],[[1153.62,2600.26,0.141182],26,"Middle",[]],[[1144.2,2615.94,0.315411],126,"Up",[]],[[1136.84,2623.23,0.141182],92,"Up",[]],[[1118.91,2615.84,0.141182],105,"Middle",[]],[[1148.23,2643.55,0.141182],170,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1185.67,2633.64,0.748936],191,"Up",[]],[[1192.44,2630.63,0.366566],249,"Middle",[]],[[1184.64,2615.56,0.141182],153,"Up",[]],[[1179.52,2615.64,0.189548],243,"Up",[]],[[1179.5,2619.21,0.590794],32,"Up",[]],[[1172.3,2658.14,0.5061],177,"Up",[]],[[1179.04,2634.24,0.30584],236,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Last Compound
		[[[[1417.57,2628.86,0.377678],197,"Up",[]],[[1407.74,2624.94,0.412697],71,"Up",[]],[[1408.01,2628.5,0.357861],71,"Up",[]],[[1400.87,2604.13,0],24,"Up",[]],[[1391.8,2602.14,0.164646],24,"Up",[]],[[1365.06,2609.96,3.8147e-006],278,"Up",[]],[[1334.51,2606.9,-3.8147e-006],317,"Up",[]],[[1365.61,2621.95,0.410549],183,"Up",[]],[[1385.86,2645.26,0],174,"Middle",[]],[[1377.22,2625.55,3.8147e-006],179,"Middle",[]],[[1381.6,2608.16,0],341,"Up",[]],[[1371.05,2625.23,0.527241],163,"Up",[]],[[1372.13,2621.75,0.672852],24,"Up",[]],[[1341.58,2629.96,3.8147e-006],99,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Trench
		[[[[1462.12,2574.1,0],288,"Up",[]],[[1461.6,2572.75,0.0190811],288,"Up",[]],[[1460.92,2571.57,0.0359802],288,"Up",[]],[[1460.14,2570.03,0],288,"Up",[]],[[1457.6,2564.75,0.0769196],288,"Up",[]],[[1457.09,2563.51,0.419464],288,"Up",[]],[[1455.99,2561.63,0.303482],288,"Up",[]],[[1453.92,2557.94,0.0539932],288,"Up",[]],[[1452.85,2555.99,0.00954056],288,"Up",[]],[[1451.87,2554.17,0.059021],288,"Up",[]],[[1449.17,2548.6,0],288,"Up",[]],[[1448,2546.13,0.000354767],288,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1454.04,2634.37,0],256,"Up",[]],[[1454.32,2632.95,0],256,"Up",[]],[[1454.37,2631.59,0.0489731],256,"Up",[]],[[1454.53,2629.88,0.0505638],256,"Up",[]],[[1455.2,2624.06,0.0231361],256,"Up",[]],[[1455.43,2622.74,0.142292],256,"Up",[]],[[1455.51,2620.55,0.0282097],256,"Up",[]],[[1455.72,2616.33,0.104012],256,"Up",[]],[[1455.86,2614.11,0.180019],256,"Up",[]],[[1456,2612.05,0.24696],256,"Up",[]],[[1456.69,2605.9,0.314762],256,"Up",[]],[[1457.02,2603.19,0.414585],256,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 6: {

		// Hunt Parties
		{[getPos _X,"rush",2,east,1000,[],EndTrackerTrigger] spawn OKS_fnc_Lambs_Spawner} foreach [tracker_1,tracker_2,tracker_3,tracker_4,tracker_5];

	};

	case 7: {	

		// Second Counter-Attack Wave Mid section in City
		[SecondAttack_1,"attack",[["UK3CB_TKM_O_BTR40_DSHKMS","UK3CB_TKM_O_BTR40_PKM"],0],east,1000,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		[SecondAttack_2,"attack",5,east,1000,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		[SecondAttack_3,"attack",5,east,1000,[]] spawn OKS_fnc_Lambs_SpawnGroup;

	};

	case 8: {

		// Third Counter-Attack Wave Last section in City
		[ThirdAttack_1,"attack",[["UK3CB_TKM_O_BTR40_DSHKMS","UK3CB_TKM_O_BTR40_PKM"],0],east,1000,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		[ThirdAttack_2,"attack",5,east,1000,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		[ThirdAttack_3,"attack",5,east,1000,[]] spawn OKS_fnc_Lambs_SpawnGroup;

	};

	case 9: {

		// Final Counter-Attack Wave Last Compound east of City
		{
			[getPos _X,"rush",3,east,1500,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [counter_5,counter_6,counter_7,counter_8,counter_9,counter_10];

		sleep 5;
		[Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_fnc_CreateZone;
	};

	case 10: {

		// Patrol
		[[[[2137.9,2532.45,0],0,[]],[[2142.9,2527.45,0.633022],0,[]],[[2132.9,2527.45,0.485504],0,[]],[[2147.9,2522.45,1.51841],0,[]]],[],[[[2085.22,2464.35,-7.62939e-006],[[0,"Move"]]],[[2008.27,2457.98,7.62939e-006],[[0,"Move"]]],[[1966.56,2499.88,-0.00012207],[[0,"Move"]]],[[2049.17,2561.87,8.39233e-005],[[0,"Move"]]],[[2128.27,2538.73,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2070.46,2656.25,3.8147e-006],307,[]],[[2077.47,2657.17,0.633026],307,[]],[[2071.38,2649.24,0.485504],307,[]],[[2084.48,2658.1,1.51841],307,[]]],[],[[[2092.44,2573.01,0],[[0,"Move"]]],[[2012.42,2535.71,7.62939e-006],[[0,"Move"]]],[[1971.98,2575.69,0],[[0,"Move"]]],[[2003.76,2642.01,1.20139],[[0,"Move"]]],[[2059.62,2652.43,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Bunker Stop
		[[[[1989.86,2668.65,0.270397],300,"Up",[]],[[1986.79,2663.76,0.180492],280,"Up",[]],[[1989.41,2660.86,0.177639],102,"Middle",[]],[[1989.29,2651.86,0],195,"Middle",[]],[[1975.73,2654.29,-5.34058e-005],83,"Middle",[]],[[1976.61,2659.02,-1.14441e-005],309,"Middle",[]],[[1975.41,2657.64,-3.8147e-006],295,"Middle",[]],[[1977.58,2637.62,0],37,"Middle",[]],[[1972.05,2629.19,0],172,"Middle",[]],[[1965.65,2644.77,-2.67029e-005],294,"Up",[]],[[1965.3,2644,1.52588e-005],314,"Up",[]],[[1964.89,2643.33,3.8147e-006],288,"Up",[]],[[1967.34,2639.33,0.237164],87,"Middle",[]],[[1975.97,2650.09,1.4665],308,"Up",[]],[[1973.95,2647.55,1.13268],308,"Up",[]],[[1972.27,2644.99,0.945019],308,"Up",[]],[[1977.73,2643.7,0.834644],249,"Middle",[]],[[1982.86,2644.45,0],51,"Up",[]]],[["UK3CB_ADG_O_PKM_High",[1988.37,2665.2,0.30109],300,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_DSHKM",[1977.12,2657.76,0.00483322],308,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		[] spawn {
	
			[mortar_4,[getPos target_11,getPos target_12,getPos target_13,getPos target_14],east,3,5,true] spawn OKS_fnc_ArtySuppression;
			[mortar_5,[getPos target_15,getPos target_16,getPos target_17],east,3,5,true] spawn OKS_fnc_ArtySuppression;
			sleep 10;
			["hq","side","1-1 this is Crossroads, we have intel regarding the village of Siwundula, they are about to be hit by insurgent mortars. Assault or use your own support elements to silence them, crossroads out!"] remoteExec ["OKS_fnc_Chat",0];
			sleep 10;
			[
				mortar_4,
				"Silence Mortar",
				"Mortar",
				"A mortar position is located in the area of operations and is shelling the civilians in Siwundula. Make use of our own support assets or assault their position and silence the enemy mortar!",
				nil,
				"TaskCounter"
			] spawn OKS_fnc_Destroy_Task;;
			sleep 5;
			[
				mortar_5,
				"Silence Mortar",
				"Mortar",
				"A mortar position is located in the area of operations and is shelling the civilians in Siwundula. Make use of our own support assets or assault their position and silence the enemy mortar!",
				nil,
				"TaskCounter"
			] spawn OKS_fnc_Destroy_Task;;
		};	

	};

	case 11:{

		CivilianAttackValue_1 = false;
		CivilianAttackValue_2 = false;

		// Civilian Village Defend
		civilian setFriend [east,0];
		east setFriend [civilian,0];

		// Stronghold
		[[[[2721.64,2470.66,1.4478],45,"Up",[]],[[2716.32,2479.08,1.03223],45,"Up",[]],[[2722.25,2478.8,4.07117],45,"Up",[]],[[2716.68,2478.61,4.47313],45,"Up",[]],[[2717.7,2472.81,4.75488],45,"Up",[]]],[["UK3CB_ADA_O_BTR40_MG",[2728.76,2500.46,0],171,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2744.3,2442.37,1.36487],45,"Up",[]],[[2737.55,2441.28,1.04964],45,"Up",[]],[[2731.77,2439.63,1.40523],45,"Up",[]],[[2733.79,2446.3,1.53143],45,"Up",[]],[[2734.23,2446.05,4.91198],45,"Up",[]],[[2732.45,2439.78,4.77423],50,"Up",[]],[[2742.29,2438.82,4.29299],45,"Up",[]],[[2741.25,2444.13,4.4649],45,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2743.62,2465.47,0.393856],264,"Up",[]],[[2737.75,2468.32,0.526501],164,"Up",[]],[[2742.67,2462.61,0.397278],271,"Up",[]],[[2738.45,2461.15,3.81434],118,"Up",[]],[[2738.49,2469.95,3.98554],45,"Up",[]],[[2744.72,2468.22,3.68401],45,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2773.23,2469.58,0.627541],240,"Up",[]],[[2768.07,2464.57,0.758539],45,"Up",[]],[[2770.93,2460.72,0.770796],1,"Up",[]],[[2777.49,2457.93,0.972334],300,"Up",[]],[[2775.55,2452.62,0.999037],45,"Up",[]],[[2769.46,2454.4,1.59853],254,"Up",[]]],[["UK3CB_ADA_O_BTR80",[2780.37,2440.44,0],285,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Attack on Village
		[[civilianattack_1,civilianattack_2,civilianattack_3,civilianattack_4,civilianattack_5],4,1,1,"rush",east,1500,"CivilianAttackValue_1"] spawn OKS_fnc_Lambs_Wavespawn;
		_Vehicle2 = [civilianattack_vehicle_2,"attack",[["UK3CB_TKM_O_BTR40_DSHKMS","UK3CB_TKM_O_BTR40_PKM"],0],east,1000,[]] call OKS_fnc_Lambs_SpawnGroup;
		sleep 120;

		[[civilianattack_6,civilianattack_7,civilianattack_8],4,1,1,"rush",east,1500,"CivilianAttackValue_2"] spawn OKS_fnc_Lambs_Wavespawn;
		_Vehicle1 = [civilianattack_vehicle_1,"attack",[["UK3CB_TKM_O_BTR40_DSHKMS","UK3CB_TKM_O_BTR40_PKM"],0],east,1000,[]] call OKS_fnc_Lambs_SpawnGroup;
		_Crews = [];
		{_Crews pushbackUnique _X} foreach units _Vehicle1;
		{_Crews pushbackUnique _X} foreach units _Vehicle2;

		waitUntil {sleep 5; {Alive _X || [_X] call ace_common_fnc_isAwake} count _Crews == 0 && CivilianAttackValue_1 && CivilianAttackValue_2};
		["DefendCivilian","SUCCEEDED",true] call BIS_fnc_taskSetState;
		Phase2Complete = true;
		publicVariable "Phase2Complete";
	};

	case 12:{

	};

	case 13:{

	};

	case 14:{

	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};






