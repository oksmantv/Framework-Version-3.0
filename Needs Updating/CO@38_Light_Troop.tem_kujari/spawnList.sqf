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

		[[[[9697.48,9497.58,0],352,"Up",[]],[[9702.94,9497.42,9.53674e-007],7,"Middle",[]],[[9701.06,9486.75,0],352,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9720.09,9415.53,0],6,"Up",[]],[[9715.86,9404.31,-9.53674e-007],6,"Middle",[]],[[9721.31,9405.08,0],6,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9855.99,9365.93,1.90735e-006],287,"Up",[]],[[9859.26,9368.87,-1.90735e-006],321,"Up",[]],[[9862.33,9368.93,0],329,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9586.26,9219.74,0],6,"Middle",[]],[[9580.53,9219.58,0],6,"Middle",[]],[[9589.3,9213.78,0],6,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9865.81,9135.01,-9.53674e-007],293,"Middle",[]],[[9876.09,9136.02,0],356,"Middle",[]],[[9871.59,9135.69,9.53674e-007],356,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[9684.7,9048.73,0],119,"Middle",[]],[[9677.65,9051.04,9.53674e-007],351,"Up",[]],[[9677.89,9047.18,-9.53674e-007],78,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9774.49,8994.3,0],283,"Middle",[]],[[9783.26,8999.85,9.53674e-007],120,"Middle",[]],[[9790.46,8995.61,0],247,"Middle",[]],[[9787.92,8986.95,9.53674e-007],333,"Middle",[]],[[9780.22,8982.87,0],289,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {

		[[[[9773.09,8675.75,2.28241],350,"Up",[]],[[9774.43,8675.66,2.28554],5,"Up",[]],[[9773.22,8668.02,0],267,"Middle",[]],[[9768.56,8663.83,0],335,"Middle",[]],[[9778.43,8663.73,0],35,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9846.92,8308.88,0.689879],296,"Up",[]],[[9848.54,8311.73,1.58519],296,"Middle",[]],[[9850.68,8316.53,2.11526],296,"Middle",[]],[[9858.2,8315.1,-9.53674e-007],320,"Up",[]],[[9865.29,8311.84,0],296,"Middle",[]],[[9851.56,8315.89,0],143,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9678.82,8369.96,1.1698],347,"Middle",[]],[[9682.79,8367.77,1.06028],347,"Middle",[]],[[9683.2,8361.68,0.998261],80,"Middle",[]],[[9678.37,8364.64,0.590705],24,"Up",[]],[[9673.34,8364.8,1.21455],348,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		[[[[10012.1,8083.31,0],338,"Up",[]],[[10012.4,8077.07,0],7,"Up",[]],[[10017.2,8075.63,9.53674e-007],271,"Middle",[]],[[10025.5,8077.2,0.00618267],317,"Middle",[]],[[10041.7,8080.02,0],314,"Up",[]],[[10030.3,8080.81,0],317,"Up",[]],[[10057.8,8081.68,0],309,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10097.4,8001.95,0],95,"Middle",[]],[[10091.7,8006,-9.53674e-007],13,"Up",[]],[[10097.4,8005.05,0],52,"Up",[]],[[10031.2,8053.42,3.17773],324,"Up",[]],[[10041.9,8047.09,3.90817],324,"Up",[]],[[10030.9,8023.7,0],34,"Up",[]],[[10039.6,8048.22,1.15779],348,"Up",[]],[[10031.9,8047.55,9.53674e-007],290,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9997.02,8017.07,3.04483],42,"Middle",[]],[[9994.77,8015.3,0.35471],42,"Middle",[]],[[9988.62,7992.48,0],351,"Middle",[]],[[10002.5,7985.02,0],25,"Middle",[]],[[10012,7999.41,0],250,"Middle",[]],[[10009.6,7984.42,2.74953],346,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10053,7984.11,0.296033],214,"Middle",[]],[[10063.6,7972.12,0],277,"Up",[]],[[10052.4,7989.86,3.66233],343,"Middle",[]],[[10037,7970.91,0],335,"Middle",[]],[[10029.8,7968.87,0],341,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10045.2,7914.78,-9.53674e-007],299,"Up",[]],[[10034.3,7920.76,0.588102],66,"Up",[]],[[10040,7929.42,0.0944653],259,"Up",[]],[[10017.6,7948.97,0.38449],145,"Up",[]],[[10015.9,7951.56,3.18373],113,"Up",[]],[[10016.4,7942.51,0],314,"Up",[]],[[10031,7949.85,9.53674e-007],229,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10065.9,7905.71,0.962827],334,"Up",[]],[[10061,7905.11,0.434066],334,"Up",[]],[[10057.9,7904.51,0],334,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10108.5,7917.25,0.462824],314,"Up",[]],[[10107.9,7911.98,1.16679],314,"Middle",[]],[[10120.8,7918.88,2.61589],314,"Middle",[]],[[10113.7,7895.71,0],251,"Middle",[]],[[10124.4,7910.22,0.569036],253,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9605.3,8546.67,0],16,"Up",[]],[[9607.19,8542.77,-4.76837e-007],16,"Up",[]],[[9610.83,8545.67,2.28154],16,"Up",[]],[[9599.11,8538.72,4.76837e-007],16,"Middle",[]],[[9607.55,8535.4,0],124,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		//// START OF ZONE /////
		[	Trigger_3,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				12,		// Number of Patrolling Infantry
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

		//// START OF ZONE /////
		[	Trigger_4,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				12,		// Number of Patrolling Infantry
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
