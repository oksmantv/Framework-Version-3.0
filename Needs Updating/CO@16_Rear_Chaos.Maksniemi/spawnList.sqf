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

		[[[[9757.78,3729.58,4.76837e-007],25,"Up",[]],[[9748.63,3725.88,-4.76837e-007],314,"Up",[]],[[9753.71,3693.44,0],276,"Up",[]],[[9766.27,3690.01,0.208559],327,"Up",[]],[[9758.36,3690.45,0.707242],44,"Up",[]],[[9790.14,3706.77,0],164,"Up",[]],[[9792.71,3709.68,0.0674119],25,"Up",[]],[[9793.69,3717.52,0.0913892],273,"Up",[]]],[["rhs_btr60_vdv",[9764.36,3712.76,0],20,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[9791.73,4578.48,0],115,"Up",[]],[[9793.32,4598.81,0],115,"Up",[]],[[9770.69,4612.81,0],115,"Up",[]],[[9751.55,4621.57,0],26,"Up",[]],[[9749.51,4604.47,0],212,"Up",[]],[[9739.63,4596.39,0],182,"Up",[]],[[9726.2,4630.15,-4.76837e-007],100,"Up",[]],[[9701.1,4623.54,0],127,"Up",[]],[[9735.95,4620.06,0],111,"Up",[]],[[9734.11,4610.44,0],112,"Up",[]]],[["rhs_btr60_vdv",[9701.01,4598.83,0],122,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10091.6,4663.85,-4.76837e-007],233,"Up",[]],[[10091.1,4653.08,5.21241],182,"Up",[]],[[10085.9,4648.73,5.54954],182,"Up",[]],[[10080.1,4647.78,5.28798],182,"Up",[]],[[10083.2,4653.36,5.32011],319,"Up",[]],[[10089.3,4654.76,0.874491],312,"Up",[]],[[10047.5,4674.75,-4.76837e-007],272,"Up",[]],[[10065,4655.02,0],150,"Up",[]]],[["rhs_btr60_vdv",[10116.1,4667.97,0],213,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10266.6,4833.71,0],230,"Up",[]],[[10290.8,4841.11,0],186,"Up",[]],[[10278.9,4833.42,0],158,"Up",[]],[[10273.5,4830.95,0.770618],230,"Up",[]],[[10249.2,4847.78,0],233,"Up",[]],[[10274.9,4862.62,0],153,"Up",[]],[[10254.7,4885.72,0],233,"Up",[]],[[10289.5,4845.93,9.53674e-007],254,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
	};

	case 2: {

		[convoy_1,convoy_2,convoy_3,east,[6,["rhs_btr60_msv","UK3CB_CW_SOV_O_LATE_BTR40","UK3CB_CW_SOV_O_LATE_BTR40","UK3CB_CW_SOV_O_LATE_BTR40","UK3CB_CW_SOV_O_EARLY_BMP1","RHS_Ural_VMF_01"], 8, 25],[true,4]] execVM "Scripts\OKS_Ambience\OKS_Convoy_Spawn.sqf";

	};

	case 3: {

		[[[[10609.3,5173.68,0],200,"Up",[]],[[10596.1,5177.41,0],200,"Up",[]],[[10607.2,5207.14,0.397437],200,"Up",[]],[[10591.1,5181.78,0],255,"Up",[]],[[10618.3,5178.39,0.470959],200,"Up",[]],[[10613.2,5175.21,0.550678],336,"Up",[]]],[["rhs_btr60_vdv",[10609.8,5217.86,0],290,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10122,5523.17,-9.05991e-006],143,"Up",[]],[[10126.8,5545.03,-8.58307e-006],143,"Up",[]],[[10111.2,5567.39,0.0776548],359,"Up",[]],[[10102,5563.08,-8.58307e-006],342,"Up",[]],[[10097.9,5542.41,-4.76837e-007],158,"Up",[]],[[10114.4,5529.49,-8.10623e-006],1,"Up",[]],[[10118.7,5556.38,-8.58307e-006],34,"Up",[]],[[10111.1,5544.58,-8.58307e-006],143,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

			//// START OF ZONE /////
			[	Trigger_3,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					14,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				2,    // Number of Wheeled on Patrol
				0,    // Number of APCs on Patrol
				1,    // Number of Tanks on Patrol
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
				,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;
			//// END OF ZONE ////

						//// START OF ZONE /////
			[	Trigger_4,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					14,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				1,    // Number of Wheeled on Patrol
				2,    // Number of APCs on Patrol
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
				,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;
			//// END OF ZONE ////	

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
