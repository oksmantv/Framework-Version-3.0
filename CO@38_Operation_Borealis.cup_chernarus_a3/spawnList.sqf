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

SystemChat format ["GW_Fnc_spawnList Executed - Case: %1", _case];

switch (_case) do {

	case 1: {

		// Railroad Contacts.
		[[
			[[2009.17,11346.6,0.169708],322,"Up",[[301,0]],"ar"],
			[[2010.95,11351.7,0.176758],322,"Up",[[301,0]],"ar"],
			//[[2003.54,11330,0.246811],319,"Up",[[301,0]],"ar"],
			[[2007.09,11326.4,1.43033],327,"Up",[[301,0]],"ab"],
			//[[2021.82,11362.6,0.0205688],292,"Middle",[[301,0]],"ab"],
			[[2003.63,11402.8,-1.52588e-05],279,"Middle",[[301,0]],"ab"]
		],[],[],east] call GW_Common_fnc_spawnGroup;

		// Tanks at Airfield.
		[[],[["UK3CB_CHD_O_T72A",[4221.03,10365.8,0],233,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["FIA",1]],[7,["Tanks_Hide",0]],[351,false]]],
			["UK3CB_CHD_O_T72A",[4497.91,9493.08,-0.00274658],214,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["FIA",1]],[7,["Tanks_Hide",0]],[351,false]]]
		],[],east] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CHD_O_T72A",[4651.7,10690.9,0],321,[["gunner",-1,[0]]],[[6,["FIA",1]],[7,["Tanks_Hide",0]],[351,false]]],["UK3CB_CHD_O_T72A",[5139.38,9775.17,0],86,[["gunner",-1,[0]]],[[6,["FIA",1]],[7,["Tanks_Hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CHD_O_T72A",[4539.12,9866.45,0],178,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["FIA",1]],[7,["Tanks_Hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;

		// Artillery fire
		null = [west,Arty_1,getpos ArtyTarget_1,7,300,30,false] spawn OKS_fnc_ArtyFire; sleep 2;
		null = [west,Arty_8,getpos ArtyTarget_1,7,300,30,false] spawn OKS_fnc_ArtyFire; sleep 3;
		null = [west,Arty_9,getpos ArtyTarget_1,7,300,30,false] spawn OKS_fnc_ArtyFire;

		[[[[2009.17,11346.6,0.169708],322,"Up",[[301,0]],"ar"],[[2010.95,11351.7,0.176758],322,"Up",[[301,0]],"ar"],[[2003.54,11330,0.246811],319,"Up",[[301,0]],"ar"],[[2007.09,11326.4,1.43033],327,"Up",[[301,0]],"ab"],[[2021.82,11362.6,0.0205688],292,"Middle",[[301,0]],"ab"],[[2003.63,11402.8,-1.52588e-05],279,"Middle",[[301,0]],"ab"]],[],[],east] call GW_Common_fnc_spawnGroup;
		
		// Patrols Vavivlo
		[[[[2227.61,11055.2,0],194,[[301,0]],"ftl"],[[2224.01,11061.3,0.851776],194,[[301,0]],"ar"],[[2233.7,11058.8,3.05176e-05],194,[[301,0]],"g"],[[2227.09,11065.9,0],194,[[301,0]],"mat"]],[],[[[2169.1,11089.5,0],[[0,"Move"],[1,"SAFE"]]],[[2218.25,11195.6,3.05176e-05],[[0,"Move"]]],[[2248.07,11093.7,0],[[0,"Move"]]],[[2232.29,11062,3.05176e-05],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[2209.01,10966.5,0],327,[[301,0]],"ftl"],[[2215.93,10965.1,0.851807],327,[[301,0]],"ar"],[[2207.58,10959.6,0],327,[[301,0]],"g"],[[2222.86,10963.7,0],327,[[301,0]],"mat"]],[],[[[2239.98,11002.3,0],[[0,"Move"],[1,"SAFE"]]],[[2278.81,10975.5,0],[[0,"Move"]]],[[2254.24,10941.2,0],[[0,"Move"]]],[[2217.24,10962.5,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		
		// Statics Vavilovo
		[[[[2224.84,11119.1,0],253,"Middle",[[301,0]],"ab"],[[2234.38,11092.3,0],275,"Middle",[[301,0]],"ab"],[[2225.32,11047.7,0],327,"Middle",[[301,0]],"ab"],[[2253.69,10977.4,0],312,"Middle",[[301,0]],"ab"],[[2187.51,11091.3,3.40796],64,"Up",[[301,0]],"ab"],[[2215.35,11011.1,0],349,"Middle",[[301,0]],"ab"],[[2249.93,10890.8,0],317,"Up",[[301,0]],"ab"],[[2248.55,10871.5,0],307,"Up",[[301,0]],"ar"]],[],[],east] call GW_Common_fnc_spawnGroup;

		// HMGs Vavilovo and West Sentry.
		[[],[["UK3CB_CHD_O_UAZ_MG",[2544.9,11002.6,0],296,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]],[351,false]]],["UK3CB_CHD_O_UAZ_MG",[1534.8,10441,9.15527e-05],354,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]],[351,false]]],["UK3CB_CHD_O_UAZ_MG",[1547.04,10373.6,0],326,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;

		/// AAA
		[[],[
			["UK3CB_CHD_O_Ural_Zu23",[4363.68,10443.7,0],325,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]],[351,false]]],
			["UK3CB_CHD_O_Ural_Zu23",[3726.67,8248.39,0.319214],325,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]],[351,false]]],
			["UK3CB_CHD_O_Ural_Zu23",[3588.73,6926.48,0.559418],325,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]],[351,false]]],
			["UK3CB_CHD_O_Ural_Zu23",[8058.17,9232.57,0.319153],325,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]],[351,false]]]
		],[],east] call GW_Common_fnc_spawnGroup;
		[[],[
			["UK3CB_CW_SOV_O_Early_VDV_ZU23",[6167.87,7787.88,-3.05176e-05],0,[["gunner",-1,[0]]],[[7,["Unfold",0]],[351,false]]],
			["UK3CB_CSAT_A_O_ZU23",[704.659,8790.15,-3.05176e-05],0,[["gunner",-1,[0]]],[[7,["Unfold",0]],[351,false]]]
		],[],east] call GW_Common_fnc_spawnGroup;
		null = [aaa_1,civilian,false,1500,false] spawn OKS_fnc_Ambient_AAA;
		[[],[
			["UK3CB_CHD_O_Gaz66_ZU23",[5255.04,3780.04,1.52588e-05],344,[["driver",-1,[]],["gunner",-1,[0]],["turret",1,[1]]],[[6,["CHDKZ",1]],[7,["cover_hide",0,"spare_hide",0,"bench_hide",0,"rear_numplate_hide",1,"light_hide",0]],[351,false]]]
		],[],east] call GW_Common_fnc_spawnGroup;

		// AA.
		[[],[["rhs_Igla_AA_pod_msv",[6907.38,4936.91,0.317902],0,[["gunner",-1,[0]]],[[351,false]]],["rhs_Igla_AA_pod_msv",[6887.35,4929.03,0.00396729],0,[["gunner",-1,[0]]],[[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		
		
		null = [east,Arty_2,getpos ArtyTarget_2,4,240,90,false] spawn OKS_fnc_ArtyFire; sleep 1.2;
		null = [east,Arty_3,getpos ArtyTarget_2,4,300,90,false] spawn OKS_fnc_ArtyFire; sleep 0.7;
		null = [east,Arty_7,getpos ArtyTarget_3,4,243,90,false] spawn OKS_fnc_ArtyFire;
		sleep 15;
		[[],[["rhsgref_cdf_b_Mi24D_Early",[13.7468,13635.3,71.5584],177,[["driver",-1,[]]],[[6,["Camo7",1]],[351,false]]]],[[[282.151,12509.2,0],[[0,"Move"],[1,"CARELESS"],[2,"BLUE"],[5,"FULL"]]],[[1064.77,12076.1,-3.05176e-05],[[0,"Move"]]],[[7693.27,9149.82,-3.05176e-05],[[0,"Move"]]],[[7890.08,6365.46,0],[[0,"Move"]]],[[5417.5,4249.15,0],[[0,"Move"]]],[[1009.41,8359.47,0],[[0,"Move"]]],[[12617.5,14592.2,0],[[0,"Move"],[7,["true","deleteVehicle vehicle _this; {deleteVehicle (vehicle _X); deleteVehicle _X} foreach thisList;"]]]]],west] call GW_Common_fnc_spawnGroup;
		sleep 60;	
		[[],[["rhsgref_cdf_b_Mi24D_Early",[13.7468,13635.3,71.5584],177,[["driver",-1,[]]],[[6,["Camo7",1]],[351,false]]]],[[[282.151,12509.2,0],[[0,"Move"],[1,"CARELESS"],[2,"BLUE"],[5,"FULL"]]],[[1064.77,12076.1,-3.05176e-05],[[0,"Move"]]],[[7693.27,9149.82,-3.05176e-05],[[0,"Move"]]],[[7890.08,6365.46,0],[[0,"Move"]]],[[5417.5,4249.15,0],[[0,"Move"]]],[[1009.41,8359.47,0],[[0,"Move"]]],[[12617.5,14592.2,0],[[0,"Move"],[7,["true","deleteVehicle vehicle _this; {deleteVehicle (vehicle _X); deleteVehicle _X} foreach thisList;"]]]]],west] call GW_Common_fnc_spawnGroup;
		sleep 60;
		[[],[["rhsgref_cdf_b_Mi24D_Early",[13.7468,13635.3,71.5584],177,[["driver",-1,[]]],[[6,["Camo7",1]],[351,false]]]],[[[282.151,12509.2,0],[[0,"Move"],[1,"CARELESS"],[2,"BLUE"],[5,"FULL"]]],[[1064.77,12076.1,-3.05176e-05],[[0,"Move"]]],[[7693.27,9149.82,-3.05176e-05],[[0,"Move"]]],[[7890.08,6365.46,0],[[0,"Move"]]],[[5417.5,4249.15,0],[[0,"Move"]]],[[1009.41,8359.47,0],[[0,"Move"]]],[[12617.5,14592.2,0],[[0,"Move"],[7,["true","deleteVehicle vehicle _this; {deleteVehicle (vehicle _X); deleteVehicle _X} foreach thisList;"]]]]],west] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		// Front line Ambience
		[
            getPos civilianStart_1,
            getPos civilianEnd_1,
            selectRandom ["UK3CB_ADC_C_Datsun_Civ_Open", "UK3CB_ADC_C_Hatchback", "UK3CB_ADC_C_Skoda"],
            7,
            true
        ] spawn OKS_fnc_Civilian_Vehicle;
		[
            getPos civilianStart_2,
            getPos civilianEnd_2,
            selectRandom ["UK3CB_ADC_C_Datsun_Civ_Open", "UK3CB_ADC_C_Hatchback", "UK3CB_ADC_C_Skoda"],
            7,
            true
        ] spawn OKS_fnc_Civilian_Vehicle;

		sleep 5;

		null = [mortar_1,west,"barrage","light",[getPosATL MortarTarget_1,50],150,600,16,-1,4] spawn OKS_fnc_Mortars; sleep 1;
		null = [mortar_2,west,"barrage","light",[getPosATL MortarTarget_2,50],150,600,16,-1,4] spawn OKS_fnc_Mortars; sleep 1;

		_battleRef1 = [AIBattle_SpawnA_1,AIBattle_SpawnB_1,AIBattle_Meet_1,west,east,["rhsgref_cdf_b_bmp1d"],["UK3CB_CHD_O_BMP1"],west,true,240,1,60,1,2000] call OKS_fnc_AI_Battle; sleep 5;
		_battleRef2 = [AIBattle_SpawnA_2,AIBattle_SpawnB_2,AIBattle_Meet_2,west,east,["rhsgref_cdf_b_bmp1d"],["UK3CB_CHD_O_BMP1"],west,true,240,1,60,1,2000] call OKS_fnc_AI_Battle; sleep 5;
		
		// Friendly Squad Crossroad & Railroad
		[[
			[[1969.37,11572.3,0],121,"Middle",[[301,0]],"g"],
			[[1963.91,11567.1,9.15527e-05],121,"Middle",[[301,0]],"ftl"],
			[[1921.91,11531.2,0],121,"Middle",[[301,0]],"ar"],
			//[[1915.99,11526.1,3.05176e-05],121,"Middle",[[301,0]],"mat"],
			//[[2006.02,11601.4,0],121,"Down",[[301,0]],"ftl"],
			[[1990.93,11589.5,1.52588e-05],121,"Down",[[301,0]],"ar"],
			//[[2024.31,11617.4,0],121,"Up",[[301,0]],"g"],
			[[1979.15,11579.5,0],121,"Middle",[[301,0]],"mat"]
		],[
			["rhsusf_m1025_w_m2",[2022.06,11613.4,0],79,[["gunner",-1,[0]]],[[6,["standard",1]],[7,["hide_snorkel",1,"hide_CIP",0,"hide_BFT",0,"hide_Antenna",0,"hide_A2_Parts",0,"Hide_A2Bumper",0,"Hide_Brushguard",1]],[351,false]]],
			["rhsusf_m1025_w_m2",[1966.38,11568.5,-3.05176e-05],50,[["gunner",-1,[0]]],[[6,["standard",1]],[7,["hide_snorkel",1,"hide_CIP",0,"hide_BFT",0,"hide_Antenna",0,"hide_A2_Parts",0,"Hide_A2Bumper",0,"Hide_Brushguard",1]],[351,false]]],
			["rhsusf_m1025_w_m2",[1919.23,11528.2,0],50,[["gunner",-1,[0]]],[[6,["standard",1]],[7,["hide_snorkel",1,"hide_CIP",0,"hide_BFT",0,"hide_Antenna",0,"hide_A2_Parts",0,"Hide_A2Bumper",0,"Hide_Brushguard",1]],[351,false]]]
		],[],west] call GW_Common_fnc_spawnGroup;

		// Enemy Squad attacking Friendly Squad.
		[[
			[[2078.16,11490.4,0],308,[[301,0]],"sl"],
			[[2085.18,11491.3,0],308,[[301,0]],"ar"],
			//[[2079.02,11483.4,0],308,[[301,0]],"mmg"],
			//[[2092.2,11492.1,0],308,[[301,0]],"ag"],
			//[[2079.87,11476.4,0],308,[[301,0]],"lr"],
			//[[2099.22,11493,0],308,[[301,0]],"r"],
			//[[2080.73,11469.4,0],308,[[301,0]],"mat"],
			[[2106.24,11493.8,0],308,[[301,1]],"ag"]
		],[],[[[1886.37,11587,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[2101.63,11556.6,-1.52588e-05],308,[[301,0]],"sl"],
			//[[2108.65,11557.4,1.52588e-05],308,[[301,0]],"ar"],
			[[2102.49,11549.6,1.52588e-05],308,[[301,0]],"mmg"],
			//[[2115.67,11558.3,0.229004],308,[[301,0]],"ag"],
			[[2103.34,11542.5,0],308,[[301,0]],"lr"],
			[[2122.69,11559.1,0],308,[[301,0]],"r"]
			//[[2104.2,11535.5,0],308,[[301,0]],"mat"],
			//[[2129.71,11560,0],308,[[301,1]],"ag"]
		],[],[[[1887.44,11631.1,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[2144.53,11616.2,1.52588e-05],308,[[301,0]],"sl"],
			[[2151.55,11617,0],308,[[301,0]],"ar"],
			//[[2145.39,11609.2,0],308,[[301,0]],"mmg"],
			//[[2158.57,11617.9,1.52588e-05],308,[[301,0]],"ag"],
			[[2146.25,11602.2,-1.52588e-05],308,[[301,0]],"lr"],
			//[[2165.59,11618.8,0],308,[[301,0]],"r"],
			//[[2147.1,11595.1,0],308,[[301,0]],"mat"],
			[[2172.61,11619.6,0],308,[[301,1]],"ag"]
		],[],[[[1968.11,11668.6,3.05176e-05],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;

		[getPos jetspawn_7, jetstrike_7, getPos jetexit_7, "FIR_Su25SM3_Enemy", west, 100] spawn OKS_fnc_AirStrike; sleep 2;
		//[getPos jetspawn_8, jetstrike_8, getPos jetexit_8, "FIR_Su25SM3_Enemy", west, 100] spawn OKS_fnc_AirStrike; sleep 15;

		sleep 30;
		//[getPos jetspawn_1, jetstrike_1, getPos jetexit_1, "FIR_Su25SM3_Enemy", west, 100] spawn OKS_fnc_AirStrike; sleep 2;
		[getPos jetspawn_2, jetstrike_2, getPos jetexit_2, "FIR_Su25SM3_Enemy", west, 100] spawn OKS_fnc_AirStrike; sleep 15;

		{deleteVehicle _X} foreach crew Arty_1;
		{deleteVehicle _X} foreach crew Arty_8;
		{deleteVehicle _X} foreach crew Arty_9;
		deleteVehicle Arty_1;
		deleteVehicle Arty_8;
		deleteVehicle Arty_9;

		waitUntil {sleep 30; triggerActivated spawnTrigger_4 || triggerActivated spawnTrigger_5 || triggerActivated spawnTrigger_6};

		_battleRef1 setVariable ["OKS_AIBattle_On", false, true];
		_battleRef2 setVariable ["OKS_AIBattle_On", false, true];
	};

	case 3: {

		// Ambush 1
		[getPos LambsGroupSpawn_1, "ambushhunt", 6, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup;

		["CDF Command", "side", "1st Platoon this is CDF Command, friendly SU-25s are rolling in for attack runs on the flanks of the village, Command out.","CDF COMMAND", 25000, 100, west] spawn OKS_fnc_ChatGlobal;
		[getPos jetspawn_3, jetstrike_3, getPos jetexit_3, "FIR_Su25SM3_Enemy", west, 100] spawn OKS_fnc_AirStrike; sleep 2;

		// Lopatino.
		[[
			[[2719.01,9921.8,0],211,[[301,0]],"ftl"],
			[[2720.12,9926.12,0],211,[[301,0]],"ar"],
			[[2724.19,9924.47,0],211,[[301,0]],"g"]
			//[[2723.05,9929.13,0],211,[[301,0]],"mat"]
		],[],[[[2689.76,9946.53,0],[[0,"Move"],[1,"SAFE"]]],[[2702.3,10016.4,0],[[0,"Move"]]],[[2746.04,9997.83,0],[[0,"Move"]]],[[2727.12,9933.87,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup; sleep 2;
		[[
			[[2684.72,10067.7,0],0,[[301,0]],"ftl"],
			//[[2689.72,10062.7,0],0,[[301,0]],"ar"],
			[[2679.72,10062.7,0],0,[[301,0]],"g"],
			[[2694.72,10057.7,0],0,[[301,0]],"mat"]
		],[],[[[2726.38,10083.6,0],[[0,"Move"],[1,"SAFE"]]],[[2745.29,10032.3,0],[[0,"Move"]]],[[2701.9,10025.8,0],[[0,"Move"]]],[[2682.72,10064,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup; sleep 2;
		[[
			[[2707.41,10075.1,3.73871],207,"Up",[[301,0]],"ar"],
			[[2672.14,10032.2,5.56073],318,"Middle",[[301,0]],"r"],
			[[2709.97,10040.4,0],289,"Middle",[[301,0]],"r"],
			//[[2729.26,10023.3,3.05176e-05],285,"Middle",[[301,0]],"r"],
			[[2685.19,10004.7,0],89,"Middle",[[301,0]],"r"],
			[[2716.76,10020.1,5.11026],323,"Up",[[301,0]],"r"],
			//[[2719.36,10020.3,5.10785],323,"Up",[[301,0]],"r"],
			[[2756.6,10000.1,0],279,"Middle",[[301,0]],"r"],
			[[2730.75,9978.11,3.8287],78,"Up",[[301,0]],"ar"]
		],[],[],east] call GW_Common_fnc_spawnGroup; sleep 2;

		// Shishok Fields
		[[
			[[2135.52,9758.99,0],0,[[301,0]],"sl"],
			[[2140.52,9753.99,0],0,[[301,0]],"r"],
			//[[2130.52,9753.99,0],0,[[301,0]],"mat"],
			//[[2145.52,9748.99,0],0,[[301,0]],"lr"],
			[[2125.52,9748.99,0],0,[[301,0]],"ftl"],
			[[2150.52,9743.99,0],0,[[301,0]],"ar"],
			//[[2120.52,9743.99,0],0,[[301,0]],"ab"],
			[[2155.52,9738.99,0],0,[[301,1]],"ag"]
		],[],[[[2012.14,10034.3,0],[[0,"Move"],[4,"COLUMN"]]],[[1996.72,9717.78,0],[[0,"Move"]]],[[2330.71,9481.42,0],[[0,"Move"]]],[[2133.53,9718.42,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup; sleep 2;
		[[
			[[2807.43,9522.07,0],299,[[301,0]],"sl"],
			//[[2814.22,9524.05,0],299,[[301,0]],"r"],
			//[[2809.41,9515.28,0],299,[[301,0]],"mat"],
			[[2821.01,9526.03,0],299,[[301,0]],"lr"],
			[[2811.39,9508.49,0],299,[[301,0]],"ftl"],
			[[2827.8,9528,0],299,[[301,0]],"ar"],
			//[[2813.37,9501.7,0],299,[[301,0]],"ab"],
			[[2834.59,9529.98,0],299,[[301,1]],"ag"]
		],[],[[[3157.68,9374.66,0],[[0,"Move"],[4,"COLUMN"]]],[[3653.89,9592.84,0],[[0,"Move"]]],[[3139.27,9463.04,0],[[0,"Move"]]],[[2846.28,9534.49,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup; sleep 2;
		[[
			[[3536.55,9601.56,0],294,"Middle",[[301,0]],"r"],
			//[[3520.85,9583.57,-3.05176e-05],294,"Middle",[[301,0]],"r"],
			[[3603.29,9648.67,0],294,"Middle",[[301,0]],"r"],
			[[3618,9668.36,-3.05176e-05],294,"Middle",[[301,0]],"r"]
		],[["UK3CB_CHD_O_UAZ_MG",[3620.18,9674.26,-3.05176e-05],296,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup; sleep 2;
		[[
			//[[3118.52,9280.58,0],280,"Middle",[[301,0]],"ab"],
			[[3119.42,9286.23,-3.05176e-05],280,"Middle",[[301,0]],"ab"],
			//[[3119.12,9290.19,-3.05176e-05],280,"Middle",[[301,0]],"ab"],
			[[3122.16,9294.55,0],285,"Middle",[[301,0]],"mmg"],
			[[3116.3,9293.82,0],285,"Down",[[301,0]],"mmg"]
		],[],[],east] call GW_Common_fnc_spawnGroup; sleep 2;
		[[
			[[2076.61,8913.06,0],299,[[301,0]],"sl"],
			//[[2083.4,8915.04,0],299,[[301,0]],"r"],
			//[[2078.59,8906.27,0],299,[[301,0]],"mat"],
			[[2090.18,8917.01,0],299,[[301,0]],"lr"],
			[[2080.56,8899.48,0],299,[[301,0]],"ftl"],
			[[2096.97,8918.99,0],299,[[301,0]],"ar"],
			//[[2082.54,8892.69,0],299,[[301,0]],"ab"],
			[[2103.76,8920.97,0],299,[[301,1]],"ag"]
		],[],[[[2397.69,8607.98,0],[[0,"Move"],[4,"COLUMN"]]],[[2590.32,8309.62,0],[[0,"Move"]]],[[2408.55,8619.57,0],[[0,"Move"]]],[[2115.45,8925.48,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup; sleep 2;
		
		// West Forces.
		[[
			//[[1500.15,9186.06,10.2184],103,"Up",[[301,0],[302,1]],"ab"],
			[[1498.34,9183.16,9.41516],98,"Up",[[301,0]],"marksman"],
			[[1505.73,9192.89,10.4438],103,"Up",[[301,0],[302,1]],"mmg"]
		],[["UK3CB_MEE_O_KORD_high",[1501.58,9188.6,10.4297],97,[["gunner",-1,[0]]],[[351,false]]]],[],east] call GW_Common_fnc_spawnGroup; sleep 2;
	
		// Field Strongpoints
		[[[[2730,9051.37,-0.0235901],40,"Up",[[301,0]],"crew"],[[2725.59,9058.18,0.06073],40,"Up",[[301,0]],"crew"],[[2725.03,9039.22,-0.159119],106,"Up",[[301,0]],"r"],[[2722.81,9058.74,-0.0183105],354,"Up",[[301,0]],"r"]],[["UK3CB_CHD_O_BRDM2",[2727.55,9054.94,0.0816345],40,[["gunner",-1,[1]]],[[6,["CHDKZ",1]],[351,false]]],["UK3CB_CHD_O_Pickup_DSHKM",[2731.04,9046.32,0.000946045],106,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]],[351,false]]],["UK3CB_CHD_O_LR_WMIK_PKM",[2718.89,9059.02,0.0611572],354,[["gunner",-1,[2]]],[[6,["CHDKZ",1]],[7,["Axe_Hide",1,"Exhaust_Cover_Hide",1,"Front_Fuel_Boxes_Hide",1,"Light_Covers_Hide",1,"Pole_Hide",1,"Rear_Cargo_Box_Hide",1,"Shovel_Hide",1,"Side_Rails_Hide",1,"Wirecutter_Hide",1,"Beacons_Hide",1,"Fuel_Cans_Hide",0,"DoorFrontLeft_Hide",0,"DoorFrontRight_Hide",0,"DoorsRear_Hide",0,"Front_Grill_Hide",0,"Plate_1_Hide",0,"Plate_2_Hide",0,"Radio_Hide",0,"Spare_Wheel_Hide",0,"Spare_Wheel_1_Hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		[[[[2254.34,8987.38,0.266571],29,"Up",[[301,0]],"r"],[[2267.66,8975.39,0.00656128],29,"Up",[[301,0]],"r"],[[2287.55,8957.38,9.15527e-05],29,"Up",[[301,0]],"r"],[[2293.93,8950.86,3.05176e-05],29,"Up",[[301,0]],"r"]],[["UK3CB_CHD_O_Pickup_DSHKM",[2259.57,8979.05,0.00537109],41,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]],[351,false]]],["UK3CB_CHD_O_Pickup_DSHKM",[2283.74,8959.54,-0.000183105],28,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;

		//[getPos jetspawn_4, jetstrike_4, getPos jetexit_4, "FIR_Su25SM3_Enemy", west, 100] spawn OKS_fnc_AirStrike;

		[HuntSpawn_5, HuntSpawn_5, HuntTrigger_1, 5, 500, east, [["UK3CB_CHD_O_BTR40_PKM","UK3CB_CHD_O_BTR40"]], 70] spawn OKS_fnc_HuntBase; sleep 5;
		//[HuntSpawn_6, HuntSpawn_6, HuntTrigger_1, 5, 500, east, ["UK3CB_CHD_O_BTR40_PKM","UK3CB_CHD_O_BTR40"], 60] spawn OKS_fnc_HuntBase;	
		
		//[HuntSpawn_3, HuntSpawn_3, HuntTrigger_1, 5, 500, east, [["UK3CB_CHD_O_BTR40_PKM","UK3CB_CHD_O_BTR40"]], 90] spawn OKS_fnc_HuntBase; sleep 2;
		[HuntSpawn_4, HuntSpawn_4, HuntTrigger_1, 5, 500, east, ["UK3CB_CHD_O_BTR40_PKM","UK3CB_CHD_O_BTR40"], 100] spawn OKS_fnc_HuntBase;	sleep 2;
		[HuntSpawn_1, HuntSpawn_1, HuntTrigger_1, 5, 500, east, [["UK3CB_CHD_O_BTR40_PKM","UK3CB_CHD_O_BTR40"]], 60] spawn OKS_fnc_HuntBase;	sleep 2;
		[HuntSpawn_2, HuntSpawn_2, HuntTrigger_1, 5, 500, east, ["UK3CB_CHD_O_BTR40_PKM","UK3CB_CHD_O_BTR40"], 80] spawn OKS_fnc_HuntBase;	sleep 2;

		// Strongpoint.
		[[[[5255.74,7465.71,0],0,"Up",[[301,0]],"ar"],[[5293.99,7455.97,0],12,"Up",[[301,0]],"mat"],[[5262.91,7467.7,0],20,"Up",[[301,0]],"mat"],[[5300.16,7451.33,0],26,"Up",[[301,0]],"mat"],[[5340.53,7398.15,0],135,"Up",[[301,0]],"mat"],[[5346.85,7401.9,0],107,"Up",[[301,0]],"mat"],[[5343.5,7408.65,3.05176e-05],75,"Up",[[301,0]],"mat"]],[["UK3CB_CHD_O_BTR40_MG",[5260.79,7464.91,9.15527e-05],354,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]],[351,false]]],["UK3CB_CHD_O_LR_Opentop_DSHKM",[5296.31,7451.77,0],24,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["CHDKZ",1]],[7,["Axe_Hide",1,"Exhaust_Cover_Hide",1,"Light_Covers_Hide",1,"Shovel_Hide",1,"Beacons_Hide",0,"DoorsRear_Hide",0,"Fuel_Cans_Hide",0,"Rear_Cargo_Box_Hide",1,"DoorFrontLeft_Hide",0,"DoorFrontRight_Hide",0,"Front_Fuel_Boxes_Hide",1,"Front_Grill_Hide",0,"Radio_Hide",0,"Side_Rails_Hide",1]],[351,false]]],["UK3CB_CHD_O_LR_SF_WMIK_DSHKM_PKM",[5341.26,7402.86,0],126,[["driver",-1,[]],["gunner",-1,[3]],["commander",-1,[4]]],[[6,["CHDKZ",1]],[7,["Axe_Hide",1,"Exhaust_Cover_Hide",1,"Front_Fuel_Boxes_Hide",1,"Light_Covers_Hide",1,"Pole_Hide",1,"Rear_Cargo_Box_Hide",1,"Shovel_Hide",1,"Side_Rails_Hide",1,"Wirecutter_Hide",1,"DoorRearLeft_Hide",0,"DoorRearRight_Hide",0,"Spare_Wheel_2_Hide",0,"DoorFrontLeft_Hide",0,"DoorFrontRight_Hide",0,"DoorsRear_Hide",0,"Front_Grill_Hide",0,"Plate_1_Hide",0,"Plate_2_Hide",0,"Radio_Hide",0,"Spare_Wheel_Hide",0,"Spare_Wheel_1_Hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;

		// Path South.
		[[[[2200.47,9337.51,6.10352e-05],35,"Middle",[[301,0]],"sl"],[[2193.85,9343.12,0],35,"Auto",[[301,1]],"ag"],[[2214.76,9325.62,3.05176e-05],35,"Middle",[[301,0]],"r"],[[2197.08,9354.6,0],35,"Middle",[[301,0]],"r"],[[2224.1,9317.29,6.10352e-05],24,"Middle",[[301,0]],"r"],[[2210.37,9329.81,6.10352e-05],35,"Auto",[[301,0]],"mat"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[2092.27,8958.78,0],35,"Middle",[[301,0]],"sl"],[[2085.64,8964.38,0],35,"Middle",[[301,1]],"ag"],[[2112.78,8948.97,0.000152588],35,"Middle",[[301,0]],"r"],[[2119.86,8945.66,6.10352e-05],16,"Middle",[[301,0]],"r"],[[2101.71,8955.39,0],35,"Middle",[[301,0]],"mat"]],[],[],east] call GW_Common_fnc_spawnGroup;

	};

	case 4: {

		[
            getPos civilianStart_3,
            getPos civilianEnd_3,
            selectRandom ["UK3CB_ADC_C_Datsun_Civ_Open", "UK3CB_ADC_C_Hatchback", "UK3CB_ADC_C_Skoda"],
            7,
            true
        ] spawn OKS_fnc_Civilian_Vehicle;	
		
		// South Path - Myshkino
		[["Land_Razorwire_F",[2065.62,7308,260.389],[[-7.79893,3.1953,297.048],[6.39071,5.48337,297.571]],[],false],["Land_Razorwire_F",[2074.89,7314.51,260.952],[[-9.09911,-1.27416,300.196],[3.50945,8.49338,300.356]],[],false],["Land_Razorwire_F",[2072.38,7328.6,260.643],[[-10.1448,5.4335,251.091],[1.8328,11.3099,251.748]],[],false],["Land_Razorwire_F",[2070.14,7338.39,258.317],[[-12.8218,1.03573,272.164],[1.52713,12.7713,272.448]],[],false],["Land_Razorwire_F",[2071.15,7349.89,259.739],[[-5.44614,-16.7541,302.501],[348.543,13.3514,300.356]],[],false],["Land_Razorwire_F",[2076.87,7360.05,264.506],[[-0.0371921,-14.9451,311.333],[348.69,9.83391,310.352]],[],false],["Land_Razorwire_F",[2085.1,7363.72,267.299],[[-4.88794,-16.5576,302.368],[348.397,12.7713,300.356]],[],false],["Land_Razorwire_F",[2088.97,7372.23,270.029],[[-4.88226,-16.0296,302.266],[348.837,12.4805,300.356]],[],false],["Land_Razorwire_F",[2106.63,7382.5,275.581],[[-5.70377,-11.9672,301.656],[352.706,11.016,300.356]],[],false],["Land_Razorwire_F",[2114.68,7391.92,278.474],[[-4.77968,-12.6179,301.656],[351.656,10.5732,300.356]],[],false],["Land_Razorwire_F",[2121.15,7399.48,280.849],[[-4.26369,-13.1713,301.678],[350.91,10.4258,300.356]],[],false],["Land_Razorwire_F",[2123.24,7410.26,283.013],[[-4.64701,-13.9449,301.857],[350.463,11.1628,300.356]],[],false],["Land_Razorwire_F",[2132.51,7412.56,285.328],[[-5.75893,-15.73,302.345],[349.575,13.0615,300.356]],[],false],["Land_Razorwire_F",[2138.36,7424.17,288.762],[[-2.91579,-8.80705,300.953],[353.911,6.99367,300.356]],[],false],["Fort_RazorWire",[2054.29,7297.39,260.293],[[-2.77372,-0.260534,284.826],[0.458423,2.74794,284.83]],[],false],["Fort_RazorWire",[2034.79,7284.25,257.616],[[-4.05985,-10.5495,285.737],[350.91,6.69217,284.83]],[],false],["Fort_RazorWire",[2033.91,7272.37,254.879],[[-2.9822,-11.6252,285.676],[349.574,5.93739,284.83]],[],false],["Fort_RazorWire",[2030.24,7261.93,251.573],[[-2.77542,-15.0634,286.007],[346.216,6.69214,284.83]],[],false]] call GW_Common_fnc_spawnObjects;
		[[[[2192.5,7547.16,3.97018],236,"Auto",[[301,0]],"marksman"],[[2196.92,7531.58,0],199,"Auto",[[301,1]],"ag"],[[2189.36,7540.01,-6.10352e-05],254,"Auto",[[301,0]],"ar"],[[2191.36,7534.32,0.0407715],246,"Auto",[[301,0]],"lr"],[[2202.54,7526.26,0.0110474],231,"Auto",[[301,0]],"r"],[[2212.27,7518.28,-6.10352e-05],231,"Auto",[[301,0]],"r"],[[2217.36,7514.12,-0.00012207],231,"Auto",[[301,0]],"r"]],[["UK3CB_CHD_O_LR_WMIK_M2",[2213.08,7525.52,0.129822],231,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["CHDKZ",1]],[7,["Axe_Hide",1,"Exhaust_Cover_Hide",1,"Front_Fuel_Boxes_Hide",1,"Light_Covers_Hide",1,"Pole_Hide",1,"Rear_Cargo_Box_Hide",1,"Shovel_Hide",1,"Side_Rails_Hide",1,"Wirecutter_Hide",1,"Beacons_Hide",1,"Fuel_Cans_Hide",0,"DoorFrontLeft_Hide",0,"DoorFrontRight_Hide",0,"DoorsRear_Hide",0,"Front_Grill_Hide",0,"Plate_1_Hide",0,"Plate_2_Hide",0,"Radio_Hide",0,"Spare_Wheel_Hide",0,"Spare_Wheel_1_Hide",0]],[351,false]]],["UK3CB_CHD_O_LR_WMIK_PKM",[2203.99,7531.82,0],228,[["driver",-1,[]],["gunner",-1,[2]]],[[6,["CHDKZ",1]],[7,["Axe_Hide",1,"Exhaust_Cover_Hide",1,"Front_Fuel_Boxes_Hide",1,"Light_Covers_Hide",1,"Pole_Hide",1,"Rear_Cargo_Box_Hide",1,"Shovel_Hide",1,"Side_Rails_Hide",1,"Wirecutter_Hide",1,"Beacons_Hide",1,"Fuel_Cans_Hide",0,"DoorFrontLeft_Hide",0,"DoorFrontRight_Hide",0,"DoorsRear_Hide",0,"Front_Grill_Hide",0,"Plate_1_Hide",0,"Plate_2_Hide",0,"Radio_Hide",0,"Spare_Wheel_Hide",0,"Spare_Wheel_1_Hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		[[[[1969.28,7319.43,5.17638],333,"Auto",[[301,0]],"ar"],[[1970.01,7320.5,5.14067],333,"Auto",[[301,0]],"ar"],[[1971.41,7323.26,5.0986],333,"Auto",[[301,0]],"ar"],[[1975.23,7322.99,5.11621],45,"Auto",[[301,1]],"ag"],[[2009.16,7344.23,-0.00975037],246,"Auto",[[301,0]],"g"],[[1981.9,7291.65,-6.10352e-05],16,"Auto",[[301,0]],"g"],[[2027.78,7298.23,-3.05176e-05],322,"Auto",[[301,0]],"g"],[[2027.88,7308.91,-3.05176e-05],317,"Middle",[[301,0]],"ar"],[[2041.75,7341.65,-6.10352e-05],201,"Auto",[[301,0]],"mat"],[[2035.82,7312.97,-3.05176e-05],354,"Auto",[[301,0]],"mat"],[[2056.84,7329.32,0],260,"Auto",[[301,0]],"mat"]],[],[],east] call GW_Common_fnc_spawnGroup;

		[getPos LambsGroupSpawn_2, "ambushhunt", 6, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_3, "ambushhunt", 6, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup;

		[[
			[[1835.85,7606.52,0],299,[[301,0]],"sl"],
			[[1842.64,7608.5,0],299,[[301,0]],"r"],
			[[1837.83,7599.73,3.05176e-05],299,[[301,0]],"mat"],
			[[1849.43,7610.48,0],299,[[301,0]],"lr"],
			[[1839.81,7592.94,0],299,[[301,0]],"ftl"],
			[[1856.22,7612.46,0],299,[[301,0]],"ar"],
			[[1841.79,7586.16,0],299,[[301,0]],"ab"],
			[[1863.01,7614.44,0],299,[[301,1]],"ag"]
		],[],[
			[[1985.88,7183.06,0],[[0,"Move"],[4,"COLUMN"]]],
			[[2232.69,7204.92,0],[[0,"Move"]]],
			[[1977.03,7351.38,0],[[0,"Move"]]],
			[[1874.7,7618.95,0],[[0,"Cycle"]]]
		],east] call GW_Common_fnc_spawnGroup;
	};

	case 5: {

		// Pushtoshka
		[[
			[[3170.88,7971.27,0],0,[[301,0]],"ftl"],
			[[3175.88,7966.27,0],0,[[301,0]],"ar"],
			[[3165.88,7966.27,0],0,[[301,0]],"g"]
			//[[3180.88,7961.27,0],0,[[301,0]],"mat"]
		],[],[[[3110.59,7923.83,0],[[0,"Move"],[1,"SAFE"]]],[[2990.71,7977.63,0],[[0,"Move"]]],[[3038.55,8045.76,0],[[0,"Move"]]],[[3170.74,7968.35,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[3113.54,7882.31,0],0,[[301,0]],"ftl"],
			[[3117.66,7880.78,0],0,[[301,0]],"ar"],
			[[3108.54,7877.31,0],0,[[301,0]],"g"]
			//[[3112.84,7875.81,0],0,[[301,0]],"mat"]
		],[],[[[3056.58,7801.71,0],[[0,"Move"],[1,"SAFE"]]],[[2996.4,7833.44,0],[[0,"Move"]]],[[3060.64,7920.16,0],[[0,"Move"]]],[[3113.41,7879.38,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[3002.86,7685.8,0],76,[[301,0]],"ftl"],
			[[2999.23,7679.73,0],76,[[301,0]],"ar"],
			[[2996.8,7689.43,0],76,[[301,0]],"g"]
			//[[2995.59,7673.67,0],76,[[301,0]],"mat"]
		],[],[[[2945.43,7725.09,0],[[0,"Move"],[1,"SAFE"]]],[[2973.35,7863.74,0],[[0,"Move"]]],[[3042.88,7773.13,0],[[0,"Move"]]],[[2999.99,7685.22,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[3417.72,8164.25,0],129,[[301,0]],"ftl"],
			[[3410.7,8163.46,3.05176e-05],129,[[301,0]],"ar"],
			[[3416.93,8171.28,0],129,[[301,0]],"g"],
			[[3403.67,8162.67,0],129,[[301,0]],"mat"]
			],[],[[[3321.89,8243.07,0],[[0,"Move"],[1,"SAFE"]]],[[3568.68,8455.18,0],[[0,"Move"]]],[[3691.96,8238.81,0],[[0,"Move"]]],[[3415.52,8166.19,3.05176e-05],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			//[[3075.07,8004.26,5.41559],250,"Up",[[301,0]],"ab"],
			[[3075.46,8005.62,5.26535],259,"Up",[[301,0]],"ar"],
			[[3076.5,8008.59,5.26328],282,"Up",[[301,0]],"mmg"],
			[[3073.32,7979.91,0.0697937],6,"Up",[[301,0]],"ab"],
			//[[3017,7888.17,0],103,"Up",[[301,0]],"ab"],
			[[3036.8,7864.68,0],357,"Up",[[301,0]],"ab"],
			//[[2959.18,7757.13,4.01752],359,"Middle",[[301,0]],"ab"],
			[[2963.04,7755.76,4.40323],27,"Middle",[[301,0]],"ab"],
			[[3062.92,7983.59,4.75961],307,"Middle",[[301,0]],"ab"],
			[[3061.4,7980.3,4.74561],312,"Middle",[[301,0]],"lr"],
			//[[3059.82,7975.57,4.73981],312,"Middle",[[301,0]],"mmg"],
			[[3184.88,7980.09,9.98654],310,"Middle",[[301,0]],"mmg"],
			[[3184.2,7975.56,9.99472],270,"Middle",[[301,0]],"mmg"],
			[[3189.93,7982.97,9.98914],320,"Middle",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;

		// South HMGs.
		[[],[["UK3CB_CHD_O_UAZ_MG",[3580.59,6993.16,-3.05176e-05],356,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]],[351,false]]],["UK3CB_CHD_O_UAZ_MG",[3059.24,6917.14,0],356,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	
		[getPos jetspawn_6, jetstrike_6, getPos jetexit_6, "FIR_Su25SM3_Enemy", west, 100] spawn OKS_fnc_AirStrike;
	
	};

	case 6: {

		// Vybor
		[[[[3828.06,8773.04,0],0,[[301,0]],"ftl"],[[3833.06,8768.04,0],0,[[301,0]],"ar"],[[3823.06,8768.04,0],0,[[301,0]],"g"],[[3838.06,8763.04,3.05176e-05],0,[[301,0]],"mat"]],[],[[[3743.33,8821.7,0],[[0,"Move"],[1,"SAFE"]]],[[3711.64,8880.88,0],[[0,"Move"]]],[[3842.29,8824.12,0],[[0,"Move"]]],[[3832.16,8784.73,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[3891.93,8874.54,0],0,[[301,0]],"ftl"],[[3896.93,8869.54,0],0,[[301,0]],"ar"],[[3886.93,8869.54,3.05176e-05],0,[[301,0]],"g"],[[3901.93,8864.54,0],0,[[301,0]],"mat"]],[],[[[3786.12,8916.55,0],[[0,"Move"],[1,"SAFE"]]],[[3818.87,8978.48,0],[[0,"Move"]]],[[3897.93,8938.33,0],[[0,"Move"]]],[[3896.76,8876.64,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[3811.63,8982.82,0],288,[[301,0]],"ftl"],[[3817.94,8986.01,0.0050354],288,[[301,0]],"ar"],[[3814.82,8976.51,0],288,[[301,0]],"g"],[[3824.26,8989.2,0],288,[[301,0]],"mat"]],[],[[[3743.85,8915.38,0],[[0,"Move"],[1,"SAFE"]]],[[3689.78,8952.98,0],[[0,"Move"]]],[[3753.51,9014.01,0],[[0,"Move"]]],[[3801.81,8990.37,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[3819.53,8877.22,5.84378],260,"Middle",[[301,0]],"mmg"],[[3710.59,8902.76,0.986908],311,"Up",[[301,0]],"ab"],[[3707.93,8898.87,0.969757],311,"Up",[[301,0]],"ab"],[[3784.41,8857.51,0],359,"Middle",[[301,0]],"ab"],[[3817.78,8811.21,0],324,"Middle",[[301,0]],"ab"],[[3814.75,8809.89,0],324,"Middle",[[301,0]],"ab"],[[3790.87,8835.12,0.198639],359,"Middle",[[301,0]],"ab"],[[3800.29,8839.43,0.42691],2,"Middle",[[301,0]],"ab"],[[3757.59,8920.85,0],250,"Up",[[301,0]],"ab"]],[["UK3CB_CHD_O_Hilux_Pkm",[3851.54,8841.12,0],296,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]],[351,false]]],["UK3CB_CHD_O_Hilux_Pkm",[3839.03,8927.27,0],228,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;		

		// Vehicle from East.
		[[],[["UK3CB_CHD_O_Datsun_Pkm",[5298.86,8608.3,0.0137939],318,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["Beacons_Hide",1,"ClanLogo_Hide",1]],[351,false]]]],[[[5247.33,8623,0],[[0,"Move"],[1,"SAFE"]]],[[4800.85,8732.82,0],[[0,"Move"]]],[[4436.43,8813.94,0],[[0,"Move"]]],[[3761.49,8890.19,0],[[0,"Move"]]],[[3123.79,9261.69,0],[[0,"Hold"]]]],east] call GW_Common_fnc_spawnGroup;

		//  BTR60 Vybor & Kabanino
		[[],[["rhs_btr60_msv",[4115.98,9111.81,0],258,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		[[],[["rhs_btr60_msv",[5336.82,8620.67,0],271,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	
		[getPos jetspawn_5, jetstrike_5, getPos jetexit_5, "FIR_Su25SM3_Enemy", west, 100] spawn OKS_fnc_AirStrike;
	};

	case 7: {

		// Pass Sosnovy
		[[[[4729.76,6818.24,3.42078],290,"Up",[[301,0]],"ab"],[[4701.32,6820.03,0.288757],58,"Up",[[301,0]],"ab"],[[4706.59,6855,0],164,"Up",[[301,0]],"ab"],[[4681.65,6869.41,0.454559],158,"Up",[[301,0]],"ab"],[[4650.49,6852.05,0.480499],134,"Up",[[301,0]],"ab"],[[4737.7,6739.27,0.194244],354,"Up",[[301,0]],"ab"],[[4753.75,6785.9,3.17477],299,"Up",[[301,0]],"ab"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[4490.31,6401.73,3.07593],306,"Up",[[301,0]],"ab"],[[4475.23,6377.85,3.69348],350,"Up",[[301,0]],"ab"],[[4437.96,6402.21,0],3,"Middle",[[301,0]],"ab"],[[4536.37,6420.49,0],263,"Up",[[301,0]],"ab"],[[4521.52,6432.33,3.05176e-05],243,"Middle",[[301,0]],"ar"],[[4602.06,6490.3,0],230,"Up",[[301,0]],"lr"],[[4604.35,6489.9,0],222,"Up",[[301,0]],"mmg"]],[],[],east] call GW_Common_fnc_spawnGroup;

		[getPos LambsGroupSpawn_4, "ambushhunt", 6, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_5, "ambushhunt", 6, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup;

		[[],[["rhs_btr80a_vdv",[2529.62,6444.05,0],355,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]],[351,false]]],["rhs_btr80a_vdv",[4174.31,5454.69,0],84,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]],[351,false]]],["rhs_btr80a_vdv",[3844.32,5375.05,0],79,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;

	};

	case 8: {

		// Kabanino.
		[[[[5479.56,8466.93,3.05176e-05],0,[[301,0]],"ftl"],[[5484.56,8461.93,0],0,[[301,0]],"ar"],[[5474.56,8461.93,-3.05176e-05],0,[[301,0]],"g"],[[5489.56,8456.93,-3.05176e-05],0,[[301,0]],"mat"]],[],[[[5392.95,8419.8,0],[[0,"Move"],[1,"SAFE"]]],[[5459.75,8533.5,0],[[0,"Move"]]],[[5490.21,8472.73,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[5430.28,8587.75,0],0,[[301,0]],"ftl"],[[5435.28,8582.75,6.10352e-05],0,[[301,0]],"ar"],[[5425.28,8582.75,3.05176e-05],0,[[301,0]],"g"],[[5440.28,8577.75,0],0,[[301,0]],"mat"]],[],[[[5353.99,8521.88,0],[[0,"Move"],[1,"SAFE"]]],[[5410.47,8654.32,0],[[0,"Move"]]],[[5440.93,8593.54,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[5289.74,8544.41,3.05176e-05],97,[[301,0]],"ftl"],[[5284.14,8540.1,3.05176e-05],97,[[301,0]],"ar"],[[5285.43,8550.01,3.05176e-05],97,[[301,0]],"g"],[[5278.53,8535.79,3.05176e-05],97,[[301,0]],"mat"]],[],[[[5276.49,8641.71,0],[[0,"Move"],[1,"SAFE"]]],[[5348.1,8634.74,0],[[0,"Move"]]],[[5294.11,8533.1,3.05176e-05],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[5288.95,8606.63,5.97278],121,"Up",[[301,0]],"ab"],[[5288.25,8605.65,5.91159],105,"Up",[[301,0]],"mmg"],[[5377.72,8554.45,0],83,"Up",[[301,0]],"mmg"],[[5365.29,8554.44,3.7861],54,"Up",[[301,0]],"lr"],[[5379.53,8577.21,0],161,"Middle",[[301,1]],"ag"],[[5305.48,8592.86,0],105,"Middle",[[301,0]],"ab"],[[5360.03,8585.93,0],140,"Middle",[[301,0]],"mmg"]],[],[],east] call GW_Common_fnc_spawnGroup;

		// Forest line defence.
		[[[[5329,8298.41,0],291,"Middle",[[301,0]],"sl"],[[5323.17,8295.8,0],291,"Middle",[[301,0]],"g"],[[5352.27,8359.43,0],291,"Middle",[[301,0]],"ar"],[[5323.55,8288.75,0],291,"Middle",[[301,1]],"ag"],[[5351.15,8364.39,3.05176e-05],291,"Middle",[[301,0]],"g"],[[5333.61,8317.31,0],291,"Middle",[[301,0]],"ar"],[[5364.37,8399.24,0],301,"Middle",[[301,0]],"r"],[[5332.54,8314.51,0],291,"Middle",[[301,0]],"r"],[[5365.53,8383.82,0],291,"Middle",[[301,0]],"r"],[[5331.46,8311.71,0],291,"Middle",[[301,0]],"g"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5386.63,8548.39,0.0259705],0,"Up",[[301,1]],"ag"],[[5405.25,8559.17,-0.0465088],273,"Middle",[[301,1]],"ag"],[[5365.92,8554.29,3.79916],348,"Up",[[301,1]],"ag"],[[5360.43,8583.99,-3.05176e-05],139,"Middle",[[301,1]],"ag"],[[5378.93,8577.64,0],142,"Middle",[[301,1]],"ag"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5702.94,8541.22,3.05176e-05],269,"Up",[[301,0]],"ar"],[[5702.12,8536.1,3.05176e-05],0,"Up",[[301,0]],"lr"],[[5708.68,8532.62,-3.05176e-05],223,"Up",[[301,0]],"mat"],[[5695.18,8557.69,-3.05176e-05],223,"Up",[[301,0]],"mat"],[[5683.51,8564.45,-6.10352e-05],280,"Up",[[301,0]],"mat"]],[["UK3CB_CHD_O_BTR40_MG",[5706.93,8539.46,-3.05176e-05],255,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]],[351,false]]],["UK3CB_CHD_O_BTR40_MG",[5690.91,8562.25,-3.05176e-05],263,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;	
	};

	case 9: {

		// Stary Sobor.
		[getPos LambsGroupSpawn_6, "ambushhunt", 6, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_7, "ambushhunt", 6, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_8, "ambushhunt", 6, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup;

		// Statics
		[[[[5299.87,7380.81,0],115,[[301,0]],"sl"],[[5293.22,7378.42,0],115,[[301,0]],"ar"],[[5297.49,7387.47,0],115,[[301,0]],"g"],[[5286.56,7376.04,0],115,[[301,0]],"lr"],[[5295.1,7394.12,0],115,[[301,0]],"mat"],[[5279.91,7373.65,0],115,[[301,0]],"mat"],[[5292.71,7400.78,0],115,[[301,0]],"ab"],[[5273.25,7371.26,0],115,[[301,1]],"ag"]],[],[[[5555.58,7455.34,0],[[0,"Move"],[1,"SAFE"]]],[[5579.16,7698.78,0],[[0,"Move"]]],[[5344.46,7881.07,0],[[0,"Move"]]],[[5341.7,8288.53,0],[[0,"Move"]]],[[5324.55,7896.61,0],[[0,"Move"]]],[[5572.1,7705.44,3.05176e-05],[[0,"Move"]]],[[5544.68,7463.79,0],[[0,"Move"]]],[[5281.58,7388.68,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[6011.8,7823.83,4.71368],343,"Middle",[[301,0]],"lr"],[[6007.73,7819.47,4.69492],341,"Middle",[[301,0]],"mmg"],[[5999.6,7809.88,4.69299],0,"Middle",[[301,0]],"mmg"],[[6037.33,7831.11,0.0522461],259,"Up",[[301,0]],"g"],[[6012.57,7775.02,3.05176e-05],42,"Up",[[301,1]],"ag"],[[6075.76,7801.68,0.679138],217,"Up",[[301,1]],"ag"],[[6097.56,7790.77,3.05176e-05],249,"Middle",[[301,1]],"ag"],[[6064.47,7739.93,0.988953],332,"Up",[[301,1]],"ag"],[[6040.69,7778.73,0],336,"Middle",[[301,1]],"ag"],[[6148.59,7700.28,0.45108],8,"Up",[[301,0]],"mmg"],[[6171.53,7709.3,3.05176e-05],303,"Middle",[[301,0]],"lr"],[[6163.54,7696.11,0],317,"Middle",[[301,0]],"mmg"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[6274.4,7623.84,6.10352e-05],0,"Up",[[301,0]],"ab"],[[6273.31,7622.09,3.05176e-05],0,"Up",[[301,0]],"lr"],[[6272.91,7620.05,0],292,"Up",[[301,0]],"mat"],[[6274.03,7617.89,0.00726318],276,"Up",[[301,0]],"mat"],[[6253.41,7612.2,0.515076],34,"Up",[[301,0]],"ar"],[[6252.11,7609.34,0.516479],0,"Middle",[[301,0]],"g"],[[6256.54,7608.52,0.50415],34,"Up",[[301,0]],"ar"],[[6233.4,7632.65,0.56839],326,"Up",[[301,0]],"ar"],[[6234.32,7633.17,0.555176],0,"Up",[[301,0]],"mat"],[[6237.12,7630.91,0.55127],45,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		
		// Patrols
		[[[[6054.48,7676.52,0],0,[[301,0]],"ftl"],[[6059.48,7671.52,0],0,[[301,0]],"ar"],[[6049.48,7671.52,0],0,[[301,0]],"g"],[[6064.48,7666.52,0],0,[[301,0]],"mat"]],[],[[[5996.41,7604.82,0],[[0,"Move"],[1,"SAFE"]]],[[5915.33,7677.18,0],[[0,"Move"]]],[[5973.23,7756.41,0],[[0,"Move"]]],[[6053.41,7685.74,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[6153.69,7789.59,0],0,[[301,0]],"ftl"],[[6158.69,7784.59,0],0,[[301,0]],"ar"],[[6148.69,7784.59,4.96445],0,[[301,0]],"g"],[[6163.69,7779.59,0],0,[[301,0]],"mat"]],[],[[[6079.71,7715.63,0],[[0,"Move"],[1,"SAFE"]]],[[5984.75,7768.63,0],[[0,"Move"]]],[[6075.6,7855.34,0],[[0,"Move"]]],[[6152.62,7798.8,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[6264.42,7678.23,0],0,[[301,0]],"ftl"],[[6269.42,7673.23,0],0,[[301,0]],"ar"],[[6259.42,7673.23,0],0,[[301,0]],"g"],[[6274.42,7668.23,0],0,[[301,0]],"mat"]],[],[[[6206.35,7606.53,0],[[0,"Move"],[1,"SAFE"]]],[[6125.27,7678.89,0],[[0,"Move"]]],[[6183.17,7758.12,0],[[0,"Move"]]],[[6263.35,7687.45,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
	};

	case 10: {

		// Ambushes.
		[getPos LambsGroupSpawn_9, "ambushhunt", 4, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_10, "ambushhunt", 4, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_11, "ambushhunt", 4, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_12, "ambushhunt", 4, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_13, "ambushhunt", 4, east, 500, []] spawn OKS_fnc_Lambs_SpawnGroup;

		// Vyshnoye.
		[[[[6553.09,6071.61,0],336,"Up",[[301,0]],"ab"],[[6537.21,6059.51,0],23,"Middle",[[301,0]],"ab"],[[6534.22,6109.59,3.33234],164,"Up",[[301,0]],"ar"],[[6562.46,6058.48,0],294,"Middle",[[301,0]],"ar"],[[6557.02,6084.18,0],292,"Middle",[[301,0]],"g"],[[6520.09,6087.95,-6.10352e-05],66,"Up",[[301,0]],"ar"]],[["UK3CB_CHD_O_BTR40_MG",[6572.84,6021.77,0],190,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]],[351,false]]],["UK3CB_CHD_O_BTR40_PKM",[6560.81,6038.66,0],317,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	
		// More Ambient Arty
		null = [east,Arty_4,getpos ArtyTarget_2,4,322,90,false] spawn OKS_fnc_ArtyFire; sleep 1;
		null = [east,Arty_5,getpos ArtyTarget_3,4,278,90,false] spawn OKS_fnc_ArtyFire; sleep 1;
		null = [east,Arty_6,getpos ArtyTarget_3,4,157,90,false] spawn OKS_fnc_ArtyFire; sleep 2;
	};

	case 11:{

		private _FinalWave = [];
		["west_task_1","SUCCEEDED"] call BIS_fnc_taskSetState;
		["independent_task_1","SUCCEEDED"] call BIS_fnc_taskSetState;
		sleep 5;
		[true, ["main_task_1"], ["The Chedaki are mounting for a final attack, dig in and repel the final attackers.", "Defend OP Harvest", "Defend Harvest"], [6552,5596.44,0.00143433], "ASSIGNED", 2, true, "defend"] call BIS_fnc_taskCreate;
		["CDF Command", "side", "Task Force Alpha this is CDF Command, the Chedaki are mounting for a final attack, dig in and repel the final attackers, ETA 3 minutes, Command out."] spawn OKS_fnc_ChatGlobal;
		sleep 180;
		
		_FinalWaveGroup1 = [[[[6439.54,5499.8,0],0,[[301,0]],"sl"],[[6444.54,5494.8,0],0,[[301,0]],"ar"],[[6435.22,5497.59,0],0,[[301,0]],"mmg"],[[6447.64,5493.44,0],0,[[301,0]],"ag"],[[6438.38,5491.35,0],0,[[301,0]],"lr"],[[6440.03,5496.87,0],0,[[301,0]],"r"],[[6441.79,5491.86,0],0,[[301,0]],"mat"],[[6445.03,5491.87,3.05176e-05],0,[[301,1]],"ag"]],[],[[[6458.97,5518.31,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6484.96,5547.21,0],[[0,"Move"]]],[[6509.39,5570.1,0],[[0,"Move"]]],[[6533.47,5596.82,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
		_FinalWaveGroup2 = [[[[6494.42,5484.29,0],338,[[301,0]],"sl"],[[6500.94,5481.54,0],338,[[301,0]],"ar"],[[6491.25,5480.61,0],338,[[301,0]],"mmg"],[[6504.32,5481.44,0],338,[[301,0]],"ag"],[[6496.53,5476.02,0],338,[[301,0]],"lr"],[[6495.98,5481.75,0],338,[[301,0]],"r"],[[6499.5,5477.77,3.05176e-05],338,[[301,0]],"mat"],[[6502.49,5479,3.05176e-05],338,[[301,1]],"ag"]],[],[[[6505.45,5508.75,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6518.65,5545.3,0],[[0,"Move"]]],[[6530.68,5568.15,0],[[0,"Move"]]],[[6532.47,5593.24,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
		_FinalWaveGroup3 = [[[[6570.19,5446.38,0],330,[[301,0]],"sl"],[[6577.03,5444.58,0],330,[[301,0]],"ar"],[[6567.57,5442.3,0],330,[[301,0]],"mmg"],[[6580.39,5444.96,0],330,[[301,0]],"ag"],[[6573.45,5438.49,0],330,[[301,0]],"lr"],[[6572.09,5444.1,6.10352e-05],330,[[301,0]],"r"],[[6576.13,5440.65,3.05176e-05],330,[[301,0]],"mat"],[[6578.93,5442.29,3.05176e-05],330,[[301,1]],"ag"]],[],[[[6577.65,5472.16,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6571.64,5527.76,0],[[0,"Move"]]],[[6575.96,5552.55,0],[[0,"Move"]]],[[6562.6,5586.58,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
		_FinalWaveGroup4 = [[[[6641.42,5456.41,0],0,[[301,0]],"sl"],[[6646.42,5451.41,0],0,[[301,0]],"ar"],[[6637.1,5454.2,0],0,[[301,0]],"mmg"],[[6649.52,5450.05,0],0,[[301,0]],"ag"],[[6640.26,5447.96,0],0,[[301,0]],"lr"],[[6641.91,5453.48,0],0,[[301,0]],"r"],[[6643.67,5448.47,0],0,[[301,0]],"mat"],[[6646.91,5448.48,0],0,[[301,1]],"ag"]],[],[[[6621.88,5505.54,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6622.13,5538.14,3.05176e-05],[[0,"Move"]]],[[6585.8,5601.59,0],[[0,"Move"]]],[[6521.38,5593.99,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
		_FinalWaveGroup5 = [[[[6669.87,5482.22,0],0,[[301,0]],"sl"],[[6674.87,5477.22,0],0,[[301,0]],"ar"],[[6665.55,5480.01,0],0,[[301,0]],"mmg"],[[6677.97,5475.86,0],0,[[301,0]],"ag"],[[6668.71,5473.76,0],0,[[301,0]],"lr"],[[6670.36,5479.29,3.05176e-05],0,[[301,0]],"r"],[[6672.12,5474.27,3.05176e-05],0,[[301,0]],"mat"],[[6675.36,5474.29,3.05176e-05],0,[[301,1]],"ag"]],[],[[[6663.6,5559.37,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6639.58,5581.71,0],[[0,"Move"]]],[[6594.9,5589.29,3.05176e-05],[[0,"Move"]]],[[6498.3,5601.88,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
		_FinalWaveGroup6 = [[[[6403.14,5523.74,0],0,[[301,0]],"sl"],[[6408.14,5518.74,0],0,[[301,0]],"ar"],[[6398.82,5521.53,0],0,[[301,0]],"mmg"],[[6411.23,5517.38,0],0,[[301,0]],"ag"],[[6401.98,5515.29,0],0,[[301,0]],"lr"],[[6403.62,5520.81,0],0,[[301,0]],"r"],[[6405.39,5515.8,0],0,[[301,0]],"mat"],[[6408.62,5515.81,0],0,[[301,1]],"ag"]],[],[[[6422.56,5542.25,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6445.87,5558.08,0],[[0,"Move"]]],[[6502.25,5593.16,0],[[0,"Move"]]],[[6582.58,5606.04,3.05176e-05],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
		_FinalWaveGroup7 = [[[[6408.96,5629.43,3.05176e-05],43,[[301,0]],"sl"],[[6409.2,5622.36,0],43,[[301,0]],"ar"],[[6404.3,5630.77,0],43,[[301,0]],"mmg"],[[6410.53,5619.25,0],43,[[301,0]],"ag"],[[6402.34,5624.05,0],43,[[301,0]],"lr"],[[6407.32,5626.96,3.05176e-05],43,[[301,0]],"r"],[[6405.18,5622.09,3.05176e-05],43,[[301,0]],"mat"],[[6407.55,5619.89,3.05176e-05],43,[[301,1]],"ag"]],[],[[[6435.79,5629.68,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6474.51,5633.04,3.05176e-05],[[0,"Move"]]],[[6508.42,5607.32,0],[[0,"Move"]]],[[6593.31,5564.93,3.05176e-05],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
		_FinalWaveGroup8 = [[[[6386.04,5651.63,0],0,[[301,0]],"sl"],[[6391.04,5646.63,0],0,[[301,0]],"ar"],[[6381.72,5649.41,0],0,[[301,0]],"mmg"],[[6394.14,5645.26,0],0,[[301,0]],"ag"],[[6384.88,5643.17,3.05176e-05],0,[[301,0]],"lr"],[[6386.53,5648.69,3.05176e-05],0,[[301,0]],"r"],[[6388.29,5643.68,6.10352e-05],0,[[301,0]],"mat"],[[6391.53,5643.69,3.05176e-05],0,[[301,1]],"ag"]],[],[[[6430.03,5684.47,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6499.95,5680.19,3.05176e-05],[[0,"Move"]]],[[6546.19,5638.88,0],[[0,"Move"]]],[[6503.1,5583.05,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;		
		
		{
			_Group = _x;
			{_FinalWave pushBack _x} foreach units _Group;	
		} foreach [_FinalWaveGroup1, _FinalWaveGroup2, _FinalWaveGroup3, _FinalWaveGroup4, _FinalWaveGroup5, _FinalWaveGroup6, _FinalWaveGroup7, _FinalWaveGroup8];

		sleep 60;
		waitUntil {
			sleep 30; 
			systemChat format ["[DEFENCE] %1 remaining in final wave", {Alive _X || [_X] call ace_common_fnc_isAwake} count _FinalWave];
			{Alive _X || [_X] call ace_common_fnc_isAwake} count _FinalWave <= 5
		};
		["main_task_1","SUCCEEDED"] call BIS_fnc_taskSetState;
		{
			_X setMarkerAlpha 0;
		} foreach ["marker_394", "marker_395", "marker_396", "marker_397", "marker_398", "marker_399", "marker_400"];
		["CDF Command", "side", "Task Force Alpha this is CDF Command, the Chedaki are falling back, excellent work, over."] spawn OKS_fnc_ChatGlobal; sleep 10;
		["CDF Command", "side", "The nearby villages of Mogilevka and Nadezhdino are occupied by artillery elements, we must silence the guns to help the frontline, Command out."] spawn OKS_fnc_ChatGlobal;
		sleep 5;
		[true, ["main_task_2"], ["The Chedaki artillery forces are dug in around the area near OP Harvest, in the village of Nadezhdino. We have repelled their reserves, we must advance and silence the guns.", "Attack Nadezhdino", "Nadezhdino"], [5835.22,4764.14,0], "created", 2, true, "attack"] call BIS_fnc_taskCreate;
		[true, ["main_task_2_1","main_task_2"], ["You have been tasked with hunting down the artillery forces in Nadezhdino. Secure the village and clear out the Chedaki forces, this village will be used for blocking logistics in the coming hours.", "Seize Nadezhdino", "Nadezhdino"], [5838.84,4745.61,0], "created", 2, false, "attack"] call BIS_fnc_taskCreate;
		[[Arty_2,Arty_3,Arty_4],"Destroy Artillery","2S1 Self-propelled artillery","You must silence the %2 %1 artillery guns in the area. These barrage the frontlines and cause major casualties.","destroy","main_task_2", false, false] spawn OKS_fnc_Destroy_Task;
		
		sleep 5;
		[true, ["main_task_3"], ["The Chedaki artillery forces are dug in around the area near OP Harvest, in the village of Mogilevka. We have repelled their reserves, we must advance and silence the guns.", "Attack Mogilevka", "Mogilevka"], [5835.22,4764.14,0], "created", 2, true, "attack"] call BIS_fnc_taskCreate;
		[true, ["main_task_3_1","main_task_3"], ["You have been tasked with hunting down the artillery forces in Mogilevka. Secure the village and clear out the Chedaki forces, this village will be used for blocking logistics in the coming hours.", "Seize Mogilevka", "Nadezhdino"], [5838.84,4745.61,0], "created", 2, false, "attack"] call BIS_fnc_taskCreate;
		[[Arty_5,Arty_6,Arty_7],"Destroy Artillery","2S1 Self-propelled artillery","You must silence the %2 %1 artillery guns in the area. These barrage the frontlines and cause major casualties.","destroy","main_task_3", false, false] spawn OKS_fnc_Destroy_Task;

		// Enemy Villages - Early Spawn.
		[[[[6866.15,4931.61,3.05176e-05],309,"Up",[[301,0]],"mmg"],[[6875.39,4914.72,0],308,"Up",[[301,0]],"lr"],[[6929.42,4931.79,0],279,"Up",[[301,0]],"lr"],[[6915.55,4923.68,0],330,"Middle",[[301,0]],"lr"],[[6879.57,4941.3,3.05176e-05],339,"Up",[[301,0]],"ar"],[[6882.22,4941.51,0],0,"Up",[[301,0]],"lr"],[[6884.53,4941.67,3.05176e-05],0,"Up",[[301,0]],"mmg"],[[6890.18,4952.11,0],300,"Up",[[301,0]],"ar"],[[6893.85,4954.79,0],98,"Up",[[301,0]],"lr"],[[6906.81,4949.62,0],343,"Up",[[301,0]],"mmg"],[[6919.64,4953.19,0],55,"Up",[[301,0]],"ar"],[[6924.83,4959.81,0],310,"Up",[[301,0]],"lr"],[[6919.71,4942.35,3.05176e-05],0,"Up",[[301,0]],"mmg"],[[6868.49,4934.32,0],330,"Up",[[301,0]],"mmg"]],[["rhs_KORD_high_MSV",[6881.57,4939.76,0],348,[["gunner",-1,[0]]],[[351,false]]],["rhs_KORD_high_MSV",[6908.26,4950.66,0],340,[["gunner",-1,[0]]],[[351,false]]],["rhs_KORD_high_MSV",[6867.71,4933.09,0],348,[["gunner",-1,[0]]],[[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CHD_O_UAZ_MG",[5843.68,4693.58,0],14,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]],[351,false]]],["UK3CB_CHD_O_UAZ_MG",[5822.05,4981.5,0],32,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]],[351,false]]],["UK3CB_CHD_O_BTR70",[5852.54,4880.24,0],86,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]],[351,false]]],["UK3CB_CHD_O_BTR70",[6052.39,4868.8,0],288,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]],[351,false]]],["UK3CB_CHD_O_BTR70",[5856.62,4800.95,1.52588e-05],26,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CHD_O_BTR70",[7423.27,5189.02,0],305,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]],[351,false]]],["UK3CB_CHD_O_BTR70",[7493.13,4741.14,0],347,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]],[351,false]]],["UK3CB_CHD_O_BTR70",[7560.16,5259.97,0],341,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]],[351,false]]],["UK3CB_CHD_O_UAZ_MG",[7450.15,5134.23,0],307,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]],[351,false]]],["UK3CB_CHD_O_UAZ_MG",[7684.24,4902.58,0],307,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	
	};

	case 12: {

		// Nadezhdino.
		// Patrols
		[[[[6219.44,4788.17,1.52588e-05],0,[[301,0]],"r"],[[6222.44,4785.17,0],0,[[301,0]],"ftl"],[[6224.44,4785.17,1.52588e-05],0,[[301,1]],"ag"],[[6226.44,4785.17,0],0,[[301,0]],"r"],[[6228.44,4785.17,1.52588e-05],0,[[301,0]],"mmg"],[[6230.44,4785.17,1.52588e-05],0,[[301,0]],"ab"],[[6232.44,4785.17,1.52588e-05],0,[[301,0],[302,1]],"ab"],[[6234.44,4785.17,1.52588e-05],0,[[301,0]],"r"]],[],[[[6306.58,4774.61,85.1754],[[0,"Move"],[1,"SAFE"]]],[[6137.47,4868.32,0.05176e-05],[[0,"Move"]]],[[5970.2,4808.6,-2.21677],[[0,"Move"]]],[[6153.29,4777.12,1.52588e-05],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[6183.56,4922.83,0],0,[[301,0]],"r"],[[6186.56,4919.83,0],0,[[301,0]],"ftl"],[[6188.56,4919.83,0],0,[[301,1]],"ag"],[[6190.56,4919.83,0],0,[[301,0]],"r"],[[6192.56,4919.83,0],0,[[301,0]],"mmg"],[[6194.56,4919.83,0],0,[[301,0]],"ab"],[[6196.56,4919.83,0],0,[[301,0],[302,1]],"ab"],[[6198.56,4919.83,0],0,[[301,0]],"r"]],[],[[[6331.25,4997.98,98.4041],[[0,"Move"],[1,"SAFE"]]],[[6113.51,5008.11,1.52588e-05],[[0,"Move"]]],[[5946.24,4948.39,1.52588e-05],[[0,"Move"]]],[[6174.75,4914.79,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[5994.17,5126.73,0.108749],0,[[301,0]],"r"],[[5997.17,5123.73,0.108749],0,[[301,0]],"ftl"],[[5999.17,5123.73,0.108749],0,[[301,1]],"ag"],[[6001.17,5123.73,0.108734],0,[[301,0]],"r"],[[6003.17,5123.73,0.108749],0,[[301,0]],"mmg"],[[6005.17,5123.73,0.108765],0,[[301,0]],"ab"],[[6007.17,5123.73,0.108749],0,[[301,0],[302,1]],"ab"],[[6009.17,5123.73,0.108749],0,[[301,0]],"r"]],[],[[[6100.59,5030.14,85.284],[[0,"Move"],[1,"SAFE"]]],[[5821.83,4927.37,1.52588e-05],[[0,"Move"]]],[[5757.6,5117.49,0],[[0,"Move"]]],[[5881.85,5248.6,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[5940.24,4899.54,0.2],0,[[301,0]],"r"],[[5943.24,4896.54,0.2],0,[[301,0]],"ftl"],[[5945.24,4896.54,0.2],0,[[301,1]],"ag"],[[5947.24,4896.54,0.1122],0,[[301,0]],"r"],[[5949.24,4896.54,0.1],0,[[301,0]],"mmg"],[[5951.24,4896.54,0.1],0,[[301,0]],"ab"],[[5953.24,4896.54,0.1],0,[[301,0],[302,1]],"ab"],[[5955.24,4896.54,0],0,[[301,0]],"r"]],[],[[[5873.87,4776.33,0.6897],[[0,"Move"],[1,"SAFE"]]],[[5814.66,4618.15,0],[[0,"Move"]]],[[5832.94,4778.32,0],[[0,"Move"]]],[[5904.87,4882.05,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[5911.62,4790.03,1.52588e-05],0,[[301,0]],"r"],[[5914.62,4787.03,0],0,[[301,0]],"ftl"],[[5916.62,4787.03,0],0,[[301,1]],"ag"],[[5918.62,4787.03,0],0,[[301,0]],"r"],[[5920.62,4787.03,0],0,[[301,0]],"mmg"],[[5922.62,4787.03,0],0,[[301,0]],"ab"],[[5924.62,4787.03,0],0,[[301,0],[302,1]],"ab"],[[5926.62,4787.03,0],0,[[301,0]],"r"]],[],[[[5920.25,4725.69,21.0576],[[0,"Move"],[1,"SAFE"]]],[[5805.91,4510.19,0],[[0,"Move"]]],[[5739.26,4737.48,-7.62939e-06],[[0,"Move"]]],[[5822.43,4816.66,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
	
		// Statics.
		[[[[6094.5,4893.2,1.62605],76,"Up",[[301,0]],"ab"],[[6087.89,4893.12,2.19682],283,"Up",[[301,0]],"lr"],[[6067.17,4904.61,0.606079],21,"Up",[[301,0]],"ftl"],[[6069.48,4902.4,0.625565],70,"Up",[[301,0]],"ar"],[[6081.76,4857.46,0.012619],52,"Up",[[301,0]],"ab"],[[6074.7,4854.86,1.52588e-05],2,"Up",[[301,0]],"ab"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5731.02,4893.35,0],139,"Middle",[[301,0]],"ar"],[[5735.38,4897.17,1.52588e-05],72,"Middle",[[301,0]],"ar"],[[5726.22,4888.98,0],132,"Down",[[301,0]],"ar"]],[["UK3CB_CHD_O_UAZ_MG",[5725.48,4892.53,0],147,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["light_hide",1,"spare_hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5854.68,4900.01,3.48001],76,"Up",[[301,0]],"ab"],[[5853.9,4902.21,3.39558],80,"Up",[[301,0]],"lr"],[[5878.85,4900.16,0],320,"Middle",[[301,0]],"ftl"],[[5853.22,4921.63,0],94,"Middle",[[301,0]],"ar"],[[5915.5,4882.97,0],221,"Middle",[[301,0]],"r"],[[5852.53,4900.94,0.732849],60,"Middle",[[301,0]],"r"],[[5846.54,4902.26,3.54356],175,"Middle",[[301,0]],"r"],[[5849.81,4900.13,3.54356],60,"Middle",[[301,0]],"r"],[[5848.7,4871.85,0.471786],4,"Up",[[301,0]],"r"],[[5845.53,4871.94,0.439072],93,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5909.61,4846.51,0],48,"Up",[[301,0]],"ab"],[[5904.57,4848.6,0.158035],329,"Up",[[301,0]],"lr"],[[5909.73,4846.85,3.39296],27,"Up",[[301,0]],"ftl"],[[5906.33,4849.36,3.2677],10,"Up",[[301,0]],"ar"],[[5896.47,4832.52,0.62674],12,"Up",[[301,0]],"ar"],[[5890.29,4829.49,0.830994],121,"Up",[[301,0]],"lr"],[[5891.71,4833.81,0.79834],51,"Middle",[[301,0]],"r"],[[5887.88,4827.69,0.669144],259,"Up",[[301,0]],"r"],[[5880.14,4864.57,0],60,"Middle",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5875.95,4847.97,0.180725],39,"Up",[[301,0]],"r"],[[5873.32,4852.04,0.19104],41,"Middle",[[301,0]],"r"],[[5874.32,4850.06,0.203232],60,"Up",[[301,0]],"mmg"],[[5866.75,4843.78,0.416199],129,"Up",[[301,0]],"r"],[[5868.99,4839.85,0.390823],139,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5850.08,4825.13,0.215927],143,"Up",[[301,0]],"r"],[[5851.25,4833.1,0.485016],41,"Up",[[301,0]],"r"],[[5848.47,4827.81,0.213699],300,"Up",[[301,0]],"mmg"],[[5833.88,4850.26,-1.52588e-05],134,"Middle",[[301,0]],"r"],[[5847.77,4834.73,0.699203],24,"Up",[[301,0]],"r"],[[5844.03,4833.39,0.513397],334,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5852.9,4791.22,0.208054],268,"Up",[[301,0]],"r"],[[5857.3,4791.2,0.208054],2,"Up",[[301,0]],"r"],[[5851.21,4785.5,0.157944],312,"Up",[[301,0]],"r"],[[5855.52,4784.24,0.208054],80,"Up",[[301,0]],"r"],[[5856.79,4787.28,0.208054],65,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5896.22,4731.47,0.811752],355,"Up",[[301,0]],"r"],[[5893.7,4731.57,0.487244],358,"Up",[[301,0]],"ar"],[[5892.76,4726.22,3.74301],247,"Up",[[301,0]],"g"],[[5892.86,4725.08,0.490112],271,"Up",[[301,0]],"lr"],[[5926.73,4697.86,0],258,"Middle",[[301,0]],"r"],[[5914.34,4684.26,0],10,"Middle",[[301,0]],"r"],[[5897.12,4690.28,0],258,"Middle",[[301,0]],"r"],[[5897.07,4719.13,0.433914],103,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5887.13,4672.51,0],69,"Up",[[301,0]],"r"],[[5870.95,4660.97,0.338806],243,"Up",[[301,0]],"r"],[[5873.95,4654.37,0.204956],69,"Up",[[301,0]],"r"],[[5865.24,4684.96,0],229,"Up",[[301,0]],"r"],[[5872.37,4684.62,0],231,"Up",[[301,0]],"r"],[[5873.58,4680.19,0.0558624],184,"Up",[[301,0]],"r"],[[5871.05,4682.01,0.101166],244,"Up",[[301,0]],"r"]],[["UK3CB_CHD_O_PKM_nest",[5863.03,4680.82,0],332,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5838.06,4700.67,0.494705],20,"Up",[[301,0]],"r"],[[5839.42,4696.1,0.342911],189,"Up",[[301,0]],"r"],[[5831.09,4698.05,1.57622],262,"Up",[[301,0]],"r"],[[5837.46,4672.1,0.404297],310,"Up",[[301,0]],"r"],[[5832.54,4674.93,1.15796],66,"Up",[[301,0]],"r"],[[5842.9,4675.44,0.276535],124,"Up",[[301,0]],"r"],[[5842.41,4678.62,0.242905],144,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5828.92,4733.31,0.774796],111,"Up",[[301,0]],"r"],[[5832.32,4731.24,0.477341],47,"Up",[[301,0]],"r"],[[5832.25,4725.56,0.183487],268,"Up",[[301,0]],"r"],[[5836.77,4712.77,1.52588e-05],3,"Middle",[[301,0]],"r"],[[5852.53,4719.49,2.04651],292,"Up",[[301,0]],"r"],[[5858.52,4721.9,2.09584],62,"Up",[[301,0]],"r"],[[5857.69,4717.05,1.71959],250,"Middle",[[301,0]],"r"],[[5831.31,4701.05,1.57431],343,"Up",[[301,0]],"r"],[[5833.08,4701.75,1.18904],330,"Up",[[301,0]],"ar"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5874.9,4632.71,0.313171],316,"Up",[[301,0]],"r"],[[5875.91,4631.16,0.184921],355,"Middle",[[301,0]],"r"],[[5875.52,4628.38,0.145462],69,"Middle",[[301,0]],"r"],[[5883.8,4616.03,0],335,"Middle",[[301,0]],"r"],[[5878.88,4616.53,0.693787],69,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[5877.1,4612.68,0.583176],308,"Up",[[301,0]],"r"],[[5880.22,4608.39,0.196182],314,"Up",[[301,0]],"r"],[[5881.38,4613.12,0.174026],290,"Middle",[[301,0]],"r"],[[5872.55,4597.12,0.204788],315,"Up",[[301,0]],"r"],[[5873.91,4597.34,0.173141],345,"Up",[[301,0]],"r"],[[5874.12,4594.19,0.116364],69,"Up",[[301,0]],"r"],[[5869.88,4590.79,0.191406],279,"Up",[[301,0]],"r"],[[5871.52,4592.75,0.165955],294,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
	
	};

	case 13: {

		// Mogilevka
		// Patrols
		[[[[7138.2,5112.9,0.3],0,[[301,0]],"r"],[[7141.2,5109.9,0.3],0,[[301,0]],"ftl"],[[7143.2,5109.9,0.4],0,[[301,1]],"ag"],[[7145.2,5109.9,0.4],0,[[301,0]],"r"],[[7147.2,5109.9,0.3],0,[[301,0]],"mmg"],[[7149.2,5109.9,0.3],0,[[301,0]],"ab"],[[7151.2,5109.9,0.3],0,[[301,0],[302,1]],"ab"],[[7153.2,5109.9,0.3],0,[[301,0]],"r"]],[],[[[7146.83,5048.56,40.6899],[[0,"Move"],[1,"SAFE"]]],[[7032.49,4833.05,0.4],[[0,"Move"]]],[[6965.84,5060.35,0.3],[[0,"Move"]]],[[7049.01,5139.53,0.4],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7693.33,5199.82,0.5],0,[[301,0]],"r"],[[7696.33,5196.82,0.5],0,[[301,0]],"ftl"],[[7698.33,5196.82,0.5],0,[[301,1]],"ag"],[[7700.33,5196.82,0.5],0,[[301,0]],"r"],[[7702.33,5196.82,0.5],0,[[301,0]],"mmg"],[[7704.33,5196.82,0.5],0,[[301,0]],"ab"],[[7706.33,5196.82,0.5],0,[[301,0],[302,1]],"ab"],[[7708.33,5196.82,0.5],0,[[301,0]],"r"]],[],[[[7701.96,5135.48,40.69],[[0,"Move"],[1,"SAFE"]]],[[7551.96,4984.87,0.8],[[0,"Move"]]],[[7466.53,5190.4,0.8],[[0,"Move"]]],[[7604.14,5226.45,0.5],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7188.94,4957.47,0.5],305,[[301,0]],"r"],[[7193.12,4958.22,0.4],305,[[301,0]],"ftl"],[[7194.26,4959.86,0.5],305,[[301,1]],"ag"],[[7195.4,4961.5,0.6],305,[[301,0]],"r"],[[7196.54,4963.14,0.5],305,[[301,0]],"mmg"],[[7197.69,4964.79,0.5],305,[[301,0]],"ab"],[[7198.83,4966.43,0.5],305,[[301,0],[302,1]],"ab"],[[7199.97,4968.07,0.5],305,[[301,0]],"r"]],[],[[[7247.39,4866.13,40.6902],[[0,"Move"],[1,"SAFE"]]],[[7392.55,4706.84,0.2],[[0,"Move"]]],[[7221.7,4775.56,0.3],[[0,"Move"]]],[[7116.15,4899.46,0.5],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7633.19,5620.68,0.4],0,[[301,0]],"r"],[[7636.19,5617.68,0.4],0,[[301,0]],"ftl"],[[7638.19,5617.68,0.4],0,[[301,1]],"ag"],[[7640.19,5617.68,0.5],0,[[301,0]],"r"],[[7642.19,5617.68,0.5],0,[[301,0]],"mmg"],[[7644.19,5617.68,0.4],0,[[301,0]],"ab"],[[7646.19,5617.68,0.4],0,[[301,0],[302,1]],"ab"],[[7648.19,5617.68,0.4],0,[[301,0]],"r"]],[],[[[7641.83,5556.34,40.69],[[0,"Move"],[1,"SAFE"]]],[[7500.88,5386.11,0.4],[[0,"Move"]]],[[7349.95,5504.93,0.3],[[0,"Move"]]],[[7544.01,5647.31,0.4],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
	
		// Statics.
		[[[[7462.96,5001.09,0.05513],344,"Up",[[301,0]],"ar"],[[7461.1,4997.12,0.105331],281,"Up",[[301,0]],"ar"],[[7469.84,5026.06,0.369186],297,"Up",[[301,0]],"ar"],[[7474.42,5025.88,0.392654],344,"Up",[[301,0]],"ar"],[[7512.26,5002.87,1.52588e-05],183,"Up",[[301,0]],"r"],[[7501.92,4996.56,1.52588e-05],218,"Up",[[301,0]],"r"],[[7506.99,5003.49,0.353607],225,"Up",[[301,0]],"r"],[[7484.31,5013.64,1.52588e-05],145,"Middle",[[301,0]],"r"],[[7469.96,4993.85,0.0608368],94,"Up",[[301,0]],"r"],[[7468.33,4988.96,0.0411682],92,"Up",[[301,0]],"r"],[[7460.71,4995.27,0.0532074],301,"Up",[[301,0]],"r"],[[7478.28,5023.16,0.350769],60,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[7492.22,5113.65,0.511414],245,"Up",[[301,0]],"ar"],[[7491.75,5118.08,0.452194],260,"Up",[[301,0]],"ar"],[[7492.6,5123.09,0.437775],9,"Up",[[301,0],[302,1]],"ab"],[[7469.11,5123.98,0.0306091],0,"Up",[[301,0]],"g"],[[7475.16,5121.67,0.102509],349,"Up",[[301,0]],"ab"],[[7496.25,5147.7,-1.52588e-05],214,"Up",[[301,0]],"g"],[[7495.45,5159.12,0.122345],0,"Up",[[301,1]],"ag"],[[7486.85,5156.02,0.134583],271,"Up",[[301,0]],"ar"],[[7489.16,5169.65,0],105,"Middle",[[301,0]],"ab"],[[7455.35,5171.04,0.375565],227,"Up",[[301,0]],"mmg"],[[7454.85,5173.17,0.370346],300,"Up",[[301,0]],"mmg"],[[7472.13,5172.56,0.357971],178,"Up",[[301,0]],"mmg"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[7512.42,5176.17,0],217,"Middle",[[301,0]],"ab"],[[7531.23,5150.32,0],129,"Up",[[301,0]],"r"],[[7528.56,5164.15,0],129,"Up",[[301,0]],"r"],[[7523.2,5153.97,0.164963],48,"Up",[[301,0]],"r"],[[7525.07,5149.72,0.165222],187,"Up",[[301,0]],"r"],[[7519.17,5150.46,0.165222],252,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[7537.47,5108.71,0.26297],5,"Up",[[301,0]],"ab"],[[7527.34,5106.87,0.265457],327,"Up",[[301,0]],"ab"],[[7526.38,5102.8,0.267761],267,"Up",[[301,0]],"mmg"],[[7566.52,5101.25,0.662552],348,"Up",[[301,1]],"ag"],[[7560.86,5093.23,0.625443],213,"Up",[[301,0]],"mmg"],[[7574.9,5119.21,0.183899],147,"Up",[[301,0]],"r"],[[7574.03,5111.77,0.30275],0,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[7649.49,5167.17,0.0756226],227,"Up",[[301,0]],"r"],[[7646.13,5169.29,0.0635529],246,"Up",[[301,0]],"r"],[[7646.89,5171.46,0.0918579],272,"Up",[[301,0]],"r"],[[7650.17,5176.94,0.0744629],279,"Up",[[301,0]],"r"],[[7660.94,5172.65,0.0914612],265,"Middle",[[301,0]],"r"],[[7632.86,5166.36,0.464417],330,"Up",[[301,0]],"r"],[[7652.29,5182.75,0.342804],270,"Middle",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[7617.9,5198.45,0],206,"Up",[[301,0]],"r"],[[7608.33,5191.61,0.162994],350,"Up",[[301,0]],"r"],[[7606.9,5165.19,0.488464],7,"Up",[[301,0]],"r"],[[7606.36,5163.89,0.529739],279,"Up",[[301,0]],"r"],[[7606.4,5159.35,0.52684],282,"Up",[[301,0]],"ar"],[[7612.79,5159.24,0.342834],0,"Up",[[301,0]],"r"],[[7624.8,5162.86,0.522385],184,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[7571.1,5123.59,0.116318],340,"Up",[[301,0]],"lr"],[[7570.51,5118.93,3.3748],278,"Up",[[301,0]],"mmg"],[[7588.04,5140.8,0.138916],254,"Middle",[[301,0]],"mmg"],[[7567.15,5158.5,0.933563],59,"Up",[[301,0]],"ar"],[[7561.82,5157.48,0.933563],0,"Up",[[301,0]],"ar"],[[7570.71,5144.06,0.962234],74,"Up",[[301,0]],"r"],[[7565.33,5149.64,0.973297],73,"Up",[[301,0]],"r"],[[7590.96,5147.98,0.34285],350,"Up",[[301,0]],"r"],[[7588.22,5145.45,0.34285],264,"Up",[[301,0]],"r"],[[7573.44,5144.5,0],42,"Middle",[[301,0]],"lr"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[7494.65,5015.51,0],0,[[301,0]],"ftl"],[[7494.33,5011.38,0],0,[[301,0]],"ar"],[[7493.43,5009.96,0],0,[[301,0]],"g"],[[7496.73,5009.07,0],0,[[301,0]],"mat"]],[],[[[7491.93,5014.54,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"]]],[[7490.3,5014.29,0],[[0,"Guard"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7533.01,5123.26,0],0,[[301,0]],"ftl"],[[7532.69,5119.14,0],0,[[301,0]],"ar"],[[7531.79,5117.71,1.52588e-05],0,[[301,0]],"g"],[[7535.09,5116.83,0],0,[[301,0]],"mat"]],[],[[[7530.3,5122.29,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"]]],[[7528.67,5122.04,0],[[0,"Guard"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7632.37,5182.62,1.52588e-05],0,[[301,0]],"ftl"],[[7632.05,5178.5,0],0,[[301,0]],"ar"],[[7631.15,5177.07,0],0,[[301,0]],"g"],[[7634.46,5176.19,0],0,[[301,0]],"mat"]],[],[[[7629.66,5181.65,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"]]],[[7628.03,5181.4,1.52588e-05],[[0,"Guard"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7578.08,5153.56,0],0,[[301,0]],"ftl"],[[7577.76,5149.43,0],0,[[301,0]],"ar"],[[7576.86,5148,0],0,[[301,0]],"g"],[[7580.16,5147.12,0],0,[[301,0]],"mat"]],[],[[[7575.37,5152.58,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"]]],[[7573.74,5152.33,0],[[0,"Guard"]]]],east] call GW_Common_fnc_spawnGroup;

	};

	case 14: {

		// Nadezhdino Counter 1.
		[[
			[[6135.96,4380.39,0],345,[[301,0]],"sl"],[[6142.05,4376.8,1.52588e-05],345,[[301,0]],"ar"],
			//[[6132.37,4374.29,0],345,[[301,0]],"mmg"],[[6148.15,4373.22,0],345,[[301,0]],"ag"],
			[[6128.79,4368.2,0],345,[[301,0]],"lr"],[[6154.24,4369.63,0],345,[[301,0]],"r"],
			[[6125.2,4362.1,0],345,[[301,0]],"mat"],[[6160.34,4366.05,0],345,[[301,1]],"ag"]
		],[],[[[6095.09,4488.44,-0.000244141],[[0,"Move"]]],[[6048.93,4569.14,0.000228882],[[0,"Move"]]],[[5955.96,4858.15,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[6200.73,4403.82,0],345,[[301,0]],"sl"],[[6206.82,4400.24,1.52588e-05],345,[[301,0]],"ar"],
			//[[6197.14,4397.73,0],345,[[301,0]],"mmg"],[[6212.92,4396.65,0],345,[[301,0]],"ag"],
			[[6193.56,4391.63,0],345,[[301,0]],"lr"],[[6219.01,4393.07,0],345,[[301,0]],"r"],
			[[6189.98,4385.54,0],345,[[301,0]],"mat"],[[6225.11,4389.49,0],345,[[301,1]],"ag"]
		],[],[[[6156.44,4503.98,0],[[0,"Move"]]],[[6117.97,4592.82,0],[[0,"Move"]]],[[5992.14,4949.69,0.148941],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[6257.34,4398.94,0.644775],345,[[301,0]],"sl"],[[6263.43,4395.35,0.644806],345,[[301,0]],"ar"],
			//[[6253.75,4392.84,0.644775],345,[[301,0]],"mmg"],[[6269.53,4391.77,0.644775],345,[[301,0]],"ag"],
			[[6250.17,4386.75,0.64476],345,[[301,0]],"lr"],[[6275.62,4388.18,0.644775],345,[[301,0]],"r"],
			[[6246.58,4380.65,0.64476],345,[[301,0]],"mat"],[[6281.72,4384.6,0.64476],345,[[301,1]],"ag"]
		],[],[[[6216.47,4506.99,0.644547],[[0,"Move"]]],[[6170.31,4587.69,0.64502],[[0,"Move"]]],[[6089.21,4966,0.64476],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;		

		// Convoy.
		[ConvoySpawn_2,ConvoyWP_2,ConvoyEnd_2,east,[4,["UK3CB_CHD_O_BTR40_MG", "UK3CB_CHD_O_BTR40", "UK3CB_CHD_O_BTR40", "UK3CB_CHD_O_BTR40"],35,35,15],[true,3],[],false,false,["hunt"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;

	};

	case 15: {

		// Nadezhdino Counter 2.	
		// Convoy.
		[ConvoySpawn_3,ConvoyWP_3,ConvoyEnd_3,east,[4,["UK3CB_CHD_O_BTR40_MG", "UK3CB_CHD_O_BTR40", "UK3CB_CHD_O_BTR40", "UK3CB_CHD_O_BTR40"],35,35,15],[true,3],[],false,false,["hunt"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;
		
		// Infantry.
		[[
			[[5667.24,4413.16,0],0,[[301,0]],"sl"],[[5661.08,4410.02,0],0,[[301,0]],"ar"],
			//[[5664.24,4412.1,0],0,[[301,0]],"mmg"],[[5666.12,4406.63,7.62939e-06],0,[[301,0]],"ag"],
			[[5663.63,4407.58,0],0,[[301,0]],"lr"],[[5666.6,4409.12,7.62939e-06],0,[[301,0]],"r"],
			[[5664.12,4403.96,0],0,[[301,0]],"mat"],[[5667.95,4405.42,7.62939e-06],0,[[301,1]],"ag"]
		],[],[[[5706.54,4523.49,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[5753.45,4642.37,-3.05176e-05],[[0,"Move"]]],[[5833.8,4870.1,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[5675.4,4389.11,0],0,[[301,0]],"sl"],[[5669.24,4385.98,0],0,[[301,0]],"ar"],
			//[[5672.4,4388.05,0],0,[[301,0]],"mmg"],[[5674.28,4382.58,0],0,[[301,0]],"ag"],
			[[5671.79,4383.54,0],0,[[301,0]],"lr"],[[5674.76,4385.08,0],0,[[301,0]],"r"],
			[[5672.28,4379.91,0],0,[[301,0]],"mat"],[[5676.11,4381.37,0],0,[[301,1]],"ag"]
		],[],[[[5752.36,4506.06,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[5820.35,4561.26,0],[[0,"Move"]]],[[5867.48,4762.78,0.639725],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
	
	};

	case 16: {

		// Nadezhdino Counter 3.	
		// Convoy.
		[ConvoySpawn_4,ConvoyWP_4,ConvoyEnd_4,east,[4,["UK3CB_CHD_O_BTR40_MG", "UK3CB_CHD_O_BTR40", "UK3CB_CHD_O_BTR40", "UK3CB_CHD_O_BTR40"],35,35,15],[true,3],[],false,false,["hunt"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;
		
		// Infantry.
		[[[[6125.9,4115.36,0],293,[[301,0]],"sl"],[[6126.44,4108.47,0],293,[[301,0]],"ar"],[[6125.73,4112.19,0],293,[[301,0]],"mmg"],[[6131.51,4111.83,0],293,[[301,0]],"ag"],[[6129.67,4109.9,0],293,[[301,0]],"lr"],[[6129.39,4113.23,0],293,[[301,0]],"r"],[[6133.21,4108.96,0],293,[[301,0]],"mat"],[[6133.32,4113.06,0],293,[[301,1]],"ag"]],[],[[[5944.08,4395.35,1.52588e-05],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[5887.34,4482.35,0],[[0,"Move"]]],[[5801.25,4616.02,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[6143.93,4166.11,0],293,[[301,0]],"sl"],[[6144.46,4159.22,1.52588e-05],293,[[301,0]],"ar"],[[6143.76,4162.94,1.52588e-05],293,[[301,0]],"mmg"],[[6149.53,4162.58,0],293,[[301,0]],"ag"],[[6147.69,4160.65,0],293,[[301,0]],"lr"],[[6147.41,4163.98,1.52588e-05],293,[[301,0]],"r"],[[6151.23,4159.71,0],293,[[301,0]],"mat"],[[6151.35,4163.81,0],293,[[301,1]],"ag"]],[],[[[5962.1,4446.1,1.52588e-05],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[5942.85,4544.66,0],[[0,"Move"]]],[[5907.73,4652.27,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
	
	};

	case 17: {

		// Mogilevka Counter 1.
		[ConvoySpawn_5,ConvoyWP_5,ConvoyEnd_5,east,[5,["UK3CB_CHD_O_BMP1","UK3CB_CHD_O_BTR40_MG", "UK3CB_CHD_O_BTR40", "UK3CB_CHD_O_BTR40", "UK3CB_CHD_O_BTR40"],35,35,15],[true,3],[],false,false,["hunt"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;

		// South-West Approach - Counter-Attack
		[[
			[[7539.52,4433.25,0],0,[[301,0]],"sl"],[[7544.52,4428.25,0],0,[[301,0]],"ar"],
			//[[7534.52,4428.25,0],0,[[301,0]],"mmg"],[[7536.57,4428.69,0],0,[[301,0]],"ag"],
			[[7541.34,4428.21,0],0,[[301,0]],"lr"],[[7541.57,4423.69,0],0,[[301,0]],"r"],
			[[7536.34,4423.21,0],0,[[301,0]],"mat"],[[7546.57,4418.69,0],0,[[301,1]],"ag"]
		],[],[[[7364.75,4714.64,1.52588e-05],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"]]],[[7213.34,4928.43,0],[[0,"Move"]]],[[7137.45,5150.05,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[7438.86,4397.55,0],0,[[301,0]],"sl"],[[7443.86,4392.55,0],0,[[301,0]],"ar"],
			[[7433.86,4392.55,0],0,[[301,0]],"mmg"],[[7435.92,4392.99,0],0,[[301,0]],"ag"],
			//[[7440.68,4392.5,0],0,[[301,0]],"lr"],[[7440.92,4387.99,0],0,[[301,0]],"r"],
			[[7435.68,4387.5,0],0,[[301,0]],"mat"],[[7445.92,4382.99,0],0,[[301,1]],"ag"]
		],[],[[[7264.09,4678.93,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"]]],[[7112.68,4892.72,0],[[0,"Move"]]],[[7036.79,5114.34,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[7576.68,5155.28,0],0,[[301,0]],"sl"],[[7576.92,5153.25,0],0,[[301,0]],"ar"],
			//[[7579.09,5154.98,0],0,[[301,0]],"mmg"],[[7575.51,5148.88,0],0,[[301,0]],"ag"],
			[[7574.61,5152.23,0],0,[[301,0]],"lr"],[[7578.91,5150.24,0],0,[[301,0]],"r"],
			[[7579.3,5152.27,0],0,[[301,0]],"mat"],[[7576.27,5150.56,0],0,[[301,1]],"ag"]
		],[],[[[7343.56,5200.39,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"]]],[[7167.66,5199.85,0],[[0,"Move"]]],[[6832.12,5010.54,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[7619.55,5196.21,1.52588e-05],0,[[301,0]],"sl"],[[7619.78,5194.18,0],0,[[301,0]],"ar"],
			[[7621.96,5195.92,0],0,[[301,0]],"mmg"],[[7618.37,5189.81,0],0,[[301,0]],"ag"],
			//[[7617.47,5193.17,0],0,[[301,0]],"lr"],[[7621.77,5191.18,0],0,[[301,0]],"r"],
			[[7622.17,5193.2,0],0,[[301,0]],"mat"],[[7619.13,5191.5,0],0,[[301,1]],"ag"]
		],[],[[[7473.66,5094.28,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"]]],[[7262.85,5016.26,0],[[0,"Move"]]],[[6873.66,4835.96,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;

	};

	case 18: {

		// Mogilevka Counter 2.
		[ConvoySpawn_6,ConvoyWP_6,ConvoyEnd_6,east,[5,["UK3CB_CHD_O_BMP1","UK3CB_CHD_O_BTR40_MG", "UK3CB_CHD_O_BTR40", "UK3CB_CHD_O_BTR40", "UK3CB_CHD_O_BTR40"],35,35,15],[true,3],[],false,false,["hunt"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;

		// South-East Counter-Attack.
		[[
			[[8148.81,5324.96,1.98669],0,[[301,0]],"sl"],[[8149.05,5322.93,1.98668],0,[[301,0]],"ar"],
			[[8151.22,5324.67,1.98669],0,[[301,0]],"mmg"],[[8147.64,5318.56,1.98668],0,[[301,0]],"ag"],
			//[[8146.74,5321.92,1.98668],0,[[301,0]],"lr"],[[8151.04,5319.92,1.98666],0,[[301,0]],"r"],
			[[8151.43,5321.95,1.98666],0,[[301,0]],"mat"],[[8148.4,5320.25,1.98668],0,[[301,1]],"ag"]
		],[],[[[7975.63,5254.75,1.987],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"]]],[[7859.97,5175.54,1.98677],[[0,"Move"]]],[[7502.36,5210.22,1.98691],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[8215.46,5180.57,0],0,[[301,0]],"sl"],[[8215.69,5178.54,0],0,[[301,0]],"ar"],
			[[8217.87,5180.28,0],0,[[301,0]],"mmg"],[[8214.28,5174.17,0],0,[[301,0]],"ag"],
			//[[8213.38,5177.53,0],0,[[301,0]],"lr"],[[8217.68,5175.53,0],0,[[301,0]],"r"],
			[[8218.08,5177.56,0],0,[[301,0]],"mat"],[[8215.04,5175.86,0],0,[[301,1]],"ag"]
		],[],[[[8054.93,5048.18,1.52588e-05],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"]]],[[7938.57,4968.97,0],[[0,"Move"]]],[[7546.03,5124.58,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[8145.95,4878.89,0],0,[[301,0]],"sl"],[[8146.19,4876.86,0],0,[[301,0]],"ar"],
			//[[8148.36,4878.6,0],0,[[301,0]],"mmg"],[[8144.77,4872.49,0],0,[[301,0]],"ag"],
			[[8143.87,4875.85,0],0,[[301,0]],"lr"],[[8148.18,4873.85,0],0,[[301,0]],"r"],
			[[8148.57,4875.88,0],0,[[301,0]],"mat"],[[8145.54,4874.18,0],0,[[301,1]],"ag"]
		],[],[[[7992.18,4880.35,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"]]],[[7774.59,4951.22,0],[[0,"Move"]]],[[7511.07,5054.75,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
	
	};

	case 19: {

		// Mogilevka Counter 3.
		[ConvoySpawn_7,ConvoyWP_7,ConvoyEnd_7,east,[5,["UK3CB_CHD_O_BMP1","UK3CB_CHD_O_BTR40_MG", "UK3CB_CHD_O_BTR40", "UK3CB_CHD_O_BTR40", "UK3CB_CHD_O_BTR40"],35,35,15],[true,4],[],false,false,["hunt"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;

	};

	case 20:{

		// Delete 4 Trigger.
		// Counter Vyshnoye.
		[ConvoySpawn_8,ConvoyWP_8,ConvoyEnd_8,east,[6,["UK3CB_CHD_O_BMP1","rhs_btr80_vdv","UK3CB_CHD_O_LR_Softtop_Transport_Open","UK3CB_CHD_O_BTR40_MG","UK3CB_CHD_O_LR_Softtop_Transport_Open","UK3CB_CHD_O_LR_Softtop_Transport_Open"],35,35,15],[true,4],[],false,false,["defend"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;
	
		// Attack North-West OP Harvest.
		[[
			[[6405.47,5629.21,0],133,[[301,0]],"sl"],[[6403.81,5630.42,0],133,[[301,0]],"ar"],
			//[[6403.62,5627.64,0],133,[[301,0]],"mmg"],[[6401.56,5634.42,0],133,[[301,0]],"ag"],
			[[6404.64,5632.8,0],133,[[301,0]],"lr"],[[6400.25,5630.99,0],133,[[301,0]],"r"],
			[[6401.48,5629.33,0],133,[[301,0]],"mat"],[[6402.28,5632.71,0],133,[[301,1]],"ag"]],[],[[[6430.86,5630.18,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"]]],[[6513.26,5666.16,0],[[0,"Move"]]],[[6534.27,5620.63,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[6407.72,5597.42,0],133,[[301,0]],"sl"],[[6406.07,5598.63,0],133,[[301,0]],"ar"],
			//[[6405.87,5595.85,0],133,[[301,0]],"mmg"],[[6403.81,5602.62,0],133,[[301,0]],"ag"],
			[[6406.89,5601.01,0],133,[[301,0]],"lr"],[[6402.51,5599.2,0],133,[[301,0]],"r"],
			[[6403.73,5597.54,0],133,[[301,0]],"mat"],[[6404.54,5600.92,0],133,[[301,1]],"ag"]
		],[],[[[6457.19,5600.31,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"]]],[[6503.21,5590.67,0],[[0,"Move"]]],[[6536.42,5587.8,1.2132],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
	
	};

	case 21: {
		
		// Counter AA Hill.
		[[[[6888.03,4905.76,0],0,[[301,0]],"ftl"],[[6892.13,4898.4,3.05176e-05],0,[[301,0]],"ar"],[[6888.51,4900.89,3.05176e-05],0,[[301,0]],"g"],[[6893.5,4901.61,0],0,[[301,0]],"mat"],[[6890.32,4901.47,6.10352e-05],0,[[301,0]],"mat"],[[6884.84,4905.62,0],0,[[301,0]],"ftl"],[[6888.94,4898.27,0],0,[[301,0]],"ar"],[[6885.33,4900.75,3.05176e-05],0,[[301,0]],"g"]],[],[[[6885,4949.47,3.05176e-05],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6709.36,5044.17,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[6922.72,4929.55,0],0,[[301,0]],"ftl"],[[6926.82,4922.19,0],0,[[301,0]],"ar"],[[6923.2,4924.68,0],0,[[301,0]],"g"],[[6928.19,4925.4,0],0,[[301,0]],"mat"],[[6925,4925.26,3.05176e-05],0,[[301,0]],"mat"],[[6919.53,4929.41,3.05176e-05],0,[[301,0]],"ftl"],[[6923.63,4922.06,3.05176e-05],0,[[301,0]],"ar"],[[6920.02,4924.54,0],0,[[301,0]],"g"]],[],[[[6893.46,4978.14,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6758,5089.52,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
	
	};

	case 22: {

		// Counter Stary Sobor.
		[[[[6611.56,8101.46,0],200,[[301,0]],"sl"],[[6612.23,8108.22,0],200,[[301,0]],"ar"],[[6615.62,8100.06,0],200,[[301,0]],"mmg"],[[6606.38,8111.58,0],200,[[301,0]],"ag"],[[6618.09,8096.63,0],200,[[301,0]],"lr"],[[6615.78,8105.44,0],200,[[301,0]],"r"],[[6620.23,8105.67,0],200,[[301,0]],"mat"],[[6621.65,8101.74,0],200,[[301,1]],"ag"]],[],[[[6602.28,8054.2,-6.10352e-05],[[0,"Move"]]],[[6472.6,7866.2,-6.10352e-05],[[0,"Move"]]],[[6188.46,7682.8,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[6475.7,8025.75,0],200,[[301,0]],"sl"],[[6476.37,8032.5,0],200,[[301,0]],"ar"],[[6479.75,8024.34,0],200,[[301,0]],"mmg"],[[6470.52,8035.87,0],200,[[301,0]],"ag"],[[6482.23,8020.91,0],200,[[301,0]],"lr"],[[6479.92,8029.73,0],200,[[301,0]],"r"],[[6484.37,8029.95,0],200,[[301,0]],"mat"],[[6485.79,8026.02,0],200,[[301,1]],"ag"]],[],[[[6403.36,7956.07,0],[[0,"Move"]]],[[6333.79,7919.37,3.66354],[[0,"Move"]]],[[6087.03,7758.76,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;

	};

	case 23: {

		// Friendly Reinforcements Nadezdhino
		["main_task_2_1","SUCCEEDED"] call BIS_fnc_taskSetState;
		["CDF Command", "side", "Task Force Alpha, this is NAPA Group Zulu, friendly forces are coming in from the west. Check your fire, we will garrison the village, Zulu out."] spawn OKS_fnc_ChatGlobal;

		[[[[5489.18,4492.9,0],65,[[301,0]],"ftl"],[[5486.81,4486.23,0],65,[[301,0]],"ar"],[[5482.51,4495.26,1.52588e-05],65,[[301,0]],"g"],[[5484.45,4479.57,0],65,[[301,0]],"mat"]],[],[[[5791.24,4676.84,0],[[0,"Move"],[1,"AWARE"],[2,"YELLOW"],[4,"COLUMN"],[5,"NORMAL"]]],[[5873.4,4659.72,0.246597],[[0,"guard"]]]],independent] call GW_Common_fnc_spawnGroup;
		[[[[5469.67,4536.67,0],65,[[301,0]],"ftl"],[[5467.31,4530.01,0],65,[[301,0]],"ar"],[[5463,4539.03,1.52588e-05],65,[[301,0]],"g"],[[5464.95,4523.34,1.52588e-05],65,[[301,0]],"mat"]],[],[[[5771.74,4720.62,0],[[0,"Move"],[1,"AWARE"],[2,"YELLOW"],[4,"COLUMN"],[5,"NORMAL"]]],[[5837.8,4719.8,0],[[0,"guard"]]]],independent] call GW_Common_fnc_spawnGroup;
		[[[[5523.93,4782.43,0],95,[[301,0]],"ftl"],[[5518.51,4777.89,0],95,[[301,0]],"ar"],[[5519.38,4787.85,0],95,[[301,0]],"g"],[[5513.09,4773.35,0],95,[[301,0]],"mat"]],[],[[[5769.48,4795.82,0],[[0,"Move"],[1,"AWARE"],[2,"YELLOW"],[4,"COLUMN"],[5,"NORMAL"]]],[[5852.38,4788.46,0.18985],[[0,"guard"]]]],independent] call GW_Common_fnc_spawnGroup;
		[[[[5515.33,4811.29,0],65,[[301,0]],"ftl"],[[5512.97,4804.63,0],65,[[301,0]],"ar"],[[5508.66,4813.65,0],65,[[301,0]],"g"],[[5510.61,4797.96,0],65,[[301,0]],"mat"]],[],[[[5810.59,4861.73,0],[[0,"Move"],[1,"AWARE"],[2,"YELLOW"],[4,"COLUMN"],[5,"NORMAL"]]],[[5860.33,4900.65,0],[[0,"guard"]]]],independent] call GW_Common_fnc_spawnGroup;
	
		waitUntil { sleep 5; {Alive _X || getDammage _X < 0.5} count [arty_2,arty_3,arty_4] == 0 };
		["main_task_2","SUCCEEDED"] call BIS_fnc_taskSetState;	
	};

	case 24: {

		// Friendly Reinforcements Mogilevka
		["main_task_3_1","SUCCEEDED"] call BIS_fnc_taskSetState;
		["CDF Command", "side", "Task Force Alpha, this is NAPA Group Victor, friendly forces are coming in from the north. Check your fire, we will garrison the village, Victor out."] spawn OKS_fnc_ChatGlobal;
		[[[[7614.21,5638.29,0.1],190,[[301,0]],"ftl"],[[7610.19,5644.11,0.1],190,[[301,0]],"ar"],[[7620.02,5642.31,0.1],190,[[301,0]],"g"],[[7606.16,5649.92,0.1],190,[[301,0]],"mat"]],[],[[[7634.72,5277.11,0.1],[[0,"Move"],[1,"AWARE"],[2,"YELLOW"],[4,"COLUMN"],[5,"NORMAL"]]],[[7575.66,5139.71,0.1],[[0,"guard"]]]],independent] call GW_Common_fnc_spawnGroup;
		[[[[7570.42,5644.46,0.1],190,[[301,0]],"ftl"],[[7566.39,5650.28,0.1],190,[[301,0]],"ar"],[[7576.23,5648.48,0.1],190,[[301,0]],"g"],[[7562.37,5656.09,0.1],190,[[301,0]],"mat"]],[],[[[7590.93,5283.27,0.1],[[0,"Move"],[1,"AWARE"],[2,"YELLOW"],[4,"COLUMN"],[5,"NORMAL"]]],[[7503.27,5157.99,0.1],[[0,"guard"]]]],independent] call GW_Common_fnc_spawnGroup;
		[[[[7525.06,5637.73,0.1],190,[[301,0]],"ftl"],[[7521.04,5643.54,0.1],190,[[301,0]],"ar"],[[7530.88,5641.75,0.1],190,[[301,0]],"g"],[[7517.02,5649.36,0.1],190,[[301,0]],"mat"]],[],[[[7545.58,5276.54,0.1],[[0,"Move"],[1,"AWARE"],[2,"YELLOW"],[4,"COLUMN"],[5,"NORMAL"]]],[[7508.77,5102.46,0.1],[[0,"guard"]]]],independent] call GW_Common_fnc_spawnGroup;
	
		waitUntil { sleep 5; {Alive _X || getDammage _X < 0.5} count [arty_5,arty_6,arty_7] == 0 };
		["main_task_3","SUCCEEDED"] call BIS_fnc_taskSetState;	
	};

	case 25: {

		// Both Villages Secure.
		{
			_X setMarkerAlpha 0; sleep 0.02;
		} foreach ["FLNSEG_INDEPENDENT_9_OUTER", "FLNSEG_INDEPENDENT_9_INNER", "FLNSEG_INDEPENDENT_10_OUTER", "FLNSEG_INDEPENDENT_10_INNER", "FLNSEG_INDEPENDENT_11_OUTER", "FLNSEG_INDEPENDENT_11_INNER", "FLNSEG_INDEPENDENT_12_OUTER", "FLNSEG_INDEPENDENT_12_INNER", "FLNSEG_INDEPENDENT_13_OUTER", "FLNSEG_INDEPENDENT_13_INNER", "FLNSEG_INDEPENDENT_14_OUTER", "FLNSEG_INDEPENDENT_14_INNER", 
			"FLNSEG_INDEPENDENT_15_OUTER", "FLNSEG_INDEPENDENT_15_INNER", "FLNSEG_INDEPENDENT_16_OUTER", "FLNSEG_INDEPENDENT_16_INNER", "FLNSEG_INDEPENDENT_17_OUTER", "FLNSEG_INDEPENDENT_17_INNER", "FLNSEG_INDEPENDENT_18_OUTER", "FLNSEG_INDEPENDENT_18_INNER", 
			"FLNSEG_INDEPENDENT_19_OUTER", "FLNSEG_INDEPENDENT_19_INNER", "FLNSEG_INDEPENDENT_1_OUTER", "FLNSEG_INDEPENDENT_1_INNER", "FLNSEG_INDEPENDENT_2_OUTER", "FLNSEG_INDEPENDENT_2_INNER", "FLNSEG_INDEPENDENT_3_OUTER", "FLNSEG_INDEPENDENT_3_INNER", "FLNSEG_INDEPENDENT_4_OUTER", 
			"FLNSEG_INDEPENDENT_4_INNER", "FLNSEG_INDEPENDENT_5_OUTER", "FLNSEG_INDEPENDENT_5_INNER", "FLNSEG_INDEPENDENT_6_OUTER", "FLNSEG_INDEPENDENT_6_INNER", "FLNSEG_INDEPENDENT_7_OUTER", "FLNSEG_INDEPENDENT_7_INNER",
			"FLNSEG_INDEPENDENT_8_OUTER", "FLNSEG_INDEPENDENT_8_INNER",
			"marker_349", 
			"marker_351", 
			"marker_350", 
			"marker_348", 
			"marker_347", 
			"marker_346", 
			"marker_334", 
			"marker_335", 
			"marker_332", 
			"FLNSEG_EAST_3_OUTER_4", 
			"FLNSEG_EAST_3_INNER_4", 
			"FLNSEG_EAST_3_OUTER_5", 
			"FLNSEG_EAST_3_INNER_5", 
			"FLNSEG_EAST_3_OUTER_6", 
			"FLNSEG_EAST_3_INNER_6", 
			"marker_361", 
			"marker_359", 
			"marker_360", 
			"FLNSEG_EAST_3_OUTER_7", 
			"FLNSEG_EAST_3_INNER_7", 
			"FLNSEG_EAST_3_OUTER_15", 
			"FLNSEG_EAST_3_INNER_15", 
			"FLNSEG_EAST_3_OUTER_9", 
			"FLNSEG_EAST_3_INNER_9"	
		];

		{ _X setMarkerAlpha 1; sleep 0.02; } foreach [
			"FLNSEG_INDEPENDENT_10_INNER_1", 
			"FLNSEG_INDEPENDENT_10_OUTER_1", 
			"FLNSEG_INDEPENDENT_11_INNER_1", 
			"FLNSEG_INDEPENDENT_11_OUTER_1", 
			"FLNSEG_INDEPENDENT_12_INNER_1", 
			"FLNSEG_INDEPENDENT_12_OUTER_1", 
			"FLNSEG_INDEPENDENT_13_INNER_1", 
			"FLNSEG_INDEPENDENT_13_OUTER_1", 
			"FLNSEG_INDEPENDENT_14_INNER_1", 
			"FLNSEG_INDEPENDENT_14_OUTER_1", 
			"FLNSEG_INDEPENDENT_15_INNER_1", 
			"FLNSEG_INDEPENDENT_15_OUTER_1", 
			"FLNSEG_INDEPENDENT_16_INNER_1", 
			"FLNSEG_INDEPENDENT_16_OUTER_1", 
			"FLNSEG_INDEPENDENT_17_INNER_1", 
			"FLNSEG_INDEPENDENT_17_OUTER_1", 
			"FLNSEG_INDEPENDENT_18_INNER_1", 
			"FLNSEG_INDEPENDENT_18_OUTER_1", 
			"FLNSEG_INDEPENDENT_19_INNER_1", 
			"FLNSEG_INDEPENDENT_19_OUTER_1", 
			"FLNSEG_INDEPENDENT_1_INNER_1", 
			"FLNSEG_INDEPENDENT_1_OUTER_1", 
			"FLNSEG_INDEPENDENT_20_INNER", 
			"FLNSEG_INDEPENDENT_20_OUTER", 
			"FLNSEG_INDEPENDENT_21_INNER", 
			"FLNSEG_INDEPENDENT_21_OUTER", 
			"FLNSEG_INDEPENDENT_22_INNER", 
			"FLNSEG_INDEPENDENT_22_OUTER", 
			"FLNSEG_INDEPENDENT_23_INNER", 
			"FLNSEG_INDEPENDENT_23_OUTER", 
			"FLNSEG_INDEPENDENT_24_INNER", 
			"FLNSEG_INDEPENDENT_24_OUTER", 
			"FLNSEG_INDEPENDENT_25_INNER", 
			"FLNSEG_INDEPENDENT_25_OUTER", 
			"FLNSEG_INDEPENDENT_2_INNER_1", 
			"FLNSEG_INDEPENDENT_2_INNER_2", 
			"FLNSEG_INDEPENDENT_2_OUTER_1", 
			"FLNSEG_INDEPENDENT_2_OUTER_2", 
			"FLNSEG_INDEPENDENT_3_INNER_1", 
			"FLNSEG_INDEPENDENT_3_OUTER_1", 
			"FLNSEG_INDEPENDENT_4_INNER_1", 
			"FLNSEG_INDEPENDENT_4_OUTER_1", 
			"FLNSEG_INDEPENDENT_5_INNER_1", 
			"FLNSEG_INDEPENDENT_5_OUTER_1", 
			"FLNSEG_INDEPENDENT_6_INNER_1", 
			"FLNSEG_INDEPENDENT_6_OUTER_1", 
			"FLNSEG_INDEPENDENT_7_INNER_1", 
			"FLNSEG_INDEPENDENT_7_OUTER_1", 
			"FLNSEG_INDEPENDENT_8_INNER_1", 
			"FLNSEG_INDEPENDENT_8_OUTER_1", 
			"FLNSEG_INDEPENDENT_9_INNER_1", 
			"FLNSEG_INDEPENDENT_9_OUTER_1", 
			"marker_498", 
			"marker_497", 
			"marker_500", 
			"marker_499",
			"FLNSEG_EAST_3_INNER_17", 
			"FLNSEG_EAST_3_OUTER_17", 
			"FLNSEG_EAST_3_INNER_18", 
			"FLNSEG_EAST_3_OUTER_18", 
			"FLNSEG_EAST_3_INNER_19", 
			"FLNSEG_EAST_3_INNER_20", 
			"FLNSEG_EAST_3_OUTER_20", 
			"FLNSEG_EAST_3_INNER_21", 
			"FLNSEG_EAST_3_OUTER_21", 
			"FLNSEG_EAST_3_INNER_22", 
			"FLNSEG_EAST_3_OUTER_22", 
			"FLNSEG_EAST_3_INNER_23", 
			"FLNSEG_EAST_3_OUTER_23", 
			"FLNSEG_EAST_3_INNER_24", 
			"FLNSEG_EAST_3_OUTER_24", 
			"FLNSEG_EAST_3_INNER_25", 
			"FLNSEG_EAST_3_OUTER_25", 
			"FLNSEG_EAST_3_INNER_26", 
			"FLNSEG_EAST_3_OUTER_26", 
			"FLNSEG_EAST_3_INNER_27", 
			"FLNSEG_EAST_3_OUTER_27", 
			"FLNSEG_EAST_3_INNER_28", 
			"FLNSEG_EAST_3_OUTER_28", 
			"FLNSEG_EAST_3_INNER_29", 
			"FLNSEG_EAST_3_OUTER_29", 
			"FLNSEG_EAST_3_INNER_30", 
			"FLNSEG_EAST_3_OUTER_30", 
			"FLNSEG_EAST_3_INNER_31", 
			"FLNSEG_EAST_3_OUTER_31", 
			"FLNSEG_EAST_3_INNER_32", 
			"FLNSEG_EAST_3_OUTER_32", 
			"FLNSEG_EAST_3_INNER_33", 
			"FLNSEG_EAST_3_OUTER_33", 
			"FLNSEG_EAST_3_INNER_34", 
			"FLNSEG_EAST_3_OUTER_34"			
		];
	};

	case 26: {

		// Hill Veresnik
		[[[[4399.95,8051.58,0],194,"Up",[[301,0]],"g"],[[4419.75,8117.68,0],309,"Up",[[301,0]],"mmg"],[[4425.28,8121.89,0],0,"Up",[[301,0]],"mmg"],[[4429.99,8117.71,3.05176e-05],12,"Up",[[301,0]],"mmg"],[[4429.86,8121.39,0],28,"Up",[[301,0]],"ab"],[[4386.7,8072.91,-3.05176e-05],261,"Up",[[301,0]],"mmg"],[[4388.21,8062.3,3.05176e-05],240,"Up",[[301,0]],"mmg"],[[4391.83,8058.11,3.22409],271,"Up",[[301,0]],"marksman"],[[4394.78,8053.43,0],215,"Up",[[301,0]],"mmg"]],[["UK3CB_CHD_O_Hilux_M2",[4397.27,8052.73,0],222,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]],[351,false]]],["UK3CB_CHD_O_Hilux_M2",[4426.08,8116.66,0],28,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]],[351,false]]],["UK3CB_CW_SOV_O_LATE_BTR40_DSHKMS",[4387.2,8068.68,0],287,[["driver",-1,[]],["commander",-1,[0]],["commander",-1,[1]],["commander",-1,[2]]],[[6,["SOV",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		
		// Hills between Veresnik and Rogovo.
		[[[[4734.85,7475.82,0],277,"Up",[[301,0]],"ab"],[[4732.19,7483.65,0.230011],301,"Middle",[[301,0]],"mmg"],[[4748.9,7447.07,3.05176e-05],261,"Up",[[301,0]],"marksman"],[[4742.06,7456.65,0],240,"Middle",[[301,0]],"mmg"]],[["UK3CB_CHD_O_BRDM2",[4739.8,7469.77,0],261,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["CHDKZ",1]],[351,false]]],["UK3CB_CHD_O_Hilux_M2",[4740.98,7488.01,0],307,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]],[351,false]]],["UK3CB_CHD_O_Hilux_Pkm",[4750.87,7439.34,3.05176e-05],248,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		
		// Hills North-West Rogovo.
		[[[[4442.96,7279.01,0],278,"Auto",[[301,0]],"r"],[[4444.05,7283.49,0],320,"Auto",[[301,0]],"r"],[[4450.13,7288.59,0],354,"Auto",[[301,0]],"r"],[[4461.12,7294.9,0],329,"Auto",[[301,0]],"r"],[[4469.35,7300.86,0],22,"Auto",[[301,0]],"r"],[[4473.27,7291.67,0],120,"Middle",[[301,0]],"r"]],[["UK3CB_CHD_O_BTR40_DSHKMS",[4471.25,7298.09,0],28,[["commander",-1,[0]],["commander",-1,[1]],["commander",-1,[2]]],[[6,["CHDKZ",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]],[351,false]]],["UK3CB_CHD_O_LR_Opentop_DSHKM",[4448.68,7284.12,0],341,[["gunner",-1,[1]]],[[6,["CHDKZ",1]],[7,["Axe_Hide",1,"Exhaust_Cover_Hide",1,"Light_Covers_Hide",1,"Shovel_Hide",1,"Beacons_Hide",0,"DoorsRear_Hide",0,"Fuel_Cans_Hide",0,"Rear_Cargo_Box_Hide",1,"DoorFrontLeft_Hide",0,"DoorFrontRight_Hide",0,"Front_Fuel_Boxes_Hide",1,"Front_Grill_Hide",0,"Radio_Hide",0,"Side_Rails_Hide",1]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	
		// South of Pushtoshka.
		[[[[3099.99,7003.2,0],66,"Auto",[[301,0]],"r"],[[3099.45,7006.26,0],66,"Auto",[[301,0]],"r"],[[3099.46,7024.47,0],66,"Auto",[[301,0]],"r"],[[3098.33,7017.2,0],66,"Auto",[[301,0]],"r"],[[3217.32,6917.99,-3.05176e-05],66,"Auto",[[301,0]],"r"],[[3222.99,6912.01,0],66,"Auto",[[301,0]],"r"],[[3234.32,6902.47,0],66,"Auto",[[301,0]],"r"],[[3241.18,6896.31,0],66,"Auto",[[301,0]],"r"]],[["UK3CB_CHD_O_BRDM2",[3223.89,6904.06,0],76,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["CHDKZ",1]],[351,false]]],["UK3CB_CHD_O_BRDM2",[3205.11,6915.3,0],42,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["CHDKZ",1]],[351,false]]],["UK3CB_CHD_O_BRDM2",[3095.78,7006.86,3.05176e-05],48,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["CHDKZ",1]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	
		// Reserve Guards.
		[[],[["UK3CB_CHD_O_BMP1",[4860.31,5661.35,0],336,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]],[351,false]]],["UK3CB_CHD_O_BMP1",[4424.28,5669.23,3.05176e-05],11,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]],[351,false]]],["UK3CB_CHD_O_BMP1",[4051.45,5801.57,3.05176e-05],55,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]],[351,false]]],["UK3CB_CHD_O_BMP1",[3710.41,6054.06,0],323,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]],[351,false]]],["UK3CB_CHD_O_BMP1",[2411.69,6430.55,0],39,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 27: {

		// Rogovo Obstacles.
		[["Land_Razorwire_F",[4760.78,6762.95,268.581],[[-1.88701,-0.616354,108.083],[-0,358.015,108.073]],[],false],["Land_Razorwire_F",[4758.68,6752.39,268.577],[[2.90808,-0.228204,271.514],[359.695,357.099,271.527]],[],false],["Land_Razorwire_F",[4765.27,6772.96,268.566],[[1.85414,0.363382,295.11],[359.542,358.167,295.111]],[],false],["Land_Razorwire_F",[4771.21,6781.36,268.465],[[-1.95474,0.616524,135.918],[358.167,359.083,135.943]],[],false],["Land_Razorwire_F",[4782.28,6791.13,268.5],[[-0.441804,1.90624,141.711],[358.472,1.22237,141.702]],[],false],["Land_Razorwire_F",[4792.93,6791.92,268.731],[[1.81654,1.46877,50.2774],[357.71,0.458423,50.245]],[],false]] call GW_Common_fnc_spawnObjects;
	
		// Pogorevka Obstacles.
		[["Land_Razorwire_F",[4504.91,6403.52,294.106],[[-1.38604,-4.52405,93.8222],[4.42217,358.32,93.7026]],[],false],["Land_Razorwire_F",[4503.63,6414.12,293.767],[[-5.5059,0.953056,69.2075],[1.06936,354.516,69.2019]],[],false],["Land_Razorwire_F",[4497.15,6414.08,294.378],[[-5.26021,-0.0861781,80.9271],[0.916852,354.819,80.8816]],[],false],["Land_Razorwire_F",[4498.88,6425.96,294.011],[[-5.42597,-1.33875,92.8214],[1.06936,354.516,92.7071]],[],false]] call GW_Common_fnc_spawnObjects;
	};

	case 100: {

		// Have Independent Players
		if({Alive _X && side group _X == independent} count allPlayers > 0) then {

			// Setup Tasks
			[independent, ["indep_task_2","indep_task_1"], ["The Chedaki militia forces are gathering for an attack from the south-east, deploy to sector echo and defend the position.", "Defend Sector Echo", "Defend Echo"], getpos sector_echo, "ASSIGNED", 2, true, "defend"] call BIS_fnc_taskCreate;
			sleep 60;

			// Command Warning 1
			["CDF Command", "side", "Outpost Harvest, this is CDF Command, enemy mortars are zeroing in on your position. Dig in, the attack is imminent, Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;
			sleep 15;

			// First Mortar Attack
			// Mortar Security
			[[[[6765.65,5602.86,0],293,"Up",[[301,0]],"g"],[[6756.31,5583.98,0.39917],318,"Up",[[301,0]],"ar"],[[6745.56,5607.86,9.15527e-05],79,"Middle",[[301,0]],"mat"],[[6762.51,5563.25,0],249,"Middle",[[301,1]],"ag"],[[6773.58,5574.97,0],202,"Middle",[[301,0]],"crew"],[[6780.92,5583.96,0],281,"Middle",[[301,0]],"ar"],[[6764.88,5590.22,0],251,"Middle",[[301,0]],"ar"],[[6779.71,5596.37,0.0830994],256,"Up",[[301,0]],"ar"],[[6779.28,5598.69,0.0930786],259,"Up",[[301,0]],"lr"]],[],[],east] call GW_Common_fnc_spawnGroup;
				
			null = [emortar_1,east,"precise","light",[getPosATL MortarTarget_4,35],150,400,20,-1,-1] spawn OKS_fnc_Mortars; sleep 5;
			null = [emortar_2,east,"precise","light",[getPosATL MortarTarget_5,35],150,400,20,-1,-1] spawn OKS_fnc_Mortars;
			sleep 60;

			private _FirstWave = [];
			[getPos LambsGroupSpawn_14, "rush", 4, east, 600, _FirstWave] spawn OKS_fnc_Lambs_SpawnGroup;
			[getPos LambsGroupSpawn_15, "rush", 4, east, 600, _FirstWave] spawn OKS_fnc_Lambs_SpawnGroup;
			_Wave1Group1 = [
				[
					[[6672.84,5521.44,0],321,[[301,0]],"sl"],[[6679.87,5520.69,0],321,[[301,0]],"ar"],
					[[6672.09,5514.41,0],321,[[301,0]],"mmg"],
					[[6672.33,5512.21,3.05176e-05],321,[[301,0]],"ag"],
					[[6676.18,5520.58,0],321,[[301,0]],"lr"],
					[[6679.36,5511.46,0],321,[[301,0]],"r"],
					[[6675.43,5513.55,0],321,[[301,0]],"mat"],
					[[6678.06,5516.46,3.05176e-05],321,[[301,1]],"ag"]
				],
				[],
				[[[6657.53,5558.07,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6580.51,5608.23,3.05176e-05],[[0,"Move"]]],[[6548.91,5575.51,3.05176e-05],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
			_Wave1Group2 = [
				[[[6653.06,5501.76,0],321,[[301,0]],"sl"],[[6660.09,5501.02,3.05176e-05],321,[[301,0]],"ar"],
				[[6652.31,5494.73,3.05176e-05],321,[[301,0]],"mmg"],[[6652.54,5492.53,6.10352e-05],321,[[301,0]],"ag"],[[6656.39,5500.9,0],321,[[301,0]],"lr"],[[6659.57,5491.78,0],321,[[301,0]],"r"],[[6655.65,5493.87,3.05176e-05],321,[[301,0]],"mat"],[[6658.27,5496.78,6.10352e-05],321,[[301,1]],"ag"]],[],[[[6636.52,5526.88,3.05176e-05],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6594.65,5571.1,0],[[0,"Move"]]],[[6573.25,5597.83,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
			_Wave1Group3 = [
				[[[6632.22,5476.52,0],321,[[301,0]],"sl"],[[6639.25,5475.78,0],321,[[301,0]],"ar"],[[6631.47,5469.49,0],321,[[301,0]],"mmg"],[[6631.71,5467.29,3.05176e-05],321,[[301,0]],"ag"],[[6635.56,5475.66,0],321,[[301,0]],"lr"],[[6638.74,5466.54,3.05176e-05],321,[[301,0]],"r"],[[6634.81,5468.63,0],321,[[301,0]],"mat"],[[6637.44,5471.54,0],321,[[301,1]],"ag"]],[],[[[6615.68,5501.64,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6579.65,5552.08,3.05176e-05],[[0,"Move"]]],[[6559.25,5555.01,3.05176e-05],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;		
			{
				_Group = _x;
				{_FirstWave pushBack _x} foreach units _Group;	
			} foreach [_Wave1Group1, _Wave1Group2, _Wave1Group3];

			sleep 30;
			waitUntil {
				sleep 30; 
				systemChat format ["[DEFENCE] %1 remaining in first wave", {Alive _X || [_X] call ace_common_fnc_isAwake} count _FirstWave];
				{Alive _X || [_X] call ace_common_fnc_isAwake} count _FirstWave <= 5
			};
			["indep_task_2","SUCCEEDED"] call BIS_fnc_taskSetState;
			if(triggerActivated SpawnTrigger_10) exitWith { systemChat "Attacks cancelled, reinforcements have arrived in the area."};
			// Command Warning 2
			["CDF Command", "side", "Outpost Harvest, this is CDF Command, the enemy attack has been repelled for now but they are regrouping for another assault, this time from the west, Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;
			sleep 5;
			_TaskTitle = "Defend November and Whiskey";
			[independent, ["indep_task_3","indep_task_1"], ["The Chedaki militia forces are gathering for an attack from the west, deploy to sector November and Whiskey and defend the positions.", _TaskTitle, "November and Whiskey"], [6521.2,5597.85,0], "ASSIGNED", 2, true, "defend"] call BIS_fnc_taskCreate;
			sleep 60;
			[hidden_1, east, 0, camo_1]  call OKS_fnc_ActivateHiddenVehicle; sleep 2;
			[hidden_2, east, 0, camo_2]  call OKS_fnc_ActivateHiddenVehicle; 
			null = [emortar_1,east,"precise","light",[getPosATL MortarTarget_4,35],150,400,20,-1,-1] spawn OKS_fnc_Mortars; sleep 5;
			null = [emortar_2,east,"precise","light",[getPosATL MortarTarget_5,35],150,400,20,-1,-1] spawn OKS_fnc_Mortars;
			sleep 90;
			
			private _SecondWave = [];
			[getPos LambsGroupSpawn_16, "rush", 4, east, 1500, _SecondWave] spawn OKS_fnc_Lambs_SpawnGroup;
			[getPos LambsGroupSpawn_17, "rush", 4, east, 1500, _SecondWave] spawn OKS_fnc_Lambs_SpawnGroup;
			[getPos LambsGroupSpawn_18, "rush", 4, east, 1500, _SecondWave] spawn OKS_fnc_Lambs_SpawnGroup;

			_Wave2Group1 = [[[[6440,5501.56,0],0,[[301,0]],"sl"],[[6445,5496.56,3.05176e-05],0,[[301,0]],"ar"],[[6435,5496.56,0],0,[[301,0]],"mmg"],[[6439.83,5498.24,0],0,[[301,0]],"ag"],[[6436.51,5493.74,0],0,[[301,0]],"lr"],[[6444.83,5493.24,0],0,[[301,0]],"r"],[[6438.4,5491.24,0],0,[[301,0]],"mat"],[[6442.04,5490.72,0],0,[[301,1]],"ag"]],[],[[[6464.49,5518.9,0],[[0,"Move"],[1,"AWARE"],[2,"RED"],[4,"DIAMOND"],[5,"FULL"]]],[[6495.7,5550.48,0],[[0,"Move"]]],[[6511.38,5570.33,0],[[0,"Move"]]],[[6532.42,5591.89,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
			_Wave2Group2 = [[[[6427.85,5530.54,3.05176e-05],0,[[301,0]],"sl"],[[6432.85,5525.54,3.05176e-05],0,[[301,0]],"ar"],[[6422.85,5525.54,3.05176e-05],0,[[301,0]],"mmg"],[[6427.68,5527.22,6.10352e-05],0,[[301,0]],"ag"],[[6424.35,5522.72,3.05176e-05],0,[[301,0]],"lr"],[[6432.68,5522.22,3.05176e-05],0,[[301,0]],"r"],[[6426.24,5520.22,3.05176e-05],0,[[301,0]],"mat"],[[6429.89,5519.7,9.15527e-05],0,[[301,1]],"ag"]],[],[[[6460.51,5545.96,3.05176e-05],[[0,"Move"],[1,"AWARE"],[2,"RED"],[4,"DIAMOND"],[5,"FULL"]]],[[6502.74,5576.73,0],[[0,"Move"]]],[[6513.61,5624,1.82364],[[0,"Move"]]],[[6534.44,5634.33,3.05176e-05],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
			_Wave2Group3 = [[[[6486.92,5460.6,0],0,[[301,0]],"sl"],[[6491.92,5455.6,3.05176e-05],0,[[301,0]],"ar"],[[6481.92,5455.6,3.05176e-05],0,[[301,0]],"mmg"],[[6486.75,5457.28,3.05176e-05],0,[[301,0]],"ag"],[[6483.43,5452.78,0],0,[[301,0]],"lr"],[[6491.75,5452.28,3.05176e-05],0,[[301,0]],"r"],[[6485.31,5450.28,0],0,[[301,0]],"mat"],[[6488.96,5449.76,6.10352e-05],0,[[301,1]],"ag"]],[],[[[6511.41,5477.94,0],[[0,"Move"],[1,"AWARE"],[2,"RED"],[4,"DIAMOND"],[5,"FULL"]]],[[6527.31,5507.73,0],[[0,"Move"]]],[[6537.52,5538.31,0],[[0,"Move"]]],[[6524.52,5571.09,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;	
			sleep 30;

			{
				_Group = _x;
				{_SecondWave pushBack _x} foreach units _Group;	
			} foreach [_Wave2Group1, _Wave2Group2, _Wave2Group3];			
			waitUntil {
				sleep 30;
				systemChat format ["[DEFENCE] %1 remaining in second wave", {Alive _X || [_X] call ace_common_fnc_isAwake} count _SecondWave];
				{Alive _X || [_X] call ace_common_fnc_isAwake} count _SecondWave <= 5
			};			
			["indep_task_3","SUCCEEDED"] call BIS_fnc_taskSetState;
			if(triggerActivated SpawnTrigger_10) exitWith { systemChat "Attacks cancelled, reinforcements have arrived in the area."};
			sleep 10;

			[independent, ["indep_task_4","indep_task_1"], ["The attacking forces are using the nearby compound to your south-east for their mortars. There is a break in the attacks, counter-attack and silence those mortar crews!", "Counter: Destroy Mortars", "Counter"], [6767.84,5590.29,0], "ASSIGNED", 2, true, "attack"] call BIS_fnc_taskCreate;
			null = [emortar_1,east,"precise","light",[getPosATL MortarTarget_4,35],150,400,20,-1,4] spawn OKS_fnc_Mortars; sleep 5;
			null = [emortar_2,east,"precise","light",[getPosATL MortarTarget_5,35],150,400,20,-1,4] spawn OKS_fnc_Mortars;

			waitUntil { sleep 15; !alive emortar_1 && !alive emortar_2 }; 
			["indep_task_4","SUCCEEDED"] call BIS_fnc_taskSetState;
			if(triggerActivated SpawnTrigger_10) exitWith { systemChat "Attacks cancelled, reinforcements have arrived in the area."};
			sleep 5;
			["CDF Command", "side", "Outpost Harvest, this is CDF Command, good work on taking out the mortars. Fallback ASAP, more forces are staging to attack. ETA 5 minutes.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;
			sleep 300;

			if(triggerActivated SpawnTrigger_10) exitWith { systemChat "Attacks cancelled, reinforcements have arrived in the area."};
			private _ThirdWave = [];
			[[],[["UK3CB_CHD_O_Mi8",[7808.61,9412.08,58.5951],0,[["driver",-1,[]],["turret",-1,[0]],["turret",-1,[1]],["turret",-1,[2]]],[[6,["CHDKZ",1]],[7,["intake_hide",1,"bench_hide",0,"RearDoors",0]],[8,["",""]],[351,false]]]],[[[6539.96,5589.84,0],[[0,"Loiter"],[1,"SAFE"],[5,"NORMAL"]]]],east] call GW_Common_fnc_spawnGroup;
			["CDF Command", "side", "Outpost Harvest, this is CDF Command, enemy forces are converging on the northern sector, repel the attackers, Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;
			[independent, ["indep_task_5","indep_task_1"], ["A new force is pushing in from the northern sector. Deploy to Sector November and repel the attack.", "Defend Sector November", "November"], getpos sector_november, "ASSIGNED", 2, true, "defend"] call BIS_fnc_taskCreate;
			_Wave3Group1 = [[[[6546.58,5831.37,0],127,[[301,0]],"sl"],[[6539.58,5830.37,0],127,[[301,0]],"ar"],[[6545.59,5838.37,0],127,[[301,0]],"mmg"],[[6544.04,5833.49,0],127,[[301,0]],"ag"],[[6542.43,5838.85,0],127,[[301,0]],"lr"],[[6537.04,5832.5,0],127,[[301,0]],"r"],[[6539.3,5838.85,0],127,[[301,0]],"mat"],[[6536.7,5836.24,3.05176e-05],127,[[301,1]],"ag"]],[],[[[6550.54,5765.41,0],[[0,"Move"],[1,"AWARE"],[2,"RED"],[4,"DIAMOND"],[5,"FULL"]]],[[6549,5693.8,0],[[0,"Move"]]],[[6546.31,5635.94,0],[[0,"Move"]]],[[6536.34,5584.72,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
			_Wave3Group2 =[[[[6512.65,5833.04,0],127,[[301,0]],"sl"],[[6505.64,5832.04,0],127,[[301,0]],"ar"],[[6511.65,5840.04,0],127,[[301,0]],"mmg"],[[6510.1,5835.16,0],127,[[301,0]],"ag"],[[6508.5,5840.52,0],127,[[301,0]],"lr"],[[6503.1,5834.17,0],127,[[301,0]],"r"],[[6505.36,5840.52,0],127,[[301,0]],"mat"],[[6502.76,5837.91,3.05176e-05],127,[[301,1]],"ag"]],[],[[[6507.07,5756.97,0],[[0,"Move"],[1,"AWARE"],[2,"RED"],[4,"DIAMOND"],[5,"FULL"]]],[[6515.06,5695.47,0],[[0,"Move"]]],[[6512.37,5637.61,0],[[0,"Move"]]],[[6502.4,5586.39,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
			_Wave3Group3 =[[[[6469.23,5832.31,3.05176e-05],127,[[301,0]],"sl"],[[6462.23,5831.31,6.10352e-05],127,[[301,0]],"ar"],[[6468.23,5839.31,6.10352e-05],127,[[301,0]],"mmg"],[[6466.68,5834.43,3.05176e-05],127,[[301,0]],"ag"],[[6465.08,5839.79,3.05176e-05],127,[[301,0]],"lr"],[[6459.68,5833.44,3.05176e-05],127,[[301,0]],"r"],[[6461.94,5839.79,3.05176e-05],127,[[301,0]],"mat"],[[6459.34,5837.18,6.10352e-05],127,[[301,1]],"ag"]],[],[[[6467.16,5750.11,0],[[0,"Move"],[1,"AWARE"],[2,"RED"],[4,"DIAMOND"],[5,"FULL"]]],[[6468.73,5693.8,3.05176e-05],[[0,"Move"]]],[[6480.48,5608.76,0],[[0,"Move"]]],[[6529.01,5595.29,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
			_Wave3Group4 = [[],[["rhs_btr80_vdv",[6778.14,5768.83,0],246,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",1]],[351,false]]]],[[[6694.79,5715,0.000152588],[[0,"Move"]]],[[6619.61,5678.92,0],[[0,"Move"]]],[[6590.08,5661.88,9.15527e-05],[[0,"Move"]]],[[6566.12,5646.91,0],[[0,"Hold"]]]],east] call GW_Common_fnc_spawnGroup;

			sleep 15;
			{
				_Group = _x;
				{_ThirdWave pushBack _x} foreach units _Group;	
			} foreach [_Wave3Group1, _Wave3Group2, _Wave3Group3, _Wave3Group4];

			waitUntil {
				sleep 30;
				systemChat format ["[DEFENCE] %1 remaining in third wave", {Alive _X || [_X] call ace_common_fnc_isAwake} count _ThirdWave];
				{Alive _X || [_X] call ace_common_fnc_isAwake} count _ThirdWave <= 5
			};		
			["indep_task_5","SUCCEEDED"] call BIS_fnc_taskSetState;
			if(triggerActivated SpawnTrigger_10) exitWith { systemChat "Attacks cancelled, reinforcements have arrived in the area."};
			["CDF Command", "side", "Outpost Harvest, this is CDF Command, the force to the north is diminished. Imminent attack from the east, enemy mechanized convoy inbound. Redeploy to Echo! Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;
			sleep 120;

			if(triggerActivated SpawnTrigger_10) exitWith { systemChat "Attacks cancelled, reinforcements have arrived in the area."};
			[independent, ["indep_task_5","indep_task_1"], ["A mechanized force is heading in from the east. Defend Sector Echo! Get your anti-tank weapons ready.", "Defend Sector Echo", "Echo"], getpos sector_echo, "ASSIGNED", 2, true, "defend"] call BIS_fnc_taskCreate;
			private _FourthWave = [];
			private _ConvoyWave = [];
			[getPos LambsGroupSpawn_19, "rush", 6, east, 1500, _FourthWave] spawn OKS_fnc_Lambs_SpawnGroup;
			[getPos LambsGroupSpawn_20, "rush", 6, east, 1500, _FourthWave] spawn OKS_fnc_Lambs_SpawnGroup;
			_Wave4Group1 = [[[[6636.61,5486.51,0],0,[[301,0]],"sl"],[[6641.61,5481.51,0],0,[[301,0]],"r"],[[6631.61,5481.51,0],0,[[301,0]],"mat"],[[6636.59,5482.21,3.05176e-05],0,[[301,0]],"lr"],[[6630.17,5477.34,0],0,[[301,0]],"ftl"],[[6641.59,5477.21,3.05176e-05],0,[[301,0]],"ar"],[[6632.05,5474.75,0],0,[[301,0]],"ab"],[[6634.67,5476.61,3.05176e-05],0,[[301,1]],"ag"]],[],[[[6613.3,5496.15,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6586.09,5538.07,-0.00012207],[[0,"Move"]]],[[6578.72,5560.69,0],[[0,"Move"]]],[[6535.54,5587.13,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
			_Wave4Group2 = [[[[6662.31,5519.13,3.05176e-05],0,[[301,0]],"sl"],[[6667.31,5514.13,3.05176e-05],0,[[301,0]],"r"],[[6657.31,5514.13,3.05176e-05],0,[[301,0]],"mat"],[[6662.28,5514.82,6.10352e-05],0,[[301,0]],"lr"],[[6655.86,5509.96,3.05176e-05],0,[[301,0]],"ftl"],[[6667.28,5509.82,6.10352e-05],0,[[301,0]],"ar"],[[6657.74,5507.36,3.05176e-05],0,[[301,0]],"ab"],[[6660.36,5509.22,6.10352e-05],0,[[301,1]],"ag"]],[],[[[6638.99,5528.77,3.05176e-05],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6607.11,5551.65,3.05176e-05],[[0,"Move"]]],[[6588.54,5575.22,3.05176e-05],[[0,"Move"]]],[[6529.4,5634.78,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
			[ConvoySpawn_1,ConvoyWP_1,ConvoyEnd_1,east,[6,["UK3CB_CHD_O_BMP1","UK3CB_CHD_O_LR_Softtop_Transport_Open","UK3CB_CHD_O_BTR40_MG","UK3CB_CHD_O_LR_Softtop_Transport_Open","rhs_btr80_vdv","UK3CB_CHD_O_LR_Softtop_Transport_Open"],35,35,15],[true,6],_ConvoyWave,false,false,["hunt"],"offroad"] spawn OKS_fnc_Convoy_Spawn;		
			sleep 45;

			{
				_Group = _x;
				{_FourthWave pushBack _x} foreach units _Group;	
			} foreach [_Wave4Group1, _Wave4Group2];
			{
				_Group = _x;
				{_FourthWave pushBack _x} foreach units _Group;
			} foreach _ConvoyWave;
			waitUntil {
				sleep 30;
				systemChat format ["[DEFENCE] %1 remaining in fourth wave", {Alive _X || [_X] call ace_common_fnc_isAwake} count _FourthWave];
				{Alive _X || [_X] call ace_common_fnc_isAwake} count _FourthWave <= 5
			};	
			["indep_task_5","SUCCEEDED"] call BIS_fnc_taskSetState;
			if(triggerActivated SpawnTrigger_10) exitWith { systemChat "Attacks cancelled, reinforcements have arrived in the area."};
			sleep 60;

			["CDF Command", "side", "Outpost Harvest, this is CDF Command, enemy paratroopers inbound from the north. Hold them off, Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;
			[east, "UK3CB_CHD_O_Mi8AMT", False, "drop", "AirDropSpawn", paradrop_1, "AirDropDespawn", [2,1], [[6530.56,5596.63,0]]] spawn OKS_fnc_AirDrop; sleep 5;
			[east, "UK3CB_CHD_O_Mi8AMT", False, "drop", "AirDropSpawn_1", paradrop_2, "AirDropDespawn_1", [2,1], [[6569.47,5599.8,0]]] spawn OKS_fnc_AirDrop; sleep 5;
			[east, "UK3CB_CHD_O_Mi8AMT", False, "drop", "AirDropSpawn_2", paradrop_3, "AirDropDespawn_2", [2,1], [[6586.87,5597.42,0]]] spawn OKS_fnc_AirDrop; sleep 180;
			sleep 15; 
			[[],[["UK3CB_CHD_O_Mi8",[7808.61,9412.08,58.5951],0,[["driver",-1,[]],["turret",-1,[0]],["turret",-1,[1]],["turret",-1,[2]]],[[6,["CHDKZ",1]],[7,["intake_hide",1,"bench_hide",0,"RearDoors",0]],[8,["",""]],[351,false]]]],[[[6539.96,5589.84,0],[[0,"Loiter"],[1,"SAFE"],[5,"NORMAL"]]]],east] call GW_Common_fnc_spawnGroup;

			if(triggerActivated SpawnTrigger_10 || BOREALIS_MISSION_CODE == 2) exitWith { 
				systemChat "Attacks complete or reinforcements have arrived in the area or no rescue coming.";
				sleep 300;
				["CDF Command", "side", "Outpost Harvest, this is CDF Command, enemy ground forces are falling back to regroup, complete your engagements and proceed with a counter-attack, Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;
				[11] spawn GW_Fnc_spawnList;
			};
			["CDF Command", "side", "Outpost Harvest, this is CDF Command, infantry forces advancing from the west and south, Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;
			[HuntSpawn_7, HuntSpawn_7, HuntTrigger_2, 5, 300, east, 6, 20] spawn OKS_fnc_HuntBase;
			[HuntSpawn_8, HuntSpawn_8, HuntTrigger_2, 5, 300, east, 6, 20] spawn OKS_fnc_HuntBase;
			[HuntSpawn_9, HuntSpawn_9, HuntTrigger_2, 5, 300, east, 6, 20] spawn OKS_fnc_HuntBase;
			[HuntSpawn_10, HuntSpawn_10, HuntTrigger_2, 5, 300, east, 6, 20] spawn OKS_fnc_HuntBase;

			waitUntil { sleep 10; triggerActivated SpawnTrigger_10 || BOREALIS_MISSION_CODE == 2 };
			{
				deleteVehicle _X;
			} foreach [HuntSpawn_7, HuntSpawn_8, HuntSpawn_9, HuntSpawn_10];

		} else {
			// No Independent Players - Spawning AI Garrison.
			waitUntil {sleep 30; triggerActivated SpawnTrigger_20};
			[[[[6568.37,5561.97,0.439606],147,"Up",[[301,1]],"ag"],[[6569.07,5562.95,0.38443],129,"Up",[[301,0]],"lr"],[[6569.74,5564.59,0.529755],46,"Up",[[301,1]],"ag"],[[6555.78,5560.47,0.533203],237,"Up",[[301,0]],"r"],[[6556.82,5560.09,0.528839],182,"Up",[[301,0]],"ar"],[[6574.1,5575.12,1.07678],120,"Up",[[301,1]],"ag"],[[6573.2,5574.3,1.13269],140,"Up",[[301,0]],"ar"],[[6584.34,5590.15,0],35,"Up",[[301,0]],"ar"],[[6582.87,5590.66,0.525818],0,"Up",[[301,0]],"ab"],[[6557.41,5607.52,3.44351],98,"Middle",[[301,0]],"ar"],[[6550.29,5593.67,12.4475],158,"Up",[[301,0]],"ar"],[[6520.81,5608.91,0.733276],264,"Up",[[301,0]],"ar"],[[6523.87,5606.09,1.19244],192,"Middle",[[301,1]],"ag"],[[6524.81,5617.5,0.344543],0,"Up",[[301,0]],"ar"],[[6526.41,5617.58,0.238403],0,"Up",[[301,0]],"ar"],[[6523.15,5616.56,0.0865479],289,"Up",[[301,1]],"ag"],[[6534.78,5621.26,1.49725],320,"Up",[[301,0]],"ar"],[[6535.63,5621.52,1.56497],29,"Up",[[301,1]],"ag"],[[6514.46,5584.37,0.695435],312,"Up",[[301,0]],"g"],[[6516.1,5577.64,-6.10352e-05],226,"Up",[[301,0]],"ar"],[[6522.73,5575.66,0.294159],133,"Up",[[301,0]],"ar"]],[],[],independent] call GW_Common_fnc_spawnGroup;
			sleep 5;
			["NAPA Commander", "side", "1st Platoon this is the commander at OP Harvest, we are under attack. We need immediate assistance! Harvest out."] spawn OKS_fnc_ChatGlobal;
			[getPos LambsGroupSpawn_14, "rush", 6, east, 600, []] spawn OKS_fnc_Lambs_SpawnGroup;
			[getPos LambsGroupSpawn_15, "rush", 6, east, 600, []] spawn OKS_fnc_Lambs_SpawnGroup;
			[[[[6672.84,5521.44,0],321,[[301,0]],"sl"],[[6679.87,5520.69,0],321,[[301,0]],"ar"],[[6672.09,5514.41,0],321,[[301,0]],"mmg"],[[6672.33,5512.21,3.05176e-05],321,[[301,0]],"ag"],[[6676.18,5520.58,0],321,[[301,0]],"lr"],[[6679.36,5511.46,0],321,[[301,0]],"r"],[[6675.43,5513.55,0],321,[[301,0]],"mat"],[[6678.06,5516.46,3.05176e-05],321,[[301,1]],"ag"]],[],[[[6657.53,5558.07,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6580.51,5608.23,3.05176e-05],[[0,"Move"]]],[[6548.91,5575.51,3.05176e-05],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
			[[[[6653.06,5501.76,0],321,[[301,0]],"sl"],[[6660.09,5501.02,3.05176e-05],321,[[301,0]],"ar"],[[6652.31,5494.73,3.05176e-05],321,[[301,0]],"mmg"],[[6652.54,5492.53,6.10352e-05],321,[[301,0]],"ag"],[[6656.39,5500.9,0],321,[[301,0]],"lr"],[[6659.57,5491.78,0],321,[[301,0]],"r"],[[6655.65,5493.87,3.05176e-05],321,[[301,0]],"mat"],[[6658.27,5496.78,6.10352e-05],321,[[301,1]],"ag"]],[],[[[6636.52,5526.88,3.05176e-05],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6594.65,5571.1,0],[[0,"Move"]]],[[6573.25,5597.83,0],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;
			[[[[6632.22,5476.52,0],321,[[301,0]],"sl"],[[6639.25,5475.78,0],321,[[301,0]],"ar"],[[6631.47,5469.49,0],321,[[301,0]],"mmg"],[[6631.71,5467.29,3.05176e-05],321,[[301,0]],"ag"],[[6635.56,5475.66,0],321,[[301,0]],"lr"],[[6638.74,5466.54,3.05176e-05],321,[[301,0]],"r"],[[6634.81,5468.63,0],321,[[301,0]],"mat"],[[6637.44,5471.54,0],321,[[301,1]],"ag"]],[],[[[6615.68,5501.64,0],[[0,"Move"],[1,"AWARE"],[4,"DIAMOND"],[5,"FULL"]]],[[6579.65,5552.08,3.05176e-05],[[0,"Move"]]],[[6559.25,5555.01,3.05176e-05],[[0,"Move"]]]],east] call GW_Common_fnc_spawnGroup;		
		
		};
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