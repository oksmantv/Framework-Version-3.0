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

		// Drones & Helicopters
		[
			getPos drone_1,
			getPos droneTarget_1,
			east,
			"rhs_pchela1t_vvs",
			["LOITER",true],		
			[1000,4], // Spotting Range, Value
			[100,500], // Loiter Altitude, Range
			["","","","","","",""],
			true
		] spawn OKS_fnc_AirScout;

		[
			getPos drone_2,
			getPos droneTarget_2,
			east,
			"rhs_pchela1t_vvs",
			["LOITER",true],		
			[1000,4],
			[100,500],
			["","","","","","",""],
			false
		] spawn OKS_fnc_AirScout;		

		[
			getPos drone_3,
			getPos droneTarget_3,
			east,
			"RHS_Mi8AMT_vdv",
			["LOITER",false],		
			[1250,4],
			[150,500],
			["","","","","","",""],
			true
		] spawn OKS_fnc_AirScout;	

		// Early Patrols.
		[[[[10600.4,1904.4,1.90735e-06],0,[]],[[10605.4,1899.4,1.90735e-06],0,[]],[[10595.4,1899.4,5.72205e-06],0,[]],[[10610.4,1894.4,1.90735e-06],0,[]],[[10590.4,1894.4,1.90735e-06],0,[]],[[10615.4,1889.4,1.90735e-06],0,[]],[[10585.4,1889.4,1.90735e-06],0,[]],[[10620.4,1884.4,1.90735e-06],0,[]]],[],[[[10544.1,2114.52,0],[[0,"Move"]]],[[10574.1,2294.66,-7.24792e-05],[[0,"Move"]]],[[10748.6,2782.83,1.14441e-05],[[0,"Move"]]],[[10589.1,2295.41,-1.14441e-05],[[0,"Move"]]],[[10551.8,2125.06,3.8147e-06],[[0,"Move"]]],[[10605.6,1911.92,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9397.38,3061.03,0],53,[]],[[9396.42,3054.02,0],53,[]],[[9390.37,3061.99,3.8147e-06],53,[]],[[9395.45,3047.02,1.90735e-06],53,[]],[[9383.37,3062.96,1.90735e-06],53,[]],[[9394.49,3040.01,0],53,[]],[[9376.36,3063.92,1.90735e-06],53,[]],[[9393.52,3033.01,1.90735e-06],53,[]]],[],[[[9530.81,3232.82,0],[[0,"Move"]]],[[9840.71,3336.75,0],[[0,"Move"]]],[[9992.39,3528.68,0],[[0,"Move"]]],[[9850.41,3325.18,0],[[0,"Move"]]],[[9543.85,3233.07,1.90735e-06],[[0,"Move"]]],[[9406.54,3061.39,3.8147e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		// Church AA - Heavy Weapons.
		[[[[10708.8,987.974,0],75,"Middle",[]],[[10705.4,987.671,0],330,"Middle",[]],[[10698.4,1013.68,7.75651],339,"Middle",[]],[[10694.5,1013.07,7.70217],323,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[10707.5,987.585,-7.82013e-05],345,[["gunner",-1,[0]]],[]],["UK3CB_ADM_O_SPG9",[10696.1,1013.54,7.73329],327,[["gunner",-1,[0]]],[]],["UK3CB_TKM_O_DSHKM",[10658.1,1031.92,0],285,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Airfield - AA - Heavy Weapons - BMP.
		[[[[9006.31,1359.62,0],171,"Middle",[]],[[9006.39,1363.04,0],66,"Middle",[]],[[8806.75,1444.96,0],176,"Middle",[]],[[8807.12,1448.35,0],71,"Middle",[]],[[8923.26,1226.11,0],132,"Middle",[]],[[8921.16,1228.8,0],27,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[9006.07,1360.96,-1.90735e-06],82,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[8806.61,1446.29,-1.90735e-06],87,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[8922.22,1227,0],42,[["gunner",-1,[0]]],[]],["rhs_bmp1_msv",[8930.91,1998.86,1],9,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[8888.35,2156.28,0.107763],27,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CW_SOV_O_LATE_BMD1",[8995,1032.6,5.72205e-06],22,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["maljutka_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"wood_2_unhide",1,"antena2_hide",1]]]],["UK3CB_CW_SOV_O_LATE_BMD1",[8839.13,1286.67,5.72205e-06],75,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["maljutka_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"wood_2_unhide",1,"antena2_hide",1]]]],["UK3CB_CW_SOV_O_LATE_BMD1",[8786.17,1463.84,5.72205e-06],39,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["maljutka_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"wood_2_unhide",1,"antena2_hide",1]]]],["UK3CB_CW_SOV_O_LATE_BMD1",[9053.7,1509,5.72205e-06],350,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["maljutka_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"wood_2_unhide",1,"antena2_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// BÃ¤ckhÃ¤sten - AA - Heavy Weapons - BMP.
		[[[[8246.82,2658.66,2.38419e-07],137,"Middle",[]],[[8244.94,2661.51,2.38419e-07],31,"Middle",[]],[[8220.05,2786.31,0],137,"Middle",[]],[[8218.17,2789.16,0],31,"Middle",[]]],[["rhs_bmp1_msv",[8226.07,2584.41,-2.38419e-07],16,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[8262.1,2563.24,1],286,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ADE_O_DSHKM",[8245.89,2659.68,-0.000277638],47,[["gunner",-1,[0]]],[]],["rhs_bmp1_msv",[8227.26,2767.21,0],16,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ADE_O_DSHKM",[8219.13,2787.38,-0.000222445],47,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Norra BÃ¶keberg - AA - Heavy Weapons - BMP.
		[[[[7262.07,2163.72,0],172,"Middle",[]],[[7262.22,2167.13,0],67,"Middle",[]],[[7254.58,2260.37,0],148,"Middle",[]],[[7253.31,2263.54,0],43,"Middle",[]]],[["rhs_bmp1_msv",[7231.46,2130.65,0],100,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ADE_O_DSHKM",[7261.95,2165.11,0],83,[["gunner",-1,[0]]],[]],["rhs_bmp1_msv",[7261.29,2244.08,0],89,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ADE_O_DSHKM",[7253.89,2261.59,0],59,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["rhs_bmp1_msv",[7284.56,2152.97,1],107,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		
		// Headquarters Trench - AA - Heavy Weapons - BMP.
		[[[[5929.37,1737.4,0],148,"Middle",[]],[[5928.11,1740.57,0],43,"Middle",[]],[[6128.59,1840.67,0],209,"Middle",[]],[[6130.75,1843.31,0],104,"Middle",[]],[[6032.88,1846.83,0],209,"Middle",[]],[[6035.04,1849.47,0],104,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[5928.69,1738.62,0],59,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[6129.33,1841.86,0],120,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[6033.61,1848,0],120,[["gunner",-1,[0]]],[]],["rhs_bmp1_msv",[6081.32,1823.69,0],103,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[6000.19,1867.68,1],103,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Headquarters - AA - Heavy Weapons - BMP.
		[[[[4980.73,758.573,0],148,"Middle",[]],[[4979.46,761.744,0],43,"Middle",[]],[[4984.58,808.493,0],148,"Middle",[]],[[4983.31,811.665,0],43,"Middle",[]]],[["rhs_bmp1_msv",[5078.3,644.584,0],51,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ADE_O_DSHKM",[4980.04,759.791,0],59,[["gunner",-1,[0]]],[]],["UK3CB_ADE_O_DSHKM",[4983.89,809.711,0],59,[["gunner",-1,[0]]],[]],["rhs_bmp1_msv",[4990.22,835.037,0],79,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[4922.56,766.179,1],327,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4999.11,704.306,0],148,"Middle",[]],[[4997.84,707.477,0],43,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[4998.41,705.438,0],59,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		
		// Anti-Air and Objectives
		{
			[_X,east,false,2500,true] spawn OKS_fnc_Ambient_AAA;
			[_X,"Neutralize AAA","ZU-23 truck","You need to destroy this %1 to open up the airspace for our support assets.","danger","Task_aac",true,false] spawn OKS_fnc_Destroy_Task;
			sleep 5;
		} foreach [aaa_1,aaa_2,aaa_3,aaa_4,aaa_5];

		[Radar_1,["rhs_gaz66_zu23_msv","UK3CB_ADE_O_DSHKM"]] spawn OKS_fnc_Radar;
		[Radar_1,"Destroy Radar","PRV-13 Radar","You need to destroy this %1 to open up the airspace for our support assets by disrupting their AAA guidance.","destroy","Task_aac",true,false] spawn OKS_fnc_Destroy_Task;

		[Group officer_1,[10859.3,3599.13,0],west,false,"Task_3",false] spawn OKS_fnc_Evacuate_HVT;
	};

	case 2: {
		// Ambush Site 1
		{
			[getPos _X,"rush",4,east,1500,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [ambush_1_1,ambush_1_2,ambush_1_3,ambush_1_4,ambush_1_5];

		[[],[["rhs_bmp1_msv",[10407.1,1025.3,1.71661e-05],20,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["rhs_bmp1_msv",[8944.73,2076.74,1.8147e-06],13,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[[[9377.32,2445.74,0],[[0,"Move"],[1,"SAFE"],[5,"LIMITED"]]],[[9610.28,2580.02,4.86374e-05],[[0,"Move"]]],[[9778,2500.85,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {
		// Airfield Trench.
		[[[[8917.14,1954.04,0],0,[]],[[8920.14,1951.04,0],0,[]],[[8922.14,1951.04,0],0,[]],[[8924.14,1951.04,0],0,[]]],[],[[[8987.68,2035.02,0],[[0,"Move"],[1,"SAFE"]]],[[9076.63,2056.74,-1.33514e-05],[[0,"Move"]]],[[9096.89,2000.27,-2.86102e-06],[[0,"Move"]]],[[9000.73,1961.41,-1.90735e-06],[[0,"Move"]]],[[8930.46,1956.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8796.83,2168.05,9.53674e-07],308,[]],[[8801.05,2168.56,9.53674e-07],308,[]],[[8802.28,2170.13,0],308,[]],[[8803.51,2171.7,0],308,[]]],[],[[[8776.66,2273.53,0],[[0,"Move"],[1,"SAFE"]]],[[8819.28,2317.44,0],[[0,"Move"]]],[[8922.88,2315.34,0],[[0,"Move"]]],[[8862.15,2247.76,0],[[0,"Move"]]],[[8803.35,2179.87,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8916.49,2046.46,0],70,"Up",[]],[[8906.33,2061.62,0.871344],70,"Up",[]],[[8893.71,2080.73,0.838213],70,"Up",[]],[[8897.33,2101.63,0.390083],70,"Up",[]],[[8917.25,2116,0.223638],72,"Up",[]],[[8923.85,2125.84,0],52,"Up",[]],[[8923.76,2143.44,0.0867252],70,"Up",[]],[[8919.35,2152.67,-9.53674e-07],149,"Middle",[]],[[8908.89,2163.71,-1.90735e-06],57,"Up",[]],[[8903.32,2176.37,0],70,"Up",[]],[[8908.37,2189.66,0],196,"Middle",[]],[[8907.73,2200.13,0],30,"Up",[]],[[8898.96,2209.9,-1.90735e-06],73,"Up",[]],[[8893.59,2215.54,0],137,"Middle",[]],[[8888.43,2220.95,0],43,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// BÃ¤ckhÃ¤sten Trench.
		[[[[8316.65,2498.37,1.19209e-06],308,[]],[[8320.86,2498.88,1.90735e-06],308,[]],[[8322.09,2500.45,0],308,[]],[[8323.33,2502.03,9.53674e-07],308,[]]],[],[[[8296.48,2603.86,0],[[0,"Move"],[1,"SAFE"]]],[[8339.09,2647.77,2.02656e-06],[[0,"Move"]]],[[8442.69,2645.67,0],[[0,"Move"]]],[[8381.96,2578.09,0],[[0,"Move"]]],[[8323.17,2510.19,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8148.29,2979.16,9.53674e-07],11,[]],[[8150.64,2975.63,1.90735e-06],11,[]],[[8152.6,2975.23,9.53674e-07],11,[]],[[8154.56,2974.84,1.90735e-06],11,[]]],[],[[[8233.35,3044.72,0],[[0,"Move"],[1,"SAFE"]]],[[8291.76,3026.48,2.86102e-06],[[0,"Move"]]],[[8336.6,2933.06,0],[[0,"Move"]]],[[8248.89,2956.8,4.76837e-07],[[0,"Move"]]],[[8161.78,2978.67,9.53674e-07],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8234.32,2543.94,7.05569],353,"Middle",[]],[[8236.85,2543.18,6.9838],353,"Middle",[]],[[8242.68,2523.64,14.0581],353,"Middle",[]],[[8257.96,2581.91,10.1228],353,"Middle",[]],[[8245.76,2668.36,-2.5034e-06],70,"Up",[]],[[8235.6,2683.53,-2.5034e-06],70,"Up",[]],[[8222.98,2702.63,-2.5034e-06],70,"Up",[]],[[8226.6,2723.54,-2.5034e-06],70,"Up",[]],[[8246.52,2737.91,-2.5034e-06],72,"Up",[]],[[8253.12,2747.75,-2.5034e-06],52,"Up",[]],[[8253.03,2765.34,-2.5034e-06],70,"Up",[]],[[8248.62,2774.58,-2.38419e-06],149,"Middle",[]],[[8238.16,2785.62,0.00200415],57,"Up",[]],[[8232.59,2798.27,-2.5034e-06],70,"Up",[]],[[8237.64,2811.56,0.000235796],196,"Middle",[]],[[8237,2822.03,-2.6226e-06],30,"Up",[]],[[8228.23,2831.81,-2.6226e-06],73,"Up",[]],[[8219.33,2841.01,-3.8147e-06],137,"Middle",[]],[[8213.96,2852.71,-2.86102e-06],43,"Up",[]],[[8213.92,2870.43,-2.38419e-06],13,"Up",[]],[[8214.1,2886.4,-2.86102e-06],36,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 4: {
		// Church Strongpoint.
		[[[[10674.7,993.037,0],0,[]],[[10679.7,988.037,0],0,[]],[[10669.7,988.037,0],0,[]],[[10684.7,983.037,0],0,[]]],[],[[[10612.4,993.171,0],[[0,"Move"],[1,"SAFE"]]],[[10522.1,970.259,-7.72476e-05],[[0,"Move"]]],[[10455,948.36,1.52588e-05],[[0,"Move"]]],[[10427.8,958.121,0.000356674],[[0,"Move"]]],[[10460.2,947.355,-8.7738e-05],[[0,"Move"]]],[[10521.3,962.578,1.52588e-05],[[0,"Move"]]],[[10597.2,981.561,-6.67572e-06],[[0,"Move"]]],[[10658.5,982.549,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10392.9,863.649,0],0,[]],[[10397.9,858.649,0],0,[]],[[10387.9,858.649,0],0,[]],[[10402.9,853.649,0],0,[]]],[],[[[10335,887.126,0],[[0,"Move"],[1,"SAFE"]]],[[10280.4,926.107,0],[[0,"Move"]]],[[10250.9,977.08,0],[[0,"Move"]]],[[10327.5,978.676,0],[[0,"Move"]]],[[10374.3,946.251,0],[[0,"Move"]]],[[10433.3,902.625,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10667.1,1043.26,0],339,"Up",[]],[[10665.2,1043.88,0],339,"Up",[]],[[10664.1,1042.52,0],339,"Up",[]],[[10657.5,1033.05,0],276,"Up",[]],[[10656.9,1030.78,0],276,"Up",[]],[[10659,1026.26,0],276,"Up",[]],[[10657.5,1028.94,0],276,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {
		// Airfield.
		// Patrols Airfield
		[[[[8851.51,1062.31,0],0,[]],[[8856.51,1057.31,0],0,[]],[[8846.51,1057.31,0],0,[]],[[8861.51,1052.31,0],0,[]]],[],[[[8779.79,1204.84,0],[[0,"Move"],[1,"SAFE"]]],[[8699.23,1163.19,0],[[0,"Move"]]],[[8803.56,1040.3,5.72205e-06],[[0,"Move"]]],[[8840.29,1055.29,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8709.6,1234.15,0],49,[]],[[8709.05,1227.1,0],49,[]],[[8702.55,1234.7,0],49,[]],[[8708.51,1220.05,0],49,[]]],[],[[[8750.85,1330.13,0],[[0,"Move"],[1,"SAFE"]]],[[8563.53,1375.08,0],[[0,"Move"]]],[[8633.59,1260.1,4.76837e-06],[[0,"Move"]]],[[8702.89,1220.18,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8730.25,1660.8,0],208,[]],[[8728.22,1667.57,0],208,[]],[[8737.02,1662.83,0],208,[]],[[8726.19,1674.35,0],208,[]]],[],[[[8602.41,1512.2,0],[[0,"Move"],[1,"SAFE"]]],[[8763.54,1499.03,0],[[0,"Move"]]],[[8759.64,1606.06,0],[[0,"Move"]]],[[8743.46,1661.66,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9018.12,1598.48,0],0,[]],[[9023.12,1593.48,0],0,[]],[[9013.12,1593.48,0],0,[]],[[9028.12,1588.48,0],0,[]]],[],[[[8995.78,1677.76,0],[[0,"Move"],[1,"SAFE"]]],[[8858.99,1622.84,0],[[0,"Move"]]],[[8902.99,1558.93,0],[[0,"Move"]]],[[9006.89,1591.45,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8898.29,1458.37,0],203,[]],[[8895.65,1464.93,0],203,[]],[[8904.85,1461.01,0],203,[]],[[8893,1471.48,0],203,[]]],[],[[[8898.05,1304.83,0],[[0,"Move"],[1,"SAFE"]]],[[9030.34,1321.78,0],[[0,"Move"]]],[[8951.03,1459.85,5.72205e-06],[[0,"Move"]]],[[8911.37,1460.44,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8981.44,1097.98,0],70,[]],[[8978.42,1091.59,0],70,[]],[[8975.05,1101.01,0],70,[]],[[8975.4,1085.2,0],70,[]]],[],[[[9038.37,1222.36,9.53674e-07],[[0,"Move"],[1,"SAFE"]]],[[8941.58,1288.53,0.253291],[[0,"Move"]]],[[8892.79,1183.19,5.72205e-06],[[0,"Move"]]],[[8971.05,1106.18,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9106.76,1179.5,0],21,[]],[[9109.58,1173.01,0],21,[]],[[9100.27,1176.67,9.53674e-07],21,[]],[[9112.4,1166.53,0],21,[]]],[],[[[9117.77,1396.31,0],[[0,"Move"],[1,"SAFE"]]],[[9093.45,1545.18,0],[[0,"Move"]]],[[9133.81,1386.75,0],[[0,"Move"]]],[[9093.74,1177.06,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9041.75,956.324,1.90735e-06],59,[]],[[9039.99,949.477,3.8147e-06],59,[]],[[9034.91,958.089,1.90735e-06],59,[]],[[9038.22,942.63,0],59,[]]],[],[[[9128.05,1090.52,1.90735e-06],[[0,"Move"],[1,"SAFE"]]],[[9051.24,1138.74,1.90735e-06],[[0,"Move"]]],[[8998.42,986.428,1.90735e-06],[[0,"Move"]]],[[9030,962.42,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		// Sentries Airfield.
		[[[[8964.03,1175.51,0],243,"Up",[]],[[8963.31,1150.32,0],243,"Up",[]],[[8959.24,1137.14,0],289,"Up",[]],[[8941.37,1239.84,0],154,"Up",[]],[[8954.83,1263.09,0],32,"Up",[]],[[8944.04,1272.79,0],338,"Up",[]],[[8839.35,1308.9,9.12177],81,"Up",[]],[[8837.29,1302.3,12.9822],81,"Up",[]],[[8819.25,1253.6,8.91692],81,"Up",[]],[[8818.09,1264.39,4.90134],81,"Up",[]],[[8857.96,1188.08,0],55,"Middle",[]],[[8817.76,1238.28,0],38,"Middle",[]],[[9058.58,1296.12,6.30569],10,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8807.7,1377.36,0],358,"Up",[]],[[8790.9,1375.56,0],1,"Up",[]],[[8781.61,1381.41,0.0741377],347,"Up",[]],[[8772.7,1446.83,0.244384],144,"Up",[]],[[8813.13,1415.37,0],243,"Up",[]],[[8818.49,1358.22,4.76162],353,"Up",[]],[[8827.74,1348.25,9.04373],81,"Up",[]],[[8827.13,1330.52,4.23681],108,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8961.36,1408.71,0.0091114],243,"Up",[]],[[8949.31,1413.14,0.185411],5,"Up",[]],[[8924.17,1411.65,0],243,"Up",[]],[[8917.61,1399.95,0],155,"Up",[]],[[9007.64,1399.55,6.30792],19,"Middle",[]],[[9004.28,1399.1,6.2823],19,"Middle",[]],[[9018.01,1472.24,6.30907],93,"Middle",[]],[[9012.77,1484.99,6.29752],331,"Middle",[]],[[8980.6,1551.44,-9.53674e-07],66,"Middle",[]],[[8981.5,1538.15,0],66,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};


	case 6: {
		// Norra BÃ¶keberg Trench
		[[[[7266.23,1887.75,0],308,[]],[[7270.44,1888.25,0],308,[]],[[7271.68,1889.83,0],308,[]],[[7272.91,1891.4,0],308,[]]],[],[[[7246.06,1993.23,0],[[0,"Move"],[1,"SAFE"]]],[[7293.67,2064.04,0],[[0,"Move"]]],[[7506.87,2062.88,0],[[0,"Move"]]],[[7509.77,1976.56,0],[[0,"Move"]]],[[7272.75,1899.57,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7175.92,2260.2,9.53674e-07],308,[]],[[7180.13,2260.71,9.53674e-07],308,[]],[[7181.37,2262.28,0],308,[]],[[7182.6,2263.85,9.53674e-07],308,[]]],[],[[[7155.75,2365.69,0],[[0,"Move"],[1,"SAFE"]]],[[7198.37,2409.59,1.66893e-06],[[0,"Move"]]],[[7301.97,2407.5,0],[[0,"Move"]]],[[7241.24,2339.91,0],[[0,"Move"]]],[[7182.44,2272.02,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7309.21,2126.85,1.27355],119,"Middle",[]],[[7317.67,2161.21,1.24464],119,"Middle",[]],[[7314.58,2168.65,0],89,"Up",[]],[[7314.21,2154.04,-1.90735e-06],189,"Middle",[]],[[7311.94,2137.35,-3.62396e-05],134,"Up",[]],[[7298.43,2121.91,1.33514e-05],235,"Middle",[]],[[7280.87,2114.56,-1.04904e-05],259,"Middle",[]],[[7265.84,2113.83,8.01086e-05],210,"Up",[]],[[7271.76,2114.28,4.673e-05],156,"Up",[]],[[7314.35,2142.02,1.23645],109,"Middle",[]],[[7314.52,2144.18,1.20857],109,"Middle",[]],[[7298.08,2119.08,1.32545],109,"Middle",[]],[[7296.27,2117.42,1.32289],109,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7314,2212.15,1.42893],83,"Middle",[]],[[7280.08,2274.71,0.82369],83,"Middle",[]],[[7282.56,2265.55,0.040247],156,"Middle",[]],[[7292.89,2246.57,9.53674e-07],89,"Up",[]],[[7308.9,2220.82,-0.0312281],156,"Middle",[]],[[7309.46,2201.18,4.29153e-05],112,"Up",[]],[[7307.39,2185.84,6.67572e-06],151,"Middle",[]],[[7309.11,2224.97,1.38561],109,"Middle",[]],[[7310.03,2223.26,1.41721],109,"Middle",[]],[[7309.25,2189.21,1.35432],109,"Middle",[]],[[7309.34,2191.09,1.22658],109,"Middle",[]],[[7282.86,2268.71,1.3021],109,"Middle",[]],[[7283.85,2266.3,1.34975],109,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 7: {
		// Ambush Site 2.
		{
			[getPos _X,"rush",3,east,1500,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [ambush_2_1,ambush_2_2,ambush_2_3,ambush_2_4,ambush_2_5,ambush_2_6];
		[[],[["rhs_btr80a_msv",[5918.87,2672.31,0],108,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[[[6974.49,2452.66,0],[[0,"Move"],[1,"SAFE"]]],[[7444.53,2468.34,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 8: {
		// Headquarters Trench.
		[[[[6046.36,1486.05,0.521316],308,[]],[[6050.57,1486.56,0.521315],308,[]],[[6051.8,1488.13,0.521317],308,[]],[[6053.04,1489.7,0.521317],308,[]]],[],[[[6026.19,1591.53,0.521317],[[0,"Move"],[1,"SAFE"]]],[[6073.8,1662.34,0.521316],[[0,"Move"]]],[[6287,1661.18,0.521317],[[0,"Move"]]],[[6289.89,1574.86,0.521317],[[0,"Move"]]],[[6052.87,1497.87,0.521315],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5937.36,1869.76,0],308,[]],[[5941.57,1870.26,0],308,[]],[[5942.8,1871.84,0],308,[]],[[5944.04,1873.41,0],308,[]]],[],[[[5917.19,1975.24,0],[[0,"Move"],[1,"SAFE"]]],[[5964.8,2046.05,0],[[0,"Move"]]],[[6111.06,2093.69,4.76837e-07],[[0,"Move"]]],[[6135.36,1990.58,0],[[0,"Move"]]],[[5943.87,1881.58,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[6143.82,1816.78,1.90735e-06],135,"Up",[]],[[6143.94,1822.47,0],135,"Up",[]],[[6143.65,1783.41,3.8147e-06],135,"Up",[]],[[6143.53,1771.76,2.86102e-06],135,"Up",[]],[[6138.26,1749.22,1.90735e-06],135,"Up",[]],[[6123.88,1738.52,3.8147e-06],1,"Up",[]],[[6118.68,1716.47,1.90735e-06],108,"Up",[]],[[6144.53,1842.15,1.90735e-06],182,"Up",[]],[[6160.72,1854.08,1.90735e-06],121,"Up",[]],[[6168.62,1862.05,1.90735e-06],47,"Up",[]],[[6169.45,1878.69,1.90735e-06],85,"Up",[]],[[6169.64,1890.79,1.90735e-06],82,"Up",[]]],[["rhs_bmp1_msv",[6102.19,1706.45,0],70,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[6048.41,1751.32,1.90735e-06],119,"Up",[]],[[6042.06,1764.63,1.90735e-06],119,"Up",[]],[[6028,1795.69,1.90735e-06],119,"Up",[]],[[6039.02,1806.4,2.86102e-06],119,"Up",[]],[[6048.07,1815.22,1.90735e-06],201,"Middle",[]],[[6049.57,1829.44,2.86102e-06],119,"Up",[]],[[6049.96,1842.71,2.86102e-06],119,"Up",[]],[[6021.75,1873.8,1.90735e-06],119,"Up",[]],[[6022.08,1886.29,-0.00842953],119,"Up",[]],[[6037.49,1906.76,1.90735e-06],119,"Up",[]],[[6048.39,1912.36,1.90735e-06],119,"Up",[]],[[6090.29,1939.92,2.86102e-06],119,"Up",[]],[[6075.05,1929.75,9.53674e-07],119,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 9: {
		// Ambush Site 3.
		{
			[getPos _X,"rush",4,east,1500,[]] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [ambush_3_1,ambush_3_2,ambush_3_3,ambush_3_4,ambush_3_5];
		[[],[["rhs_btr80a_msv",[5040.58,847.425,3.33786e-05],79,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[[[5438.55,851.854,0],[[0,"Move"],[1,"SAFE"]]],[[6088.97,919.493,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;	};

	case 10: {
		// Headquarters
		[[[[5075.6,488.171,0],0,[]],[[5080.6,483.171,0],0,[]],[[5070.6,483.171,0],0,[]],[[5085.6,478.171,0],0,[]]],[],[[[5046.09,639.59,0],[[0,"Move"],[1,"SAFE"]]],[[4958.79,711.448,3.8147e-06],[[0,"Move"]]],[[4954.05,592.99,0],[[0,"Move"]]],[[5065.48,479.137,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4961.01,535.312,0],0,[]],[[4966.01,530.312,0],0,[]],[[4956.01,530.312,0],0,[]],[[4971.01,525.312,-1.90735e-06],0,[]]],[],[[[4931.5,686.731,0],[[0,"Move"],[1,"SAFE"]]],[[4794.29,747.204,0],[[0,"Move"]]],[[4785.8,620.405,-0.000133514],[[0,"Move"]]],[[4954.8,513.694,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4766.41,787.091,3.61625],79,[]],[[4762.46,781.231,4.0911],79,[]],[[4760.55,791.048,3.24082],79,[]],[[4758.5,775.371,1.71661e-05],79,[]]],[],[[[4909.46,844.862,2.09808e-05],[[0,"Move"],[1,"SAFE"]]],[[4892.05,915.584,0],[[0,"Move"]]],[[4799.36,910.631,1.90735e-06],[[0,"Move"]]],[[4744.01,789.076,2.09808e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5071.15,990.07,0],230,[]],[[5071.81,997.111,0],230,[]],[[5078.19,989.417,4.76837e-07],230,[]],[[5072.46,1004.15,4.76837e-07],230,[]]],[],[[[4925.98,904.86,0],[[0,"Move"],[1,"SAFE"]]],[[4954.48,788.844,0],[[0,"Move"]]],[[5092.26,876.49,0],[[0,"Move"]]],[[5091.75,999.099,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[4990.8,722.749,0.513027],175,"Up",[]],[[4978.82,731.539,0.515615],175,"Up",[]],[[4964.59,733.404,0.44076],308,"Up",[]],[[5028.42,724.773,0.828253],30,"Up",[]],[[5026.06,732.542,0.880661],201,"Up",[]],[[5017.98,727.201,0.771219],185,"Up",[]],[[4939.41,762.365,0.512995],175,"Up",[]],[[4937.59,772.326,0.514614],351,"Up",[]],[[4926.49,778.223,0.516542],72,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4978.86,817.47,0],102,"Up",[]],[[4968.66,812.879,0],167,"Up",[]],[[4961.6,816.007,0.138597],345,"Up",[]],[[4931.8,808.322,0],74,"Up",[]],[[4942.66,806.349,0.0585423],145,"Up",[]],[[4944.29,810.48,0.0620537],219,"Up",[]],[[4950.55,808.333,0.111275],249,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4992.64,799.767,0],326,"Up",[]],[[4997.51,801.617,0.0208321],74,"Up",[]],[[4997.87,798.222,3.2497],130,"Up",[]],[[4994.09,795.328,3.24911],251,"Up",[]],[[5000.15,805.203,1.33514e-05],309,"Up",[]],[[5004.3,823.37,5.72205e-06],61,"Up",[]],[[5008.3,810.597,2.28882e-05],64,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5031.26,713.385,8.10954],75,"Middle",[]],[[5011.42,772.887,0.900644],30,"Up",[]],[[5009.07,780.656,0.949598],201,"Up",[]],[[5000.99,775.315,0.771709],185,"Up",[]],[[5005.95,782.702,6.2308],74,"Up",[]],[[5001.67,780.566,3.1603],74,"Middle",[]],[[5000.09,790.332,0.0195904],234,"Up",[]],[[5000.34,794.115,0.046772],202,"Up",[]],[[4993.86,794.74,0],176,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	}:

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*
	GOL SCRIPT EXAMPLES

	=======================================

	Creates a defuse explosive objective with 600 (10 minutes) seconds to complete on the "SatchelCharge" object with the name bomb_1.
	This can be replaced with a position to create an explosive on the position using getPos bomb_1.

	Code:
	[bomb_1,600] spawn OKS_fnc_Defuse_Explosive;

	Params:
	[bomb_1,600,bombtarget_1,"BombDetonated","BombDefused"] spawn OKS_fnc_Defuse_Explosive;
	Bomb Object or Position, Time Delay (Seconds), Target Object (Destroyed upon detonation), VariableName to set to true if failed, VariableName to set to true if succeeded.

	=======================================

	Sets up a generator to be disabled by action to turn off light sources in the area around it. 

	Code:
	[Generator_1,true,true,1000] spawn OKS_fnc_PowerGenerator;

	Params:
	Generator Object, Should Add Action to disable, Turn Off Lights when disabled, Range of disabled lights from Generator

    =======================================

	Setup a scripted AAA that fires randomly into the air until it finds a target and locks on. It has less accuracy than standard AAA positions for balance.

	Code:
	[aaa_1,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;

	Params:
	AAA Object, side of crew, Is an HMG, Range of AAA, Should be assisted by nearby radar

    =======================================

	Setup an artillery to fire into the sky until destroyed. Take note that it is supposed to delete the rounds from landing to save performance.
	This might fail, so make sure the target is not near friendly positions or bases.

	Code:
	[east,arty_1,getpos ArtyTarget_1,7,300,180,false] spawn OKS_fnc_ArtyFire;

	Params:
	Side of Crew, Artillery Object, Artillery Target, Rounds per Salvo, Rearm Delay, Reload Delay, Should give full crew.

    =======================================

	Setup an active artillery barrage on specified targets until destroyed.

	Code:
	[livearty_1,[getPos ArtySuppress_1,getPos ArtySuppress_2,getPos ArtySuppress_3],east,1,1,true,true,300,true] spawn OKS_fnc_ArtySuppression;

	Params:
	Artillery Object, Array with Target positions, Side of Crew, Rounds per target, Delay per target, Unlimited Ammo, Should Loop until Destroyed, Delay per Salvo, Mark with Red Smoke on Target.

	=======================================

	Setup a destroy/kill objective on a target.

	Code:
	[officer_1,"Kill the Officer","Enemy Officer","You need to kill this %1 because it needs to happen","kill",nil,true,true] spawn OKS_fnc_Destroy_Task;

	Params:
	Target Object, Task Title, Target Type, Task Description, Task Icon, Task Parent, Should Mark Position on Map, Should Show Popup when created/completed

	=======================================

	Setup a HVT Capture Objective. The last variable sets true/false if they target should be set to captive (tied hands). False for enemy officers, true for friendly captives.

	Code:
	[Group HVT_1,getMarkerPos "respawn_west",west,false,nil,true] spawn OKS_fnc_Evacuate_HVT;

	Params:
	Group of HVT, Exfil Position (Either pickup (Extract On) or dropoff (Extract off)), Side of Extract Helicopter, Should Send AI Helicopter Evac, Parent Task, Is Captive

	=======================================

	Setup Barricade Objective. Objective to destroy objects lined up as a blockade on a road. Make sure the object is destructible by testing it.

	Code:
	[[barricade_1,barricade_2]] spawn OKS_fnc_Destroy_Barricade;

	Params:
	Array with Barricade Objects

	=======================================

	Spawn a convoy that moves until engaged, they will dismount, armed vehicles will hunt and dismounts will rush.

	Code:
	[spawn_1,waypoint_1,end_1,west,[4,["rhs_btr60_msv"], 6, 25],[true,6],[], false, false] spawn OKS_fnc_Convoy_Spawn;

	Params:
	Spawn Position, First Waypoint, End Waypoint (Scattered formation), Side of Convoy, Convoy Array [](Number, [TypeArray]), Speed meters/second, dispersion]
	Dismount Array (Should have dismount, how many), ConvoyArray to populate variable, forced careless (ignore everything), delete on arrival.

	=======================================

	Spawns a team that either creep/rush/hunt based on LAMBS. Used for quick and intense counter-attacks by enemy infantry.

	Code:
	[SpawnPos,"rush",UnitsPerBase,Side,Range,[]] spawn OKS_fnc_Lambs_SpawnGroup;

	Params:
	Position, Type of Waypoint (rush,creep,hunt), Units to spawn, Side of units, Range of waypoint (around the spawn), unit array that gets populated with the units.

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

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn OKS_fnc_Huntbase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Huntbase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn OKS_fnc_Huntbase;
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
		   6 - gunner Split - [How many teams,Procent of gunner] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_OKS_fnc_AirDrop isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};

