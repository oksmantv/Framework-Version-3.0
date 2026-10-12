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

	case 0: {
		/// IED Cache 1
		[[[[2876.4,5166.13,0],101,"Up",[]],[[2875.04,5178.39,0],168,"Up",[]],[[2885.71,5173.1,3.36632],146,"Up",[]],[[2884.41,5179.36,3.36632],88,"Up",[]],[[2881.48,5172.75,5.83216],145,"Down",[]],[[2879.09,5170.71,5.83216],145,"Down",[]],[[2886.4,5180.55,0],147,"Up",[]],[[2878.72,5173.55,3.36632],127,"Up",[]],[[2876.9,5176.36,3.36632],249,"Up",[]],[[2901.73,5173.93,0],232,"Up",[]],[[2908.67,5180.57,3.1],232,"Up",[]],[[2927.23,5182.82,3.1],187,"Up",[]],[[2921.23,5180.9,3.1],207,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Snipers
		[[[[3138.22,5213.03,8.00612],261,"Middle",[[301,0]],"marksman"],[[3158.18,5090.99,6.1],241,"Middle",[[301,0]],"marksman"],[[2962.96,5573.47,8.00612],160,"Middle",[[301,0]],"marksman"],[[3270.44,5257.45,13.9622],278,"Middle",[[301,0]],"marksman"],[[2948.99,5103.82,18.1331],205,"Middle",[[301,0]],"marksman"]],[],[],east] call GW_Common_fnc_spawnGroup;
		
		// Rooftops
		[15,getMarkerPos "marker_14", independent, [], 250] spawn OKS_fnc_Garrison_Rooftops;
		[15,getMarkerPos "marker_12", independent, [], 250] spawn OKS_fnc_Garrison_Rooftops;
		[10,getMarkerPos "marker_5", independent, [], 250] spawn OKS_fnc_Garrison_Rooftops;
	};

	case 1: {
		// Spawner
		{
			[getpos _X,"rush",2,east,1500,[]] spawn OKS_fnc_Lambs_Spawner; sleep 10;
		} foreach [spawner_1,spawner_10,spawner_11,spawner_12,spawner_13,spawner_2,spawner_3,spawner_4,spawner_5,spawner_6,spawner_7,spawner_8,spawner_9];	
	};

	case 2: {

		/// IED Cache 2
		[[[[3074.24,5313.97,0],251,"Up",[]],[[3085.63,5324.97,0],187,"Up",[]],[[3075.15,5321.3,5.88581],232,"Up",[]],[[3073.51,5326.66,5.88581],251,"Up",[]],[[3070.25,5336.32,5.88581],251,"Up",[]],[[3074.3,5331.8,5.88581],209,"Up",[]],[[3083,5328.18,5.88581],44,"Up",[]],[[3071.04,5340.41,0],247,"Up",[]],[[3076.21,5330.65,0],258,"Up",[]],[[3079.7,5340.53,0],339,"Up",[]],[[3083.75,5330.66,0],251,"Middle",[]]],[["UK3CB_AAF_O_PKM_High",[3072.47,5333.28,5.88581],250,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		/// Villa
		[[[[3267.8,5314.34,8.05319],220,"Up",[]],[[3276.71,5310.91,8.05319],211,"Up",[]],[[3260.06,5328.83,8.04867],220,"Up",[]],[[3250.61,5347.54,8.0306],220,"Up",[]],[[3258.18,5350.16,0.991715],200,"Up",[]],[[3268.22,5342.97,0.991958],297,"Up",[]],[[3260.99,5349.83,0.991705],175,"Up",[]],[[3277.59,5337.81,0.987096],267,"Up",[]],[[3274.01,5342.71,0.988153],245,"Up",[]],[[3270.59,5316.26,0.991755],358,"Up",[]],[[3275.68,5330.05,0.991687],221,"Up",[]],[[3268.83,5329.38,0.991757],220,"Up",[]],[[3269.03,5344.23,4.57452],227,"Up",[]],[[3268.88,5347.7,4.57452],263,"Up",[]],[[3263.42,5349.71,4.57452],196,"Up",[]],[[3255.12,5351.11,4.57452],145,"Up",[]],[[3254.28,5347.73,4.57452],102,"Up",[]],[[3258.31,5350.96,4.57452],220,"Up",[]],[[3259.61,5330.24,4.57452],219,"Middle",[]],[[3263.41,5327.85,4.57452],193,"Middle",[]],[[3264.03,5341.52,4.57452],100,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 4: {
		// Convoy Attack.
		[ConvoySpawn_1,ConvoyWP_1,ConvoyEnd_1,east,[4,["UK3CB_ADM_O_BRDM2","UK3CB_ADM_O_Hilux_M2","UK3CB_ADM_O_Hilux_Open","UK3CB_ADM_O_V3S_Closed"],35,50,30],[true,6],[],false,false,["rush"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;
	};

	case 5: {
		// Convoy Attack.		
		[ConvoySpawn_2,ConvoyWP_2,ConvoyEnd_2,east,[4,["UK3CB_ADM_O_BRDM2","UK3CB_ADM_O_Hilux_M2","UK3CB_ADM_O_Hilux_Open","UK3CB_ADM_O_V3S_Closed"],35,50,30],[true,6],[],false,false,["rush"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;
	};

	case 6: {
		// Convoy Attack.		
		[ConvoySpawn_3,ConvoyWP_3,ConvoyEnd_3,east,[4,["UK3CB_ADM_O_BRDM2","UK3CB_ADM_O_Hilux_M2","UK3CB_ADM_O_Hilux_Open","UK3CB_ADM_O_V3S_Closed"],35,50,30],[true,6],[],false,false,["rush"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};

