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

private _sleepMultiplier = 1;

if(isDedicated) then {
	_sleepMultiplier = 1;
} else {
	_sleepMultiplier = 0.2;
};

private _Vehicles = ["UK3CB_CHD_O_BMD1", "UK3CB_CHD_O_BMP1", "UK3CB_CHD_O_MTLB_BMP"];

switch (_case) do {

	case 1: {

		[true, ["2PARATASK","Task_0"], ["The 2 PARA of the British armed forces paradropped into Ruha yesterday and have been attempting to hold the crossings over the river. They are currently surrounded and have are in dire need of rescue. Secure the river crossings and help the 2PARA until the 1 Rifles arrive to relieve them.", "Rescue of 2PARA", "Casualties"], nil,"CREATED",-1, false,"heal", false] call BIS_fnc_taskCreate;

		[10,1,getPos para_1,west,true,["lot","large","fatal"],"2PARATASK",[rush_1,rush_2,rush_3]] spawn OKS_fnc_Rescue_Friendly;
		[10,1,para_2,west,true,["lot","large"],"2PARATASK",[rush_4,rush_5,rush_6,rush_7]] spawn OKS_fnc_Rescue_Friendly;
		[10,2,getpos para_3,west,true,["fatal"],"2PARATASK",[rush_10,rush_8,rush_9]] spawn OKS_fnc_Rescue_Friendly;

		// First Objectives
		// Mech Block.
		[[[[4685.89,1428.5,0],0,[]],[[4686.93,1426.66,0],0,[]],[[4683.53,1427.16,0],0,[]],[[4682.91,1428.09,0],0,[]]],[],[[[4731.11,1346.06,0],[[0,"Move"]]],[[4781.43,1358.62,0],[[0,"Move"]]],[[4763.86,1431.03,0],[[0,"Move"]]],[[4696.41,1428.82,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4738.23,1329.94,0],351,[]],[[4739.55,1328.29,0],351,[]],[[4736.11,1328.24,0],351,[]],[[4735.36,1329.06,0],351,[]]],[],[[[4788.89,1272.77,0],[[0,"Move"]]],[[4843.85,1276.5,0],[[0,"Move"]]],[[4808.71,1346.95,0],[[0,"Move"]]],[[4735.12,1334.95,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[4851.68,1310.97,0],0,[]],[[4852.72,1309.13,0],0,[]],[[4849.32,1309.63,0],0,[]],[[4848.71,1310.56,0],0,[]]],[],[[[4896.9,1228.53,0],[[0,"Move"]]],[[4947.22,1241.09,0],[[0,"Move"]]],[[4929.65,1313.5,0],[[0,"Move"]]],[[4862.2,1311.29,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4818.41,1415.38,0],0,[]],[[4819.46,1413.53,0],0,[]],[[4816.05,1414.03,0],0,[]],[[4815.44,1414.97,0],0,[]]],[],[[[4863.64,1332.93,0],[[0,"Move"]]],[[4913.96,1345.5,0],[[0,"Move"]]],[[4896.38,1417.9,0],[[0,"Move"]]],[[4828.94,1415.69,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[4834.87,1555.28,0],45,[]],[[4834.29,1553.24,0],45,[]],[[4832.25,1556.01,0],45,[]],[[4832.48,1557.1,0],45,[]]],[],[[[4808.23,1465.1,0],[[0,"Move"]]],[[4893.7,1471.67,0],[[0,"Move"]]],[[4908.48,1529.3,0],[[0,"Move"]]],[[4842.51,1548.04,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4923.62,1524.37,0],0,[]],[[4924.66,1522.52,0],0,[]],[[4921.26,1523.02,0],0,[]],[[4920.64,1523.96,0],0,[]]],[],[[[4968.84,1441.92,0],[[0,"Move"]]],[[5019.16,1454.49,0],[[0,"Move"]]],[[5001.59,1526.89,0],[[0,"Move"]]],[[4934.14,1524.68,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4954.4,1332.92,0],275,[]],[[4956.33,1333.81,0],275,[]],[[4955.54,1330.46,0],275,[]],[[4954.56,1329.92,0],275,[]]],[],[[[5014.78,1332.4,0],[[0,"Move"]]],[[5026.32,1389.07,0],[[0,"Move"]]],[[4946.43,1398.24,0],[[0,"Move"]]],[[4954.98,1343.44,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[4966.87,1295.52,0],0,[]],[[4967.91,1293.68,0],0,[]],[[4964.51,1294.18,0],0,[]],[[4963.89,1295.11,0],0,[]]],[],[[[4984.79,1204.08,0],[[0,"Move"]]],[[5044.56,1226.13,0],[[0,"Move"]]],[[5030.77,1308.51,0],[[0,"Move"]]],[[4977.39,1295.84,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4941.61,1262.26,0],110,"Up",[]],[[4943.22,1267.45,0],94,"Up",[]],[[4996.21,1219.5,0],96,"Up",[]],[[4995.79,1221.61,0],96,"Up",[]]],[["UK3CB_CHD_O_BMD1",[5003.54,1251.6,0],131,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["maljutka_hide_source",1,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"wood_2_unhide",0,"antena2_hide",1]]]],["UK3CB_CHD_O_BMD1",[4964.75,1422.03,0],102,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["maljutka_hide_source",1,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"wood_2_unhide",0,"antena2_hide",1]]]],["UK3CB_CHD_O_BMD1",[4926.88,1269.88,0],64,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["maljutka_hide_source",1,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"wood_2_unhide",0,"antena2_hide",1]]]],["UK3CB_ADM_O_PKM_High",[4941.04,1270.01,1],60,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		//[[[[4835.4,1354.64,4.04519],347,"Up",[]],[[4836.91,1353.86,4.06487],67,"Up",[]],[[4830.89,1357.01,4.22459],347,"Up",[]],[[4821.84,1354.12,4.37431],347,"Up",[]],[[4878.79,1511.52,4.06449],131,"Up",[]],[[4875.38,1505.65,4.08145],131,"Up",[]],[[4871.7,1498.23,4.01218],140,"Up",[]],[[4889.2,1378.52,0],96,"Up",[]],[[4889.03,1375.46,0],96,"Up",[]],[[4889.6,1371.91,0],96,"Up",[]],[[4889.74,1368.3,0],96,"Up",[]]],[["UK3CB_CHD_O_BMD1",[4754.52,1426.63,0],82,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["maljutka_hide_source",1,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"wood_2_unhide",0,"antena2_hide",1]]]],["UK3CB_CHD_O_UAZ_MG",[4792.39,1304,-3.8147e-06],102,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]],["UK3CB_CHD_O_UAZ_MG",[4662.17,1533.94,-4.76837e-06],163,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Anti Air Objective.
		[[[[5296.73,2190.7,5.54508],128,"up",[]],[[5293.34,2191.02,5.54508],128,"up",[]],[[5280.25,2193.41,1.44597],128,"up",[]],[[5235.32,2199.9,5.34564],128,"up",[]],[[5242.24,2199.31,1.24162],128,"up",[]],[[5186.58,2241.27,15.7731],165,"up",[]],[[5180.55,2240.09,16.3303],165,"up",[]],[[5139.62,2185.14,18.442],100,"up",[]],[[5138.51,2172.85,18.662],100,"up",[]]],[["UK3CB_ADP_O_DSHKM",[5184.2,2239.79,16.4921],166,[["gunner",-1,[0]]],[]],["UK3CB_ADP_O_DSHKM",[5290.93,2207.04,10.2296],166,[["gunner",-1,[0]]],[]],["UK3CB_ADP_O_DSHKM",[5227.82,2215.51,10.1979],166,[["gunner",-1,[0]]],[]],["UK3CB_CHD_O_BMP1",[5364.57,2220.83,0],201,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CHD_O_BMP1",[5139.47,2123.55,-7.62939e-06],96,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5136.12,2200.31,13.1521],100,"up",[]],[[5136.41,2198.31,13.1625],100,"up",[]],[[5136.15,2193.82,5.35488],100,"up",[]],[[5126.81,2173.9,18.621],170,"up",[]],[[5301.25,2136.68,5.72205e-06],149,"up",[]],[[5306.29,2144.9,5.72205e-06],136,"up",[]],[[5303.57,2141.58,7.62939e-06],100,"up",[]],[[5273.32,2160.91,5.72205e-06],111,"up",[]],[[5231.34,2154.74,5.72205e-06],164,"up",[]],[[5227.87,2147.45,0],149,"up",[]],[[5270.06,2149.2,5.72205e-06],149,"up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		[[[[5334.03,2009.03,0],0,[]],[[5339.03,2003.94,0],0,[]],[[5329.03,2003.99,0],0,[]],[[5344.03,1999,0],0,[]]],[],[[[5460.83,2009.14,0],[[0,"Move"],[1,"SAFE"]]],[[5454.41,1966.12,5.34058e-05],[[0,"Move"]]],[[5335.83,1971.29,2.47955e-05],[[0,"Move"]]],[[5334.15,2002.36,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[5415.68,2007.94,0],0,[]],[[5420.68,2002.85,0],0,[]],[[5410.68,2002.9,0],0,[]],[[5425.68,1997.91,0],0,[]]],[],[[[5542.48,2008.05,0],[[0,"Move"],[1,"SAFE"]]],[[5536.06,1965.03,5.14984e-05],[[0,"Move"]]],[[5417.48,1970.2,2.28882e-05],[[0,"Move"]]],[[5415.8,2001.28,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5360.02,2160.34,0],9,[]],[[5364.17,2154.54,0],9,[]],[[5354.3,2156.15,0],9,[]],[[5368.34,2148.88,0],9,[]]],[],[[[5485.3,2140.72,1.09209],[[0,"Move"],[1,"SAFE"]]],[[5472.26,2099.22,5.34058e-05],[[0,"Move"]]],[[5355.93,2122.78,2.47955e-05],[[0,"Move"]]],[[5359.11,2153.74,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5483.54,2140.87,0],41,[]],[[5483.93,2133.75,0],41,[]],[[5476.46,2140.4,0],41,[]],[[5484.42,2126.74,0],41,[]]],[],[[[5578.81,2057.2,0],[[0,"Move"],[1,"SAFE"]]],[[5545.58,2029.14,4.95911e-05],[[0,"Move"]]],[[5459.96,2111.35,2.28882e-05],[[0,"Move"]]],[[5479.23,2135.79,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[5125.34,2096.52,0],0,[]],[[5130.34,2091.43,3.8147e-06],0,[]],[[5120.34,2091.49,0],0,[]],[[5135.34,2086.5,0],0,[]]],[],[[[5213.09,2080.78,0],[[0,"Move"],[1,"SAFE"]]],[[5206.67,2037.75,5.34058e-05],[[0,"Move"]]],[[5127.14,2058.78,2.28882e-05],[[0,"Move"]]],[[5125.46,2089.86,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5136.33,2271.95,0],0,[]],[[5141.33,2266.86,0],0,[]],[[5131.33,2266.92,0.328781],0,[]],[[5146.33,2261.93,0.424477],0,[]]],[],[[[5225.46,2302.4,0],[[0,"Move"],[1,"SAFE"]]],[[5214.8,2233.67,0],[[0,"Move"]]],[[5138.14,2234.21,2.28882e-05],[[0,"Move"]]],[[5136.46,2265.29,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[5351.72,2213.75,0],154,[]],[[5344.98,2216.07,0],154,[]],[[5353.95,2220.48,0],154,[]],[[5338.3,2218.25,0],154,[]]],[],[[[5292.87,2158.75,0],[[0,"Move"],[1,"SAFE"]]],[[5256.53,2235.32,0],[[0,"Move"]]],[[5339.09,2300.45,0],[[0,"Move"]]],[[5348.64,2219.65,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Trench South.
		[[
			[[5225.44,1172.68,-1.90735e-06],84,"Up",[]],
			[[5221.86,1167.73,1.52588e-05],84,"Up",[]],
			[[5219.17,1164.08,-7.62939e-06],106,"Up",[]],
			[[5211.07,1153.43,-7.62939e-06],84,"Up",[]],
			[[5208.71,1150.11,0],124,"Up",[]],
			[[5198.99,1138.23,0.0278854],136,"Up",[]],
			[[5195.81,1134.2,1.90735e-06],84,"Up",[]],
			[[5192.31,1129.2,1.90735e-05],219,"Middle",[]],
			[[5215.47,1159.1,-1.52588e-05],227,"Middle",[]],
			[[5233.18,1181.98,0.00781441],221,"Middle",[]],
			[[5236.43,1186.45,-0.00126076],119,"Up",[]],
			[[5238.85,1189.73,7.62939e-06],119,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;

		// Tanks Static.
		[[],[
			["UK3CB_CHD_O_T34",[5001.84,1230.03,-0.0178566],98,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]],["turret",-1,[1]]],[[6,["CHDKZ",1]],[7,["Hull_Flag_Hide",1]]]],
			["UK3CB_CHD_O_T34",[5086.83,1414.95,-0.0561256],166,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]],["turret",-1,[1]]],[[6,["CHDKZ",1]],[7,["Hull_Flag_Hide",1]]]],
			["UK3CB_CHD_O_T34",[4872.8,1126.28,-8.2016e-05],131,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]],["turret",-1,[1]]],[[6,["CHDKZ",1]],[7,["Hull_Flag_Hide",1]]]],
			["UK3CB_CHD_O_T55",[4842.82,1098.93,0],59,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CHDKZ",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_CHD_O_T55",[5032.95,1014.55,0.449848],76,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CHDKZ",1]],[7,["Barrels_Hide",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		// Forest Ambush AA.
		//[[[[5750.73,1977.75,3.8147e-06],0,[]],[[5755.73,1972.75,-3.8147e-06],0,[]],[[5745.73,1972.75,0],0,[]],[[5760.73,1967.75,0],0,[]],[[5740.73,1967.75,0],0,[]],[[5765.73,1962.75,0],0,[]],[[5735.73,1962.75,3.8147e-06],0,[]],[[5770.73,1957.75,3.8147e-06],0,[]]],[],[[[5787.52,2005.46,3.8147e-06],[[0,"Move"]]],[[5931.64,1881.28,9.15527e-05],[[0,"Move"]]],[[5816.07,1869.32,0],[[0,"Move"]]],[[5759.84,1955.28,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[5662.92,1879.43,0],0,[]],[[5667.92,1874.43,0],0,[]],[[5657.92,1874.43,0],0,[]],[[5672.92,1869.43,0],0,[]],[[5652.92,1869.43,0],0,[]],[[5677.92,1864.43,0],0,[]],[[5647.92,1864.43,0],0,[]],[[5682.92,1859.43,0],0,[]]],[],[[[5768.71,1754.24,0],[[0,"Move"]]],[[5850.88,1784.33,0],[[0,"Move"]]],[[5712.43,1793.82,0],[[0,"Move"]]],[[5672.03,1856.96,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 2,600,east,_Vehicles,180] spawn OKS_fnc_Huntbase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 2,600,east,_Vehicles,180] spawn OKS_fnc_Huntbase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 2,600,east,_Vehicles,180] spawn OKS_fnc_Huntbase;

		{
			[_X, 
			["uk3cb_factions\addons\uk3cb_factions_vehicles\wheeled\uk3cb_factions_vehicles_kamaz\data\chd_o_kamaz_kab_co.paa","uk3cb_factions\addons\uk3cb_factions_vehicles\wheeled\uk3cb_factions_vehicles_kamaz\data\kamaz_kuz_civ4_co.paa","a3\soft_f_beta\truck_02\data\truck_02_int_co.paa"] 
			] spawn OKS_fnc_Retexture; 
		} foreach [arty_1,arty_2,arty_3];

		[
			getPos drone_1,
			getPos drone_2,
			east,
			"UK3CB_CHD_O_Mi8",
			["LOITER",false],		
			[500,4],
			[250,500],
			["","","","","","",""],
			true
		] spawn OKS_fnc_Scout;

		[
			getPos drone_3,
			getPos drone_4,
			east,
			"UK3CB_CHD_O_Mi8",
			["LOITER",false],		
			[500,4],
			[250,500],
			["","","","","","",""],
			true
		] spawn OKS_fnc_Scout;		

		[sam_1,radar_1,20,4,30,180,50] spawn OKS_fnc_SAM;
		[sam_2,radar_1,20,4,30,180,50] spawn OKS_fnc_SAM;

		// Scattered AA / AAA.
		[[],[
			["UK3CB_TKP_O_KORD_high",[5939.29,3122.73,0.659012],306,[["gunner",-1,[0]]],[]],
			["UK3CB_TKP_O_KORD_high",[6344.74,3789.71,4.09186],207,[["gunner",-1,[0]]],[]],
			["UK3CB_TKP_O_KORD_high",[2340.68,1018.33,14.2436],63,[["gunner",-1,[0]]],[]],
			["UK3CB_MEE_O_KORD_high",[2956.22,880.401,0],0,[["gunner",-1,[0]]],[]],
			["UK3CB_TKP_O_KORD_high",[2119.94,2803.22,6.1154],126,[["gunner",-1,[0]]],[]],
			["UK3CB_TKP_O_KORD_high",[2725.63,2980.62,-0.00499058],248,[["gunner",-1,[0]]],[]],
			["UK3CB_ADE_O_PKM_High",[2273.21,2599.75,0.334904],170,[["gunner",-1,[0]]],[]],
			["UK3CB_ADM_O_PKM_nest",[2345.54,1564.09,-0.151216],99,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],
			["UK3CB_ADM_O_PKM_nest",[3449.51,1944.61,0.227761],169,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],
			["UK3CB_ADM_O_PKM_nest",[3276.34,3031.97,0.278576],183,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],
			["UK3CB_CHD_O_Ural_Zu23",[6307.55,3961.85,2.86102e-06],184,[["gunner",-1,[0]]],[[6,["CHDKZ",1]]]],
			["UK3CB_CHD_O_Ural_Zu23",[3577.49,272.323,-1.90735e-06],214,[["gunner",-1,[0]]],[[6,["CHDKZ",1]]]],
			["UK3CB_CSAT_W_O_ZU23",[2305.36,1592.22,0],0,[["gunner",-1,[0]],["cargo",0,[1]]],[[7,["Unfold",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		[LambsGroupSpawn_1, "ambushrush", 3, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[LambsGroupSpawn_2, "ambushrush", 3, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[LambsGroupSpawn_3, "ambushrush", 3, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[LambsGroupSpawn_4, "ambushrush", 3, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[LambsGroupSpawn_5, "ambushrush", 4, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[LambsGroupSpawn_6, "ambushrush", 4, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[LambsGroupSpawn_7, "ambushrush", 4, EAST, 500] spawn OKS_fnc_Lambs_SpawnGroup;

		[[barricade_1], "Task_2", true] spawn OKS_fnc_Destroy_Barricade;
		[[barricade_2], "Task_2", true] spawn OKS_fnc_Destroy_Barricade;
		[[barricade_3], "Task_2", true] spawn OKS_fnc_Destroy_Barricade;

		[[barricade_4], "Task_1", true] spawn OKS_fnc_Destroy_Barricade;
		[[barricade_5], "Task_1", true] spawn OKS_fnc_Destroy_Barricade;

		waitUntil {sleep 1; count ("2PARATASK" call BIS_fnc_taskChildren) > 0};
		waitUntil {sleep 15; {_X call BIS_fnc_taskCompleted} count ("2PARATASK" call BIS_fnc_taskChildren) == count("2PARATASK" call BIS_fnc_taskChildren)};
		["hq","side","1st Platoon, be advised, a convoy of friendly forces are inbound to relieve the paras from the south. Await them and then proceed on mission, churchill out!"] remoteExec ["OKS_fnc_Chat",0];
		[friendly_2,friendly_2,friendly_3,west,[8,[ 
			"UK3CB_BAF_Coyote_Passenger_L111A1_G","UK3CB_BAF_Coyote_Passenger_L111A1_G","UK3CB_BAF_LandRover_Amb_Green_A", 
			"UK3CB_BAF_MAN_HX60_Transport_Green","UK3CB_BAF_MAN_HX60_Transport_Green",  "UK3CB_BAF_MAN_HX58_Repair_Green",
			"UK3CB_BAF_Coyote_Passenger_L111A1_G","UK3CB_BAF_Coyote_Passenger_L111A1_G" 
  		], 12, 40],[true,3], false, "2pararelieved", "small", true, true] spawn OKS_fnc_Convoy_Reinforce;
	
	};

	case 11: {
		// Artillery Objective.
		//[[[[3887.43,1556.51,0],91,"Up",[]],[[3885.99,1543.73,0],0,"Up",[]],[[3874.83,1519.32,0],121,"Up",[]],[[3878.82,1533.08,0],110,"Up",[]],[[3876.17,1526.02,0],116,"Up",[]],[[3876.59,1599.48,0],109,"Up",[]],[[3880.62,1593.21,0],117,"Up",[]],[[3881.1,1576.3,0],127,"Up",[]]],[["UK3CB_CHD_O_BMP1",[3863.22,1504.61,0],112,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CHD_O_BMP1",[4010.5,1313.14,0],69,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4124.05,1341.1,0],49,"Up",[]],[[4130.38,1335.76,0],49,"Up",[]],[[4144.14,1293.89,0],49,"Middle",[]],[[4116.75,1437.91,0],34,"Middle",[]],[[4150.66,1440.08,0],112,"Middle",[]],[[4123.59,1433.12,0],112,"Up",[]],[[4121.52,1426.19,0],112,"Up",[]],[[4137.11,1420.41,0],49,"Up",[]],[[4109.69,1507.66,4.63183],0,"Up",[]],[[4106.72,1507.98,4.57918],219,"Up",[]],[[4089.21,1503.66,0.707413],112,"Up",[]]],[["UK3CB_CHD_O_BMP1",[4122.59,1307.49,0],85,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CHD_O_BMP1",[4105.04,1460.4,0],93,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4010.82,1379.33,9.53674e-07],0,[]],[[4015.82,1374.33,0],0,[]],[[4005.82,1374.33,9.53674e-07],0,[]],[[4020.82,1369.33,0],0,[]]],[],[[[4009.56,1454.21,-4.91142e-05],[[0,"Move"]]],[[4107.19,1441.94,-2.47955e-05],[[0,"Move"]]],[[4093.42,1367.51,-4.00543e-05],[[0,"Move"]]],[[4029.01,1372.59,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[4039.35,1493.5,0],0,[]],[[4044.35,1488.5,0],0,[]],[[4034.35,1488.5,0],0,[]],[[4049.35,1483.5,0],0,[]]],[],[[[4043.69,1602.79,0],[[0,"Move"]]],[[4152.85,1594.73,0],[[0,"Move"]]],[[4121.95,1481.67,0],[[0,"Move"]]],[[4057.54,1486.75,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[4176.35,1609.81,4.76837e-07],0,[]],[[4181.35,1604.81,4.76837e-07],0,[]],[[4171.35,1604.81,4.76837e-07],0,[]],[[4186.35,1599.81,0],0,[]]],[],[[[4258.85,1613.82,0],[[0,"Move"]]],[[4392.36,1663.09,0],[[0,"Move"]]],[[4302.77,1622.81,0],[[0,"Move"]]],[[4194.54,1603.07,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4170.81,1385.17,0],71,[]],[[4167.69,1378.82,0],71,[]],[[4164.46,1388.28,1.67888],71,[]],[[4164.58,1372.47,0],71,[]]],[],[[[4241.25,1410.59,0],[[0,"Move"]]],[[4261.23,1314.24,0],[[0,"Move"]]],[[4186.35,1303.18,0],[[0,"Move"]]],[[4170.31,1365.78,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4294.52,1477.47,0],28,[]],[[4296.55,1470.7,0],28,[]],[[4287.75,1475.44,0],28,[]],[[4298.58,1463.93,0],28,[]]],[],[[[4328.93,1543.99,0],[[0,"Move"]]],[[4409.06,1486.88,0],[[0,"Move"]]],[[4361.64,1427.88,0],[[0,"Move"]]],[[4307.34,1462.91,1.49087],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[4335.32,1318.78,0],348,[]],[[4341.22,1314.89,9.53674e-07],348,[]],[[4331.43,1312.88,0],348,[]],[[4347.13,1311,0],348,[]]],[],[[[4319.01,1391.87,9.53674e-07],[[0,"Move"]]],[[4417.11,1399.51,0],[[0,"Move"]]],[[4418.61,1323.83,0],[[0,"Move"]]],[[4354.49,1315.84,1.49087],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4244.86,1181.9,0],28,[]],[[4246.89,1175.13,0],28,[]],[[4238.08,1179.87,0],28,[]],[[4248.92,1168.36,0],28,[]]],[],[[[4102.28,1357.27,0],[[0,"Move"]]],[[4071.09,1522.64,0],[[0,"Move"]]],[[4124.82,1340.71,0],[[0,"Move"]]],[[4257.67,1167.34,1.49087],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[arty_1,[getPos artyTarget_1,getPos artyTarget_2,getPos artyTarget_3,getPos artyTarget_4,getPos artyTarget_5,getPos artyTarget_6,getPos artyTarget_7],east,1,5,true,true,120,false] spawn OKS_fnc_ArtySuppression; sleep ((random 10) + (random 5));
		[arty_2,[getPos artyTarget_8,getPos artyTarget_9,getPos artyTarget_10,getPos artyTarget_11,getPos artyTarget_12,getPos artyTarget_13,getPos artyTarget_14],east,1,7,true,true,130,false] spawn OKS_fnc_ArtySuppression; sleep ((random 5) + (random 5));
		[arty_3,[getPos artyTarget_15,getPos artyTarget_16,getPos artyTarget_17,getPos artyTarget_18,getPos artyTarget_19,getPos artyTarget_20,getPos artyTarget_21],east,1,6,true,true,140,false] spawn OKS_fnc_ArtySuppression; sleep ((random 10) + (random 5));
	
		[[barricade_6], "Task_3", true] spawn OKS_fnc_Destroy_Barricade;
		[[barricade_7], "Task_4", true] spawn OKS_fnc_Destroy_Barricade;

		[AirBase_1, AirSpawn_1, AirHuntTrigger_1, independent, ["RHS_Mi8mt_vvsc","RHS_Mi24P_vvsc"], 'unloadthenpatrol', [2,1], 900, 200, 500, 5] spawn OKS_fnc_Airbase;
		[AirBase_2, AirSpawn_2, AirHuntTrigger_1, independent, ["RHS_Mi8mt_vvsc","RHS_Mi24P_vvsc"], 'unloadthenpatrol', [2,1], 900, 200, 500, 5] spawn OKS_fnc_Airbase;
		[AirBase_3, AirSpawn_3, AirHuntTrigger_1, independent, ["RHS_Mi8mt_vvsc","RHS_Mi8mt_vvsc"], 'paradrop', [2,1], 900, 200, 500, 5] spawn OKS_fnc_Airbase;
	};

	case 2: {

		// Hunters North-East
		[
			"hq",
			"side",
			"1st Platoon, be advised, enemy mechanized reinforcements are mobilizing to the north. Expect incoming counter-attacks from MSR Preston, ETA 4 minutes, churchill out!"
		] remoteExec ["OKS_fnc_Chat",0];
		sleep (180 * _sleepMultiplier);

		waitUntil {sleep 10; count (list NEKY_Hunt_Trigger_1) > 0};
		{
			if(count (list NEKY_Hunt_Trigger_1) > 0) then {
				[
					"hq",
					"side",
					"1st Platoon, be advised, enemy mechanized column inbound on MSR Preston from the north-east, churchill out!"
				] remoteExec ["OKS_fnc_Chat",0];

				{ 
					[_X,NEKY_Hunt_Trigger_1,selectRandom ["rhs_bmp1d_msv"],4,independent,1500] spawn OKS_fnc_Mechanized_Spawn;
					sleep (30 * _sleepMultiplier);
				} foreach [mech_1,mech_2,mech_3,mech_4];
			};
			sleep (600 * _sleepMultiplier);
		} foreach [1,2];

		[
			"hq",
			"side",
			"1st Platoon, be advised, enemy mechanized forces north-east on MSR Preston is no longer massing. Expect the counter-attack to diminish, churchill out!"
		] remoteExec ["OKS_fnc_Chat",0];
		sleep (120 * _sleepMultiplier);
		{ 
			deleteVehicle _X
		} foreach [mech_1,mech_2,mech_3,mech_4];			
	};

	case 3: {

		// Crossing South.
		[[[[2988.17,1500.11,0],159,"Up",[]],[[2983.7,1497.93,1.19209e-07],159,"Up",[]],[[2979.38,1496.63,2.38419e-07],159,"Up",[]],[[2974.6,1498.24,-1.19209e-07],159,"Up",[]],[[2970.94,1495.88,1.19209e-07],159,"Up",[]],[[2966.86,1493.7,1.19209e-07],159,"Up",[]],[[2961.51,1492.01,0],159,"Up",[]],[[2953.67,1487.71,1.19209e-07],159,"Up",[]],[[2948.97,1487.91,0],159,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		//[[[[2925.38,1493.35,0],159,"Up",[]],[[2927.01,1497.67,0],159,"Up",[]],[[2904.49,1503.95,-4.76837e-07],118,"Middle",[]],[[2903.44,1501.91,-4.76837e-07],126,"Middle",[]],[[2930.74,1518.94,0.100106],107,"Up",[]],[[2938.23,1470.99,0],97,"Up",[]],[[2935.63,1466.69,2.38419e-07],97,"Up",[]],[[2933.15,1463.29,2.38419e-07],97,"Up",[]],[[2921.71,1440.9,2.38419e-07],97,"Up",[]],[[2924.15,1447.01,2.38419e-07],97,"Up",[]],[[2928.21,1461.38,0],97,"Up",[]]],[["UK3CB_CHD_O_T34",[2925.47,1484.51,0],90,[["driver",-1,[]],["gunner",-1,[0]],["gunner",-1,[0,0]],["turret",-1,[1]]],[[6,["CHDKZ",1]],[7,["Hull_Flag_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2994.89,1411,4.76837e-07],140,"Up",[]],[[2995.82,1412.93,4.76837e-07],140,"Up",[]],[[2998.59,1417.3,0],140,"Up",[]],[[3001.94,1427.42,0],56,"Middle",[]],[[2989.88,1423,0],140,"Up",[]],[[2994.44,1403.34,0.673924],200,"Up",[]],[[2992.31,1398.94,0.518925],120,"Up",[]],[[2991.3,1396.85,0.455917],140,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[3098.41,1282.6,9.53674e-07],0,[]],[[3103.41,1277.6,0],0,[]],[[3093.41,1277.6,0],0,[]],[[3108.41,1272.6,0],0,[]]],[],[[[2981.22,1327.21,3.52859e-05],[[0,"Move"]]],[[2993.23,1380.36,0],[[0,"Move"]]],[[3121.58,1332.51,-2.09808e-05],[[0,"Move"]]],[[3103.16,1292.76,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[2964.01,1415.94,0],106,[]],[[2957.83,1412.48,0],106,[]],[[2960.55,1422.11,0],106,[]],[[2951.66,1409.03,0],106,[]]],[],[[[3045.47,1481.33,0],[[0,"Move"]]],[[3081.56,1405.1,0],[[0,"Move"]]],[[3025.51,1380.23,0],[[0,"Move"]]],[[2974.23,1404.42,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3277.46,1465.59,0],23,[]],[[3280.1,1459.03,0],23,[]],[[3270.9,1462.96,9.53674e-07],23,[]],[[3282.73,1452.46,0],23,[]]],[],[[[3113.37,1594.99,0],[[0,"Move"]]],[[3039.29,1460.32,0],[[0,"Move"]]],[[3120.63,1596.63,0],[[0,"Move"]]],[[3285.83,1473.06,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Crossing North.
		//[[[[3382.73,1916.65,1.71661e-05],0,"Middle",[]],[[3390.4,1910.22,1.7643e-05],140,"Middle",[]],[[3407.67,1893.85,0.856966],0,"Up",[]],[[3416.13,1886.74,1.10022],83,"Up",[]],[[3427.09,1878.68,0],118,"Up",[]],[[3414.99,1878.43,1.03836],229,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3451.9,1949.67,4.76837e-07],219,"Middle",[]],[[3452.45,1966.15,0],174,"Middle",[]],[[3460.18,1969.75,0.940159],117,"Up",[]],[[3465.98,1978.99,0.766778],109,"Middle",[]],[[3440.61,1975.95,0.000310421],87,"Middle",[]],[[3432.7,1980.4,0],238,"Middle",[]],[[3422.97,1986.89,-4.76837e-07],113,"Middle",[]]],[["UK3CB_CW_SOV_O_Late_VDV_ZU23",[3433.59,1985.02,-3.33786e-05],228,[["gunner",-1,[0]],["gunner",0,[1]]],[[7,["Unfold",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3404.41,1965.13,1.71661e-05],0,"Up",[]],[[3398.37,1960.18,1.71661e-05],0,"Up",[]],[[3385.11,1947.58,1.69277e-05],0,"Middle",[]],[[3386.92,1957.45,0.0886998],326,"Up",[]],[[3378.65,1942.26,1.71661e-05],0,"Up",[]],[[3378.53,1932.07,1.71661e-05],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CHD_O_BMP1",[3337.74,2003.24,6.19888e-06],146,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CHD_O_BMP1",[3395.92,2056.06,5.96046e-06],170,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CHD_O_BMP1",[3470.43,1919.2,0],135,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3537.58,2099.88,-4.76837e-07],0,[]],[[3542.58,2094.88,9.53674e-07],0,[]],[[3532.58,2094.88,0],0,[]],[[3547.58,2089.88,0],0,[]]],[],[[[3595.94,2023.89,0],[[0,"Move"],[1,"SAFE"]]],[[3522.56,1962.9,-5.29289e-05],[[0,"Move"]]],[[3464.22,2038.96,4.76837e-06],[[0,"Move"]]],[[3521.99,2089.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[3404.71,1942.59,0.60359],0,[]],[[3409.71,1937.59,1.7643e-05],0,[]],[[3399.71,1937.59,0.127777],0,[]],[[3414.71,1932.59,1.7643e-05],0,[]]],[],[[[3448.44,1895.84,0],[[0,"Move"],[1,"SAFE"]]],[[3382.52,1816.74,0],[[0,"Move"]]],[[3337.8,1908.5,0],[[0,"Move"]]],[[3389.12,1932.41,0.643086],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[3575.39,1966.35,4.76837e-07],0,[]],[[3580.39,1961.35,0],0,[]],[[3570.39,1961.35,0],0,[]],[[3585.39,1956.35,0],0,[]]],[],[[[3620.59,1901.05,0],[[0,"Move"],[1,"SAFE"]]],[[3505.5,1807.97,4.76837e-07],[[0,"Move"]]],[[3479.31,1883.74,0],[[0,"Move"]]],[[3559.81,1956.17,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3295.84,2087.02,4.76837e-07],341,[]],[[3302.19,2083.92,4.76837e-07],341,[]],[[3292.73,2080.67,4.76837e-07],341,[]],[[3308.55,2080.81,9.53674e-07],341,[]]],[],[[[3375.7,2034.07,0],[[0,"Move"],[1,"SAFE"]]],[[3243.9,1888.2,0],[[0,"Move"]]],[[3325.14,1998.83,0],[[0,"Move"]]],[[3284.4,2072.34,4.76837e-07],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3433.08,1874.33,7.10487e-05],132,"Up",[]],[[3419.68,1878.82,7.10487e-05],314,"Up",[]],[[3413.59,1887.99,7.10487e-05],302,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Crossing Patrols.
		[[[[2430.63,1695.6,0.49118],240,[]],[[2437.46,1693.76,0],240,[]],[[2433.46,1700.69,0],240,[]],[[2430.07,1706.51,0],240,[]]],[],[[[2368.87,1751.99,9.53674e-07],[[0,"Move"],[1,"SAFE"]]],[[2283.9,1693.28,9.53674e-07],[[0,"Move"]]],[[2292.78,1630.33,0],[[0,"Move"]]],[[2371.57,1636.9,0],[[0,"Move"]]],[[2432.83,1692.41,9.53674e-07],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[2307.87,1528.47,0.054491],78,[]],[[2301.94,1532.31,0.0576391],78,[]],[[2303.61,1524.49,0],78,[]],[[2305.05,1517.91,0],78,[]]],[],[[[2379.68,1472.63,9.53674e-07],[[0,"Move"],[1,"SAFE"]]],[[2456.7,1526.24,0],[[0,"Move"]]],[[2594.64,1449.51,0],[[0,"Move"]]],[[2768.94,1763.71,0],[[0,"Move"]]],[[2597.48,1450.25,0],[[0,"Move"]]],[[2458.39,1527.37,0],[[0,"Move"]]],[[2374.92,1471.35,0],[[0,"Move"]]],[[2316.64,1531.13,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3278.27,2536.29,0],352,[]],[[3274.04,2530.62,0],352,[]],[[3281.95,2531.77,0],352,[]],[[3288.61,2532.77,0],352,[]]],[],[[[3275.69,2627.05,0],[[0,"Move"],[1,"SAFE"]]],[[3376.18,2699.46,0],[[0,"Move"]]],[[3518.49,2612.07,0],[[0,"Move"]]],[[3362.45,2695.71,0],[[0,"Move"]]],[[3263.2,2621.44,0],[[0,"Move"]]],[[3259.46,2534.05,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[2255.24,2135.66,0.054491],78,[]],[[2249.3,2139.51,0.0576401],78,[]],[[2250.97,2131.69,1.90735e-06],78,[]],[[2252.41,2125.11,0],78,[]]],[],[[[2465.43,2194.85,4.76837e-07],[[0,"Move"],[1,"SAFE"]]],[[2647.98,2259.09,0],[[0,"Move"]]],[[2807.28,2202.74,0],[[0,"Move"]]],[[2842.97,2005.7,9.53674e-07],[[0,"Move"]]],[[2810.12,2203.47,0],[[0,"Move"]]],[[2649.67,2260.21,0],[[0,"Move"]]],[[2460.67,2193.57,4.76837e-07],[[0,"Move"]]],[[2264.01,2138.33,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2778.84,2388.8,0],240,[]],[[2785.67,2386.97,0],240,[]],[[2781.67,2393.9,0],240,[]],[[2778.28,2399.72,0],240,[]]],[],[[[2543.59,2470.42,0],[[0,"Move"],[1,"SAFE"]]],[[2534.75,2391.86,0],[[0,"Move"]]],[[2639.82,2358.47,0],[[0,"Move"]]],[[2715.92,2359.46,0],[[0,"Move"]]],[[2781.04,2385.61,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 4: {

		// Crossing Strongpoint.
		[[[[2295.86,1570.45,0],256,"up",[]],[[2290.16,1577.48,-2.86102e-06],288,"up",[]],[[2291.3,1584.96,1.90735e-06],318,"up",[]],[[2317.55,1605.2,0],268,"up",[]],[[2338.91,1569.07,-1.90735e-06],210,"up",[]],[[2341.17,1548.67,7.48132],307,"up",[]],[[2343.52,1550.89,11.3584],32,"up",[]],[[2360.93,1525.58,9.36075],98,"up",[]],[[2357.54,1521.68,9.27707],135,"up",[]]],[["rhs_bmp1d_msv",[2366.72,1504.51,-9.53674e-07],94,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		//[[[[2420.99,1704.14,0],0,[]],[[2425.99,1699.14,9.53674e-07],0,[]],[[2415.99,1699.14,-9.53674e-07],0,[]],[[2430.99,1694.14,0],0,[]]],[],[[[2369.86,1753.43,1.62125e-05],[[0,"Move"]]],[[2289.79,1672.99,6.67572e-06],[[0,"Move"]]],[[2310.42,1625.33,-3.8147e-05],[[0,"Move"]]],[[2413.3,1680.14,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[2327.32,1506.4,1.87007],0,[]],[[2332.32,1501.4,2.3452],0,[]],[[2322.32,1501.4,1.24114],0,[]],[[2337.32,1496.4,1.70404],0,[]]],[],[[[2276.19,1555.7,1.82289],[[0,"Move"]]],[[2196.13,1475.26,1.72838],[[0,"Move"]]],[[2216.76,1427.6,0.00432301],[[0,"Move"]]],[[2319.64,1482.4,3.015],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Para Rescue.
		// 1
		[[[[2249.14,2419.28,5.14628],6,"Up",[]],[[2252.24,2418.83,5.14628],6,"Up",[]],[[2302.99,2478.28,3.5747],341,"Up",[]],[[2308.93,2478.31,3.7777],6,"Up",[]],[[2300.54,2474.26,3.52728],279,"Up",[]],[[2286.66,2517.67,0.441782],196,"Middle",[]],[[2290.75,2526,0.603535],119,"Up",[]]],[["UK3CB_TKP_O_KORD_high",[2311.87,2471.32,7.48702],139,[["gunner",-1,[0]]],[]],["UK3CB_CHD_O_BTR70",[2347.27,2497.18,0.00938034],31,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]]]],["UK3CB_CHD_O_BMP1",[2220.73,2376.26,0],140,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		// 2
		[[[[2305.6,2709.13,3.77734],203,"Up",[]],[[2301.82,2710.05,3.71099],207,"Up",[]],[[2317.59,2686.09,0.751972],175,"Up",[]],[[2256.94,2699.1,-0.0130863],160,"Up",[]],[[2263.82,2721.04,-3.8147e-06],145,"Middle",[]],[[2228.15,2696.51,1.90735e-06],127,"Up",[]],[[2330.68,2716.61,0.0246449],156,"Middle",[]],[[2276.14,2679.28,0.0557747],194,"Up",[]],[[2279.48,2680.73,0.0941563],123,"Up",[]]],[["UK3CB_ADE_O_PKM_High",[2347.37,2772.78,9.88518],213,[["gunner",-1,[0]]],[]],["UK3CB_CHD_O_BTR70",[2185.6,2646.25,-0.000114441],77,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]]]],["UK3CB_CHD_O_BMP1",[2347.78,2798.61,1.90735e-06],109,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;		
		// 3
		[[[[2519.61,3016.11,1.40076],90,"Up",[]],[[2584.25,3075.32,-0.0679684],197,"Up",[]],[[2530.4,3071.11,-0.0494289],225,"Up",[]]],[["UK3CB_ADE_O_PKM_High",[2528.73,2937.77,0.408443],213,[["gunner",-1,[0]]],[]],["UK3CB_CHD_O_BTR70",[2462.31,3030.81,-0.0519161],76,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]]]],["UK3CB_CHD_O_BMP1",[2441,2985.3,0],187,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CHD_O_BMP1",[2606.19,2919.81,0],226,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CHD_O_BMD2",[2317.7,3011.37,0],79,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["9p135_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"wood_2_unhide",1,"antena2_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[2577.47,2636.92,0.0544891],1,[]],[[2572.39,2632,0.0576372],1,[]],[[2580.39,2631.87,0],1,[]],[[2587.12,2631.79,0],1,[]]],[],[[[2799.76,2948.9,4.76837e-07],[[0,"Move"],[1,"SAFE"]]],[[3312.19,2662.95,0],[[0,"Move"]]],[[3205.33,2924.67,0],[[0,"Move"]]],[[3412.02,2983.56,0],[[0,"Move"]]],[[3205.25,2927.6,0],[[0,"Move"]]],[[3311.47,2664.85,0],[[0,"Move"]]],[[2799.94,2943.98,4.76837e-07],[[0,"Move"]]],[[2576.85,2646.06,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[2155.4,2289.89,-1.90735e-06],0,[]],[[2150.4,2284.89,0],0,[]],[[2158.4,2284.89,0],0,[]],[[2165.13,2284.92,0],0,[]]],[],[[[2251.7,2355.41,0],[[0,"Move"],[1,"SAFE"]]],[[2183.26,2392.86,-9.53674e-06],[[0,"Move"]]],[[2135.79,2364.71,0],[[0,"Move"]]],[[2130.09,2318.89,0],[[0,"Move"]]],[[2151.54,2289.57,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2007.39,2482.32,0],123,[]],[[2005.89,2489.22,0],123,[]],[[2001.57,2482.49,0],123,[]],[[1997.95,2476.81,0],123,[]]],[],[[[2010.53,2365.88,0],[[0,"Move"],[1,"SAFE"]]],[[2079.02,2403.26,0],[[0,"Move"]]],[[2080.96,2458.42,0],[[0,"Move"]]],[[2045.47,2487.96,0],[[0,"Move"]]],[[2009.22,2485.73,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2061.91,2627.24,0],13,[]],[[2055.91,2623.5,0],13,[]],[[2063.7,2621.69,0],13,[]],[[2070.27,2620.19,1.90735e-06],13,[]]],[],[[[2231.6,2657.77,0],[[0,"Move"],[1,"SAFE"]]],[[2155.45,2699.59,0],[[0,"Move"]]],[[2083.05,2702.71,0],[[0,"Move"]]],[[2043.82,2661.21,0],[[0,"Move"]]],[[2058.08,2627.81,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[2482.36,2837.01,0],240,[]],[[2489.19,2835.18,0],240,[]],[[2485.19,2842.11,2.01897],240,[]],[[2481.8,2847.93,0],240,[]]],[],[[[2314.29,2895.66,0],[[0,"Move"],[1,"SAFE"]]],[[2238.26,2840.07,0],[[0,"Move"]]],[[2299.92,2788.53,0],[[0,"Move"]]],[[2419.44,2807.66,1.90735e-06],[[0,"Move"]]],[[2484.56,2833.82,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2433.84,3027.38,0],17,[]],[[2427.58,3024.1,0],17,[]],[[2435.22,3021.72,0],17,[]],[[2441.66,3019.74,0],17,[]]],[],[[[2569.04,2924.4,0],[[0,"Move"],[1,"SAFE"]]],[[2651.78,3054.61,9.53674e-07],[[0,"Move"]]],[[2515.43,3143.96,0],[[0,"Move"]]],[[2460.17,3091.62,0],[[0,"Move"]]],[[2430.06,3028.23,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Creepers.
		[creep_1,"creep",5,independent,500,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		[creep_2,"creep",5,independent,500,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		//[creep_3,"creep",5,independent,500,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		//[creep_4,"creep",5,independent,500,[]] spawn OKS_fnc_Lambs_SpawnGroup;

		// AT trench Paras.
		[[
			[[2887.59,2399.62,-1.14975],281,"Middle",[]],
			[[2893.59,2420.88,-0.290395],288,"Middle",[]],
			[[2891.02,2451.29,9.53674e-07],295,"Middle",[]],
			[[2883.93,2433.04,0],295,"Up",[]],
			[[2879.87,2422.21,9.53674e-07],295,"Up",[]],
			[[2872.16,2401.95,0],295,"Up",[]]
		],
		[["UK3CB_ADM_O_SPG9",[2893.38,2419.18,0.5],279,[["gunner",-1,[0]]],[]],
		["UK3CB_ADM_O_SPG9",[2888.13,2397.15,0.5],288,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Trench Paras.
		[[
			[[3245.69,2979.97,0],172,"Up",[]],

			[[3321.1,3012.24,0],194,"Up",[]],

			[[3285.51,3053.51,0.493188],265,"Up",[]]
		],[
			["UK3CB_CHD_O_BMP1",[3297.22,3042,0],187,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		[[
			[[3237.25,2979.4,0],172,"Up",[]],

			[[3155.7,3002.09,0.839632],314,"Middle",[]],

			[[3228.82,2975.38,0],172,"Up",[]],

			[[3211.4,2966.62,0],172,"Up",[]],

			[[3138.39,3023.52,-0.54697],141,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[
			[],
			[
				["UK3CB_CHD_O_BMP1",[3004.97,3000.85,0.329947],145,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]],
				["rhs_D30_at_msv",[3173.8,3019.55,0.244918],206,[["gunner",-1,[0]]],[[7,["fold_arty_handler",0]]]],
				["UK3CB_CHD_O_BMP1",[3212.03,3018.07,0],151,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]],
				["UK3CB_MEI_O_KORD_high",[3200.81,3057.43,0],178,[["gunner",-1,[0]]],[]]
			],
			[]
		] call GW_Common_fnc_spawnGroup;
		[[
			[[3340.14,3238.93,4.00113],262,"Middle",[]],
			[[3271.53,3208.68,2.52972],247,"Up",[]],
			[[3216.63,3251.96,0.331393],72,"Up",[]],
			[[3215.33,3262.26,0.0707836],86,"Up",[]]
		],[
			["UK3CB_CHD_O_BMP1",[3321.23,3236.51,0],257,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]],
			["UK3CB_CHD_O_BMP1",[3179.29,3353.13,9.53674e-07],132,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]
		],[]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {

		["hq","side","1st Platoon be advised, enemy reserves are mobilizing from west and north. Expect increased enemy reinforcments and resistance! Do not falter! HQ out"] remoteExec ["OKS_fnc_Chat",0];

		// Hunters Paratroopers
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_2, 4,300,east,4,120] spawn OKS_fnc_Huntbase; sleep 20;
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_2, 4,300,east,4,120] spawn OKS_fnc_Huntbase; sleep 20;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_2, 4,300,east,4,120] spawn OKS_fnc_Huntbase; sleep 20;
		[Spawn_7, Spawn_7, NEKY_Hunt_Trigger_2, 4,300,east,4,120] spawn OKS_fnc_Huntbase; sleep 20;
		[Spawn_12, Spawn_12, NEKY_Hunt_Trigger_2, 5,300,east,["UK3CB_CHD_O_BRM1K","UK3CB_CHD_O_Gaz66_Covered","UK3CB_CHD_O_LR_Closed"],120] spawn OKS_fnc_Huntbase; sleep 20;
		[Spawn_13, Spawn_13, NEKY_Hunt_Trigger_2, 5,300,east,["UK3CB_CHD_O_BRM1K","UK3CB_CHD_O_Gaz66_Covered","UK3CB_CHD_O_LR_Closed"],120] spawn OKS_fnc_Huntbase; sleep 20;
		[Spawn_14, Spawn_14, NEKY_Hunt_Trigger_2, 5,300,east,["UK3CB_CHD_O_BRM1K","UK3CB_CHD_O_Gaz66_Covered","UK3CB_CHD_O_LR_Closed"],120] spawn OKS_fnc_Huntbase; sleep 20;
		[Spawn_15, Spawn_15, NEKY_Hunt_Trigger_2, 5,300,east,["UK3CB_CHD_O_BRM1K","UK3CB_CHD_O_Gaz66_Covered","UK3CB_CHD_O_LR_Closed"],120] spawn OKS_fnc_Huntbase; sleep 20;

		// Hunters MSR Bradford
		_RussianVehicles = ["rhs_bmp3_msv", "rhs_bmd4_vdv", "rhs_bmp2d_tv", "rhs_brm1k_tv"];
		[Spawn_8, Spawn_8, NEKY_Hunt_Trigger_2, 5,600,independent,_RussianVehicles,220] spawn OKS_fnc_Huntbase; sleep 20;
		[Spawn_9, Spawn_9, NEKY_Hunt_Trigger_2, 5,600,independent,_RussianVehicles,220] spawn OKS_fnc_Huntbase; sleep 20;
		[Spawn_10, Spawn_10, NEKY_Hunt_Trigger_2, 5,600,independent,_RussianVehicles,220] spawn OKS_fnc_Huntbase; sleep 20;
		[Spawn_11, Spawn_11, NEKY_Hunt_Trigger_2, 5,600,independent,_RussianVehicles,220] spawn OKS_fnc_Huntbase;

		_Tanks = ["rhs_t80b", "rhs_t80a", "rhs_t80"];
		[ArmorConvoy_1, ArmorConvoy_1, NEKY_Hunt_Trigger_2, 6, 30, independent,_Tanks,5] spawn OKS_fnc_Huntbase;
		["hq","side","1st Platoon be advised, a tank column is heading in from the north-east. They are about 6 km away from you. Stand your ground hellfish! HQ out"] remoteExec ["OKS_fnc_Chat",0];
	};

	case 6: {

		// Enemy Headquarters
		[[[[2828.12,3964.81,0],0,[]],[[2833.12,3959.81,0],0,[]],[[2823.12,3959.81,0],0,[]],[[2838.12,3954.81,9.53674e-07],0,[]]],[],[[[2748.83,3933.48,2.86102e-06],[[0,"Move"]]],[[2732.97,4058.45,-9.53674e-07],[[0,"Move"]]],[[2810.64,4079.68,-5.72205e-06],[[0,"Move"]]],[[2835.87,3966.47,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2759.32,4078.14,-2.47675],123,[]],[[2752.41,4076.65,-1.95966],123,[]],[[2757.83,4085.05,0.695414],123,[]],[[2745.5,4075.15,-0.778934],123,[]]],[],[[[2769.33,4128.58,3.54199],[[0,"Move"]]],[[2850.69,4118.41,2.31071],[[0,"Move"]]],[[2826.21,4004.95,0],[[0,"Move"]]],[[2756.52,4070.72,-3.42803],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[3040.19,3874.83,0],20,[]],[[3043.18,3868.42,0],20,[]],[[3033.78,3871.83,0],20,[]],[[3046.18,3862.02,0],20,[]]],[],[[[3009.96,3829.08,0],[[0,"Move"]]],[[3034.64,3989.67,1.90735e-05],[[0,"Move"]]],[[3072.72,3981.91,1.04904e-05],[[0,"Move"]]],[[3048.04,3873.74,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3079.23,4071.71,-1.43051e-05],0,[]],[[3084.23,4066.71,3.8147e-06],0,[]],[[3074.23,4066.71,0],0,[]],[[3089.23,4061.71,-6.67572e-06],0,[]]],[],[[[3043.77,4036.85,1.90735e-06],[[0,"Move"]]],[[3010.2,4242.24,1.14441e-05],[[0,"Move"]]],[[3061.75,4186.59,0],[[0,"Move"]]],[[3086.98,4073.37,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2808.6,4152.03,0],156,[]],[[2802.01,4154.58,0],156,[]],[[2811.15,4158.63,0],156,[]],[[2795.41,4157.13,0],156,[]]],[],[[[2931.32,4228.21,0],[[0,"Move"]]],[[2908.05,4170.7,2.67029e-05],[[0,"Move"]]],[[2842.42,4156.84,1.0854],[[0,"Move"]]],[[2802.19,4147.38,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[2452.61,3975.25,0],26,[]],[[2454.96,3968.58,0],26,[]],[[2445.94,3972.9,0],26,[]],[[2457.3,3961.91,0],26,[]]],[],[[[2425.46,3976.12,9.53674e-07],[[0,"Move"]]],[[2483.15,4100.7,0],[[0,"Move"]]],[[2516.66,4107.63,2.86102e-06],[[0,"Move"]]],[[2460.32,3973.39,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3131.32,4389.22,-4.76837e-07],0,[]],[[3136.32,4384.22,0],0,[]],[[3126.32,4384.22,4.76837e-07],0,[]],[[3141.32,4379.22,0],0,[]]],[],[[[3041.43,4310.27,8.39233e-05],[[0,"Move"]]],[[3036.18,4482.86,0],[[0,"Move"]]],[[3131.69,4461.76,1.90735e-05],[[0,"Move"]]],[[3139.07,4390.88,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[2667.16,4261.65,0],26,[]],[[2669.5,4254.98,0],26,[]],[[2660.49,4259.31,0],26,[]],[[2671.85,4248.31,1.41658],26,[]]],[],[[[2638.34,4267.31,9.53674e-07],[[0,"Move"]]],[[2640.54,4367.12,0],[[0,"Move"]]],[[2684.15,4354.67,0],[[0,"Move"]]],[[2701.31,4258.53,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2738.17,4358.49,0],192,[]],[[2734.36,4364.44,0],192,[]],[[2744.13,4362.3,0],192,[]],[[2730.55,4370.4,3.03215],192,[]]],[],[[[2750.77,4351.52,0],[[0,"Move"]]],[[2733.15,4308.9,0],[[0,"Move"]]],[[2677.78,4299.97,1.0612],[[0,"Move"]]],[[2708.2,4349.33,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Officer Guards.
		[[[[2665.72,4299.5,3.87136],235,"Up",[]],[[2663.11,4293.47,0.679037],0,"Up",[]],[[2663.79,4307.84,0.557681],73,"Up",[]],[[2745.54,4307.63,2.23654],256,"Up",[]],[[2732.41,4327.32,3.9],253,"Up",[]],[[2738.28,4332.67,0.447955],183,"Up",[]],[[2736.03,4340.74,3.89885],131,"Up",[]],[[2732.79,4338.15,3.67592],129,"Up",[]],[[2664.45,4308.34,3.75605],83,"Up",[]],[[2665.38,4293.33,3.89771],83,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Trench Static.
		[[[[2677.35,4232.08,0],181,"up",[]],[[2692.76,4232.21,0],181,"up",[]],[[2716.07,4233.16,4.76837e-07],181,"up",[]],[[2728.76,4232.62,0],181,"up",[]],[[2724.12,4279.47,0],188,"up",[]],[[2713.76,4279.83,9.53674e-07],202,"up",[]],[[2706.43,4279.53,-2.86102e-06],170,"up",[]],[[2685.91,4278.49,0],132,"up",[]],[[2673.14,4278.91,-9.53674e-07],188,"up",[]],[[2664.14,4279.48,0],188,"up",[]],[[2778.7,4288,0],188,"up",[]],[[2765.96,4257.12,0],188,"up",[]]],[["rhs_bmp1d_msv",[2694.5,4268.36,0],177,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["rhs_bmp1d_msv",[2756.4,4245.57,0],116,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2667.96,4347.37,-9.53674e-07],114,"up",[]],[[2642.86,4347.83,0],192,"up",[]],[[2655.31,4347.76,-9.53674e-07],105,"Middle",[]],[[2739.97,4373.87,0],150,"up",[]],[[2760.01,4373.96,0],255,"Middle",[]],[[2777.01,4369.72,9.53674e-07],135,"Middle",[]],[[2784.2,4344.21,9.53674e-07],96,"up",[]],[[2787,4316.02,0],172,"up",[]]],[["rhs_bmp1d_msv",[2679.77,4380.32,9.53674e-07],174,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["rhs_bmp1d_msv",[2727.73,4412.08,0],90,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;	
	};

	case 7: {
		// Headquarters Counter-attack.
		["hq","side","1st Platoon be advised, large mechanized forces are moving in from the west and north-east. They are all converging on the OPFOR HQ! ETA 5 minutes! Repel them and continue on mission! Churchill, out."] remoteExec ["OKS_fnc_Chat",0];
		sleep 300;
		{
			[_X,NEKY_Hunt_Trigger_3,selectRandom ["rhs_bmp3_msv","rhs_brm1k_msv"],8,independent,1500] spawn OKS_fnc_Mechanized_Spawn;
			sleep 30;
		} foreach [mech_5,mech_8,mech_6,mech_9,mech_7,mech_10];
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};