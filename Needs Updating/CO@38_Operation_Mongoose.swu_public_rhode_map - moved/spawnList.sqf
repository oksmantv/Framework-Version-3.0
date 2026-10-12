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

		["hq","side","1-1 be advised, friendly INDEP forces are starting their attack from the north and south. Check your fire, out."] remoteExec ["OKS_Chat",0];

		// Friendly Attack
		[friendly_1,attack_1,8,independent,true] spawn OKS_Attack_SpawnGroup; 
		[friendly_2,attack_2,5,independent,true] spawn OKS_Attack_SpawnGroup; 
		[friendly_3,attack_3,5,independent,true] spawn OKS_Attack_SpawnGroup; 
		[friendly_4,attack_4,5,independent,true] spawn OKS_Attack_SpawnGroup;
		sleep 30;

		[friendly_5,attack_5,"UK3CB_ADA_I_LR_SF_M2",independent,false] spawn OKS_Attack_SpawnGroup; 
		[friendly_6,attack_6,"UK3CB_ADA_I_LR_SF_M2",independent,false] spawn OKS_Attack_SpawnGroup;
		[friendly_7,attack_7,"UK3CB_ADA_I_BRDM2",independent,false] spawn OKS_Attack_SpawnGroup;
	};

	case 1: {

		// Objective 1
		// Trench
		[[[[1756.54,1792.82,-0.0959015],15,"Middle",[]],[[1755.61,1810.02,-3.8147e-006],35,"Middle",[]],[[1752.66,1808.2,0.157475],331,"Up",[]],[[1747.39,1805.67,0.388916],320,"Up",[]],[[1753.67,1801.1,0.183432],293,"Middle",[]],[[1757.03,1846.23,0.00943947],348,"Middle",[]],[[1758.78,1859.34,-1.90735e-006],274,"Middle",[]],[[1756.55,1867.48,-3.8147e-006],317,"Up",[]],[[1761.04,1877.45,0],198,"Middle",[]],[[1762.8,1883.4,0.000761032],289,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Garage
		[[[[1819.28,1831.78,6.04521],276,"Middle",[]],[[1822.22,1840.92,6.95294],270,"Middle",[]],[[1822.2,1836.17,6.87682],283,"Middle",[]],[[1850.45,1840.53,6.89503],316,"Middle",[]],[[1824.74,1832.63,0.278437],4,"Middle",[]],[[1826.3,1830.99,3.395],275,"Middle",[]],[[1824.35,1839.73,3.40664],164,"Middle",[]],[[1829.41,1837.62,0.278275],24,"Middle",[]],[[1843.01,1835.82,0.222246],348,"Middle",[]],[[1848.64,1833.48,0.278275],281,"Middle",[]],[[1850.98,1839.92,0.419434],273,"Middle",[]],[[1851.26,1845.86,1.90735e-006],287,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// HQ Building
		[[[[1870.37,1845.56,4.17457],282,"Up",[]],[[1870.06,1836.91,4.07665],282,"Up",[]],[[1876.49,1835.06,3.62834],310,"Up",[]],[[1870.61,1844.32,0.750252],85,"Up",[]],[[1873.08,1839.47,0.53821],284,"Up",[]],[[1873.39,1834.9,0.397532],247,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Tower
		[[[[2029.38,1719.38,-3.8147e-006],269,"Up",[]],[[2031.45,1722.46,0.0104332],318,"Up",[]],[[2028.16,1732.56,-3.8147e-006],288,"Middle",[]],[[2040.08,1717.19,1.90735e-006],240,"Middle",[]],[[2032.87,1719.58,-3.8147e-006],209,"Up",[]],[[2022.65,1701.5,5.72205e-006],222,"Up",[]],[[2023.74,1688.92,0.00972939],265,"Up",[]],[[2014.04,1694.09,1.90735e-006],303,"Up",[]],[[2018.96,1695.47,3.15918],323,"Up",[]],[[2019.74,1692.38,6.39938],249,"Up",[]],[[2019.62,1695.91,9.36681],313,"Up",[]],[[2019.25,1694.82,12.4429],43,"Up",[]],[[2019.15,1690.1,12.6128],269,"Middle",[]],[[2022.56,1699.01,12.4213],304,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Roadblock Rear Bunker
		[[[[1939.29,1860.63,2.09808e-005],252,"Up",[]],[[1936.99,1865.58,2.09808e-005],259,"Up",[]],[[1941.14,1867.51,2.09808e-005],252,"Up",[]],[[1890.89,1874.15,1.18967],252,"Middle",[]],[[1891.01,1875.5,1.248],252,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		[aaa_1,east,false,1500,true] spawn GW_Ambient_AAA;

		[officer_6,0.5,50,true,false] spawn OKS_Surrender;
		[officer_5,0.5,50,true,false] spawn OKS_Surrender;

	};

	case 2: {

		// Objective 2
		// South Trench
		[[[[2588.01,1193.6,2.09511],294,"Up",[]],[[2588.22,1198.47,2.47015],294,"Up",[]],[[2593.04,1204.83,2.018],294,"Up",[]],[[2604.78,1202.52,4.76837e-007],350,"Up",[]],[[2600.65,1189.32,-5.29289e-005],254,"Up",[]],[[2612.34,1187.53,-7.62939e-006],269,"Up",[]],[[2593.39,1182.2,1.87121],26,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Center Trench
		[[[[2600.91,1214.43,2.12564],294,"Up",[]],[[2604.13,1219.16,9.53674e-006],18,"Up",[]],[[2610.26,1235.47,1.64368],302,"Up",[]],[[2603.67,1234,0.910489],297,"Up",[]],[[2633.69,1229.67,4.76837e-007],216,"Up",[]],[[2633.01,1243.03,2.08265],291,"Up",[]],[[2632.21,1237.11,2.23166],69,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// North Trench
		[[[[2629.18,1255.47,0.955693],284,"Up",[]],[[2623.58,1269.93,1.52179],294,"Up",[]],[[2629.52,1278.81,2.08385],294,"Up",[]],[[2625.16,1272.37,3.12296],294,"Middle",[]],[[2645.22,1273.16,9.53674e-006],179,"Up",[]],[[2639.09,1266.39,0],294,"Up",[]],[[2629.86,1269.2,4.76837e-007],90,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		[Trigger_2,false,[0,16,false,false],east,0,1,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		[officer_4,0.5,50,true,false] spawn OKS_Surrender;
		[officer_3,0.5,50,true,false] spawn OKS_Surrender;

		[east,arty_1,getMarkerPos "marker_23",5,300,300] spawn OKS_ArtyFire; sleep 3;
		[east,arty_2,getMarkerPos "marker_23",5,300,300] spawn OKS_ArtyFire; sleep 3;
		[east,arty_3,getMarkerPos "marker_23",5,300,300] spawn OKS_ArtyFire; sleep 3;
		[east,arty_4,getMarkerPos "marker_23",5,300,300] spawn OKS_ArtyFire; sleep 3;

		[aaa_2,east,false,1500,true] spawn GW_Ambient_AAA;
	};

	case 3: {

		// Objective 3
		// Village Contacts
		[[[[2999.21,885.977,0.625205],309,"Up",[]],[[3022.25,895.787,0.758472],189,"Up",[]],[[3033.09,892.426,0.461878],25,"Up",[]],[[3037.7,886.946,3.8147e-006],216,"Middle",[]],[[3070.81,852.27,0.301095],36,"Up",[]],[[3068.8,849.709,0.301095],317,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Villa Exterior
		[[[[3103.61,852.311,6.6633],294,"Up",[]],[[3099.95,869.979,7.33837],294,"Up",[]],[[3103.85,861.242,0],264,"Middle",[]],[[3073.27,874.433,0],116,"Middle",[]],[[3094.55,918.893,6.66329],294,"Up",[]],[[3130.73,897.493,6.6633],26,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Village Interior
		[[[[3097.93,884.043,3.98714],218,"Up",[]],[[3107.59,898.284,3.75437],248,"Up",[]],[[3107.27,902.516,3.75437],290,"Up",[]],[[3107.86,882.127,3.75437],182,"Up",[]],[[3110.67,891.721,7.22951],61,"Up",[]],[[3103.23,885.664,0.171616],299,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Village Interior West
		[[[[3090.22,904.392,7.30478],270,"Up",[]],[[3094.38,911.206,7.23345],308,"Up",[]],[[3096.11,890.613,3.7607],302,"Up",[]],[[3101.4,906.614,3.75437],146,"Up",[]],[[3094.25,907.059,3.75437],299,"Up",[]],[[3096.63,903.306,3.75437],223,"Up",[]],[[3101.02,905.456,0.171567],145,"Up",[]],[[3094.58,904.388,0.171614],356,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		[Trigger_3,false,[0,18,false,false],east,0,1,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		[officer_2,0.5,50,true,false] spawn OKS_Surrender;
		[officer_1,0.5,50,true,false] spawn OKS_Surrender;
		
		[aaa_3,east,false,1500,true] spawn GW_Ambient_AAA;
		[aaa_4,east,false,1500,true] spawn GW_Ambient_AAA;
	};

	case 4: {

		// Objective 4
		// Compound
		[[[[3827.12,659.074,0.321024],223,"Up",[]],[[3821.53,657.106,0.71339],163,"Up",[]],[[3816.17,656.547,1.76343],223,"Up",[]],[[3808.01,652.359,0.868168],223,"Up",[]],[[3807.94,651.382,3.95394],223,"Up",[]],[[3811.48,656.916,3.96852],310,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3829.99,637.635,3.74018],336,"Up",[]],[[3828.38,651.893,1.20708],223,"Up",[]],[[3819.98,644.488,10.0755],223,"Up",[]],[[3826.91,632.107,3.62287],339,"Up",[]],[[3824.58,641.082,12.676],223,"Up",[]],[[3823.53,640.985,8.08037],347,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3809.08,631.902,0.446312],336,"Up",[]],[[3818.26,637.67,13.3757],223,"Up",[]],[[3824.02,640.557,4.70051],334,"Up",[]],[[3817.03,640.242,5.63409],85,"Up",[]],[[3821.3,644.527,1.60525],223,"Up",[]],[[3817.23,640.863,2.35415],81,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		[Trigger_4,false,[0,16,false,false],east,0,2,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
	
	};

	case 5: {
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
