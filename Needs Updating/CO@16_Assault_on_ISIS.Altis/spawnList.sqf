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

	case 1: {[[[[22590.4,16999.8,0.405907],0,"Up",[]],[[22591.8,17000.4,0.355923],0,"Up",[]],[[22585.4,17002.8,0.558853],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

[[[[22591.7,17010.1,-5.05447e-005],0,"Up",[]],[[22595,17018.2,-5.05447e-005],0,"Up",[]],[[22590.8,17023.2,-0.000321388],44,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

[[[[22629.9,16972.1,0.354988],0,"Up",[]],[[22631.4,16972.8,0.282564],0,"Up",[]],[[22626.5,16974.3,0.450958],0,"Up",[]],[[22564.5,17020.5,0.165112],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

[[],[["UK3CB_ADG_O_Ural",[22582.6,16985.3,0.000125885],164,[],[[6,["standard",1]],[7,["spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1,"light_hide",0]]]],["UK3CB_ADG_O_Ural",[22602,16992.3,-4.76837e-006],280,[],[[6,["standard",1]],[7,["spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1,"light_hide",0]]]],["UK3CB_MEE_O_BTR60",[22582.9,16995.2,-4.673e-005],132,[],[[6,["LOP_ISTS",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

[[[[22615.9,16984.1,4.19617e-005],279,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	[[[[22529.3,17080.8,9.53674e-007],0,[]],[[22534.3,17078.8,0],0,[]]],[],[[[22552.9,17131.4,0],[[0,"Move"],[1,"SAFE"]]],[[22637.9,17146.7,-0.000119209],[[0,"Move"]]],[[22703.5,17066.8,8.39233e-005],[[0,"Move"]]],[[22712.3,16985.2,7.05719e-005],[[0,"Move"]]],[[22636.5,16880,8.4877e-005],[[0,"Move"]]],[[22506.8,16877.5,4.673e-005],[[0,"Move"]]],[[22458.7,17021.9,1.04904e-005],[[0,"Move"]]],[[22547.3,17130.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

//this is ambush house w/ DSkH 
[[[[22246,16764.2,8.7738e-005],167,"Middle",[]],[[22238.7,16759.9,0.0001297],161,"Middle",[]],[[22250.6,16766.2,0.000189781],161,"Middle",[]],[[22230.8,16762.8,-1.04904e-005],161,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

[[[[22271.4,16848.8,3.43323e-005],26,"Middle",[]],[[22272.4,16840.8,0],32,"Middle",[]],[[22279.5,16826.8,1.62125e-005],26,"Middle",[]],[[22289.9,16827.1,-1.71661e-005],26,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

[[[[22217.3,16804.3,0.000514984],159,"Middle",[]],[[22211.8,16818.9,1.45699],32,"Middle",[]],[[22214.4,16817.5,1.47138],26,"Middle",[]],[[22216.6,16810.1,1.29694],26,"Middle",[]],[[22220.7,16812.9,1.42925],264,"Middle",[]]],[["UK3CB_MEE_O_DSHKM",[22219.3,16802.4,1.71661e-005],159,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {
		



		
	};

	case 3: {
		//// START OF ZONE /////
			[	Trigger_2,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					25,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					20,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				0,    // Number of Wheeled on Patrol
				0,    // Number of APCs on Patrol
				0,    // Number of Tanks on Patrol
				[
					2,     // Number of Roadblocks - Preferred Game Logic Location 'FOB'"
					true,  // Should be on tarmac.
					true, // Should have dedicated patrol.
					0.75  	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
				],
				[
					0,     // Number of Mortars
					false  // Should have dedicated patrols around it
				],[
					3,    // Number of Random Objectives - Preferred Game Logic Location 'Camp'"
					true // Should have dedicated patrols around it
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
