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

		[[[[3176.29,3699.4,0.0947723],0,"Up",[]],[[3198.72,3691.06,0.0947723],0,"Up",[]],[[3206.59,3690.42,0.198547],0,"Up",[]],[[3173.21,3732.66,0.198944],0,"Up",[]],[[3167.79,3745.52,0.197586],63,"Up",[]],[[3189.89,3749.98,0.0947723],0,"Up",[]],[[3181.25,3754.33,0.0947723],0,"Middle",[]],[[3172.25,3693.31,0.0947571],234,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3151.98,3711.2,0.22583],339,"Middle",[]],[[3159.11,3689.35,0.0947723],335,"Middle",[]],[[3151.66,3685.99,0.198807],72,"Up",[]],[[3148.67,3690.98,0],22,"Up",[]],[[3128.34,3689.19,0.197189],25,"Middle",[]],[[3140.66,3692.46,0.194824],329,"Middle",[]],[[3117.63,3768.38,3.61432],57,"Middle",[]],[[3120.87,3776.42,4.52792],49,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[2806.86,3503.17,0.194382],40,"Up",[]],[[2785.18,3523.07,0.201904],40,"Up",[]],[[2792.92,3500.44,0.0947723],90,"Middle",[]],[[2818.63,3486.05,0.0947723],40,"Up",[]],[[2821.25,3481.51,0],71,"Up",[]],[[2790.03,3472.97,0.196808],40,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2779.86,3460.6,0.198395],40,"Up",[]],[[2769.88,3459.74,0.185974],40,"Up",[]],[[2742.87,3457.29,0.0947723],32,"Up",[]],[[2775.37,3473.38,0.0947723],52,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		[[[[2593.52,3382.9,0.195175],81,"Up",[]],[[2594.49,3401.01,0.203003],81,"Up",[]],[[2596.92,3418.28,0.249268],81,"Up",[]],[[2595.04,3345.92,0.20517],81,"Up",[]],[[2598.7,3362.38,0.104309],48,"Middle",[]],[[2539.71,3353.99,0.197464],98,"Up",[]],[[2543.36,3365.52,0.0947723],53,"Up",[]],[[2531.18,3357.64,0.217987],104,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2607.16,3464.28,17.2646],26,"Up",[]],[[2606.02,3459.34,17.2155],26,"Up",[]],[[2604.14,3451.43,17.1965],26,"Up",[]],[[2603.97,3448.52,17.1958],26,"Up",[]],[[2593.2,3450.48,8.78995],185,"Up",[]],[[2593.56,3449.97,3.18997],176,"Up",[]],[[2594.58,3450.14,14.39],169,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2557.04,3465.36,17.178],26,"Up",[]],[[2561.25,3464.52,17.2018],26,"Up",[]],[[2569.71,3462.63,17.3614],26,"Up",[]],[[2563.08,3463.4,8.82547],189,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2478.29,3389.36,0.199112],120,"Up",[]],[[2481.24,3390.88,0.361572],81,"Up",[]],[[2475.34,3408.61,0.367996],81,"Up",[]],[[2519.14,3434.61,0.256897],137,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	
	};

	case 2: {

			[	Trigger_3,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					6,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					14,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				1,    // Number of Wheeled on Patrol
				1,    // Number of APCs on Patrol
				1,    // Number of Tanks on Patrol
				[
					2,     // Number of Roadblocks - Preferred Game Logic Location 'FOB'"
					true,  // Should be on tarmac.
					false, // Should have dedicated patrol.
					1  	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
				],
				[
					0,     // Number of Mortars
					false  // Should have dedicated patrols around it
				],[
					3,    // Number of Random Objectives - Preferred Game Logic Location 'Camp'"
					false // Should have dedicated patrols around it
				],
				[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Preferred Game Logic Location 'Respawn Point'"
				,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;

			[	Trigger_4,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					12,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					12,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				2,    // Number of Wheeled on Patrol
				1,    // Number of APCs on Patrol
				0,    // Number of Tanks on Patrol
				[
					1,     // Number of Roadblocks - Preferred Game Logic Location 'FOB'"
					true,  // Should be on tarmac.
					false, // Should have dedicated patrol.
					1  	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
				],
				[
					0,     // Number of Mortars
					false  // Should have dedicated patrols around it
				],[
					2,    // Number of Random Objectives - Preferred Game Logic Location 'Camp'"
					false // Should have dedicated patrols around it
				],
				[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Preferred Game Logic Location 'Respawn Point'"
				,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;		

			[[[[2648.55,2629.76,0.0947876],59,"Up",[]],[[2657.65,2636.39,0.0947723],59,"Up",[]],[[2692.08,2638.16,0.0947876],59,"Up",[]],[[2656.33,2643.64,0.0947723],356,"Middle",[]],[[2678.42,2598.6,0.0947723],326,"Up",[]],[[2682.53,2608.24,0.0947723],6,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			[[[[2636.14,2659.5,0],6,"Up",[]],[[2629.62,2637.8,0.0947723],46,"Middle",[]],[[2669.03,2678.05,0.0947723],59,"Up",[]],[[2580.67,2731.98,0.0947571],289,"Up",[]],[[2582.61,2710,0.0947723],59,"Up",[]],[[2562.45,2694.07,0.0947571],79,"Up",[]]],[["UK3CB_ADR_O_DSHKM",[2561.17,2692.99,0],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
			[[[[2563.06,2746.56,0.0947723],104,"Up",[]],[[2549.78,2758.44,0.511032],25,"Up",[]],[[2529.98,2751.11,0.0947876],311,"Up",[]],[[2531.49,2742.27,0.0671387],247,"Up",[]],[[2441.26,2729.13,1.17545],38,"Up",[]],[[2440.03,2747.52,0.0947723],104,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			[[[[2523.29,2725.09,0.0947723],353,"Middle",[]],[[2506.88,2728.57,0.9655],27,"Middle",[]],[[2518.51,2713.16,0.0947723],246,"Up",[]],[[2537.79,2703.01,0],249,"Up",[]],[[2543.69,2689.01,0.0947876],251,"Up",[]]],[["UK3CB_ADR_O_DSHKM",[2512.92,2704.18,0],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
			[[[[2395.81,2757.2,0.0947723],104,"Up",[]],[[2417,2757.91,0.0947723],357,"Up",[]],[[2432.59,2761.8,3.93588],104,"Up",[]],[[2435.33,2755.41,4.16028],104,"Up",[]],[[2423.01,2779.58,0.0947723],157,"Up",[]],[[2387.64,2731.71,0.0947723],36,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;	

	};

	case 3: {
	};

	case 4: {
	};

	case 5: {
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
