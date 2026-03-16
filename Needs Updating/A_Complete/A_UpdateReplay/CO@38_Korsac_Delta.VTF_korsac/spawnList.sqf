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

private _Vehicles = [
	"rhs_btr80_msv", 
	"rhs_tigr_msv", 
	"rhs_tigr_m_msv", 
	"rhs_uaz_open_MSV_01", 
	"RHS_UAZ_MSV_01", 
	"rhs_gaz66_msv", 
	"rhs_kamaz5350_msv", 
	"RHS_Ural_MSV_01", 
	"UK3CB_CW_SOV_O_LATE_BRDM2", 
	"UK3CB_CW_SOV_O_LATE_UAZ_MG", 
	"UK3CB_CW_SOV_O_LATE_MAZ_543_Transport_Closed"
];

switch (_case) do {

	case 1: {
		[Group HVT_1,getPos HVT_1,west,false,nil] remoteExec ["OKS_Evacuate_HVT",0]; sleep 5;

		// Hostage Room
		[[[[2431.09,2103.12,4.42505],345,"Up",[]],[[2435.29,2101.9,4.42505],277,"Up",[]],[[2432.24,2100.83,4.42505],153,"Middle",[]],[[2428.22,2100.65,4.42505],116,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Airport Stronghold
		[[
			[[2443.94,2095.56,4.42505],224,"Up",[]],
			//[[2434.44,2077.87,8.625],184,"Up",[]],
			[[2441.5,2079.81,3.42505],200,"Up",[]],
			[[2444.42,2078.65,3.42499],174,"Up",[]],
			//[[2449.33,2086.02,0.225037],317,"Up",[]],
			[[2453.29,2092.35,0.225037],304,"Middle",[]],
			[[2437.75,2084.57,0.225037],283,"Up",[]],
			//[[2446.57,2084.23,0.225037],283,"Up",[]],
			[[2443.67,2077.83,0.225037],327,"Up",[]]
		],[["UK3CB_O_Static_PKM_Low",[2430.59,2079.77,8.625],213,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		[[
			[[2435.66,2098.19,4.42505],147,"Up",[]],
			//[[2437.31,2100.26,4.42505],120,"Middle",[]],
			//[[2428.23,2105.77,4.42505],224,"Up",[]],
			[[2425.17,2109.57,4.42505],224,"Up",[]],
			[[2416.72,2089.02,8.625],178,"Up",[]],
			//[[2426.9,2082.79,8.625],232,"Up",[]],
			[[2423.84,2084.77,3.42505],211,"Up",[]],
			[[2420.24,2087.28,3.42505],211,"Up",[]],
			//[[2424.88,2091.59,0.225037],358,"Up",[]],
			[[2431.5,2101.94,0.225037],206,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[2419.1,2102.1,4.42505],165,"Up",[]],
			//[[2418.87,2110.92,4.42505],127,"Up",[]],
			[[2404.9,2102.86,3.42505],222,"Up",[]],
			//[[2406.54,2101.44,3.42505],210,"Up",[]],
			[[2411.02,2092.25,8.625],222,"Up",[]],
			[[2409.71,2094.52,8.625],250,"Up",[]],
			//[[2407.12,2104.25,0.225037],195,"Up",[]],
			[[2411.05,2111.69,0.225037],169,"Up",[]],
			//[[2414.62,2109.58,0.225037],215,"Up",[]],
			[[2412.13,2114.64,0.225037],94,"Up",[]]
		],[["UK3CB_O_Static_PKM_Low",[2414.27,2090.37,8.625],213,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Hangar Guards.
		[[
			//[[2585.93,2033.62,0.0999756],189,"Middle",[]],
			[[2612.64,2031.82,3.24194],237,"Middle",[]],
			//[[2593.27,2068.29,0.231873],273,"Up",[]],
			[[2598.19,2086.7,0.231873],233,"Up",[]],
			[[2600.74,2074.74,3.76251],281,"Middle",[]],
			//[[2590.21,2052.04,5.7948],308,"Middle",[]],
			[[2575.69,1996.48,0.100952],23,"Middle",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			//[[2529.52,1984.85,0],220,"Middle",[]],
			[[2531.32,2002.02,0],220,"Middle",[]],
			//[[2470.95,2026.35,0],220,"Middle",[]],
			[[2444.09,2048.46,9.22217],200,"Up",[]],
			//[[2447.59,2050.09,9.22198],126,"Up",[]],
			[[2442.67,2051.14,12.9193],249,"Up",[]],
			//[[2445.05,2049.26,12.9193],193,"Up",[]],
			[[2448.43,2059.54,12.2178],303,"Up",[]],
			[[2450.89,2058.29,12.2178],160,"Up",[]],
			//[[2464.28,2069.63,0.277527],127,"Middle",[]],
			[[2493.21,2085.3,3.88751],138,"Up",[]]
			//[[2508.77,2101.26,3.87183],99,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[
			[[2566.58,2024.78,0],0,[]],
			[[2571.58,2019.78,0],0,[]],
			//[[2561.58,2019.78,0],0,[]],
			[[2576.58,2014.78,0.0999756],0,[]]
		],[],[[[2527.93,2066.02,0],[[0,"Move"],[1,"SAFE"]]],[[2456.8,2052.69,0],[[0,"Move"]]],[[2557.23,1956.97,0],[[0,"Move"]]],[[2570.27,2003.28,0],[[0,"Move"]]],[[2567.37,2021.18,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[2606.58,2104.71,0],0,[]],[[2611.58,2099.71,0],0,[]],[[2601.58,2099.71,0],0,[]],[[2616.58,2094.71,0],0,[]]],[],[[[2529.2,2101.82,0],[[0,"Move"],[1,"SAFE"]]],[[2474.81,2016.77,0],[[0,"Move"]]],[[2547.68,1970.67,0],[[0,"Move"]]],[[2580.83,2077.54,0],[[0,"Move"]]],[[2610.04,2106.05,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[
			[[2391.24,2161.59,0],0,[]],
			[[2396.24,2156.59,0],0,[]],
			//[[2386.24,2156.59,0],0,[]],
			[[2401.24,2151.59,0],0,[]]
		],[],[[[2346.96,2197.67,0.503052],[[0,"Move"],[1,"SAFE"]]],[[2294.36,2134.64,0],[[0,"Move"]]],[[2434.11,2057.78,0],[[0,"Move"]]],[[2399.98,2110.59,0],[[0,"Move"]]],[[2394.7,2162.93,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[2751.69,1832.05,0],0,[]],[[2756.69,1827.05,0],0,[]],[[2746.69,1827.05,0],0,[]],[[2761.69,1822.05,0],0,[]]],[],[[[2704.61,1862.49,0],[[0,"Move"],[1,"SAFE"]]],[[2630.88,1750.13,0],[[0,"Move"]]],[[2690.22,1716.03,0],[[0,"Move"]]],[[2737.62,1792.08,0],[[0,"Move"]]],[[2755.15,1833.39,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[
			[[2639.62,1837.27,0],72,[]],
			[[2636.36,1831,0],72,[]],
			//[[2633.34,1840.53,0],72,[]]
			[[2633.1,1824.72,0],72,[]]
		],[],[[[2563.63,1888.25,0],[[0,"Move"],[1,"SAFE"]]],[[2331.45,2029.24,0],[[0,"Move"]]],[[2414.24,1971.95,0],[[0,"Move"]]],[[2563.28,1882.53,0],[[0,"Move"]]],[[2641.94,1834.38,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// UAZ Patrols
		[[],[["UK3CB_CW_SOV_O_EARLY_UAZ_MG",[2631.09,1774.53,0],35,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]]],[[[2680.59,1856.74,0],[[0,"Move"],[1,"SAFE"]]],[[2485.33,1978.61,0],[[0,"Move"]]],[[2438.24,1899.41,0],[[0,"Move"]]],[[2621.54,1780.43,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[],[["UK3CB_CW_SOV_O_EARLY_UAZ_MG",[2437.8,1897.84,0],35,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]]],[[[2487.3,1980.05,0],[[0,"Move"],[1,"SAFE"]]],[[2019.93,2266.99,0],[[0,"Move"]]],[[1970.78,2186.5,0],[[0,"Move"]]],[[2428.25,1903.74,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		
		// BMP-1 Blockade West with AAA
		[[],[
			["UK3CB_CW_SOV_O_EARLY_BRDM2",[345.598,2990.08,1],177,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]],
			//["UK3CB_CW_SOV_O_EARLY_BRDM2",[480.805,3004.15,1],177,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]],
			["UK3CB_CW_SOV_O_EARLY_BRDM2",[408.663,2994.73,1],176,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		// BMP-1 Blockade East with AAA
		[[],[
			["UK3CB_CW_SOV_O_EARLY_BRDM2",[4324.56,243.2,1],275,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],
			//["UK3CB_CW_SOV_O_EARLY_BRDM2",[4456.88,414.758,1],274,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],
			["UK3CB_CW_SOV_O_EARLY_BRDM2",[4559.26,526.074,1],268,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		[ehelo_1,"Neutralize Mi-24P","Mi-24P","A %1 is located in the area of operations. It will make swift work of our motorised force, neutralize the threat.","heli","task_1",true,true] spawn OKS_Destroy_Task; sleep 5;
		[ehelo_2,"Neutralize Mi-24P","Mi-24P","A %1 is located in the area of operations. It will make swift work of our motorised force, neutralize the threat.","heli","task_1",true,true] spawn OKS_Destroy_Task; sleep 5;
		[ehelo_4,"Neutralize Mi-24P","Mi-24P","A %1 is located in the area of operations. It will make swift work of our motorised force, neutralize the threat.","heli","task_2",true,true] spawn OKS_Destroy_Task;
		
		// AA Guarding Airfield North
		[[],[["rhs_Igla_AA_pod_msv",[681.005,7592.77,0],185,[["gunner",-1,[0]]],[]],["rhs_Igla_AA_pod_msv",[426.869,6993.63,0],118,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// AA Guarding Reserves
		[[],[["RHS_Ural_Zu23_MSV_01",[4351.58,3922.59,1],179,[["driver",-1,[]],["gunner",-1,[0]],["cargo",2,[1]]],[[6,["standard",1]],[7,["spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1,"light_hide",0]]]],["RHS_Ural_Zu23_MSV_01",[4467.81,5562.15,1],189,[["driver",-1,[]],["gunner",-1,[0]],["cargo",2,[1]]],[[6,["standard",1]],[7,["spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1,"light_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		/// HMG AA.
		[[],[
			["UK3CB_CHD_O_UAZ_MG",[1678.49,2717.86,0],187,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]],
			//["UK3CB_CHD_O_UAZ_MG",[1484.77,2737.27,0],204,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_CHD_O_UAZ_MG",[4084.91,2123.6,0],294,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]],
			//["UK3CB_CHD_O_UAZ_MG",[4139.13,2158.63,0],232,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_CHD_O_UAZ_MG",[2527.41,3385.72,6.10352e-05],196,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]],
			//["UK3CB_CHD_O_UAZ_MG",[4348.41,3924.13,0],185,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_CHD_O_UAZ_MG",[4521.46,3420.75,0],312,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]],
			//["UK3CB_CHD_O_UAZ_MG",[3120.33,5071.78,6.10352e-05],103,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]],
			//["UK3CB_CHD_O_UAZ_MG",[3949.41,3376.95,0],291,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_CHD_O_UAZ_MG",[3392.53,2970.28,0],299,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		[radio_1,"radiotower",300,EAST,false,false,false,"task_radio"] spawn OKS_CreateObjectives; sleep 3;
		[radio_2,"radiotower",300,EAST,false,false,false,"task_radio"] spawn OKS_CreateObjectives; sleep 2;
		[radio_3,"radiotower",300,EAST,false,false,false,"task_radio"] spawn OKS_CreateObjectives; sleep 3;
		[radio_4,"radiotower",300,EAST,false,false,false,"task_radio"] spawn OKS_CreateObjectives; sleep 2;
		[radio_5,"radiotower",300,EAST,false,false,false,"task_radio"] spawn OKS_CreateObjectives;

	};


	case 2: {

		["hq","side","1-1 Be advised, new intel suggests charges are planted at our FARP. Defuse the explosives before they cripple our air-assets on the ground. Godspeed, HQ out."] remoteExec ["OKS_Chat",0];

		// Charges Set.
		private _i = 1;
		private _notify = false;
		{
			if (_i in [1,3,5]) then {
				_notify = true;
			} else {
				_notify = false;
			};
			_i = _i + 1;
			[_X,1200,nil,"Task_01",_notify] spawn OKS_Defuse_Explosive; sleep 2.5;
		} foreach [
			bomb_1, bomb_2,
			bomb_3, bomb_4, bomb_5, bomb_6
		];

		// Vehicles Village
		// [[],[
		// 	["UK3CB_CHD_O_Hilux_Pkm",[3060.05,2496.44,0],254,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],
		// 	["UK3CB_CHD_O_Hilux_Pkm",[2899.91,2587.13,0],179,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],
		// 	["UK3CB_CHD_O_Hilux_Pkm",[2963.81,2635.41,0],180,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],
		// 	["UK3CB_CHD_O_Hilux_Pkm",[3083.94,2637.88,0],269,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]
		// ],[]] call GW_Common_fnc_spawnGroup;

		// Hunt Bases
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 3,45,east,_Vehicles,30] spawn NEKY_Hunt_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 3,45,east,_Vehicles,30] spawn NEKY_Hunt_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 3,45,east,_Vehicles,30] spawn NEKY_Hunt_HuntBase;

	};

	case 5: {
		// 2.5
		// Rostok Strongpoints
		[[
			[[2979.74,2517.98,0.559814],0,"Up",[]],
			//[[2985.04,2516.59,0.559814],296,"Up",[]],
			[[2985.06,2521.81,0.559814],207,"Up",[]],
			//[[2980.97,2517.84,3.81598],354,"Up",[]],
			[[2984.01,2526.82,2.11432],227,"Middle",[]],
			//[[2983.1,2509.55,3.81537],178,"Up",[]],
			[[2981.66,2509.76,3.81537],190,"Up",[]],
			//[[2980.24,2512.14,3.81537],50,"Middle",[]],
			[[2979.17,2545.62,5.23718],209,"Up",[]],
			//[[2955.22,2554.18,5.26495],90,"Up",[]],
			[[2949.9,2557.67,5.26495],11,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[2938.84,2620.7,1.03766],235,"Up",[]],
			[[2946.21,2620.96,1.03766],191,"Up",[]],
			//[[2942.44,2620.26,1.03766],192,"Up",[]],
			[[2939.62,2606.22,1.03766],235,"Up",[]],
			//[[2944.06,2604.92,1.03766],166,"Up",[]],
			[[2946.13,2607.89,1.03766],344,"Up",[]],
			[[2947.51,2614.03,1.03766],90,"Middle",[]],
			//[[2942.93,2612.38,1.03766],264,"Up",[]],
			[[2939.93,2613.03,0.991333],245,"Middle",[]],
			[[2975.73,2610.08,5.26495],179,"Up",[]],
			//[[2983.97,2644.77,5.26495],206,"Up",[]],
			[[2979.78,2650.02,5.26495],235,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[
			[[3019.71,2617.12,5.26495],217,"Up",[]],
			//[[3027.8,2661.34,1.0304],328,"Up",[]],
			[[3027.58,2653.96,1.0304],285,"Up",[]],
			//[[3027.13,2657.77,1.0304],286,"Up",[]],
			[[3013.49,2661.91,1.0304],328,"Up",[]],
			//[[3011.68,2656.09,1.0304],260,"Up",[]],
			[[3014.54,2654.89,1.0304],78,"Up",[]],
			[[3020.58,2653.12,1.0304],183,"Middle",[]],
			//[[3019.82,2656.66,1.0304],190,"Up",[]],
			[[3019.95,2660.2,1.0304],338,"Middle",[]],
			//[[2999.39,2648.34,5.23645],155,"Up",[]],
			[[3022.71,2622.09,5.26495],348,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3067.48,2615.31,5.26495],297,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols Village
		[[
			[[2963.67,2524.58,0],0,[]],
			[[2968.67,2522.58,0],0,[]]
		],[],[[[2903.83,2523.42,0],[[0,"Move"]]],[[2899.97,2585.96,0],[[0,"Move"]]],[[2964.3,2589.01,0],[[0,"Move"]]],[[2965.6,2532.81,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[2957.21,2585.95,0],0,[]],[[2962.21,2583.95,0],0,[]]],[],[[[2897.37,2584.79,0],[[0,"Move"]]],[[2904.63,2652.76,0],[[0,"Move"]]],[[2968.12,2636.46,0],[[0,"Move"]]],[[2959.14,2594.18,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[
			[[3004.18,2638.38,0],0,[]],
			[[3009.18,2636.38,0],0,[]]
		],[],[[[2944.34,2637.22,0],[[0,"Move"]]],[[2929.1,2680.88,0],[[0,"Move"]]],[[2991.29,2683.33,0],[[0,"Move"]]],[[3006.11,2646.62,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[3044.2,2629.15,0],0,[]],[[3049.2,2627.15,0],0,[]]],[],[[[2994.48,2637.96,0],[[0,"Move"]]],[[3001.02,2693.57,0],[[0,"Move"]]],[[3043.33,2687.02,0],[[0,"Move"]]],[[3046.12,2637.38,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[
			[[3082.08,2553.28,0],0,[]],
			[[3087.08,2551.28,0],0,[]]
		],[],[[[3014.79,2546.63,0],[[0,"Move"]]],[[3012.52,2587.6,0],[[0,"Move"]]],[[3083.55,2602.25,0],[[0,"Move"]]],[[3084.01,2561.51,0.0441895],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[
			[[3032.15,2586.72,0],0,[]],
			[[3037.15,2584.72,0],0,[]]
		],[],[[[2972.31,2585.56,0],[[0,"Move"]]],[[2958.77,2613.63,0],[[0,"Move"]]],[[3016.07,2640.83,0],[[0,"Move"]]],[[3034.08,2594.95,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// HMG AA.
		[[],[
			["UK3CB_CHD_O_UAZ_MG",[4136.85,5011.6,0],260,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_CHD_O_UAZ_MG",[3261.93,4697.65,-6.10352e-05],239,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_CHD_O_UAZ_MG",[2374.36,3853.49,0],188,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]],
			["UK3CB_CHD_O_UAZ_MG",[3546.15,3549.56,0],270,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {
		["hq","side","1-1 Be advised, air surveillance has confirmed a large contingent of infantry is moving out of the houses due east and heading your way. Repel the counter-attack!"] remoteExec ["OKS_Chat",0];	
		[true, ["defendtask", "task_2"], ["A large infantry contingent is heading our way to try and retake Rostok. Repel the invaders!", "Defend Rostok", "Defend"], [2998.98,2618.17,0], 1, 3, true,"defend"] call BIS_fnc_taskCreate;		
		sleep 15;
		[ehelo_3,"Neutralize Mi-24P","Mi-24P","A %1 is located in the area of operations. It will make swift work of our motorised force, neutralize the threat.","heli","defendtask",true,true] spawn OKS_Destroy_Task;
		["hq","side","1-1 Be advised, enemy aircraft spotted heading in from the north-west airfield. We suspect its another Mi-24P. Take it out!"] spawn OKS_Chat;
		sleep 15;
		[[artyStrike_1,artyStrike_2,artyStrike_3,artyStrike_4],"rhs_ammo_3of56",1.5,15,30,true,"defendtask"] spawn OKS_Fallback_Artillery;
		
		private _TimeMultiplier = 0.1;
		if(isDedicated) then {
			_TimeMultiplier = 1;
		};	
		sleep (140 * _TimeMultiplier);

		Attack_1_Clear = false; Attack_2_Clear = false; Attack_3_Clear = false; Attack_4_Clear = false; Attack_5_Clear = false;
		[rush_1,5,2,independent,1500,"Attack_1_Clear"] spawn OKS_Lambs_ChargeSpawn; sleep 5;
		[rush_2,5,2,independent,1500,"Attack_2_Clear"] spawn OKS_Lambs_ChargeSpawn; sleep 5;
		[rush_3,5,2,independent,1500,"Attack_3_Clear"] spawn OKS_Lambs_ChargeSpawn; sleep 5;
		[rush_4,5,2,independent,1500,"Attack_4_Clear"] spawn OKS_Lambs_ChargeSpawn; sleep 5;
		[rush_5,5,2,independent,1500,"Attack_5_Clear"] spawn OKS_Lambs_ChargeSpawn; sleep 5;

		["hq","side","1-1 Be advised, air surveillance has confirmed a BRDM-platoon heading in from the MSR due east. Repel them! HQ out."] remoteExec ["OKS_Chat",0];	
		{
			[_X,NEKY_Hunt_Trigger_3,"UK3CB_CW_SOV_O_LATE_BRDM2",8,east,1500] spawn OKS_Mechanized_Spawn
		} foreach [mech_1,mech_2];

		sleep 240;
		["hq","side","1-1 Be advised, air surveillance has confirmed a company of motorised infantry is heading in from the road north-west. Repel them!"] remoteExec ["OKS_Chat",0];	
		[[],[["rhs_tigr_msv",[2360.05,3800.2,0],204,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]],["cargo",4,[]],["cargo",7,[0]],["cargo",5,[1]]],[[6,["standard",1]],[7,["spare_hide",0]]]]],[[[2534.21,3275.99,0],[[0,"Move"],[1,"SAFE"]]],[[3041.12,2698.25,0],[[0,"GetOut"]]],[[3074.47,2642.03,0],[[0,"SAD"],[1,"AWARE"],[5,"FULL"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["rhs_tigr_msv",[2373.85,3841.36,0],190,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]],["cargo",4,[]],["cargo",7,[0]],["cargo",5,[1]]],[[6,["standard",1]],[7,["spare_hide",0]]]]],[[[2534.21,3275.99,0],[[0,"Move"],[1,"SAFE"]]],[[3043.81,2733.15,0],[[0,"GetOut"]]],[[3045.09,2617.48,0],[[0,"SAD"],[1,"AWARE"],[5,"FULL"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["rhs_tigr_msv",[2377.71,3888.37,-6.10352e-05],194,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]],["cargo",4,[]],["cargo",7,[0]],["cargo",5,[1]]],[[6,["standard",1]],[7,["spare_hide",0]]]]],[[[2534.21,3275.99,0],[[0,"Move"],[1,"SAFE"]]],[[3004.67,2784.64,0],[[0,"GetOut"]]],[[3010.41,2632.1,0],[[0,"SAD"],[1,"AWARE"],[5,"FULL"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["rhs_tigr_msv",[2405.75,3919.28,6.10352e-05],259,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]],["cargo",4,[]],["cargo",7,[0]],["cargo",5,[1]]],[[6,["standard",1]],[7,["spare_hide",0]]]]],[[[2534.21,3275.99,0],[[0,"Move"],[1,"SAFE"]]],[[3001.39,2699.55,0],[[0,"GetOut"]]],[[2967.55,2626.79,0],[[0,"SAD"],[1,"AWARE"],[5,"FULL"]]]]] call GW_Common_fnc_spawnGroup;
		
		waitUntil {sleep 5; {_X == true} count [Attack_1_Clear, Attack_2_Clear, Attack_3_Clear, Attack_4_Clear, Attack_5_Clear] == 5};
		["defendtask", "SUCCEEDED", true] call BIS_fnc_taskSetState
	};

	case 4: {

		// First Blockade Rear Echelon
		[[[[3144.95,3358.52,0],0,"Up",[]],[[3123.56,3364.55,6.10352e-005],0,"Up",[]],[[3120.77,3384.06,0],281,"Up",[]],[[3140.36,3386.49,0],0,"Up",[]],[[3135.91,3383.72,0.606201],0,"Up",[]],[[3130.57,3383.12,0.532349],0,"Up",[]],[[3131.71,3360.64,2.17096],0,"Up",[]],[[3134.05,3366.05,2.20789],43,"Up",[]],[[3146.68,3365.02,0],322,"Up",[]]],[["UK3CB_ADA_O_PKM_nest",[3141.86,3357.98,0],153,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// SAM Guards
		[[[[3073.04,3729.01,0],85,"Up",[]],[[3061.77,3723.18,0],260,"Up",[]],[[3034.93,3721.67,0],161,"Up",[]],[[3020.2,3734.81,0],88,"Middle",[]],[[3029.75,3748.1,0],142,"Middle",[]],[[3016.37,3766.19,0],204,"Up",[]],[[3041,3753.61,0.514099],264,"Up",[]],[[3064.01,3756.11,0.518066],97,"Up",[]],[[3080.22,3734.32,0],102,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3047.5,3545.14,-0.000549316],195,"Up",[]],[[3026.14,3558.42,0],166,"Up",[]],[[3054.61,3595.48,-0.00561523],198,"Up",[]],[[3074.22,3580.26,11.2727],259,"Up",[]],[[3074.59,3606.86,11.2727],230,"Up",[]],[[3094.58,3561.64,11.2727],179,"Middle",[]],[[3078.08,3561.76,11.2727],182,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		// SAM MG NEST.
		[[[[2872.71,3776.2,0.875],148,"Middle",[]],[[2870.95,3773.64,0.877197],148,"Middle",[]],[[2859.22,3772.98,0.927002],148,"Middle",[]],[[2856.27,3769.04,1.01605],148,"Middle",[]],[[2882.71,3779.26,1.0094],148,"Middle",[]],[[2884.25,3784.19,0.901245],117,"Middle",[]]],[["UK3CB_LNM_O_KORD_high",[2863,3772.99,-0.00366211],165,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_KORD_high",[2876.96,3776.35,-0.00946045],165,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Final Guards.
		[[[[3755.8,4685.92,-6.10352e-005],196,"Up",[]],[[3768.63,4684.3,-6.10352e-005],175,"Up",[]],[[3780.66,4696.29,-6.10352e-005],197,"Up",[]],[[3725.39,4689.89,-6.10352e-005],202,"Up",[]],[[3717.25,4720.04,-6.10352e-005],177,"Middle",[]],[[3728.46,4712.12,-6.10352e-005],213,"Middle",[]],[[3727.08,4714.42,11.0399],212,"Middle",[]],[[3754.45,4714.43,11.0399],192,"Middle",[]],[[3765.39,4714.82,11.0399],195,"Up",[]],[[3761.29,4716.84,0.00982666],276,"Up",[]],[[3738.86,4724.96,0.00982666],138,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols SAM
		[[[[2698.74,3904.66,0],138,[]],[[2691.68,3905,0],138,[]],[[2699.08,3911.72,0],138,[]],[[2684.61,3905.35,0],138,[]],[[2699.43,3918.79,0],138,[]],[[2677.55,3905.69,0],138,[]],[[2699.77,3925.85,0],138,[]],[[2670.49,3906.03,0],138,[]]],[],[[[2840.92,4025.2,0],[[0,"Move"],[1,"SAFE"]]],[[3041.22,4099.19,0],[[0,"Move"]]],[[3230.18,3889.4,0],[[0,"Move"]]],[[3083.05,3656.86,0],[[0,"Move"]]],[[2906.99,3793.76,0],[[0,"Move"]]],[[2729.08,3898.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[3310.47,3594.42,0],0,[]],[[3315.47,3589.42,0],0,[]],[[3305.47,3589.42,0],0,[]],[[3320.47,3584.42,0],0,[]],[[3300.47,3584.42,0],0,[]],[[3325.47,3579.42,0],0,[]],[[3295.47,3579.42,0],0,[]],[[3330.47,3574.42,0],0,[]]],[],[[[3272.23,3436.05,0],[[0,"Move"],[1,"SAFE"]]],[[3026.62,3436.76,0],[[0,"Move"]]],[[2908.39,3703.48,0],[[0,"Move"]]],[[3077.29,3870.27,0],[[0,"Move"]]],[[3195.38,3744.44,0.00012207],[[0,"Move"]]],[[3292.21,3619.45,6.10352e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3155.67,3421.89,0],0,[]],[[3160.67,3416.89,0],0,[]],[[3150.67,3416.89,0],0,[]],[[3165.67,3411.89,0],0,[]],[[3145.67,3411.89,0],0,[]],[[3170.67,3406.89,0],0,[]],[[3140.67,3406.89,0],0,[]],[[3175.67,3401.89,0],0,[]]],[],[[[3035.1,3415.54,0],[[0,"Move"],[1,"SAFE"]]],[[2819.27,3468.69,-0.00012207],[[0,"Move"]]],[[2631.43,3573.13,0],[[0,"Move"]]],[[2655.8,3780.56,-6.10352e-005],[[0,"Move"]]],[[3040.58,3571.92,0],[[0,"Move"]]],[[3137.41,3446.92,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3529.88,3394.42,0],0,[]],[[3534.88,3389.42,0],0,[]],[[3524.88,3389.42,0],0,[]],[[3539.88,3384.42,0],0,[]],[[3519.88,3384.42,0],0,[]],[[3544.88,3379.42,0],0,[]],[[3514.88,3379.42,0],0,[]],[[3549.88,3374.42,0],0,[]]],[],[[[3381.76,3306,0],[[0,"Move"],[1,"SAFE"]]],[[3223.66,3443.11,0],[[0,"Move"]]],[[3221.5,3687.43,0],[[0,"Move"]]],[[3317.36,3745.43,0],[[0,"Move"]]],[[3496.64,3579.77,0],[[0,"Move"]]],[[3511.61,3419.45,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Patrols Village Fuel Station
		[[[[4815.83,3298.37,0],0,[]],[[4820.83,3293.37,0],0,[]],[[4810.83,3293.37,0],0,[]],[[4825.83,3288.37,0],0,[]],[[4805.83,3288.37,0],0,[]],[[4830.83,3283.37,0],0,[]],[[4800.83,3283.37,0],0,[]],[[4835.83,3278.37,0],0,[]]],[],[[[4667.72,3209.95,4.43945],[[0,"Move"],[1,"SAFE"]]],[[4509.62,3347.06,4.43939],[[0,"Move"]]],[[4507.45,3591.38,4.43939],[[0,"Move"]]],[[4603.32,3649.38,4.43933],[[0,"Move"]]],[[4782.59,3483.71,4.43933],[[0,"Move"]]],[[4797.57,3323.4,4.86768],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4596.43,3498.37,0],0,[]],[[4601.43,3493.37,0],0,[]],[[4591.43,3493.37,0],0,[]],[[4606.43,3488.37,0],0,[]],[[4586.43,3488.37,0],0,[]],[[4611.43,3483.37,0],0,[]],[[4581.43,3483.37,0],0,[]],[[4616.43,3478.37,0],0,[]]],[],[[[4558.19,3340,4.43927],[[0,"Move"],[1,"SAFE"]]],[[4312.58,3340.7,4.43933],[[0,"Move"]]],[[4194.35,3607.43,4.43939],[[0,"Move"]]],[[4363.25,3774.22,4.43927],[[0,"Move"]]],[[4481.33,3648.39,4.43945],[[0,"Move"]]],[[4578.16,3523.4,4.43939],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[3984.7,3808.61,0],138,[]],[[3977.63,3808.95,0],138,[]],[[3985.04,3815.67,0],138,[]],[[3970.57,3809.29,0],138,[]],[[3985.38,3822.73,0],138,[]],[[3963.51,3809.64,0],138,[]],[[3985.73,3829.8,0],138,[]],[[3956.45,3809.98,0],138,[]]],[],[[[4126.88,3929.15,4.43933],[[0,"Move"],[1,"SAFE"]]],[[4327.18,4003.14,4.43933],[[0,"Move"]]],[[4516.14,3793.35,4.43933],[[0,"Move"]]],[[4369.01,3560.81,3.41528],[[0,"Move"]]],[[4192.95,3697.71,4.43933],[[0,"Move"]]],[[4015.04,3802.34,4.43945],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4441.63,3325.84,0],0,[]],[[4446.63,3320.84,0],0,[]],[[4436.63,3320.84,0],0,[]],[[4451.63,3315.84,0],0,[]],[[4431.63,3315.84,0],0,[]],[[4456.63,3310.84,0],0,[]],[[4426.63,3310.84,0],0,[]],[[4461.63,3305.84,0],0,[]]],[],[[[4321.06,3319.49,4.43927],[[0,"Move"],[1,"SAFE"]]],[[4105.22,3372.64,4.43921],[[0,"Move"]]],[[3917.39,3477.07,4.43933],[[0,"Move"]]],[[3941.76,3684.5,4.43927],[[0,"Move"]]],[[4326.54,3475.86,4.43933],[[0,"Move"]]],[[4423.37,3350.87,4.43927],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Last Objective
		[[[[3789.78,4228.98,0],0,[]],[[3794.78,4223.98,0],0,[]],[[3784.78,4223.98,0],0,[]],[[3799.78,4218.98,0],0,[]],[[3779.78,4218.98,0],0,[]],[[3804.78,4213.98,0],0,[]],[[3774.78,4213.98,0],0,[]],[[3809.78,4208.98,0],0,[]]],[],[[[3756.68,4176.72,0],[[0,"Move"],[1,"SAFE"]]],[[3490.08,4413.8,0],[[0,"Move"]]],[[3176.95,4390.54,0],[[0,"Move"]]],[[3267.31,4547.11,0],[[0,"Move"]]],[[3674.69,4379,0],[[0,"Move"]]],[[3771.52,4254.01,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4163.98,4201.51,0],0,[]],[[4168.98,4196.51,0],0,[]],[[4158.98,4196.51,0],0,[]],[[4173.98,4191.51,0],0,[]],[[4153.98,4191.51,0],0,[]],[[4178.98,4186.51,0],0,[]],[[4148.98,4186.51,0],0,[]],[[4183.98,4181.51,0],0,[]]],[],[[[4015.87,4113.09,6.10352e-005],[[0,"Move"],[1,"SAFE"]]],[[3857.77,4250.2,6.10352e-005],[[0,"Move"]]],[[3855.6,4494.52,6.10352e-005],[[0,"Move"]]],[[3951.47,4552.52,0],[[0,"Move"]]],[[4130.74,4386.85,0],[[0,"Move"]]],[[4145.72,4226.54,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3332.85,4711.75,0],138,[]],[[3325.78,4712.09,0],138,[]],[[3333.19,4718.81,0],138,[]],[[3318.72,4712.44,0],138,[]],[[3333.53,4725.87,0],138,[]],[[3311.66,4712.78,0],138,[]],[[3333.88,4732.94,0],138,[]],[[3304.6,4713.12,0],138,[]]],[],[[[3475.03,4832.29,0],[[0,"Move"],[1,"SAFE"]]],[[4064.44,4820.87,0],[[0,"Move"]]],[[4371.3,4684.88,6.10352e-005],[[0,"Move"]]],[[3662.74,4437.07,0],[[0,"Move"]]],[[3541.1,4600.85,0],[[0,"Move"]]],[[3363.19,4705.48,6.10352e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3944.58,4401.51,0],0,[]],[[3949.58,4396.51,0],0,[]],[[3939.58,4396.51,0],0,[]],[[3954.58,4391.51,0],0,[]],[[3934.58,4391.51,0],0,[]],[[3959.58,4386.51,0],0,[]],[[3929.58,4386.51,0],0,[]],[[3964.58,4381.51,0],0,[]]],[],[[[3853.3,4348.5,0],[[0,"Move"],[1,"SAFE"]]],[[3673.48,4310.03,0],[[0,"Move"]]],[[3542.5,4510.57,0],[[0,"Move"]]],[[3683.32,4717.09,0],[[0,"Move"]]],[[3829.48,4551.53,0.00012207],[[0,"Move"]]],[[3926.31,4426.54,6.10352e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		/// Tank Factory
		[[[[4415.43,3461.02,0],146,"Up",[]],[[4402.04,3466,0],16,"Up",[]],[[4404.03,3480.29,0],146,"Up",[]],[[4392.23,3492.61,0],146,"Up",[]],[[4426.58,3493.46,0.11145],230,"Up",[]],[[4428.81,3489.21,3.27063],251,"Up",[]],[[4422.91,3500.52,0],243,"Up",[]],[[4405.07,3525.09,0],279,"Up",[]],[[4391.41,3503.72,0.746765],65,"Up",[]],[[4399.37,3482.85,0.254028],32,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		// Tank MG.
		[[[[4278.48,3453.73,1.33307],349,"Middle",[]],[[4281.03,3455.51,1.18121],349,"Middle",[]],[[4292.24,3451.99,0.725525],349,"Middle",[]],[[4296.38,3454.64,0.50293],349,"Middle",[]],[[4268.04,3454.4,2.05353],349,"Middle",[]],[[4264.87,3450.33,2.48279],318,"Middle",[]]],[["UK3CB_LNM_O_KORD_high",[4288.78,3453.35,0],6,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_KORD_high",[4274.53,3455.13,0],6,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Hunters
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_2, 8,600,east,_Vehicles,200] spawn NEKY_Hunt_HuntBase;
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_2, 8,600,east,_Vehicles,200] spawn NEKY_Hunt_HuntBase;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_2, 8,600,east,_Vehicles,200] spawn NEKY_Hunt_HuntBase;
		[Spawn_7, Spawn_7, NEKY_Hunt_Trigger_2, 8,600,east,_Vehicles,200] spawn NEKY_Hunt_HuntBase;
		[Spawn_8, Spawn_8, NEKY_Hunt_Trigger_2, 8,600,east,_Vehicles,200] spawn NEKY_Hunt_HuntBase;		

	};

	case 5: {
	};

	case 6: {
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
		   6 - gunner Split - [How many teams,Procent of gunner] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
