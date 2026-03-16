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

if !(isServer) then {false};

params [
	"_case"
];

switch (_case) do {

	case 1: {

		/// Camp 1
		[[[[14453,10509.3,0],171,"Up",[]],[[14438.1,10531.6,0],278,"Up",[]],[[14433.3,10521.5,0],343,"Up",[]],[[14464.3,10524.2,0],10,"Up",[]],[[14456.5,10513.2,0],291,"Up",[]],[[14443.1,10545.3,0],24,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Camp 2
		[[[[13974.5,10021.1,0],123,"Up",[]],[[13963.6,10021.6,-7.62939e-006],184,"Up",[]],[[13988.2,10005.5,0],127,"Up",[]],[[13989.4,9991.7,0],314,"Up",[]],[[13968.5,9997.94,0],13,"Up",[]],[[13957.4,10002.2,0],98,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Camp 2.5
		[[[[14116.3,9961.78,0],357,"Up",[]],[[14136.4,9940.19,0],228,"Up",[]],[[14128.8,9933.43,7.62939e-006],158,"Up",[]],[[14141.2,9942.34,-7.62939e-006],98,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Camp 3
		[[[[14367.3,9587.97,0.53495],334,"Up",[]],[[14362.9,9596.54,0.297773],334,"Middle",[]],[[14374.5,9585.78,4.96688],334,"Middle",[]],[[14394.9,9585.58,0.54427],248,"Middle",[]],[[14385.8,9587.61,0.279572],128,"Middle",[]],[[14347.5,9548.18,0],30,"Up",[]],[[14341.1,9547.6,0.261972],298,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		 _null = [aaa_1,east,false,2500,true] spawn GW_Ambient_AAA;
		 waitUntil {count (crew aaa_1) >= 1};
		 [group (selectRandom (crew aaa_1)),true,"OKS_TASK_1","AAA positions are scattered to the south along the beach. Destroy the weapons to enable for smoother support.","","destroy","CREATED"] execVM "Scripts\OKS_Task\OKS_Destroy_Task.sqf";

		 _null = [aaa_2,east,false,2500,true] spawn GW_Ambient_AAA;
		 waitUntil {count (crew aaa_2) >= 1};
		 [group (selectRandom (crew aaa_2)),true,"OKS_TASK_2","AAA positions are scattered to the south along the beach. Destroy the weapons to enable for smoother support.","","destroy","CREATED"] execVM "Scripts\OKS_Task\OKS_Destroy_Task.sqf";

		 _null = [aaa_3,east,false,2500,true] spawn GW_Ambient_AAA;
		 waitUntil {count (crew aaa_3) >= 1};
		 [group (selectRandom (crew aaa_3)),true,"OKS_TASK_3","AAA positions are scattered to the south along the beach. Destroy the weapons to enable for smoother support.","","destroy","CREATED"] execVM "Scripts\OKS_Task\OKS_Destroy_Task.sqf";
	};

	case 2: {

		[
			Trigger_3, // Name of Trigger used as Spawn Area
			false, // DO NOT EDIT
			[13,25,false,false], // 1. Number of Static Infantry 2. Number of Patrolling Infantry 3. Create Sector Objective on Garrison? 4. Should have dedicated patrols near static positions)
			east, // Side of Enemy
			0, // Number of Wheeled on Patrol
			0, // Number of APCs on Patrol
			0, // Number of Tanks on Patrol
			[
				0,true,false,0 // 1. Number of Roadblocks 2. Should be on tarmac. 3. Should have dedicated patrol. 4. Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
			],
			[
				0,
				false
			],[
				1, // Number of Random Objectives
				false // Should have dedicated patrols around it
			],
			[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Required Game Logic Location 'Respawn Point'	"
			,false
		] spawn OKS_CreateZone;

	};

	case 3: {

		[
			Trigger_4, // Name of Trigger used as Spawn Area
			false, // DO NOT EDIT
			[0,25,false,false], // 1. Number of Static Infantry 2. Number of Patrolling Infantry 3. Create Sector Objective on Garrison? 4. Should have dedicated patrols near static positions)
			east, // Side of Enemy
			0, // Number of Wheeled on Patrol
			0, // Number of APCs on Patrol
			0, // Number of Tanks on Patrol
			[
				0,true,false,0 // 1. Number of Roadblocks 2. Should be on tarmac. 3. Should have dedicated patrol. 4. Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
			],
			[
				0,
				false
			],[
				3, // Number of Random Objectives
				false // Should have dedicated patrols around it
			],
			[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Required Game Logic Location 'Respawn Point'	"
			,false
		] spawn OKS_CreateZone;

		// Final Town
		[[[[14043,8431.96,0.79534],135,"Up",[]],[[14033,8437.06,0.542671],354,"Up",[]],[[14066.1,8401.73,0],304,"Middle",[]],[[14080.9,8386.19,-2.38419e-007],145,"Middle",[]],[[14057.1,8361.19,0.479333],341,"Up",[]],[[14048.8,8370.65,0],26,"Up",[]],[[14043.3,8374.91,0.102123],311,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13894.9,8359.22,7.12365],47,"Up",[]],[[13888.5,8360.75,7.13287],354,"Up",[]],[[13880,8359.6,6.58019],13,"Up",[]],[[13900.6,8383.87,1.32681],11,"Up",[]],[[13908.7,8377.7,1.38893],47,"Up",[]],[[13931.2,8410.85,0.430001],328,"Up",[]],[[13937.9,8411.12,0.735163],133,"Up",[]],[[13904.6,8422.96,0],124,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13923.2,8315.96,8.7883],28,"Up",[]],[[13935.8,8309.23,9.17775],359,"Up",[]],[[13937.8,8309.16,9.32787],28,"Up",[]],[[13931.8,8281.75,3.81328],113,"Up",[]],[[13945.6,8275.71,0],232,"Middle",[]],[[13953.5,8278.78,0.419964],3,"Up",[]],[[13964,8269.07,0],352,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13984.4,8315.14,4.24536],48,"Up",[]],[[13996.1,8334.92,3.69418],53,"Up",[]],[[13989.7,8339.94,3.5399],29,"Up",[]],[[13991.5,8329.78,0.429557],126,"Up",[]],[[13989.8,8336.72,0.362796],48,"Up",[]],[[13968.1,8309.58,3.43206],290,"Up",[]],[[13992.7,8289.63,0.339972],285,"Up",[]],[[13991.6,8283.66,0.218003],296,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
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
