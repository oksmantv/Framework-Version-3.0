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

	case 0:{
		// Start Enemies all zones
		[[],[
			["rhsgref_tla_g_offroad_armed",[7309.16,4370.51,0],228,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_04",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",1,"HideDoor3",0,"HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1]]]],
			["rhsgref_tla_g_offroad_armed",[7172.56,4242.87,6.53267e-005],276,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_09",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0,"HideBackpacks",1,"HideBumper1",0,"HideBumper2",1,"HideConstruction",1]]]],
			["rhsgref_tla_g_offroad_armed",[7052.76,4127.61,0.00162792],274,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_05",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",1,"HideDoor2",0,"HideDoor3",0,"HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		[[],[
			["rhsgref_tla_g_offroad_armed",[2215.85,3485.33,-9.53674e-007],29,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_07",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",1,"HideBackpacks",1,"HideBumper1",0,"HideBumper2",1,"HideConstruction",1]]]],
			["rhsgref_tla_g_offroad_armed",[2080.83,3435.47,0],3,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_08",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",1,"HideDoor3",0,"HideBackpacks",1,"HideBumper1",1,"HideBumper2",0,"HideConstruction",1]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		[[],[
			["rhsgref_tla_g_offroad_armed",[2167.04,8168.05,0],110,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_01",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0,"HideBackpacks",1,"HideBumper1",0,"HideBumper2",1,"HideConstruction",1]]]],
			["rhsgref_tla_g_offroad_armed",[2278.22,8229.47,0],139,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_08",1]],[7,["Hide_Shield",0,"Hide_Rail",1,"HideDoor1",1,"HideDoor2",0,"HideDoor3",1,"HideBackpacks",1,"HideBumper1",1,"HideBumper2",0,"HideConstruction",1]]]]		
		],[]] call GW_Common_fnc_spawnGroup;

		[[],[["UK3CB_AAF_O_DSHKM",[2347.75,8213.55,-0.000835896],159,[["gunner",-1,[0]]],[]],["UK3CB_AAF_O_DSHKM",[2328.35,8164.83,-0.0184994],124,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 1: {

		// Leqa
		[[[[2392.74,8122.17,0.288031],148,"Up",[]],[[2378.4,8125.82,0.412774],16,"Up",[]],[[2384.48,8126.85,0.622896],279,"Up",[]],[[2397.74,8137.09,0.403655],205,"Up",[]],[[2394.37,8140.09,0.364582],246,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2360.41,8132.44,0.344115],148,"Up",[]],[[2351.62,8137.52,0.523459],65,"Up",[]],[[2373.67,8156.95,0.162919],160,"Up",[]],[[2376.89,8170.78,0.61757],138,"Up",[]],[[2373.78,8173.57,0.585588],226,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2354.72,8181.83,0.559122],135,"Up",[]],[[2350.6,8180.52,0.559122],165,"Up",[]],[[2347.82,8170.34,0.206891],257,"Up",[]],[[2339.08,8174.76,0.204628],212,"Up",[]],[[2343.17,8174.87,0.226505],257,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2361.18,8211,0.731507],148,"Up",[]],[[2356.06,8206.33,0.525207],219,"Up",[]],[[2315.84,8205.08,0.163489],219,"Up",[]],[[2307.66,8209.38,0.163489],148,"Up",[]],[[2311.62,8209.94,0.163489],221,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrols
		[[[[2532.94,7906.84,0],0,[]],[[2537.94,7901.84,0],0,[]],[[2527.94,7901.84,0],0,[]],[[2542.94,7896.84,0],0,[]]],[],[[[2420.12,8083.62,0.407658],[[0,"Move"],[1,"SAFE"]]],[[2310.79,8060.32,0],[[0,"Move"]]],[[2371.73,7952.18,4.76837e-007],[[0,"Move"]]],[[2219.37,7860.77,0],[[0,"Move"]]],[[2516.92,7893.03,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1941.28,8069.14,0.27513],0,[]],[[1946.28,8064.14,0.421147],0,[]],[[1936.28,8064.14,0.130888],0,[]],[[1951.28,8059.14,0.532796],0,[]]],[],[[[2086.71,7821.26,0],[[0,"Move"]]],[[2198.44,7884.59,0],[[0,"Move"]]],[[2068.19,8090.12,0],[[0,"Move"]]],[[2220.54,8171.98,0],[[0,"Move"]]],[[1923.6,8106.25,9.53674e-007],[[0,"Move"]]],[[1936.78,8072.7,-0.0301981],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2226.72,8229.68,4.76837e-007],0,[]],[[2231.72,8224.68,0],0,[]],[[2221.72,8224.68,0],0,[]],[[2236.72,8219.68,4.76837e-007],0,[]],[[2216.72,8219.68,0],0,[]],[[2241.72,8214.68,0],0,[]]],[],[[[2318.62,8257.97,0],[[0,"Move"]]],[[2412.83,8207.95,0],[[0,"Move"]]],[[2409.08,8105.82,0],[[0,"Move"]]],[[2333.21,8126.25,0],[[0,"Move"]]],[[2251.51,8217.54,-0.178577],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		// Rush-Counter Leqa
		[rush_1,nil,6,east,1500] spawn OKS_Hunt_SpawnGroup;
		[rush_2,nil,6,east,1500] spawn OKS_Hunt_SpawnGroup;
		[rush_7,nil,["UK3CB_O_G_BTR40_MG", "UK3CB_O_G_BTR60", "UK3CB_O_G_BRDM2", "UK3CB_O_G_LandRover_Open", "UK3CB_O_G_LandRover_Closed"],east,2500] spawn OKS_Hunt_SpawnGroup;
	};

	case 3: {

		// Counter-Attack Leqa
		[rush_3,nil,7,east,1500] spawn OKS_Hunt_SpawnGroup;
		[rush_4,nil,7,east,1500] spawn OKS_Hunt_SpawnGroup;
		[rush_5,nil,["UK3CB_O_G_BTR40_MG", "UK3CB_O_G_BTR60", "UK3CB_O_G_BRDM2", "UK3CB_O_G_LandRover_Open", "UK3CB_O_G_LandRover_Closed"],east,2500] spawn OKS_Hunt_SpawnGroup; sleep 30;
		[rush_6,nil,["UK3CB_O_G_BTR40_MG", "UK3CB_O_G_BTR60", "UK3CB_O_G_BRDM2", "UK3CB_O_G_LandRover_Open", "UK3CB_O_G_LandRover_Closed"],east,2500] spawn OKS_Hunt_SpawnGroup; sleep 30;
		[rush_7,nil,["UK3CB_O_G_BTR40_MG", "UK3CB_O_G_BTR60", "UK3CB_O_G_BRDM2", "UK3CB_O_G_LandRover_Open", "UK3CB_O_G_LandRover_Closed"],east,2500] spawn OKS_Hunt_SpawnGroup; sleep 30;
		[rush_8,nil,["UK3CB_O_G_BTR40_MG", "UK3CB_O_G_BTR60", "UK3CB_O_G_BRDM2", "UK3CB_O_G_LandRover_Open", "UK3CB_O_G_LandRover_Closed"],east,2500] spawn OKS_Hunt_SpawnGroup; sleep 30;
	};

	case 4: {

		// Officers
		{[_X,0.5,50,true,true] spawn OKS_Surrender} foreach [officer_1,officer_2];

		// Patrol
		[[[[7167.45,4411.78,0],0,[]],[[7172.45,4406.78,0],0,[]],[[7162.45,4406.78,0],0,[]],[[7177.45,4401.78,0],0,[]]],[],[[[6856.2,4414.39,0],[[0,"Move"],[1,"SAFE"]]],[[7040.88,4337.34,0],[[0,"Move"]]],[[7171.05,4352.75,0],[[0,"Move"]]],[[7166.79,4401.61,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7156.81,4296,0],0,[]],[[7161.81,4291,0],0,[]],[[7151.81,4291,0],0,[]],[[7166.81,4286,2.38419e-007],0,[]]],[],[[[7037.13,4298.62,0],[[0,"Move"],[1,"SAFE"]]],[[7030.24,4221.56,9.53674e-007],[[0,"Move"]]],[[7160.42,4236.97,2.38419e-007],[[0,"Move"]]],[[7156.16,4285.83,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7169.6,4193.04,2.38419e-007],0,[]],[[7174.6,4188.04,0],0,[]],[[7164.6,4188.04,0],0,[]],[[7179.6,4183.04,0],0,[]]],[],[[[7001.71,4165.82,-1.90735e-006],[[0,"Move"],[1,"SAFE"]]],[[7071.56,4111.39,1.01949],[[0,"Move"]]],[[7173.21,4134.01,0],[[0,"Move"]]],[[7168.95,4182.87,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;	

		// Savaka
		[[[[7054.8,4235.52,0.0897384],203,"Up",[]],[[7035.55,4233.88,0.476148],203,"Up",[]],[[7043.88,4237.92,0.63863],203,"Up",[]],[[7074.35,4253.58,0.600289],164,"Up",[]],[[7023.92,4102.67,0.862366],279,"Up",[]],[[7052.91,4118.07,0.852697],279,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7101.87,4234.37,0.503],283,"Up",[]],[[7140.19,4238.3,0.179071],203,"Up",[]],[[7138.1,4222.19,0.733772],203,"Up",[]],[[7124.26,4218.93,0.227327],342,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7159.47,4256.63,4.14367],253,"Up",[]],[[7150.07,4236.13,0.357695],354,"Up",[]],[[7143.75,4256.03,0.566283],140,"Up",[]],[[7138.62,4256.37,0.370396],161,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7165.35,4225.07,0.708158],323,"Up",[]],[[7182.01,4246.35,0.626594],23,"Up",[]],[[7181.54,4240.02,0.493684],255,"Up",[]],[[7171.15,4226.24,4.75797],299,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {

		// Counter Savaka
		[bush_2,nil,7,east,2500] spawn OKS_Hunt_SpawnGroup;
		[bush_3,nil,7,east,2500] spawn OKS_Hunt_SpawnGroup;
		[bush_4,nil,7,east,2500] spawn OKS_Hunt_SpawnGroup;

		[bush_5,nil,["UK3CB_O_G_BTR40_MG", "UK3CB_O_G_BTR60", "UK3CB_O_G_BRDM2", "UK3CB_O_G_LandRover_Open", "UK3CB_O_G_LandRover_Closed"],east,2500] spawn OKS_Hunt_SpawnGroup; sleep 30;
		[bush_1,nil,["UK3CB_O_G_BTR40_MG", "UK3CB_O_G_BTR60", "UK3CB_O_G_BRDM2", "UK3CB_O_G_LandRover_Open", "UK3CB_O_G_LandRover_Closed"],east,2500] spawn OKS_Hunt_SpawnGroup; sleep 30;

		[[],[["UK3CB_CHD_O_Fishing_Boat_DSHKM",[8837.52,3550.99,3.67616],283,[["driver",-1,[]],["commander",-1,[2]],["commander",-1,[3]],["commander",-1,[4]],["turret",-1,[5]]],[[6,["GRW",1]],[7,["ClanLogo_Hide",0,"Ammo_Crates_Hide",0]]]]],[[[7876.13,3811.26,6.42692],[[0,"Move"]]],[[7601.38,3913.29,7.11905],[[0,"Move"]]],[[7261.67,4187.69,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CHD_O_Fishing_Boat_DSHKM",[8789.14,4773.14,10.9871],283,[["driver",-1,[]],["commander",-1,[2]],["commander",-1,[3]],["commander",-1,[4]],["turret",-1,[5]]],[[6,["GRW",1]],[7,["ClanLogo_Hide",0,"Ammo_Crates_Hide",0]]]]],[[[8366.43,4602.49,2.12628],[[0,"Move"]]],[[7803.99,4422.73,8.3487],[[0,"Move"]]],[[7282.88,4283.84,2.85566],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 6: {

		// Patrols
		[[[[2218.68,3635.56,0],0,[]],[[2223.68,3630.56,0],0,[]],[[2213.68,3630.56,0],0,[]],[[2228.68,3625.56,1.90735e-006],0,[]]],[],[[[2099,3638.19,0],[[0,"Move"],[1,"SAFE"]]],[[2092.11,3561.13,9.53674e-007],[[0,"Move"]]],[[2222.29,3576.54,9.53674e-007],[[0,"Move"]]],[[2218.03,3625.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1842.58,3362.16,0],13,[]],[[1846.35,3356.18,0],13,[]],[[1836.6,3358.39,0],13,[]],[[1850.13,3350.2,0],13,[]]],[],[[[1794.28,3645.76,0],[[0,"Move"],[1,"SAFE"]]],[[1703.45,3451.82,0],[[0,"Move"]]],[[1703.45,3268.92,0],[[0,"Move"]]],[[1839.7,3352.39,-1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2560.3,3461.35,0],0,[]],[[2565.3,3456.35,0],0,[]],[[2555.3,3456.35,0],0,[]],[[2570.3,3451.35,0],0,[]]],[],[[[2184.04,3347.87,-9.53674e-007],[[0,"Move"],[1,"SAFE"]]],[[2290.25,3173.1,0],[[0,"Move"]]],[[2588.61,3317.94,0],[[0,"Move"]]],[[2559.64,3451.19,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2041.7,3265.26,0],143,[]],[[2034.71,3266.3,0],143,[]],[[2042.74,3272.26,0],143,[]],[[2027.71,3267.34,0],143,[]]],[],[[[2157.74,3320.33,0],[[0,"Move"],[1,"SAFE"]]],[[2247.51,3501.28,0],[[0,"Move"]]],[[2069.38,3430.78,9.53674e-007],[[0,"Move"]]],[[2036.18,3273.82,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Airfield
		[[[[2194.51,3473.84,14.5648],349,"Up",[]],[[2200.62,3475.82,14.5559],349,"Up",[]],[[2202.1,3470.18,14.1014],44,"Up",[]],[[2199.54,3472.19,18.1849],349,"Up",[]],[[2186.46,3469.06,0.0197906],329,"Up",[]],[[2169.28,3428.54,0.0197906],335,"Up",[]],[[2151.91,3416.5,0.0197906],351,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2111.98,3431.49,0.350282],77,"Up",[]],[[2106.85,3446.05,0.344741],351,"Up",[]],[[2091.8,3442.45,0.391819],6,"Middle",[]],[[2094.36,3442.85,0.370259],349,"Middle",[]],[[2094.34,3436.25,3.45202],349,"Up",[]],[[2092.98,3436.06,3.45292],349,"Up",[]],[[2087.39,3434.66,0.349814],8,"Up",[]],[[2105.53,3433.1,0.242195],325,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2127.03,3349.22,4.56773],351,"Up",[]],[[2134.11,3349.55,4.43331],31,"Up",[]],[[2124.75,3340.98,0],345,"Up",[]],[[2149.61,3340.12,0],345,"Up",[]],[[2141.68,3340.72,0],27,"Middle",[]],[[2148.52,3348.83,0],340,"Up",[]],[[2135.36,3348.15,0.430665],335,"Up",[]],[[2127.07,3348.29,0.539739],4,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 7: {
		// Airfield Counter
		[tush_1,nil,7,east,1500] spawn OKS_Hunt_SpawnGroup;
		[tush_2,nil,7,east,1500] spawn OKS_Hunt_SpawnGroup;
		[tush_3,nil,7,east,1500] spawn OKS_Hunt_SpawnGroup;
		[tush_4,nil,["UK3CB_O_G_BTR40_MG", "UK3CB_O_G_BTR60", "UK3CB_O_G_BRDM2", "UK3CB_O_G_LandRover_Open", "UK3CB_O_G_LandRover_Closed"],east,3000] spawn OKS_Hunt_SpawnGroup; sleep 30;
		[tush_5,nil,["UK3CB_O_G_BTR40_MG", "UK3CB_O_G_BTR60", "UK3CB_O_G_BRDM2", "UK3CB_O_G_LandRover_Open", "UK3CB_O_G_LandRover_Closed"],east,3000] spawn OKS_Hunt_SpawnGroup; sleep 30;
		[tush_6,nil,["UK3CB_O_G_BTR40_MG", "UK3CB_O_G_BTR60", "UK3CB_O_G_BRDM2", "UK3CB_O_G_LandRover_Open", "UK3CB_O_G_LandRover_Closed"],east,3000] spawn OKS_Hunt_SpawnGroup; sleep 30;

		[[],[["UK3CB_CHD_O_Fishing_Boat_DSHKM",[639.47,1727.81,52.5722],356,[["driver",-1,[]],["commander",-1,[2]],["commander",-1,[3]],["commander",-1,[4]],["turret",-1,[5]]],[[6,["GRW",1]],[7,["ClanLogo_Hide",0,"Ammo_Crates_Hide",0]]]]],[[[595.352,3023.67,15.2643],[[0,"Move"]]],[[1325.59,3433.04,18.8667],[[0,"Move"]]],[[1586.36,3438.61,6.7688],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	};


	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
