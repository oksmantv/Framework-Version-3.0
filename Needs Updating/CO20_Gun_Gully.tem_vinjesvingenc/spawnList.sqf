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

	playSound3D [MISSION_ROOT + "red.wav", loudspeaker, false, getPosASL loudspeaker, 2, 1, 1500];
	sleep 10;

	b1 setDammage 100; sleep 0.6; b3 setDammage 100; sleep 0.9; b2 setDammage 100;
	sleep 0.5; b4 setDammage 100;sleep 0.9; b5 setDammage 100;sleep 1; b6 setDammage 100;
	sleep 0.9; b7 setDammage 100;sleep 0.9; b8 setDammage 100;sleep 1.2; b9 setDammage 100;
	sleep 0.7; b10 setDammage 100;
	
	sleep 120;

    [[s1,s2,s3,s4],6,EAST,1000,True,False,1] spawn OKS_Rush_Spawn;
    [[],[["rhs_btr70_vdv",[4365.96,839.392,-0.0198424],69,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]],[[[4388.29,839.501,-1.19209e-006],[[0,"Move"]]],[[4443.49,794.721,-1.43051e-006],[[0,"Move"]]],[[4419.97,841.816,3.09944e-006],[[0,"Move"]]],[[4458.23,782.999,9.53674e-007],[[0,"Move"]]],[[4479.14,781.865,1.90735e-006],[[0,"Move"]]],[[4490.58,787.469,-3.33786e-006],[[0,"Move"]]],[[4536.08,773.466,0],[[0,"Move"]]],[[4513.26,777.488,0],[[0,"Move"]]],[[4586.44,805.331,-4.76837e-007],[[0,"Move"]]],[[4716.63,817.235,-1.43051e-006],[[0,"Move"]]],[[4778.74,883.931,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
    sleep 120;
    [[s1,s2,s3,s4],6,EAST,1000,True,False,1] spawn OKS_Rush_Spawn;
    [[],[["rhs_btr70_vdv",[4380.85,855.729,-0.02455],342,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]],[[[4360.65,914.002,2.38419e-007],[[0,"Move"]]],[[4496.03,943.443,-4.76837e-007],[[0,"Move"]]],[[4570.28,925.117,-1.74046e-005],[[0,"Move"]]],[[4681.89,922.137,4.05312e-006],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
    sleep 120;
    [[s1,s2,s3,s4],6,EAST,1000,True,False,1] spawn OKS_Rush_Spawn;
    [[],[["rhs_btr70_vdv",[4396.42,785.954,-0.0122566],60,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[[[4406.01,792.468,1.21593e-005],[[0,"Move"]]],[[4360.65,914.002,2.38419e-007],[[0,"Move"]]],[[4446.27,956.711,0],[[0,"Move"]]],[[4480.76,1007.49,5.00679e-006],[[0,"Move"]]],[[4678.86,982.796,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup; sleep 30;
    [[s1,s2,s3,s4],6,EAST,1000,True,False,1] spawn OKS_Rush_Spawn;
	};

	case 2: {
    [[a1,a2,a3],10,EAST,1000,True,False,1] spawn OKS_Rush_Spawn;
    //// START OF ZONE /////
			[	Trigger_1,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
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

	case 3: {
    [[rb1],5,EAST,1000,True,True,1] spawn OKS_Rush_Spawn;
[[[[2332.93,3050.5,-4.76837e-007],0,"Up",[]],[[2325.38,3054.65,0.394273],0,"Up",[]],[[2320.28,3046.1,0.0582509],0,"Up",[]],[[2324.22,3061.81,0.230865],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
[[[[2315.37,3003.82,-0.598],0,"Up",[]],[[2317.93,2999.07,-0.59253],0,"Up",[]],[[2334.14,2997.26,2.19345e-005],0,"Up",[]],[[2326.93,2988.32,4.34529],0,"Up",[]],[[2333.52,3006.91,0],0,"Up",[]],[[2331.47,3009.82,-4.76837e-007],0,"Up",[]],[[2324.03,2988.32,4.20107],0,"Up",[]],[[2316.29,2991.46,0],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
[[[[2323.83,3023.91,4.76],0,"Up",[]],[[2329.08,3014.24,4.76837e-007],0,"Up",[]],[[2320.5,3032.69,0],0,"Up",[]],[[2329.48,3032.76,9.53674e-007],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
[[[[2327.94,3019.3,15.292],250,"Up",[]],[[2325.76,3028.16,15.8652],118,"Up",[]],[[2323.7,3015.84,15.2014],0,"Up",[]],[[2329.26,3019.97,12.7275],0,"Up",[]],[[2321.69,3019.38,12.5923],0,"Up",[]],[[2323.87,3019.19,8.45676],0,"Up",[]],[[2329.15,3016.5,12.5455],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
[[[[2689.02,2635.16,0],62,"Up",[]],[[2689.14,2632.81,2.498],62,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
    
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
