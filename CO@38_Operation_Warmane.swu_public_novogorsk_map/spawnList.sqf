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

		[true, ["taskarty","task_0"], [format["You have been tasked with silencing the enemy artillery positions along the frontline. Destroy all targets and spike the guns."], "Neutralize Artillery Support", "Artillery"], nil,"CREATED",-1, false,"attack", false] call BIS_fnc_taskCreate;
		[true, ["taskaaa","task_0"], [format["You have been tasked with disrupting the enemies air defence. Find the Anti-air positions and neutralize them."], "Neutralize Air Defences", "Air Defence"], nil,"CREATED",-1, false,"attack", false] call BIS_fnc_taskCreate;
		[true, ["taskvillage","task_0"], [format["The village of Novoshy holds the 84th Mechanized Company who are positioned to block any forces approaching from the north. You have been tasked with clearing the path for the main force, destroy the enemy forces and their barricades."], "Secure Novoshy", "Air Defence"], nil,"CREATED",-1, false,"attack", false] call BIS_fnc_taskCreate;

		[Group HVT_1,getMarkerPos "respawn_east",east,false,nil,false] spawn OKS_fnc_Evacuate_HVT;
		[[barricade_1],"taskvillage"] spawn OKS_fnc_Destroy_Barricade;
		[[barricade_2],"taskvillage"] spawn OKS_fnc_Destroy_Barricade;
		[[barricade_3],"taskvillage"] spawn OKS_fnc_Destroy_Barricade;

		// Trench 1
		[[[[4370.04,2305.67,1.20732],0,"Middle",[]],[[4379.88,2306.1,1.26445],0,"Middle",[]],[[4387.29,2305.17,1.90465],0,"Middle",[]],[[4400.59,2304.17,1.1114],0,"Middle",[]],[[4407.83,2302.65,1.27287],0,"Middle",[]],[[4436.12,2241.57,0.00212097],64,"Up",[]],[[4430.41,2239.87,0],319,"Up",[]],[[4438.43,2236.13,0.115479],96,"Up",[]],[[4427.34,2240.35,0.502441],10,"Up",[]],[[4397.76,2256.03,0.709335],40,"Middle",[]],[[4394.43,2258.79,0.521805],40,"Middle",[]]],[["UK3CB_LDF_B_BMP1",[4376.98,2279.23,0],10,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_LDF_B_BMP1",[4471.9,2238.82,-0.0480042],30,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4428.33,2220.27,4.57764e-05],10,"Middle",[]],[[4426.94,2200.75,0.000106812],359,"Middle",[]],[[4417.36,2223.55,1.52588e-05],356,"Up",[]],[[4390.04,2221.46,0],55,"Up",[]],[[4397.56,2215.68,0],38,"Up",[]],[[4373.82,2203.45,0],40,"Middle",[]]],[["UK3CB_LDF_B_BMP1",[4391.28,2214.43,0.10498],39,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4351.69,2219.41,0.124588],71,"Up",[]],[[4351.39,2220.36,0.127777],71,"Up",[]],[[4346.52,2219.4,0.105087],355,"Middle",[]],[[4345.32,2251.06,0.618576],23,"Up",[]],[[4341.94,2253.09,0.529938],23,"Up",[]],[[4339.07,2243.3,0],21,"Middle",[]]],[["UK3CB_AAF_B_M2_TriPod",[4350.96,2221.48,0.135178],62,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4388.13,2261.77,0],40,"Middle",[]],[[4379.24,2255.59,0],57,"Middle",[]],[[4391.97,2248.76,0],355,"Middle",[]],[[4374.87,2257.79,1.52588e-05],109,"Middle",[]],[[4368.73,2259.38,0],303,"Middle",[]],[[4371.28,2260.68,1.06436],359,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4336.28,2256.23,0],23,"Up",[]],[[4326.97,2250.81,0.223434],39,"Middle",[]],[[4319.25,2255.63,0.971893],23,"Middle",[]],[[4333.03,2249.34,0],32,"Middle",[]]],[["UK3CB_LDF_B_BMP1",[4281.1,2266.78,-0.0480042],7,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[4382.52,2026.48,0],0,[]],[[4387.52,2021.48,0],0,[]],[[4377.52,2021.48,0],0,[]],[[4392.52,2016.48,0],0,[]]],[],[[[4439.36,2127.97,0],[[0,"Move"],[1,"SAFE"]]],[[4297.55,2092.32,0],[[0,"Move"]]],[[4374.35,2028.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4282.36,2171.96,1.52588e-05],0,[]],[[4287.36,2166.96,1.52588e-05],0,[]],[[4277.36,2166.96,0],0,[]],[[4292.36,2161.96,1.52588e-05],0,[]]],[],[[[4347.74,2229.71,0],[[0,"Move"],[1,"SAFE"]]],[[4191.6,2273.25,0],[[0,"Move"]]],[[4274.2,2173.57,3.05176e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4352.71,2100.88,0],0,[]],[[4357.71,2095.88,0],0,[]],[[4347.71,2095.88,1.52588e-05],0,[]],[[4362.71,2090.88,1.52588e-05],0,[]]],[],[[[4345.53,2169.63,0],[[0,"Move"],[1,"SAFE"]]],[[4399.87,2223.61,0.654678],[[0,"Move"]]],[[4416.86,2116.59,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		
		{
			[west,_X,getPos ArtyTarget_1,7,300,180] spawn OKS_fnc_ArtyFire; sleep 0.5 + (random 1.5);
			[_X,"Neutralize D-30","D-30 Artillery","You need to neutralize this %1. It is pounding our infantry forces to the north. Eliminate it before it disrupts the main attacking force!","destroy","taskarty",true,false,true] spawn OKS_fnc_Destroy_Task;
		} foreach [arty_1,arty_2,arty_3,arty_4,arty_5,arty_6];

		{
			[_X,west,false,2000,true] spawn OKS_fnc_Ambient_AAA;	
			[_X,"Eliminate Air Defence","ZU-23","You need to neutralize this %1. It is stopping the freedom of movement for our air assets!","destroy","taskaaa",true,false,true] spawn OKS_fnc_Destroy_Task;
			sleep 2;
		} foreach [aaa_1,aaa_2,aaa_3,aaa_4];
	};

	case 2: {

		// Trench 1 Counter-Attack
		private _ArrayOfCounterAttack = [];
		[true, ["taskcounter","task0"], [format["An enemy counter-attack is inbound to retake Strongpoint K. Repel the attack! Infantry and mechanized forces are inbound!"], "Repel Counter-Attack", "Defend"], [4332.62,2203.67,0],"ASSIGNED",-1, false,"defend", true] call BIS_fnc_taskCreate;
		["hq","side","1-1 be advised, an enemy counter-attack is inbound on your position. Expect enemy forces from the south and west. Good luck, out"] remoteExec ["OKS_fnc_Chat",0];
		
		sleep 30;

		{
			[_X,"rush",4,west,1000,_ArrayOfCounterAttack] spawn OKS_fnc_Lambs_SpawnGroup; sleep 5;
		} foreach [rush_1,rush_2,rush_3,rush_4,rush_5];

		sleep 60;

		{
			[_X,NEKY_Hunt_Trigger_1,"UK3CB_LDF_B_BMP1",4,west,1000,_ArrayOfCounterAttack] spawn OKS_fnc_Mechanized_Spawn; sleep 20;
		} foreach [mech_1,mech_2,mech_1];

		waitUntil{sleep 5; {Alive _X || [_X] call ace_common_fnc_isAwake} count _ArrayOfCounterAttack == 0};
		["taskcounter","SUCCEEDED",true] call BIS_fnc_taskSetState;
	};

	case 3: {

		// Trench 2
		[[[[3709.43,2116.14,0.581055],79,"Middle",[]],[[3706.94,2112.49,0.0798645],13,"Middle",[]],[[3706.61,2124.01,0],92,"Middle",[]],[[3715.59,2097.83,0.13237],123,"Up",[]],[[3713.39,2108.56,0.592422],61,"Up",[]],[[3712.25,2099.19,-1.52588e-05],61,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3701.62,2129.18,0.105148],271,"Middle",[]],[[3706.04,2129.63,0],82,"Middle",[]],[[3706.15,2137.96,0],13,"Middle",[]],[[3698.83,2145.71,0.0218964],13,"Middle",[]],[[3706.83,2143.55,0],13,"Middle",[]],[[3712.04,2150.15,0],58,"Up",[]],[[3710.07,2153.07,0],58,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3706.55,2161.36,0],120,"Up",[]],[[3703.6,2157.93,0.0100555],58,"Middle",[]],[[3700.13,2159.26,0],142,"Middle",[]],[[3700.07,2172.06,0],177,"Middle",[]],[[3707.62,2173.19,0],85,"Up",[]],[[3711.75,2184.06,0.315735],53,"Up",[]],[[3712.54,2181.34,0.21254],53,"Up",[]],[[3713.77,2178.53,0.0692749],110,"Up",[]],[[3709.88,2176.12,0.188477],149,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3701.38,2182.04,-1.52588e-05],123,"Middle",[]],[[3694.65,2182.41,1.52588e-05],274,"Middle",[]],[[3700.98,2241.26,0],163,"Middle",[]],[[3702.03,2238.57,-1.52588e-05],124,"Up",[]],[[3695.85,2229.61,-1.52588e-05],118,"Middle",[]],[[3702.22,2222.04,0.101913],108,"Up",[]],[[3701.83,2214.28,1.52588e-05],190,"Middle",[]]],[["UK3CB_LDF_B_BMP1",[3684.68,2195.5,0],91,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3702.21,2280.02,0.0561829],163,"Middle",[]],[[3699.5,2276.26,0.170883],163,"Middle",[]],[[3694.76,2265.56,0.0961456],241,"Middle",[]],[[3701.94,2271.29,1.00191],131,"Middle",[]],[[3702.91,2257.71,0],56,"Middle",[]],[[3702.84,2249.42,0.220657],163,"Middle",[]],[[3702.26,2303.35,0.243912],186,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3718.39,2326.85,0.679489],83,"Middle",[]],[[3719.14,2324.41,0.648163],83,"Middle",[]],[[3717.6,2321.45,0.65036],142,"Middle",[]],[[3715.39,2314.81,0.727493],83,"Middle",[]],[[3713.99,2306.86,0.19017],83,"Middle",[]],[[3717.49,2301.93,0.859055],83,"Middle",[]],[[3710.16,2295.96,0.478973],186,"Middle",[]],[[3713.23,2300.57,0.259247],312,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3683.3,2275.89,-0.0112762],100,"Up",[]],[[3676.36,2270.13,0],100,"Up",[]],[[3675.62,2280.48,1.52588e-05],167,"Up",[]],[[3664.93,2275.88,0.17514],171,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrols.
		[[[[3647.53,2247.11,1.44908],0,[]],[[3652.53,2242.11,1.34274],0,[]],[[3642.53,2242.11,3.05176e-05],0,[]],[[3657.53,2237.11,0.500595],0,[]]],[],[[[3683.36,2394.28,0],[[0,"Move"],[1,"SAFE"]]],[[3691.24,2313.44,0.654709],[[0,"Move"]]],[[3680.78,2240.55,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3695.06,2070.49,0],0,[]],[[3700.06,2065.49,0],0,[]],[[3690.06,2065.49,1.52588e-05],0,[]],[[3705.06,2060.49,1.52588e-05],0,[]]],[],[[[3669.55,2191.9,0],[[0,"Move"],[1,"SAFE"]]],[[3727.55,2172.93,0.654694],[[0,"Move"]]],[[3728.12,2080.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 4: {

		// Trench 3
		[[[[3079.14,2387.47,1.52588e-05],247,"Middle",[]],[[3083.22,2388.45,0.483276],145,"Middle",[]],[[3093.97,2391.66,0.0900879],145,"Middle",[]],[[3097.21,2401.82,0],205,"Middle",[]],[[3105.02,2407.43,0],297,"Middle",[]],[[3104.49,2404.72,1.46475],142,"Middle",[]],[[3113.06,2413.16,0],145,"Middle",[]],[[3123.97,2411.38,0],134,"Up",[]],[[3126.36,2414.5,1.52588e-05],134,"Up",[]],[[3127.42,2417.04,-1.52588e-05],134,"Up",[]],[[3122.34,2417.29,0.036911],134,"Middle",[]],[[3116.67,2427.89,0],151,"Middle",[]]],[["UK3CB_LDF_B_BMP1",[3123.44,2349.8,1.52588e-05],101,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3109.21,2439.55,1.52588e-05],108,"Middle",[]],[[3101.56,2443.56,1.52588e-05],263,"Up",[]],[[3096.88,2463.4,1.52588e-05],157,"Up",[]],[[3108.44,2476.56,0.357101],86,"Up",[]],[[3107.55,2479.64,0.409912],86,"Up",[]],[[3107.05,2482.55,0.46489],86,"Up",[]],[[3103.26,2479.55,0.374527],353,"Middle",[]],[[3088.23,2484.91,-1.52588e-05],105,"Up",[]],[[3087.92,2461.96,0],90,"Middle",[]],[[3077.89,2457.12,0],43,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3085.77,2503.42,0],86,"Middle",[]],[[3071.44,2508.04,0],83,"Middle",[]],[[3064.92,2500.46,-1.52588e-05],360,"Middle",[]],[[3066.02,2496.14,0.569443],193,"Middle",[]],[[3056,2497.33,0.641388],217,"Middle",[]],[[3056.85,2506.97,0],128,"Middle",[]],[[3067.77,2461.05,0],90,"Middle",[]],[[3072.31,2456.62,0],90,"Middle",[]],[[3060.5,2460.01,0],244,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3065.77,2535.64,0],141,"Middle",[]],[[3064.26,2551.19,0.52269],53,"Up",[]],[[3061.76,2552.48,0.700699],53,"Up",[]],[[3059.33,2553.7,0.873718],53,"Up",[]],[[3046.45,2542.55,0],53,"Middle",[]],[[3044.1,2538.98,0.849228],124,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3034.52,2535.35,0],18,"Middle",[]],[[3029,2530.28,0],90,"Middle",[]],[[3019.56,2531.35,-1.52588e-05],18,"Middle",[]],[[3014.53,2529.05,1.52588e-05],259,"Middle",[]]],[["UK3CB_LDF_B_BMP1",[2996.47,2525.7,0],125,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[2872.2,2397.21,0],0,[]],[[2877.2,2392.21,0],0,[]],[[2867.2,2392.21,0],0,[]],[[2882.2,2387.21,0],0,[]]],[],[[[2926.43,2448.41,0],[[0,"Move"],[1,"SAFE"]]],[[2961.56,2390.82,0.654663],[[0,"Move"]]],[[2895.68,2346.21,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2938.58,2472.33,1.52588e-05],0,[]],[[2943.58,2467.33,0],0,[]],[[2933.58,2467.33,3.05176e-05],0,[]],[[2948.58,2462.33,1.52588e-05],0,[]]],[],[[[2942.4,2547.15,1.52588e-05],[[0,"Move"],[1,"SAFE"]]],[[3007.07,2531.39,0.654663],[[0,"Move"]]],[[2997.15,2455.04,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3009.27,2362.01,0],0,[]],[[3014.27,2357.01,0],0,[]],[[3004.27,2357.01,1.52588e-05],0,[]],[[3019.27,2352.01,1.52588e-05],0,[]]],[],[[[2991.43,2439.37,0],[[0,"Move"],[1,"SAFE"]]],[[3021.11,2444.53,0.654709],[[0,"Move"]]],[[3041.08,2380.27,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 5: {

		// Village
		[[[[2659.64,2559.61,1.52588e-05],0,[]],[[2664.64,2554.61,-1.52588e-05],0,[]],[[2654.64,2554.61,-1.52588e-05],0,[]],[[2669.64,2549.61,1.52588e-05],0,[]]],[],[[[2756.85,2682.77,0],[[0,"Move"]]],[[2535.17,2652.42,1.52588e-05],[[0,"Move"]]],[[2630.17,2558.73,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2548.36,2650.94,0.373581],0,[]],[[2553.36,2645.94,0.373581],0,[]],[[2543.36,2645.94,0.373581],0,[]],[[2558.36,2640.94,0.373581],0,[]]],[],[[[2645.57,2774.1,0.373581],[[0,"Move"]]],[[2423.88,2743.75,1.93259],[[0,"Move"]]],[[2518.89,2650.06,0.373581],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2398.81,2707.24,0],0,[]],[[2403.81,2702.24,0],0,[]],[[2393.81,2702.24,0],0,[]],[[2408.81,2697.24,0],0,[]]],[],[[[2496.02,2830.4,0],[[0,"Move"]]],[[2274.34,2800.05,0],[[0,"Move"]]],[[2369.34,2706.36,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2676.8,2718.68,1.52588e-05],264,[]],[[2681.27,2724.15,1.52588e-05],264,[]],[[2682.27,2714.2,1.52588e-05],264,[]],[[2685.75,2729.62,0],264,[]]],[],[[[2544.57,2803.13,1.52588e-05],[[0,"Move"]]],[[2596.85,2585.58,3.05176e-05],[[0,"Move"]]],[[2680.61,2689.44,1.52588e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2447.13,2821.21,-1.52588e-05],201,[]],[[2444.3,2827.69,0],201,[]],[[2453.61,2824.03,0],201,[]],[[2441.48,2834.17,-1.52588e-05],201,[]]],[],[[[2311.58,2742.18,3.05176e-05],[[0,"Move"]]],[[2528.99,2689.27,0.131287],[[0,"Move"]]],[[2474.87,2811.24,1.08569],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		

		[[],[["UK3CB_LDF_B_BMP1",[2721.59,2602.78,0],114,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_LDF_B_BMP1",[2616.08,2685.56,0],77,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_LDF_B_BMP1",[2502.04,2762.84,0],55,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_LDF_B_BMP1",[2263.46,2781.7,1.52588e-05],73,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["RHS_M2StaticMG_D",[2397.88,2722.89,0.108871],147,[["gunner",-1,[0]]],[]],["rhsgref_cdf_b_SPG9",[2422.18,2783.08,0],113,[["gunner",-1,[0]]],[]],["rhsgref_cdf_b_SPG9",[2526.1,2722.9,0],113,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2714.14,2591.3,0.796112],25,"Up",[]],[[2710.25,2592.82,0.487244],12,"Up",[]],[[2713.72,2589.1,0.720596],109,"Up",[]],[[2712.61,2587.31,0.59787],209,"Up",[]],[[2730.97,2632.35,0.93602],219,"Up",[]],[[2737.79,2630.11,1.45998],182,"Middle",[]],[[2733.38,2632.05,1.22942],29,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2435.19,2754.43,4.13046],132,"Middle",[]],[[2432.82,2762.32,3.8121],64,"Middle",[]],[[2431.24,2761.66,0],220,"Middle",[]],[[2426.68,2757.26,0],96,"Middle",[]],[[2434.74,2754.35,0.401352],175,"Middle",[]],[[2435.07,2760.42,0],175,"Middle",[]],[[2424.08,2754.82,0.382599],91,"Middle",[]],[[2417.38,2759.29,0],109,"Middle",[]],[[2416.87,2755.84,0],80,"Middle",[]],[[2423.78,2761.16,0.315964],360,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2280.29,2777.52,0.594437],72,"Middle",[]],[[2281.64,2776.28,0.636414],72,"Middle",[]],[[2282.18,2773.86,0.636459],72,"Middle",[]],[[2280.17,2771.2,0.480377],117,"Middle",[]],[[2269.46,2766.7,0.573608],182,"Middle",[]],[[2267.7,2770.07,0.489899],358,"Middle",[]],[[2263.99,2769.38,0.543106],182,"Middle",[]],[[2265.63,2765.51,0.642197],182,"Middle",[]],[[2261.91,2768.04,0.0354156],275,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2537.16,2693.39,0.0385284],122,"Up",[]],[[2535.24,2696.39,0],69,"Up",[]],[[2531.48,2698.54,0],32,"Up",[]],[[2531.78,2692.73,0],120,"Up",[]],[[2534.09,2688.85,0.636887],107,"Middle",[]],[[2532.88,2686.69,0.179413],98,"Up",[]],[[2527.98,2689.01,0],32,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Trench Guards.
		[[[[2171.31,2481.2,0.112122],0,"Up",[]],[[2175.04,2483.5,0.232666],0,"Up",[]],[[2180.18,2485.08,0.216568],0,"Up",[]],[[2187.48,2486.26,0.218857],0,"Up",[]],[[2193.92,2492.07,0.112137],0,"Up",[]],[[2204.05,2495.24,0.218872],0,"Up",[]],[[2203.55,2491.71,0.217926],0,"Up",[]],[[2212.97,2485.54,0.214706],0,"Up",[]],[[2233.32,2483.98,0.220032],0,"Up",[]],[[2245.35,2480.93,0.214081],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		{
			[getPos _X,"rush",2,west,1500,[],StopSpawn] spawn OKS_fnc_Lambs_Spawner;
		} foreach [hunt_1,hunt_2,hunt_3,hunt_4];
	
	};

	case 6: {

		// Supply Depot
		[[[[1490.63,2623.33,0.0908661],221,"Middle",[]],[[1490.35,2630.84,0.0871277],239,"Middle",[]],[[1483.04,2634.24,0.0862732],137,"Up",[]],[[1452.83,2602.45,5.09581],116,"Middle",[]],[[1450.59,2600.08,4.81699],116,"Middle",[]],[[1430.14,2601.22,3.52809],77,"Up",[]],[[1430.84,2600.31,3.51785],77,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1463.32,2646.33,0.506592],129,"Middle",[]],[[1459.54,2640.44,1.14006],138,"Middle",[]],[[1456.8,2635.96,0.641312],129,"Middle",[]],[[1464.65,2654.69,0.0906219],79,"Middle",[]]],[["UK3CB_LDF_B_BMP1",[1403.96,2667.45,1.52588e-05],31,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_LDF_B_BMP1",[1335.74,2676.96,0],295,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1505.36,2601.09,0.311691],300,"Up",[]],[[1513.4,2609.06,0.566299],302,"Up",[]],[[1501.8,2615.82,0.0879669],320,"Middle",[]],[[1482.41,2608.59,0],74,"Middle",[]]],[["UK3CB_LDF_B_BMP1",[1492.97,2580.74,0],167,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_LDF_B_BMP1",[1653.72,2641.48,0],72,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1490.59,2640.72,0.373138],144,"Up",[]],[[1506.52,2637.78,0.407349],246,"Up",[]],[[1520.25,2650.57,0.198898],45,"Up",[]],[[1524.23,2637.79,0.441559],136,"Up",[]],[[1518.02,2632.65,0.60939],167,"Up",[]],[[1510.18,2625.44,0.679947],273,"Up",[]],[[1511.55,2630.8,0.602341],300,"Middle",[]],[[1505.79,2630.6,0.50209],51,"Middle",[]],[[1523.25,2646.49,0.247665],195,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrol
		[[[[1947.4,2517.55,5.26872],0,[]],[[1952.4,2512.55,5.26872],0,[]],[[1942.4,2512.55,5.26872],0,[]],[[1957.4,2507.55,5.26872],0,[]]],[],[[[1914.85,2644.82,0],[[0,"Move"],[1,"SAFE"]]],[[1741.11,2613.6,0],[[0,"Move"]]],[[1788.62,2490.44,0],[[0,"Move"]]],[[1934.21,2508.03,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1705.49,2594.96,6.15541],0,[]],[[1710.49,2589.96,5.26811],0,[]],[[1700.49,2589.96,6.19049],0,[]],[[1715.49,2584.96,5.26811],0,[]]],[],[[[1721.76,2698.93,0],[[0,"Move"],[1,"SAFE"]]],[[1568.26,2663.74,0],[[0,"Move"]]],[[1555.5,2577.53,0],[[0,"Move"]]],[[1692.29,2585.44,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1481.15,2535.38,5.26871],34,[]],[[1482.5,2528.44,5.26871],34,[]],[[1474.21,2534.03,5.26871],34,[]],[[1483.86,2521.5,5.26871],34,[]]],[],[[[1504.92,2665.94,0],[[0,"Move"],[1,"SAFE"]]],[[1417.83,2687.49,1.52588e-05],[[0,"Move"]]],[[1359.33,2595.56,0],[[0,"Move"]]],[[1464.89,2534.86,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1570.05,2418.42,5.26869],115,[]],[[1563.41,2416.01,5.26869],115,[]],[[1567.64,2425.07,5.26872],115,[]],[[1556.76,2413.59,5.26868],115,[]]],[],[[[1699.15,2394.08,0.00012207],[[0,"Move"],[1,"SAFE"]]],[[1744.35,2564.72,0.00012207],[[0,"Move"]]],[[1612.66,2573.77,0.474014],[[0,"Move"]]],[[1567.01,2434.41,0.000106812],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Motor Pool
		[[[[1765.54,2530.36,0],69,"Up",[]],[[1757.62,2531.04,0],354,"Up",[]],[[1748.67,2533.83,0],162,"Up",[]],[[1781.97,2516.02,0.47052],357,"Up",[]],[[1797.9,2518.67,0],40,"Up",[]],[[1795.78,2518.6,0],322,"Up",[]],[[1750.51,2509.49,1.52588e-05],160,"Up",[]],[[1747.06,2496.52,0.78215],215,"Up",[]]],[["UK3CB_LDF_B_BMP1",[1786.43,2483.04,1.52588e-05],12,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1738.48,2527.65,0],171,"Up",[]],[[1724.77,2502.77,-1.52588e-05],62,"Up",[]],[[1717.65,2496.64,0],39,"Middle",[]],[[1727.18,2486.45,0.242538],138,"Middle",[]],[[1722.58,2492.07,7.03848],231,"Middle",[]],[[1726.98,2484.28,6.64355],207,"Middle",[]],[[1729.73,2492.58,0.546707],258,"Middle",[]],[[1740.4,2498.15,0.820801],11,"Up",[]]],[["UK3CB_LDF_B_BMP1",[1702.33,2458.43,3.05176e-05],57,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;	
	};

	case 7: {

		// HQ
		[[],[["UK3CB_LDF_B_BMP2",[2131.34,1820.45,1.52588e-05],72,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1]]]],["UK3CB_LDF_B_BMP1",[2001.65,1875.37,0],146,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_LDF_B_BMP1",[1975.02,1928.06,0],356,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_LDF_B_BMP1",[2026.21,2004.33,0],46,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["LDF",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2028.86,1947.28,5.92537],80,"Up",[]],[[2041.5,1945.4,6.97479],80,"Up",[]],[[2042.11,1949.17,7.11339],80,"Up",[]],[[2039.62,1940.07,10.6154],80,"Up",[]],[[2044.76,1934.07,11.7513],80,"Up",[]],[[2047.32,1922.38,11.3458],80,"Up",[]],[[2054.56,1924.29,23.7685],80,"Up",[]],[[2056.42,1921.44,23.6942],80,"Up",[]],[[2057.14,1917.12,6.32939],80,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2001.65,1939.84,3.7607],174,"Up",[]],[[1994.01,1945.36,3.57167],174,"Up",[]],[[1995.45,1935.58,3.50697],174,"Up",[]],[[2019.82,1946.77,4.23047],80,"Up",[]],[[2001.26,1939.48,1.21794],174,"Up",[]],[[1997.83,1935.77,1.06331],174,"Up",[]],[[1993.16,1941.23,0.975174],174,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2018.56,1897.94,0.62413],80,"Up",[]],[[2024.02,1912.99,6.02104],80,"Up",[]],[[2009.55,1918.96,3.74017],174,"Up",[]],[[2001.91,1924.48,3.59531],174,"Up",[]],[[2003.35,1914.7,3.47826],174,"Up",[]],[[2009.16,1918.6,1.19897],174,"Up",[]],[[2005.73,1914.89,1.02425],174,"Up",[]],[[2001.06,1920.35,0.990646],174,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrol
		[[[[1621.71,2055.83,5.26859],0,[]],[[1626.71,2050.83,5.26859],0,[]],[[1616.71,2050.83,5.2686],0,[]],[[1631.71,2045.83,5.26859],0,[]]],[],[[[1589.16,2183.11,0],[[0,"Move"],[1,"SAFE"]]],[[1415.42,2151.88,0],[[0,"Move"]]],[[1462.92,2028.72,0],[[0,"Move"]]],[[1608.51,2046.32,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1663.99,2272.16,5.26833],0,[]],[[1668.99,2267.16,5.26833],0,[]],[[1658.99,2267.16,5.26834],0,[]],[[1673.99,2262.16,5.26831],0,[]]],[],[[[1631.44,2399.44,0],[[0,"Move"],[1,"SAFE"]]],[[1457.7,2368.21,0],[[0,"Move"]]],[[1505.21,2245.05,0],[[0,"Move"]]],[[1650.79,2262.65,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1971.65,2376.18,5.26866],0,[]],[[1976.65,2371.18,5.26863],0,[]],[[1966.65,2371.18,5.26868],0,[]],[[1981.65,2366.18,5.26865],0,[]]],[],[[[1923.73,2480.16,0],[[0,"Move"],[1,"SAFE"]]],[[1765.36,2472.23,6.10352e-05],[[0,"Move"]]],[[1812.86,2349.07,4.57764e-05],[[0,"Move"]]],[[1958.45,2366.67,4.57764e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};

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
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};


