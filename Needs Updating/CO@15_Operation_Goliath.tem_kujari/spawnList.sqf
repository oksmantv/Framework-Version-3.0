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

		// Patrols in Forest.
		[[[[9388.54,986.293,0],0,[]],[[9391.54,983.293,0],0,[]],[[9393.54,983.293,0],0,[]],[[9395.54,983.293,0],0,[]],[[9397.54,983.293,0],0,[]],[[9399.54,983.293,0.164574],0,[]],[[9401.54,983.293,0],0,[]],[[9403.54,983.293,0],0,[]]],[],[[[9321.13,1092.2,0],[[0,"Move"],[1,"SAFE"]]],[[9202.36,1033.4,-7.24792e-005],[[0,"Move"]]],[[9267.11,1155.87,3.24249e-005],[[0,"Move"]]],[[9167.74,1267.83,-9.15527e-005],[[0,"Move"]]],[[9013.84,1285.32,4.76837e-006],[[0,"Move"]]],[[9565.47,1224.06,0],[[0,"Move"]]],[[9421.02,1011.63,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9631.33,1306.8,9.53674e-007],0,[]],[[9634.33,1303.8,9.53674e-007],0,[]],[[9636.33,1303.8,0],0,[]],[[9638.33,1303.8,0],0,[]],[[9640.33,1303.8,1.90735e-006],0,[]],[[9642.33,1303.8,0.164576],0,[]],[[9644.33,1303.8,0],0,[]],[[9646.33,1303.8,0],0,[]]],[],[[[9548.29,1368.27,0],[[0,"Move"],[1,"SAFE"]]],[[9347.89,1359.41,0],[[0,"Move"]]],[[9448.65,1529.92,0],[[0,"Move"]]],[[9620.26,1682.71,0],[[0,"Move"]]],[[9819.55,1708.18,0],[[0,"Move"]]],[[9705.51,1446.88,9.53674e-007],[[0,"Move"]]],[[9663.81,1332.14,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9379.52,1841.42,3.8147e-006],242,[]],[[9380.77,1845.48,3.8147e-006],242,[]],[[9379.83,1847.24,2.86102e-006],242,[]],[[9378.9,1849.01,3.8147e-006],242,[]],[[9377.96,1850.78,3.8147e-006],242,[]],[[9377.03,1852.55,0.164579],242,[]],[[9376.09,1854.32,1.90735e-006],242,[]],[[9375.16,1856.08,1.90735e-006],242,[]]],[],[[[9594.31,1886.28,0],[[0,"Move"],[1,"SAFE"]]],[[9362.91,1701.38,9.53674e-007],[[0,"Move"]]],[[9223.41,1682.56,0],[[0,"Move"]]],[[9017.47,1479.94,0],[[0,"Move"]]],[[9031.86,1662.63,0],[[0,"Move"]]],[[9218.98,1868.57,0],[[0,"Move"]]],[[9341.93,1858.29,5.72205e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;


		// Isufuri
		[Trigger_1,false,[0,0,false,false],east,1,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

		// First Strongpoint
		[[[[10027.8,1337.12,3.46292],227,"Auto",[]],[[10026.7,1339.2,3.39395],227,"Auto",[]],[[10025.7,1343.08,3.60491],268,"Auto",[]],[[10022.9,1347.68,3.36579],282,"Auto",[]],[[10024.1,1345.21,3.48768],238,"Auto",[]],[[10028.9,1351.31,3.64516],321,"Auto",[]],[[10031.1,1349.7,3.78517],157,"Auto",[]],[[10025.4,1349.3,0.821497],138,"Auto",[]],[[10033.7,1354.03,0],326,"Auto",[]],[[10030.9,1334.43,-9.53674e-007],72,"Auto",[]],[[10020.1,1343.61,0],359,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Second Strongpoint
		[[[[10093.7,1413.79,0],154,"Auto",[]],[[10076.3,1407.9,0.178207],84,"Auto",[]],[[10072.9,1401.36,0],98,"Auto",[]],[[10085,1414.7,1.02747],155,"Auto",[]],[[10085.7,1421.5,0],206,"Auto",[]],[[10078.2,1415.92,0.0969467],109,"Auto",[]],[[10079.9,1421.35,1.90735e-006],254,"Auto",[]],[[10068.6,1411.4,0],96,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// AAA Nest.
		[[[[10138.7,1388.06,0],332,"Auto",[]],[[10135.5,1405.21,0],332,"Auto",[]],[[10140,1402.49,0.32456],77,"Middle",[]],[[10147.8,1395.08,3.07354],252,"Auto",[]],[[10147.4,1397.28,3.01683],278,"Auto",[]],[[10153.3,1400.11,0],281,"Auto",[]],[[10153.8,1395.9,0.473406],23,"Auto",[]],[[10148,1395.82,0.64291],353,"Auto",[]],[[10158.5,1395.51,1.90735e-006],167,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Last Strongpoint.
		[[[[10154.4,1452.29,0],131,"Auto",[]],[[10140.9,1441.58,0],85,"Auto",[]],[[10143,1448.12,0.462952],332,"Auto",[]],[[10147.4,1452.78,0.864843],332,"Auto",[]],[[10143.5,1449.69,3.63045],190,"Middle",[]],[[10148.7,1451.89,3.31357],162,"Middle",[]],[[10123.6,1454.19,0],50,"Middle",[]],[[10143.1,1458.31,1.90735e-006],270,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrol.
		[[[[10160.1,1156.32,0],0,[]],[[10159.4,1155.23,0],0,[]],[[10161.8,1156.06,0],0,[]],[[10161,1154.95,0],0,[]]],[],[[[10020.9,1154.41,0],[[0,"Move"],[1,"SAFE"]]],[[9977.84,1282,1.90735e-006],[[0,"Move"]]],[[10180.1,1265.82,-1.90735e-005],[[0,"Move"]]],[[10173.9,1151.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10175.2,1334.22,0],0,[]],[[10174.5,1333.13,0],0,[]],[[10176.9,1333.96,0],0,[]],[[10176,1332.85,0],0,[]]],[],[[[10028.1,1313.33,0],[[0,"Move"],[1,"SAFE"]]],[[10049.6,1380.02,0],[[0,"Move"]]],[[10181.3,1430.91,1.90735e-006],[[0,"Move"]]],[[10189,1329.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10068.2,1442.55,0],317,[]],[[10068.5,1441.28,1.90735e-006],317,[]],[[10069.7,1443.53,0],317,[]],[[10069.8,1442.14,0.548288],317,[]]],[],[[[9821.1,1292.37,0],[[0,"Move"],[1,"SAFE"]]],[[9726.79,1387.58,0],[[0,"Move"]]],[[10008.3,1510.25,0],[[0,"Move"]]],[[10075,1446.22,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10137.7,1551.68,0],0,[]],[[10137,1550.58,0],0,[]],[[10139.5,1551.42,0],0,[]],[[10138.6,1550.31,0],0,[]]],[],[[[10020.5,1532.34,0],[[0,"Move"],[1,"SAFE"]]],[[10008.9,1628.43,0],[[0,"Move"]]],[[10113.9,1683.72,1.90735e-006],[[0,"Move"]]],[[10151.6,1546.96,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		_Vehicles = ["UK3CB_ADA_O_MTLB_PKT", "UK3CB_ADA_O_Datsun_Pickup_PKM", "UK3CB_ADA_O_Hilux_M2", "UK3CB_ADA_O_LR_Open", "UK3CB_ADA_O_LR_Closed", "UK3CB_ADA_O_Hilux_Open", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_Pickup", "UK3CB_ADA_O_V3S_Closed", "UK3CB_ADA_O_V3S_Open"];
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 3,1200,east,_Vehicles,120] spawn NEKY_Hunt_HuntBase;

	};

	case 2: {

		[Trigger_2,false,[0,0,false,false],east,2,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

		// First Artillery.
		[[[[9785.56,2231.13,0],241,"Auto",[]],[[9787.08,2224.36,1.90735e-005],190,"Middle",[]],[[9794.1,2225.29,1.90735e-005],190,"Middle",[]],[[9806.7,2224.59,1.90735e-005],190,"Middle",[]],[[9815.05,2224.18,1.90735e-005],190,"Middle",[]],[[9816.07,2193.35,0.358601],341,"Auto",[]],[[9831.23,2201.72,3.05176e-005],191,"Auto",[]],[[9820.78,2208.35,0.413189],165,"Auto",[]],[[9828.05,2212.25,0.35581],177,"Auto",[]],[[9825.75,2211.21,2.78537],221,"Middle",[]],[[9827.91,2210.13,2.78649],187,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9883.67,2227.25,1.71661e-005],190,"Auto",[]],[[9870.25,2227.49,1.90735e-005],190,"Auto",[]],[[9830.76,2268.94,1.90735e-005],247,"Auto",[]],[[9834.86,2266.18,1.90735e-005],191,"Auto",[]],[[9830.99,2295.91,3.8147e-006],274,"Middle",[]],[[9871.49,2266.73,2.09808e-005],182,"Auto",[]],[[9900.91,2268.59,1.90735e-005],152,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Second Artillery.
		[[[[10441.8,2135.23,2.86102e-006],240,"Auto",[]],[[10434.2,2151.06,-2.86102e-006],262,"Auto",[]],[[10425.8,2172.64,-9.53674e-006],252,"Auto",[]],[[10429.6,2244.36,-1.14441e-005],175,"Auto",[]],[[10438.4,2227.15,1.43051e-005],184,"Auto",[]],[[10414.6,2191.77,1.90735e-005],232,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10513,2164.66,2.86102e-006],242,"Auto",[]],[[10522.5,2147,-3.8147e-006],194,"Auto",[]],[[10510,2128.64,4.76837e-006],210,"Auto",[]],[[10491.1,2122.07,2.00272e-005],249,"Auto",[]],[[10494.4,2196.35,-7.62939e-006],252,"Middle",[]],[[10494.2,2199.07,7.62939e-006],251,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10534.4,2237.34,-3.24249e-005],256,"Auto",[]],[[10545.1,2216.76,-1.52588e-005],216,"Auto",[]],[[10553.6,2198.67,3.8147e-006],256,"Auto",[]],[[10562.7,2182.76,2.38419e-005],207,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;


		// Patrol.
		[[[[9915.53,2267.9,0],310,[]],[[9915.94,2266.68,0],310,[]],[[9916.84,2269.06,0],310,[]],[[9917.15,2267.71,0],310,[]]],[],[[[9854.41,2205.39,0],[[0,"Move"],[1,"SAFE"]]],[[9744.18,2246.51,0],[[0,"Move"]]],[[9812.01,2317.31,0],[[0,"Move"]]],[[9928,2275.56,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10187.4,2209.84,0],310,[]],[[10187.8,2208.61,9.53674e-007],310,[]],[[10188.7,2211,0],310,[]],[[10189,2209.64,0],310,[]]],[],[[[10100.1,2101.4,0],[[0,"Move"],[1,"SAFE"]]],[[9974.37,2149.67,9.53674e-007],[[0,"Move"]]],[[10115.9,2295.1,0],[[0,"Move"]]],[[10199.9,2217.49,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10353.4,2147.86,0],310,[]],[[10353.8,2146.64,9.53674e-007],310,[]],[[10354.7,2149.02,0],310,[]],[[10355,2147.66,9.53674e-007],310,[]]],[],[[[10266.1,2039.42,0],[[0,"Move"],[1,"SAFE"]]],[[10140.4,2087.69,1.90735e-006],[[0,"Move"]]],[[10281.9,2233.13,0],[[0,"Move"]]],[[10365.9,2155.52,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10591.3,2159.78,0],344,[]],[[10590.9,2158.54,9.53674e-007],344,[]],[[10593,2160,9.53674e-007],344,[]],[[10592.5,2158.7,0],344,[]]],[],[[[10457.8,2119.96,1.90735e-006],[[0,"Move"],[1,"SAFE"]]],[[10416.5,2218.86,0],[[0,"Move"]]],[[10557.9,2280.15,0],[[0,"Move"]]],[[10605.9,2159.02,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;


		_Vehicles = ["UK3CB_ADA_O_MTLB_PKT", "UK3CB_ADA_O_Datsun_Pickup_PKM", "UK3CB_ADA_O_Hilux_M2", "UK3CB_ADA_O_LR_Open", "UK3CB_ADA_O_LR_Closed", "UK3CB_ADA_O_Hilux_Open", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_Pickup", "UK3CB_ADA_O_V3S_Closed", "UK3CB_ADA_O_V3S_Open"];
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_2, 3,1200,east,_Vehicles,120] spawn NEKY_Hunt_HuntBase;

	};

	case 3: {

		// Malumti Burin.
		// Strongpoint 1.
		[[[[10739.6,2622.73,3.43374],197,"Auto",[]],[[10740.1,2624.34,3.50873],251,"Auto",[]],[[10741.4,2628.45,3.62572],232,"Middle",[]],[[10733.4,2633.44,3.22432],278,"Middle",[]],[[10742.1,2627.87,0.825897],197,"Auto",[]],[[10726.6,2620.59,0],4,"Auto",[]],[[10733.3,2632.8,0.189009],197,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// AAA Guards.
		[[[[10807.3,2638.05,3.02782],188,"Auto",[]],[[10805.4,2638.5,3.05071],230,"Auto",[]],[[10804.7,2640.85,3.2182],273,"Auto",[]],[[10805.3,2645.15,3.8717],241,"Auto",[]],[[10804.7,2648.3,4.09865],279,"Auto",[]],[[10806.9,2650.18,4.2754],11,"Auto",[]],[[10811.1,2651.33,4.41891],345,"Auto",[]],[[10812.5,2648.79,4.27589],178,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Second strongpoint.
		[[[[10791.1,2565.77,0],350,"Auto",[]],[[10791.8,2581.45,0],210,"Auto",[]],[[10797.9,2574.65,0.980864],197,"Auto",[]],[[10797.6,2567.09,0.342215],197,"Auto",[]],[[10809.9,2575.99,1.90735e-006],324,"Auto",[]],[[10806.2,2570.21,1.90735e-006],354,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Last strongpoint.
		[[[[10873.3,2568.17,0.239887],262,"Auto",[]],[[10870.4,2582.61,0],292,"Auto",[]],[[10873,2580.3,0.761417],264,"Auto",[]],[[10874.5,2575.79,3.58387],262,"Middle",[]],[[10874,2578.46,3.44471],262,"Middle",[]],[[10875.4,2576.37,0.886581],9,"Auto",[]],[[10878.5,2571.78,0.925255],262,"Auto",[]],[[10877.9,2571.69,3.70555],262,"Auto",[]],[[10880.4,2576.33,0],352,"Auto",[]],[[10885.8,2574.49,0.32642],262,"Auto",[]],[[10883.4,2570.68,-1.90735e-006],235,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;


		// Patrol.
		[[[[10958.6,2591,0],348,[]],[[10958.2,2589.79,0],348,[]],[[10960.3,2591.09,0],348,[]],[[10959.7,2589.83,0],348,[]]],[],[[[10739.4,2577.66,0],[[0,"Move"],[1,"SAFE"]]],[[10716.7,2693.6,0.726864],[[0,"Move"]]],[[10894.7,2673.79,0],[[0,"Move"]]],[[10973.1,2589.19,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10922.5,2417.45,0],348,[]],[[10922.1,2416.25,0],348,[]],[[10924.3,2417.55,0],348,[]],[[10923.7,2416.29,0],348,[]]],[],[[[10728.9,2400.12,0],[[0,"Move"],[1,"SAFE"]]],[[10654.8,2535.48,0.727015],[[0,"Move"]]],[[10919.9,2528.74,0],[[0,"Move"]]],[[10937.1,2415.64,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[Trigger_3,false,[0,0,false,false],east,2,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

		_Vehicles = ["UK3CB_ADA_O_MTLB_PKT", "UK3CB_ADA_O_Datsun_Pickup_PKM", "UK3CB_ADA_O_Hilux_M2", "UK3CB_ADA_O_LR_Open", "UK3CB_ADA_O_LR_Closed", "UK3CB_ADA_O_Hilux_Open", "UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_Pickup", "UK3CB_ADA_O_V3S_Closed", "UK3CB_ADA_O_V3S_Open"];
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_3, 3,1200,east,_Vehicles,120] spawn NEKY_Hunt_HuntBase;

	};

	case 4: {

		// Yasufari.
		// Strongpoitn 1.
		[[[[11705.6,2701.68,3.22681],249,"Auto",[]],[[11705,2704.12,3.26857],249,"Auto",[]],[[11705.2,2707.67,3.67671],249,"Auto",[]],[[11704.3,2710.46,3.73863],249,"Auto",[]],[[11703.5,2713.74,3.78695],249,"Auto",[]],[[11710.5,2715.31,3.9011],340,"Auto",[]],[[11712.1,2712.86,3.85716],163,"Auto",[]],[[11706.7,2713.92,1.15932],249,"Auto",[]],[[11712.4,2713.15,1.35225],171,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Main Objective / Artillery.
		[[[[11829.8,2726.69,8.49796],249,"Middle",[]],[[11829.9,2728.98,8.43649],249,"Middle",[]],[[11830.3,2728.27,4.64015],29,"Middle",[]],[[11844,2732.75,3.39605],249,"Middle",[]],[[11836.3,2727.31,6.01463],25,"Middle",[]],[[11830.8,2728.52,0.186609],249,"Middle",[]],[[11842.5,2728.41,0.0723782],249,"Middle",[]],[[11821.5,2724.81,3.39222],237,"Up",[]],[[11825.6,2724.84,3.44355],204,"Up",[]],[[11817.5,2732.27,2.98725],339,"Up",[]],[[11826.7,2731.23,3.15611],249,"Middle",[]],[[11844.7,2734.58,0],297,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[11856.7,2746.29,3.75017],260,"Up",[]],[[11856.9,2748.3,3.77076],233,"Up",[]],[[11852.1,2735.71,6.74215],297,"Up",[]],[[11859.5,2725.3,6.73186],176,"Up",[]],[[11850.9,2730.61,6.77896],193,"Up",[]],[[11860.3,2735.89,3.68272],87,"Up",[]],[[11860,2725.6,3.70509],166,"Up",[]],[[11856.7,2732.65,3.38497],281,"Up",[]],[[11855.2,2738.04,3.38957],4,"Up",[]],[[11853.2,2739.54,0.0846357],351,"Up",[]],[[11854,2726.33,0.143522],14,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[11834.3,2748.53,2.72957],251,"Up",[]],[[11833.8,2749.81,2.71652],289,"Up",[]],[[11838.9,2748.16,3.42765],224,"Up",[]],[[11840.2,2752.76,0],282,"Middle",[]],[[11853.4,2749.9,3.83669],207,"Up",[]],[[11852.1,2739.92,6.74254],297,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Artillery Last.
		[[[[11895.1,2674.74,0],80,"Middle",[]],[[11897.4,2687.44,3.11595],316,"Middle",[]],[[11897.8,2684.97,3.66915],236,"Middle",[]],[[11892.4,2700.76,0.819271],312,"Middle",[]],[[11891.9,2705.84,0.939445],312,"Middle",[]],[[11901.3,2706.76,0.968895],312,"Middle",[]],[[11905.3,2688.48,0.54743],323,"Up",[]],[[11895.8,2682.14,0],339,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[11901,2655.66,2.89275],312,"Middle",[]],[[11901.3,2649.86,3.25447],221,"Middle",[]],[[11897,2653.04,0.544353],63,"Middle",[]],[[11901.5,2651.7,0.437514],14,"Middle",[]],[[11921.4,2682.85,3.45207],262,"Middle",[]],[[11905.4,2665.94,0],276,"Middle",[]],[[11917.9,2681.17,0.623186],272,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrol.
		[[[[11989.5,2557.84,0],331,[]],[[11989.5,2556.55,0],331,[]],[[11991.2,2558.46,0],331,[]],[[11991,2557.08,0],331,[]]],[],[[[11810.5,2482.16,0],[[0,"Move"],[1,"SAFE"]]],[[11698.6,2588.4,0.727013],[[0,"Move"]]],[[11953,2663,0],[[0,"Move"]]],[[12003.9,2560.55,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[11686.4,2739.78,0],143,[]],[[11686.3,2741.06,0],143,[]],[[11684.9,2738.95,0],143,[]],[[11684.9,2740.34,0],143,[]]],[],[[[11854.3,2837.75,0],[[0,"Move"],[1,"SAFE"]]],[[11978.9,2746.7,0.727015],[[0,"Move"]]],[[11736.1,2640.15,0],[[0,"Move"]]],[[11672.5,2735.24,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[11970.4,2699.06,0],305,[]],[[11970.9,2697.87,0],305,[]],[[11971.7,2700.31,1.90735e-006],305,[]],[[11972.1,2698.99,0],305,[]]],[],[[[11823.5,2618.13,0],[[0,"Move"],[1,"SAFE"]]],[[11759.5,2672.82,0.727204],[[0,"Move"]]],[[11877.4,2737.68,0],[[0,"Move"]]],[[11982.3,2707.65,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 5: {

		// Defuse Objective.
		[[10112.6,1467.78,0],300] spawn OKS_Defuse_Explosive;

	};

	case 6: {

		// Defuse Objective.
		[[11739.4,2679.83,0],600] spawn OKS_Defuse_Explosive;
		[[11738.6,2690.14,0],600] spawn OKS_Defuse_Explosive;
		[[11740.5,2667.04,0],600] spawn OKS_Defuse_Explosive;

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
