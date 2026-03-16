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

switch (_case) do {

	case 1: {
		// First Cargo Post
		[[],[["B_T_APC_Wheeled_01_cannon_F",[1792.61,6502.43,-0.0020752],236,[["gunner",-1,[0]],["cargo",-1,[0,0]]],[[6,["Olive",1]],[7,["showBags",0,"showCamonetHull",0,"showCamonetTurret",0,"showSLATHull",1,"showSLATTurret",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ION_B_Winter_M113_M2",[1770.49,6419.96,0],324,[["gunner",-1,[0]]],[[6,["ION",1]],[7,["IFF_Panels_Hide",1,"hatchGunner",0,"Hide_Turret_Armor_Front",0,"Hide_Turret_Armor_Side",0]]]],["UK3CB_ION_B_Winter_M113_M2",[1783.09,6443.61,6.10352e-05],299,[["gunner",-1,[0]]],[[6,["ION",1]],[7,["IFF_Panels_Hide",1,"hatchGunner",0,"Hide_Turret_Armor_Front",0,"Hide_Turret_Armor_Side",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1716.92,6431.42,4.18921],267,"Auto",[]],[[1717.87,6434.37,4.5058],267,"Auto",[]],[[1718.45,6430.51,1.80029],0,"Middle",[]],[[1716.74,6434.93,0],104,"Auto",[]],[[1712.86,6423.28,6.10352e-05],75,"Auto",[]],[[1726.95,6419.85,6.10352e-05],37,"Middle",[]],[[1726.39,6438.48,0],298,"Auto",[]],[[1727.28,6430.69,0],166,"Auto",[]]],[["UK3CB_UN_B_SPG9",[1729.07,6419.42,0],17,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1786.77,6486.65,0],261,"Up",[]],[[1788.99,6485.5,0],216,"Up",[]],[[1785.52,6489.71,0],76,"Middle",[]],[[1779.97,6503.43,0],294,"Up",[]],[[1779.73,6499.79,0],236,"Up",[]],[[1781.48,6504.66,0],324,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Second Cargo Post
		[[[[1628.66,6291.44,4.34338],201,"Auto",[]],[[1626.33,6293.49,4.33093],201,"Auto",[]],[[1630.11,6292.46,2.01636],294,"Middle",[]],[[1625.37,6292.69,0],38,"Auto",[]],[[1634.46,6284.43,0],9,"Auto",[]],[[1635.14,6295.91,0],8,"Middle",[]],[[1627.65,6304.5,0],297,"Middle",[]],[[1626.02,6302.95,0],231,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2100,6312.47,6.10352e-05],349,[]],[[2105.86,6308.52,0],349,[]],[[2096.05,6306.61,0],349,[]],[[2111.72,6304.56,0],349,[]],[[2092.09,6300.74,6.10352e-05],349,[]],[[2117.59,6300.61,0],349,[]],[[2088.14,6294.88,6.10352e-05],349,[]],[[2123.45,6296.66,0],349,[]]],[],[[[2045.35,6434.95,6.10352e-05],[[0,"Move"]]],[[1904.96,6504.63,-0.000183105],[[0,"Move"]]],[[2010.52,6593.47,0],[[0,"Move"]]],[[2064.12,6485.47,0],[[0,"Move"]]],[[2121.4,6362.36,0],[[0,"Move"]]],[[2291.64,6263.83,0.00012207],[[0,"Move"]]],[[2139.44,6223.92,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Second Checkpoint
		[[[[2032.57,6662.49,2.73627],0,"Auto",[]],[[2006.19,6653.96,0],96,"Auto",[]],[[2014.63,6658.88,0],152,"Auto",[]],[[2030.4,6671.09,0],324,"Auto",[]],[[2026.48,6664.74,0],146,"Auto",[]],[[2034.13,6659.65,0],233,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Third Checkpoint
		[[[[252.993,6300.65,0],0,"Auto",[]],[[224.015,6316.76,0],93,"Auto",[]],[[249.683,6290.51,6.10352e-05],61,"Auto",[]],[[229.368,6325,0],0,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Fourth Checkpoint
		[[[[1711.75,6020.09,0],286,"Auto",[]],[[1719.43,6020.15,0],105,"Middle",[]],[[1710.57,6033.95,0],299,"Auto",[]],[[1714.49,6035.91,0],276,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Mech Facility
		[[[[1062.17,6101.59,0.568909],117,"Auto",[]],[[1060.29,6082.12,0.419739],71,"Auto",[]],[[1083.19,6099.53,0.352722],253,"Auto",[]],[[1080.62,6080.95,0.476013],307,"Auto",[]],[[1053.19,6096.98,0.69574],71,"Auto",[]],[[1098.9,6089.88,11.0817],263,"Up",[]],[[1080.82,6080.99,11.5003],236,"Up",[]],[[1087.85,6080.29,11.3516],225,"Up",[]],[[1084.55,6100.86,11.3695],354,"Up",[]],[[1099.61,6100.12,11.1171],12,"Up",[]],[[1098.31,6079.99,11.0961],86,"Up",[]],[[1064.79,6101.89,11.5733],120,"Up",[]],[[1073.19,6092.08,11.5024],260,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {
		[[[[1931.94,5893.1,0.591614],213,"Up",[]],[[1934.87,5884.72,0.591919],285,"Up",[]],[[1938.85,5895.18,0.538269],109,"Up",[]],[[1935.81,5890.53,0.571411],190,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1766.88,5531.92,0],211,[]],[[1765.18,5538.78,0],211,[]],[[1773.74,5533.62,0],211,[]],[[1763.48,5545.64,0],211,[]],[[1780.6,5535.31,0],211,[]],[[1761.78,5552.51,0],211,[]],[[1787.47,5537.01,0],211,[]],[[1760.08,5559.37,0],211,[]]],[],[[[1666.2,5447.59,0],[[0,"Move"],[5,"LIMITED"]]],[[1464.95,5441.71,0],[[0,"Move"]]],[[1477.59,5397.19,0],[[0,"Move"]]],[[1632.18,5368.06,0],[[0,"Move"]]],[[1814.53,5400.14,0],[[0,"Move"]]],[[1861.58,5514.1,0.336975],[[0,"Cycle"],[5,"LIMITED"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2060.33,5877.18,0],242,[]],[[2062.45,5883.92,0],242,[]],[[2067.07,5875.05,0],242,[]],[[2064.57,5890.67,0],242,[]],[[2073.82,5872.93,0],242,[]],[[2066.7,5897.41,0],242,[]],[[2080.56,5870.81,0],242,[]],[[2068.82,5904.16,0],242,[]]],[],[[[1942.53,5806.19,0],[[0,"Move"],[5,"LIMITED"]]],[[1825.69,5801.87,0],[[0,"Move"]]],[[1869.16,5905.89,6.10352e-05],[[0,"Move"]]],[[1938.71,5970.16,6.10352e-05],[[0,"Move"]]],[[2016.56,6014.21,6.10352e-05],[[0,"Move"]]],[[2099.34,5919.96,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1983.63,5927.92,0.380981],198,"Up",[]],[[1961.34,5919.02,6.10352e-05],82,"Up",[]],[[1987.4,5890.7,0.577209],47,"Up",[]],[[1958.54,5908.37,0],191,"Up",[]],[[1932.89,5897.78,1.06226],190,"Up",[]],[[1995.16,5921.19,0.190247],206,"Up",[]],[[1989.5,5917.71,0.187073],330,"Up",[]],[[1960.17,5914.8,0.463318],205,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[1768.91,5602.59,0.759949],314,"Auto",[]],[[1769.93,5591.8,0.809937],314,"Auto",[]],[[1771.98,5596.56,0.769775],193,"Auto",[]],[[1769.31,5597.88,0.745972],44,"Auto",[]],[[1765.28,5592.09,0.780151],270,"Auto",[]],[[1767.37,5589.88,0.816345],324,"Auto",[]],[[1770.55,5599.73,0.723633],314,"Auto",[]],[[1772.79,5598.91,0.747009],73,"Auto",[]],[[1768.86,5599.86,3.95807],199,"Middle",[]],[[1769.75,5596.55,4.01001],314,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1801.15,5691.83,0],213,"Middle",[]],[[1791.54,5677.97,0],0,"Auto",[]],[[1786.56,5666.23,0],0,"Auto",[]],[[1805.23,5664.06,0],297,"Middle",[]],[[1807.38,5670.73,0],290,"Middle",[]],[[1808.29,5679.3,0],37,"Middle",[]],[[1818.31,5687.61,0],320,"Auto",[]],[[1813.4,5661.88,0],77,"Middle",[]],[[1828.29,5667.55,0],133,"Auto",[]],[[1808.17,5684.39,0.547791],213,"Middle",[]],[[1806.09,5689.53,0.56543],268,"Middle",[]],[[1801.64,5686.53,0.611267],25,"Middle",[]],[[1807.89,5688.83,0.556396],213,"Middle",[]]],[["UK3CB_ION_B_Winter_M2_TriPod",[1815.69,5690.11,0],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1784.7,5648.46,6.10352e-05],173,"Middle",[]],[[1788.27,5639.61,6.10352e-05],173,"Middle",[]],[[1778.83,5647.92,0],173,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	// Mech Grounds
	case 3: {
		[[[[1602.97,5656.46,0.154175],19,"Up",[]],[[1601.05,5652.26,0.172729],0,"Middle",[]],[[1603.55,5650.79,0.164246],65,"Middle",[]],[[1602.12,5648.62,0.0873413],218,"Middle",[]],[[1607.05,5652.29,0.198425],52,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1588.02,5599.36,0.102722],347,"Up",[]],[[1596.61,5583.69,0.0900269],329,"Middle",[]],[[1591.51,5585.12,0.0900269],247,"Up",[]],[[1596.37,5573.84,0.0900269],65,"Up",[]],[[1591.04,5610.07,0.0904541],59,"Middle",[]],[[1596.68,5588.88,0.0900269],35,"Auto",[]],[[1591.78,5562.97,0.0899658],322,"Auto",[]],[[1599.51,5600.38,0.0904541],172,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 4: {
		[[],[["GO_Winter_B_E_APC_tracked_03_cannon_F",[634.282,4930.64,0],0,[["driver",-1,[]],["gunner",-1,[0]],["cargo",-1,[0,0]]],[[6,["Winter",1]],[7,["showBags",1,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",1,"showSLATHull",0,"showSLATTurret",0]]]]],[[[805.533,4973.83,0],[[0,"Move"]]],[[1338.64,5381.15,0],[[0,"Move"]]],[[1617.86,5498.79,-6.10352e-05],[[0,"Move"]]],[[1754.63,5622.24,-6.10352e-05],[[0,"Move"]]],[[1644.75,5675.12,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["GO_Winter_B_E_APC_tracked_03_cannon_F",[840.707,4850.15,0],271,[["driver",-1,[]],["gunner",-1,[0]],["cargo",-1,[0,0]]],[[6,["Winter",1]],[7,["showBags",1,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",1,"showSLATHull",0,"showSLATTurret",0]]]]],[[[769.727,4882.84,0],[[0,"Move"]]],[[1107.77,5065.38,6.10352e-05],[[0,"Move"]]],[[1295.76,5562.68,0],[[0,"Move"]]],[[1328.11,5731.76,0],[[0,"Move"]]],[[1584.23,5701.1,-6.10352e-05],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 60;
		[[[[2523.7,5343.58,-6.10352e-05],292,[]],[[2530.23,5346.29,0],292,[]],[[2526.41,5337.05,0],292,[]],[[2536.77,5349,-6.10352e-05],292,[]],[[2529.12,5330.52,0],292,[]],[[2543.3,5351.7,0],292,[]],[[2531.82,5323.99,0],292,[]],[[2549.83,5354.41,0],292,[]]],[],[[[1618.39,5649.62,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1439.19,4747.21,-6.10352e-05],0,[]],[[1444.19,4742.21,0],0,[]],[[1434.19,4742.21,0],0,[]],[[1449.19,4737.21,0],0,[]],[[1429.19,4737.21,6.10352e-05],0,[]],[[1454.19,4732.21,0],0,[]],[[1424.19,4732.21,0],0,[]],[[1459.19,4727.21,0],0,[]]],[],[[[1575.97,5668.16,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1558.13,4787.55,0],0,[]],[[1563.13,4782.55,0],0,[]],[[1553.13,4782.55,0],0,[]],[[1568.13,4777.55,0],0,[]],[[1548.13,4777.55,0],0,[]],[[1573.13,4772.55,0],0,[]],[[1543.13,4772.55,0],0,[]],[[1578.13,4767.55,0],0,[]]],[],[[[1576.72,5587.37,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1617.5,4542.79,-6.10352e-05],0,[]],[[1622.5,4537.79,6.10352e-05],0,[]],[[1612.5,4537.79,0],0,[]],[[1627.5,4532.79,-6.10352e-05],0,[]],[[1607.5,4532.79,0],0,[]],[[1632.5,4527.79,-6.10352e-05],0,[]],[[1602.5,4527.79,0],0,[]],[[1637.5,4522.79,0],0,[]]],[],[[[1566.56,5579.99,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1251.59,5083.18,0],0,[]],[[1256.59,5078.18,0],0,[]],[[1246.59,5078.18,0],0,[]],[[1261.59,5073.18,0],0,[]],[[1241.59,5073.18,0],0,[]],[[1266.59,5068.18,0],0,[]],[[1236.59,5068.18,0],0,[]],[[1271.59,5063.18,0],0,[]]],[],[[[1574.13,5591.5,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {
		
	};

	case 6: {
		// Radar Complex
		[[[[1600.3,4337.4,0.635071],303,"Up",[]],[[1592.43,4340.91,4.68903],186,"Up",[]],[[1588.6,4347.46,1.15601],239,"Up",[]],[[1595.42,4337.26,4.53485],25,"Up",[]],[[1591.24,4340.82,1.07806],289,"Up",[]],[[1592.84,4359.75,5.23151],18,"Up",[]],[[1600.65,4359.69,8.36389],280,"Up",[]],[[1598.2,4330.59,4.61395],82,"Up",[]],[[1588.79,4347.19,4.85974],65,"Up",[]],[[1583.43,4358.81,5.28955],171,"Up",[]],[[1584.93,4335.54,5.50311],183,"Up",[]],[[1598.7,4339.71,4.12585],223,"Up",[]],[[1586.25,4347.86,5.00421],90,"Up",[]],[[1586.26,4343.26,5.08759],168,"Up",[]],[[1584.35,4340.31,5.31219],104,"Up",[]],[[1591.64,4355.89,1.28625],272,"Up",[]],[[1597.7,4333.57,4.47638],310,"Up",[]],[[1596.13,4325.99,8.43402],226,"Up",[]],[[1585.77,4357.09,5.19427],82,"Up",[]],[[1582.15,4326.12,6.32605],194,"Up",[]],[[1597.32,4356.27,8.16943],314,"Up",[]],[[1594.69,4327.71,5.14655],168,"Up",[]],[[1591.47,4352.14,1.10138],256,"Up",[]],[[1583.36,4352.48,5.15222],158,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1672.19,4260.45,0.0344238],40,"Up",[]],[[1681.19,4264.48,0.804993],55,"Up",[]],[[1678.39,4264.51,0.804993],300,"Up",[]],[[1678.64,4256.46,0.0358276],38,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	// AT Mine Ambush
	case 9: {
		[[[[1904.75,5980.36,-0.122986],329,"Down",[]],[[1923.09,5981.37,0.0786743],0,"Down",[]],[[1869.53,5999.49,0],69,"Down",[]],[[1902.94,6010.11,0],72,"Down",[]],[[1884.62,5935.15,0],37,"Down",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	// AT Mines
	case 10: {
		[["ATMine",[1908.06,5997.79,837.491],[[-2.00477,-1.14588,180],[357.995,358.855,0]],[],false],["ATMine",[1909.88,5995.82,837.386],[[-2.00477,-1.14588,180],[357.995,358.855,0]],[],false]] call GW_Common_fnc_spawnObjects;
	};

	case 11: {
		// QRF from Mech Compound
		[[],[["GO_Winter_B_APC_Wheeled_01_cannon_F",[1557.96,5576.18,0],2,[["driver",-1,[]],["gunner",-1,[0]],["cargo",-1,[0,0]]],[[6,["Winter",1]],[7,["showBags",1,"showCamonetHull",1,"showCamonetTurret",1,"showSLATHull",0,"showSLATTurret",0]]]]],[[[1569.65,5622.65,0],[[0,"Move"]]],[[1602.29,5636.85,0],[[0,"Move"]]],[[1658.93,5684.56,0],[[0,"Move"]]],[[1797.19,5798.47,6.10352e-05],[[0,"Move"]]],[[1827.18,6326.48,6.10352e-05],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 12: {
		// Air Reinforcements
		[[],[["UK3CB_ION_B_Winter_T28Trojan_CAS",[2668.1,1748.97,0.525],301,[["driver",-1,[]],["commander",-1,[0]]],[[6,["ION",1]],[7,["Tailhook",0,"show_pylons",1]],[8,["rhs_mag_M151_7_USAF_LAU131","UK3CB_Factions_PylonWeapon_Cessna_2000rnd_762x51_M134_Green","UK3CB_Factions_PylonWeapon_Cessna_2000rnd_762x51_M134_Green","rhs_mag_M151_7_USAF_LAU131",""]]]]],[[[667.869,3530.45,0.00012207],[[0,"Move"]]],[[674.292,5556.96,0],[[0,"Move"]]],[[1832.52,5947.17,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 13: {
		// Mech Reinforcements
		[[],[["GO_Winter_B_E_APC_tracked_03_cannon_F",[2794,2246.07,0],92,[["driver",-1,[]],["gunner",-1,[0]],["cargo",-1,[0,0]]],[[6,["Winter",1]],[7,["showBags",1,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",1,"showSLATHull",1,"showSLATTurret",1]]]]],[[[2822.54,2245.26,0],[[0,"Move"]]],[[2840.35,2505.85,0],[[0,"Move"]]],[[763.426,3074.97,-6.10352e-05],[[0,"Move"]]],[[1322.96,3643.31,-6.10352e-05],[[0,"Move"]]],[[1547.07,4047.57,0],[[0,"Move"]]],[[1851.83,4393.02,0],[[0,"Move"]]],[[1923.16,4771.59,0.00012207],[[0,"Move"]]],[[1649.97,4995.55,0],[[0,"Move"]]],[[1987.25,5290.92,0],[[0,"Move"]]],[[1862.03,5625.66,0],[[0,"Move"]]],[[1839.62,5643.23,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*
	GOL SCRIPT EXAMPLES

	=======================================

	OKS_fnc_Createobjectives - Creates an objective based on OKS_fnc_Dynamic settings with task creation/completion.

	[Object_1,"sector",300,EAST,false,false,false] spawn OKS_fnc_CreateObjectives;

	Params: Position, Type, Range, Side, Patrols?, PlaceObjects?, OverrideTaskNotification?

	Types Available:
	sector (Clear an area)
	neutralize (Clear a building)
	cache (destroy weapons cache)
	motorpool (destroy supply vehicle)
	ammotruck (destroy a patrolling supply vehicle)
	radiotower (destroy a radiotower - decreases hunt response/respawn delay)
	hvttruck (destroy a patrolling vehicle with an HVT)
	artillery (destroy an active artillery piece)
	antiair (destroy an active anti-air position)
	hostage (secure a building with hostiles & two hostages)

    =======================================

	OKS_fnc_Ambient_AAA

	Setup a scripted AAA that fires randomly into the air until it finds a target and locks on. It has less accuracy than standard AAA positions for balance.

	Code:
	[aaa_1,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;

	Params:
	AAA Object, side of crew, Is an HMG, Range of AAA, Should be assisted by nearby radar

    =======================================

	OKS_fnc_ArtyFire

	Setup an artillery to fire into the sky until destroyed. Take note that it is supposed to delete the rounds from landing to save performance.
	This might fail, so make sure the target is not near friendly positions or bases.

	Code:
	[east,arty_1,getpos ArtyTarget_1,7,300,180,false] spawn OKS_fnc_ArtyFire;

	Params:
	Side of Crew, Artillery Object, Artillery Target, Rounds per Salvo, Rearm Delay, Reload Delay, Should give full crew.

    =======================================

	OKS_fnc_ArtySupression

	Setup an active artillery barrage on specified targets until destroyed.

	Code:
	[livearty_1,[getPos ArtySuppress_1,getPos ArtySuppress_2,getPos ArtySuppress_3],east,1,1,true,true,300,true] spawn OKS_fnc_ArtySupression;

	Params:
	Artillery Object, Array with Target positions, Side of Crew, Rounds per target, Delay per target, Unlimited Ammo, Should Loop until Destroyed, Delay per Salvo, Mark with Red Smoke on Target.

	=======================================

	OKS_fnc_Destroy_Task

	Setup a destroy/kill objective on a target.

	Code:
	[officer_1,"Kill the Officer","Enemy Officer","You need to kill this %1 because it needs to happen","kill",nil,true,true] spawn OKS_fnc_Destroy_Task;

	Params:
	Target Object, Task Title, Target Type, Task Description, Task Icon, Task Parent, Should Mark Position on Map, Should Show Popup when created/completed

	=======================================

	OKS_fnc_Evacuate_HVT

	Setup a HVT Capture Objective. The last variable sets true/false if they target should be set to captive (tied hands). False for enemy officers, true for friendly captives.

	Code:
	[Group HVT_1,getMarkerPos "respawn_west",west,false,nil,true] spawn OKS_fnc_Evacuate_HVT;

	Params:
	Group of HVT, Exfil Position (Either pickup (Extract On) or dropoff (Extract off)), Side of Extract Helicopter, Should Send AI Helicopter Evac, Parent Task, Is Captive

	=======================================

	OKS_fnc_Destroy_Barricade

	Setup Barricade Objective. Objective to destroy objects lined up as a blockade on a road. Make sure the object is destructible by testing it.

	Code:
	[[barricade_1,barricade_2]] spawn OKS_fnc_Destroy_Barricade;

	Params:
	Array with Barricade Objects

	=======================================

	OKS_fnc_Convoy_Spawn

	Spawn a convoy that moves until engaged, they will dismount, armed vehicles will hunt and dismounts will rush.

	Code:
	[spawn_1,waypoint_1,end_1,west,[4,["rhs_btr60_msv"], 6, 25],[true,6],[], false, false] spawn OKS_fnc_Convoy_Spawn;

	Params:
	Spawn Position, First Waypoint, End Waypoint (Scattered formation), Side of Convoy, Convoy Array [](Number, [TypeArray]), Speed meters/second, dispersion]
	Dismount Array (Should have dismount, how many), ConvoyArray to populate variable, forced careless (ignore everything), delete on arrival.

	=======================================

	OKS_fnc_Lambs_SpawnGroup

	Spawns a team that either creep/rush/hunt based on LAMBS. Used for quick and intense counter-attacks by enemy infantry.

	Code:
	[SpawnPos,"rush",UnitsPerBase,Side,Range,[]] spawn OKS_fnc_Lambs_SpawnGroup;

	Params:
	Position, Type of Waypoint (rush,creep,hunt), Units to spawn, Side of units, Range of waypoint (around the spawn), unit array that gets populated with the units.


	=======================================

	OKS_fnc_Defuse_Explosive

	Creates a defuse explosive objective with 600 (10 minutes) seconds to complete on the "SatchelCharge" object with the name bomb_1.
	This can be replaced with a position to create an explosive on the position using getPos bomb_1.

	Code:
	[bomb_1,600] spawn OKS_fnc_Defuse_Explosive;

	Params:
	[bomb_1,600,bombtarget_1,"BombDetonated","BombDefused"] spawn OKS_fnc_Defuse_Explosive;
	Bomb Object or Position, Time Delay (Seconds), Target Object (Destroyed upon detonation), VariableName to set to true if failed, VariableName to set to true if succeeded.

	=======================================

	OKS_fnc_PowerGenerator

	Sets up a generator to be disabled by action to turn off light sources in the area around it. 

	Code:
	[Generator_1,true,true,1000] spawn OKS_fnc_PowerGenerator;

	Params:
	Generator Object, Should Add Action to disable, Turn Off Lights when disabled, Range of disabled lights from Generator
	
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
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_CreateZone")};

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
			] spawn OKS_fnc_CreateZone;
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

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,east,6,30] spawn OKS_fnc_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,east,"O_APC_Tracked_02_cannon_F",30] spawn OKS_fnc_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,east,"O_APC_Tracked_02_cannon_F","O_Truck_03_transport_F"],30] OKS_fnc_HuntBase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_HuntBase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn OKS_fnc_HuntBase;
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

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};


