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
		/// AAA
		[[],[["UK3CB_TKA_O_ZsuTank",[3301.08,12227.2,-0.000900269],178,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]],["UK3CB_TKA_O_ZsuTank",[3527.6,11531.6,-1.90735e-006],148,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]],["UK3CB_TKA_O_ZsuTank",[3540.99,11609.1,0],148,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		/// Trench 2
		[[[[4494.97,10920,1.05025],104,"Up",[]],[[4502.31,10929.2,0.212093],133,"Middle",[]],[[4497.38,10934.9,1.34027],161,"Up",[]],[[4507.91,10936.4,1.76011],144,"Up",[]],[[4527.33,10939.4,1.25203],148,"Up",[]],[[4520.13,10938.1,0.472309],104,"Middle",[]]],[["UK3CB_TKA_O_T55",[4532.6,10945.4,2.20836],148,[["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4468.91,10914.1,2.03659],104,"Up",[]],[[4463.78,10908.4,2.02252],104,"Middle",[]],[[4481.91,10923.1,1.66833],171,"Up",[]],[[4489,10948.5,2.7402],104,"Up",[]],[[4484.99,10949.2,1.52634],104,"Middle",[]],[[4483.57,10942.7,2.15027],73,"Middle",[]],[[4480.22,10947,1.35987],68,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4444.32,10910.8,0.212093],104,"Middle",[]],[[4432.09,10905.5,1.00558],104,"Up",[]],[[4438.14,10905.9,1.13179],104,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4449.04,10862.7,0.948257],104,"Up",[]],[[4465.29,10882,0.799637],140,"Up",[]],[[4459.88,10883.3,1.95192],132,"Up",[]],[[4464.69,10893.4,0.945795],104,"Up",[]]],[["UK3CB_TKA_O_T55",[4453.11,10869.3,2],148,[["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4412.8,10847.3,1.3126],104,"Middle",[]],[[4416.52,10843.2,0.941444],104,"Up",[]],[[4424.15,10852.6,1.74124],104,"Up",[]],[[4435.7,10862.5,0.505911],104,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4415.86,10863.1,1.57131],142,"Middle",[]],[[4410.09,10873.3,2.52979],104,"Up",[]],[[4406.22,10865.5,1.55271],22,"Up",[]],[[4401.9,10868.1,1.6223],36,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4387.82,10828,2.35569],10,"Up",[]],[[4380.69,10831.9,3.81507],104,"Up",[]],[[4390.68,10838.8,1.02529],104,"Up",[]],[[4395.71,10846.1,0.78241],237,"Up",[]],[[4402.8,10846.8,1.97268],104,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4387.05,10805.9,1.25293],104,"Up",[]],[[4380.31,10805.8,1.09281],104,"Up",[]],[[4386.35,10816.4,1.41147],104,"Up",[]],[[4363.82,10835.6,1.46464],104,"Middle",[]],[[4354.41,10833.6,3.25274],72,"Middle",[]],[[4358.9,10827.4,1.20666],104,"Up",[]],[[4353.91,10828.5,2.8302],104,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {

		// Artillery Base
		[[],[["UK3CB_TKA_O_BMP2",[3778.61,11282.6,3.8147e-006],116,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1]]]],["UK3CB_TKA_O_BMP2",[3665.7,11432.3,1.90735e-006],217,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1]]]],["UK3CB_TKA_O_T55",[3706.7,11326.8,-0.00200081],146,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// SP1
		[[[[3790.39,11249.3,-7.62939e-005],296,"Auto",[]],[[3800.48,11261.3,-7.62939e-005],148,"Auto",[]],[[3789.28,11270.5,-7.62939e-005],194,"Auto",[]],[[3779.41,11246.2,-7.43866e-005],24,"Auto",[]],[[3789.65,11255.5,0.904131],45,"Auto",[]],[[3796.15,11261.6,0.482428],232,"Auto",[]],[[3783.03,11269.1,0.568459],153,"Auto",[]],[[3779.49,11267.8,0.399529],213,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// SP2
		[[[[3688.12,11343.3,-7.62939e-005],359,"Auto",[]],[[3700.66,11354.2,-7.62939e-005],297,"Auto",[]],[[3708.2,11363.6,3.47406],236,"Auto",[]],[[3703.56,11348.1,-7.62939e-005],340,"Auto",[]],[[3707.39,11344.9,1.15207],332,"Auto",[]],[[3716.63,11351.6,0.382124],261,"Auto",[]],[[3710.05,11360.2,1.07529],252,"Auto",[]],[[3703.84,11364.8,0.807055],147,"Auto",[]],[[3699.34,11361.9,0.452099],189,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Arty Sentry
		[[[[3655.89,11366.6,-7.43866e-005],253,"Auto",[]],[[3666.09,11374.1,-7.62939e-005],109,"Auto",[]],[[3686.24,11393,-7.62939e-005],178,"Auto",[]],[[3698.29,11408.7,-7.62939e-005],259,"Auto",[]],[[3670.39,11412.6,0],75,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

			[	Trigger_3,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					35,		// Number of Patrolling Infantry
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
					true, // Should have dedicated patrol.
					1  	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
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

	case 3: {

		[[],[["UK3CB_TKA_O_T55",[3130.21,11902.3,0],343,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[[[3033.42,12337.8,0],[[0,"Move"],[1,"SAFE"]]],[[2786.96,11871.8,0],[[0,"Move"]]],[[3110.09,11887,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_T55",[3259.06,12029.4,0],343,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[[[3819.75,12794.7,-1.90735e-006],[[0,"Move"],[1,"SAFE"]]],[[3266.7,12336.3,0],[[0,"Move"]]],[[3259.06,12029.4,0.5],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_T55",[3287.92,12379.9,0],343,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[[[3289.82,12860.7,0],[[0,"Move"],[1,"SAFE"]]],[[3098.78,11979,-9.53674e-007],[[0,"Move"]]],[[3098.39,12545.6,0],[[0,"Move"]]],[[3320.16,12928.4,0],[[0,"Move"]]],[[3248.9,12212.9,0],[[0,"Move"]]],[[3290.5,12371.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[],[["UK3CB_TKA_O_T55",[3266.73,11991.4,1.90735e-006],168,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]],["UK3CB_TKA_O_T55",[3330.25,11926.9,-0.00843048],189,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]],["UK3CB_TKA_O_T55",[3166.39,11821.1,-0.00108147],147,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		/// Trench 3
		[[[[3274.91,11848,1.63451],159,"Auto",[]],[[3281.38,11856,2.70949],159,"Auto",[]],[[3289.05,11859,0.912874],159,"Auto",[]],[[3277.87,11857.5,2.6307],256,"Auto",[]],[[3264.28,11853.5,1.06265],176,"Auto",[]],[[3260.7,11857.8,1.26522],130,"Middle",[]],[[3251.9,11868.1,1.72122],63,"Middle",[]],[[3245.88,11857.5,0.995718],159,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3235.19,11851.1,1.18825],159,"Auto",[]],[[3225.93,11850.8,1.17159],65,"Middle",[]],[[3220.37,11846.5,1.84702],51,"Middle",[]],[[3220.14,11830.6,1.58044],116,"Auto",[]],[[3216.13,11827,1.12362],137,"Auto",[]],[[3210.03,11827.4,0.771818],73,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3250.38,11876.6,1.03995],159,"Auto",[]],[[3247.68,11882.8,0.77844],159,"Auto",[]],[[3225.27,11863.8,1.23169],155,"Auto",[]],[[3229.19,11864.3,1.74895],159,"Middle",[]],[[3230.25,11878,0.141035],207,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3228.49,11898.7,0.535175],175,"Middle",[]],[[3241.36,11901.8,0.0161819],260,"Middle",[]],[[3241.6,11910.6,0.0195942],212,"Middle",[]],[[3233.29,11908.3,0.0195866],159,"Middle",[]],[[3237.61,11903.8,0.0195942],343,"Up",[]],[[3224.09,11909,1.40776],147,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		/// Final HQ
		[[[[3251.63,11928,6.8268],184,"Middle",[]],[[3254.68,11934.9,3.62946],345,"Middle",[]],[[3252.42,11931.9,0.533409],140,"Middle",[]],[[3248.59,11932.7,0.97506],174,"Middle",[]],[[3261.09,11948.5,5.34058e-005],244,"Middle",[]],[[3259.37,11966.9,0.302822],261,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3242.5,11965.2,5.34058e-005],94,"Middle",[]],[[3236.43,11976.7,5.34058e-005],80,"Middle",[]],[[3259.76,11983.5,3.26171],113,"Up",[]],[[3257.08,11980.9,3.05927],268,"Middle",[]],[[3252.28,11978.8,3.19631],255,"Up",[]],[[3256.1,11983.5,0.187809],301,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3252.57,11987.5,3.29144],224,"Middle",[]],[[3253.06,11991.9,3.93526],263,"Up",[]],[[3253.83,11992.4,0.252708],286,"Middle",[]],[[3249.08,11994.2,3.94087],173,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3238.6,11995.1,3.45928],172,"Up",[]],[[3236.72,11997.5,0.357553],184,"Middle",[]],[[3243.93,11998.9,6.10352e-005],196,"Middle",[]],[[3247.36,11998.3,0.197203],180,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3255.57,11987.8,0.136238],244,"Middle",[]],[[3245.43,11987.3,2.76263],184,"Up",[]],[[3245.97,11987.3,-1.14441e-005],318,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		[[3245.07,11955.8,0],300,EAST] spawn OKS_Populate_StaticWeapons;
	
	};

	case 4: {

		["HQ","side","Be advised, incoming Takistani Counter-attack from the west. Hold the line!"] remoteExec ["OKS_Chat",0];

		/// Trench 1 Counter-Attack
		{[getPos _X,5,east,1000] spawn OKS_Rush_SpawnGroup} foreach [rush_1,rush_2,rush_3,rush_4,rush_5];

		[[],[["UK3CB_TKA_O_T55",[3898.14,11211.6,6.67572e-005],118,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[[[4352.02,10968.7,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_T55",[4332.58,11433.7,0],194,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[[[4390.04,11186.6,13.8878],[[0,"Move"]]],[[4464.83,11040,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
