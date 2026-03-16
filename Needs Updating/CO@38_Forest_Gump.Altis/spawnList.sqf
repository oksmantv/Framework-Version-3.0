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

		[[],[["UK3CB_ARD_B_ZsuTank",[14254,18937.4,0],338,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[]],["UK3CB_ARD_B_ZsuTank",[13776.1,18928.9,-1.90735e-006],42,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Compound 1
		[[[[14340.4,21810.1,4.60042],56,"Up",[]],[[14330.5,21816.1,5.45325],314,"Up",[]],[[14328,21812.1,5.56454],289,"Up",[]],[[14330.4,21805.8,5.52631],319,"Up",[]],[[14336.7,21811.4,4.9618],306,"Up",[]],[[14329.5,21812.9,1.99185],56,"Up",[]],[[14335.6,21826.2,0.123192],277,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[14304.4,21830.4,2.34109],129,"Up",[]],[[14297.6,21833.6,4.35439],309,"Up",[]],[[14300.2,21835.6,4.29202],331,"Up",[]],[[14284.8,21823.8,4.33878],299,"Up",[]],[[14291.5,21828.7,4.52299],334,"Up",[]],[[14295.6,21823.5,4.29282],299,"Middle",[]],[[14290.1,21818.6,4.14211],142,"Middle",[]],[[14286.5,21821.2,0.647209],299,"Up",[]],[[14293.8,21827.8,1.03119],216,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		
		// Tower
		[[[[14173.3,21238.1,-7.62939e-006],332,"Up",[]],[[14168.4,21234.2,0],345,"Up",[]],[[14170.9,21225.4,0],263,"Up",[]],[[14199.6,21248.9,4.23419],31,"Up",[]],[[14195.9,21246.1,3.96034],311,"Up",[]],[[14196.9,21248.8,4.06863],332,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[14188.7,21198.5,2.81138],314,"Up",[]],[[14193.3,21199.2,2.85735],11,"Up",[]],[[14190,21190.2,3.32717],226,"Up",[]],[[14189.4,21195,0.684113],337,"Up",[]],[[14196.2,21189.5,0.744698],321,"Up",[]]],[["UK3CB_AAF_O_DSHKM",[14190.5,21199.5,2.92188],322,[],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[14231,21253,0],330,"Up",[]],[[14240.3,21234.1,0],353,"Up",[]],[[14245.9,21218.3,0],337,"Up",[]],[[14229.2,21210.5,3.63892],330,"Up",[]],[[14224.8,21212.8,8.37743],330,"Up",[]],[[14226.7,21214.4,13.1098],330,"Up",[]],[[14219.7,21202.5,0.674179],257,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[14220.8,21207.7,13.5457],330,"Up",[]],[[14225.8,21208.8,17.4462],21,"Up",[]],[[14220.8,21208.6,18.4732],300,"Up",[]],[[14224.9,21216,18.3163],336,"Up",[]],[[14232.2,21210.8,16.3255],68,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	
	};

	case 2: {


		_VehicleArray = [
			"UK3CB_AAF_I_BMP1", 
			"UK3CB_AAF_I_BTR60", 
			"UK3CB_AAF_I_M113_M2", 
			"UK3CB_AAF_I_GAZ_Vodnik_PKT", 
			"UK3CB_AAF_I_LR_M2", 
			"UK3CB_AAF_I_LR_SF_M2", 
			"UK3CB_AAF_I_M939_Guntruck", 
			"UK3CB_AAF_I_Offroad_M2", 
			"UK3CB_AAF_I_Pickup_M2"
		];

		[	Trigger_2,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					40,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				west, // Side of Enemy
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
				,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;
			//// END OF ZONE ////

		/// Village
		[[[[14627.4,20767.1,0.621361],322,"Up",[]],[[14628.9,20758,0.892708],227,"Up",[]],[[14627.3,20764.7,3.95829],285,"Up",[]],[[14627,20757.1,4.43158],270,"Up",[]],[[14632.1,20765.7,3.69282],323,"Down",[]]],[[selectRandom _VehicleArray,[14650.4,20746.8,0],339,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["AAF",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[14576.3,20810.9,4.62976],108,"Up",[]],[[14588.8,20766.8,0.203228],276,"Up",[]],[[14589.2,20760.7,0.460384],221,"Up",[]],[[14585.5,20760.8,0.53315],357,"Up",[]],[[14581.6,20762.3,0.505066],70,"Up",[]],[[14605,20781.7,0.669094],32,"Up",[]],[[14607.9,20777.6,0.693764],1,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[14632.8,20858.7,4.2823],302,"Up",[]],[[14635.5,20849.4,4.64833],199,"Up",[]],[[14634.4,20854.4,4.44466],302,"Up",[]],[[14631.8,20856.5,0.596249],9,"Up",[]],[[14635.9,20851.4,0.662594],346,"Up",[]],[[14630,20868.8,0.218552],238,"Middle",[]],[[14640.1,20867.7,0],16,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[14615.8,20875.7,3.8147e-006],328,"Up",[]],[[14606.9,20867.2,0],227,"Up",[]],[[14609.1,20872.6,0],162,"Up",[]],[[14606.4,20856.1,0],6,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[14651.4,20790.5,0.577942],264,"Up",[]],[[14618.5,20790.4,5.04436],243,"Up",[]],[[14617.2,20792.5,4.98885],234,"Up",[]],[[14622.3,20793.2,4.67279],17,"Up",[]],[[14621.5,20794.6,0.781689],274,"Up",[]]],[[selectRandom _VehicleArray,[14708.8,20783.7,0],298,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["AAF",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[[selectRandom _VehicleArray,[14539.2,20721,-3.8147e-006],30,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["AAF",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		_VehicleArray = [
			"UK3CB_AAF_I_BMP1", 
			"UK3CB_AAF_I_BTR60", 
			"UK3CB_AAF_I_M113_M2", 
			"UK3CB_AAF_I_GAZ_Vodnik_PKT", 
			"UK3CB_AAF_I_GAZ_Vodnik", 
			"UK3CB_AAF_I_Kamaz_Covered", 
			"UK3CB_AAF_I_Kamaz_Open", 
			"UK3CB_AAF_I_LR_Closed", 
			"UK3CB_AAF_I_LR_Open", 
			"UK3CB_AAF_I_LR_M2", 
			"UK3CB_AAF_I_LR_SF_M2", 
			"UK3CB_AAF_I_M939", 
			"UK3CB_AAF_I_M939_Guntruck", 
			"UK3CB_AAF_I_M939_Open", 
			"UK3CB_AAF_I_Offroad_M2", 
			"UK3CB_AAF_I_Pickup", 
			"UK3CB_AAF_I_Pickup_M2"
		];


		[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 3,900,west,_VehicleArray,100] spawn NEKY_Hunt_HuntBase;
		[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 3,900,west,_VehicleArray,100] spawn NEKY_Hunt_HuntBase;
		[Base_3, Spawn_3, NEKY_Hunt_Trigger_1, 3,900,west,_VehicleArray,100] spawn NEKY_Hunt_HuntBase;
		[Base_4, Spawn_4, NEKY_Hunt_Trigger_1, 3,900,west,5,100] spawn NEKY_Hunt_HuntBase;
		[Base_5, Spawn_5, NEKY_Hunt_Trigger_1, 3,600,west,5,100] spawn NEKY_Hunt_HuntBase;
		[Base_6, Spawn_6, NEKY_Hunt_Trigger_1, 3,900,west,_VehicleArray,100] spawn NEKY_Hunt_HuntBase;
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
