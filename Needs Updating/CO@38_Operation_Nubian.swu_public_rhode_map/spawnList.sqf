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
		waitUntil {sleep 1; !isNil "OKS_CreateZone"};
		//// START OF ZONE /////
		[	Trigger_1,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				10,		// Number of Patrolling Infantry
				false,  // Create Sector Objective on Garrison?
				false   // Should have dedicated patrols near static positions
			],
			independent, // Side of Enemy
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
 
		/// Village 1
		[[[[1136.43,1619.16,0],290,"Up",[]],[[1142.33,1627.87,0.241486],262,"Up",[]],[[1149.78,1640.7,0.528812],234,"Up",[]],[[1185.25,1688.76,-3.8147e-006],254,"Up",[]],[[1161.36,1680.01,0],226,"Up",[]],[[1162.28,1694.82,0.522671],225,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1125.85,1724.14,0],259,"Up",[]],[[1105.12,1736.46,0.0464592],156,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// First House
		[[[[1159.79,1665.4,0.431622],305,"Up",[]],[[1162.55,1666.69,0.537319],305,"Up",[]],[[1161.48,1673.39,0.664108],283,"Up",[]],[[1168.22,1677.77,0.904202],301,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Second House
		[[[[1124.12,1710.89,0.493488],198,"Up",[]],[[1127.3,1702.74,0.474941],264,"Up",[]],[[1107.7,1707.86,0.574989],150,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Vehicles in Area of Operations
		[[],[["UK3CB_ADM_O_T55",[840.416,2544.47,0],128,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ADM",1]]]],["UK3CB_ADA_O_BTR80a",[882.66,2608.66,0],165,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADA_O_D30",[902.762,2600.42,0],170,[["gunner",-1,[0]]],[[7,["fold_arty_handler",0]]]],["UK3CB_ADA_O_BMP2K",[959.019,2613.59,0],173,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["AD",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADA_O_BTR80a",[1187.17,2694.44,1.5],341,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0]]]],
			["UK3CB_ADA_O_BMP1",[1064.46,2756.53,1.5],93,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],
			["UK3CB_ADA_O_BMP1",[902.215,2748.21,1.5],92,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM",1]],[7,["Hull_Flag_Hide",1]]]],
			["UK3CB_ADA_O_BTR80",[1046.8,2659.52,1.5],358,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		[AAA_1,east,false,1500,true] spawn GW_Ambient_AAA;
		[AAA_2,east,false,1500,true] spawn GW_Ambient_AAA;
		[AAA_3,east,false,1500,true] spawn GW_Ambient_AAA;

	};

	case 2: {

		/// First Village Counter
		[[],[["UK3CB_ADA_O_BMP1",[1790.05,1840.36,0],253,[["driver",-1,[]],["gunner",-1,[0]],["cargo",7,[1]],["cargo",6,[2]],["cargo",8,[3]],["cargo",9,[4]],["cargo",10,[5]],["cargo",11,[6]],["cargo",7,[7]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[[[1617.22,1725.62,-1.90735e-006],[[0,"Move"]]],[[1319.55,1713.99,-1.90735e-006],[[0,"Move"]]],[[1169.48,1688.57,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		
		waitUntil {sleep 1; !isNil "OKS_CreateZone"};
		//// START OF ZONE /////
		[	Trigger_2,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				0,		// Number of Patrolling Infantry
				false,  // Create Sector Objective on Garrison?
				false   // Should have dedicated patrols near static positions
			],
			independent, // Side of Enemy
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
		
		[	Trigger_3,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				12,		// Number of Patrolling Infantry
				false,  // Create Sector Objective on Garrison?
				false   // Should have dedicated patrols near static positions
			],
			independent, // Side of Enemy
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

		/// Hunt 1
		[hunt_1, spawn_1, HuntTrigger_1, 3,900,east,4,30] spawn NEKY_Hunt_HuntBase;
		[hunt_4, spawn_4, HuntTrigger_1, 3,900,east,4,30] spawn NEKY_Hunt_HuntBase;
	};
	

	case 3: {

		/// Second Village AT mines ahead of Roadblock
		[[[[1071.47,2047.19,-3.8147e-006],0,[]],[[1076.47,2042.19,-3.8147e-006],0,[]],[[1066.47,2042.19,3.8147e-006],0,[]],[[1081.47,2037.19,-3.8147e-006],0,[]]],[],[[[994.994,2037.5,0],[[0,"Move"]]],[[883.581,2063.88,3.8147e-006],[[0,"Move"]]],[[879.929,2126.73,7.62939e-006],[[0,"Move"]]],[[995.317,2124.83,3.8147e-006],[[0,"Move"]]],[[1062.48,2113.89,0],[[0,"Move"]]],[[1076.37,2051.93,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1345.62,2066.01,0],0,[]],[[1350.62,2061.01,0],0,[]],[[1340.62,2061.01,7.62939e-006],0,[]],[[1355.62,2056.01,0],0,[]]],[],[[[1269.15,2056.32,3.8147e-006],[[0,"Move"]]],[[1157.73,2082.7,7.62939e-006],[[0,"Move"]]],[[1154.08,2145.55,1.14441e-005],[[0,"Move"]]],[[1269.47,2143.64,7.62939e-006],[[0,"Move"]]],[[1336.63,2132.7,3.8147e-006],[[0,"Move"]]],[[1350.52,2070.75,3.8147e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[1123.86,2047.56,0.101479],85,"Up",[]],[[1121.49,2040.55,0.161766],83,"Middle",[]],[[1119.42,2069.95,0],73,"Up",[]],[[1138.19,2063.79,0.602081],212,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1122.14,2076.84,0.333519],161,"Up",[]],[[1108.73,2089.52,0],104,"Up",[]],[[1111.43,2097.51,0],93,"Up",[]],[[1139.4,2090.5,0.393448],279,"Up",[]],[[1138.19,2094.33,0.417274],233,"Up",[]],[[1137.09,2100.39,0.547215],212,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// First Roadblock
		[[[[1046.67,2271.05,-9.53674e-006],150,"Up",[]],[[1038.07,2270.24,-1.14441e-005],148,"Up",[]],[[1036.83,2272.74,0.139431],148,"Up",[]],[[1032.57,2270.93,0.113827],158,"Up",[]],[[1032.36,2275.97,0.197758],31,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1032.53,2280.29,0],68,"Middle",[]],[[1032.27,2287.56,-1.14441e-005],143,"Middle",[]],[[1034.12,2291.86,-7.62939e-006],54,"Middle",[]],[[1034.84,2296.59,-1.52588e-005],304,"Up",[]],[[1061.69,2277.53,-1.14441e-005],252,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1056.08,2283.5,0.358778],148,"Up",[]],[[1053.64,2290.02,0.234257],148,"Up",[]],[[1057.48,2295.44,-1.14441e-005],144,"Middle",[]],[[1053.2,2298.22,-1.14441e-005],3,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		/// Mwami
		[[[[579.368,2172.25,0.0131035],23,"Up",[]],[[588.397,2205.23,0.538792],192,"Up",[]],[[576.669,2210.01,0.0130997],149,"Up",[]],[[548.851,2219.78,0.0130959],78,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[559.617,2236.62,0.567329],257,"Up",[]],[[575.739,2237.54,0.0130997],269,"Up",[]],[[566.351,2254.46,0],235,"Up",[]],[[545.09,2260.71,0.0130997],55,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[524.261,2284.5,0.929165],149,"Middle",[]],[[528.736,2289.71,0.915668],152,"Up",[]],[[530.422,2291.97,0.93832],133,"Up",[]],[[525.674,2296.13,0.60693],198,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 4: {

		// Counter First Roadblock	
		[[],[["UK3CB_ADA_O_BTR80a",[906.107,2529.94,0],161,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[[[1033.94,2310.01,-0.774792],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 5;[[],[["UK3CB_ADA_O_Ural",[901.977,2541.71,-3.8147e-006],161,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",11,[0]],["cargo",10,[1]]],[[6,["ADA",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]],[[[1019.89,2305.76,-0.939253],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		sleep 5;[[],[["UK3CB_ADA_O_Ural",[898.541,2550.63,0],158,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",11,[0]],["cargo",10,[1]]],[[6,["ADA",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]],[[[1039.97,2321.61,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		/// Counter-Attacks
		{
			if(alive _X) then {
				[_X,5,independent,1500] spawn OKS_Rush_SpawnGroup;
			};
		} foreach [truck_1,truck_2];
	};

	case 5: {

		// Garrison of Landcaster
		[[[[1811.69,1817.03,0],339,"Up",[]],[[1822.76,1837.51,0],207,"Up",[]],[[1795.82,1833.39,0.21826],277,"Up",[]],[[1815.93,1853.38,0.32309],180,"Up",[]],[[1822.28,1858.34,0.851845],206,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1854.2,1823.39,0],296,"Up",[]],[[1873.35,1822.72,0],334,"Up",[]],[[1863.72,1861.04,0],174,"Up",[]],[[1870.75,1845.75,4.16242],334,"Up",[]],[[1871.35,1842.48,4.13844],95,"Up",[]],[[1873.32,1834.16,3.80997],2,"Up",[]],[[1873.35,1842.57,0.622143],192,"Up",[]],[[1909.13,1842.88,0],281,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[	Trigger_4,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				12,		// Number of Patrolling Infantry
				false,  // Create Sector Objective on Garrison?
				false   // Should have dedicated patrols near static positions
			],
			independent, // Side of Enemy
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

		[[[[2379.56,2376.63,5.72205e-006],172,"Up",[]],[[2378.12,2400.75,0.397314],134,"Up",[]],[[2345.41,2413.17,5.72205e-006],235,"Up",[]],[[2332.26,2416.79,5.72205e-006],239,"Up",[]],[[2347.71,2448.97,5.72205e-006],240,"Up",[]],[[2364.64,2445.28,5.72205e-006],219,"Up",[]],[[2360.03,2431.12,5.72205e-006],260,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[hunt_2, spawn_2, HuntTrigger_2, 3,900,east,["UK3CB_ADA_O_BTR60","UK3CB_ADA_O_M113_M2","UK3CB_ADA_O_BRDM2","UK3CB_ADA_O_Hilux_Spg9","UK3CB_ADA_O_LR_SPG9","UK3CB_ADA_O_BMP1"],30] spawn NEKY_Hunt_HuntBase;
		[hunt_3, spawn_3, HuntTrigger_2, 3,900,east,["UK3CB_ADA_O_BTR60","UK3CB_ADA_O_M113_M2","UK3CB_ADA_O_BRDM2","UK3CB_ADA_O_Hilux_Spg9","UK3CB_ADA_O_LR_SPG9","UK3CB_ADA_O_BMP1"],30] spawn NEKY_Hunt_HuntBase;

		Trigger_1 setVariable ["OKS_Disable_Dynamic_Civilians",true,true];
		Trigger_2 setVariable ["OKS_Disable_Dynamic_Civilians",true,true];
		Trigger_3 setVariable ["OKS_Disable_Dynamic_Civilians",true,true];

	
	};

	case 6: {
		
		/// Counter-Attacks
		{
			if(alive _X) then {
				[_X,3,independent,1500] spawn OKS_Rush_SpawnGroup;
			};
		} foreach [truck_1,truck_2,truck_3,truck_4,truck_5];

		[convoy_1,convoy_2,convoy_3,east,[4,["UK3CB_ADA_O_BTR80a","UK3CB_ADR_O_LR_SPG9","UK3CB_ADA_O_Ural"], 6, 10],[true,6]] spawn OKS_Convoy_Spawn;

		[	Trigger_5,  // Name of Trigger used as Spawn Area
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
			,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
		] spawn OKS_CreateZone;
		//// END OF ZONE ////	

		[	Trigger_6,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				12,		// Number of Patrolling Infantry
				false,  // Create Sector Objective on Garrison?
				false   // Should have dedicated patrols near static positions
			],
			independent, // Side of Enemy
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

	};

	case 7: {

		[[[[1695.64,2913.58,2.28882e-005],244,"Auto",[]],[[1670.69,2909.11,2.28882e-005],91,"Auto",[]],[[1679.82,2893.64,2.67029e-005],63,"Auto",[]],[[1680.39,2936.09,0],169,"Auto",[]],[[1698.97,2930.4,2.28882e-005],200,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1652.97,2930.7,2.28882e-005],145,"Auto",[]],[[1638.26,2927.67,2.28882e-005],10,"Auto",[]],[[1620.01,2906.59,0],62,"Auto",[]],[[1599.11,2928.89,2.28882e-005],98,"Auto",[]],[[1626.21,2940.95,0.160046],155,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		[hunt_4, spawn_2, HuntTrigger_3, 3,900,east,["UK3CB_ADA_O_BTR60","UK3CB_ADA_O_M113_M2","UK3CB_ADA_O_BRDM2","UK3CB_ADA_O_Hilux_Spg9","UK3CB_ADA_O_LR_SPG9","UK3CB_ADA_O_BMP1"],90] spawn NEKY_Hunt_HuntBase; sleep 30;
		[hunt_5, spawn_3, HuntTrigger_3, 3,900,east,["UK3CB_ADA_O_BTR60","UK3CB_ADA_O_M113_M2","UK3CB_ADA_O_BRDM2","UK3CB_ADA_O_Hilux_Spg9","UK3CB_ADA_O_LR_SPG9","UK3CB_ADA_O_BMP1"],90] spawn NEKY_Hunt_HuntBase; sleep 30;
		[hunt_6, spawn_2, HuntTrigger_3, 3,900,east,["UK3CB_ADA_O_BTR60","UK3CB_ADA_O_M113_M2","UK3CB_ADA_O_BRDM2","UK3CB_ADA_O_Hilux_Spg9","UK3CB_ADA_O_LR_SPG9","UK3CB_ADA_O_BMP1"],90] spawn NEKY_Hunt_HuntBase; sleep 30;
		[hunt_7, spawn_3, HuntTrigger_3, 3,900,east,["UK3CB_ADA_O_BTR60","UK3CB_ADA_O_M113_M2","UK3CB_ADA_O_BRDM2","UK3CB_ADA_O_Hilux_Spg9","UK3CB_ADA_O_LR_SPG9","UK3CB_ADA_O_BMP1"],90] spawn NEKY_Hunt_HuntBase; sleep 30;
	};

	case 8: {

		[	Trigger_7,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				8,		// Number of Patrolling Infantry
				false,  // Create Sector Objective on Garrison?
				false   // Should have dedicated patrols near static positions
			],
			independent, // Side of Enemy
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

		[[[[917.933,2604.14,0],89,"Auto",[]],[[901.852,2619.49,0],82,"Auto",[]],[[879.548,2592.09,0],152,"Auto",[]],[[877.553,2631.47,0],34,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1052.08,2654.29,0],351,"Auto",[]],[[1039.77,2680.83,0],30,"Auto",[]],[[1054.03,2682.88,0],351,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1075.72,2761.18,0],103,"Auto",[]],[[1058.97,2744.82,0],47,"Auto",[]],[[1038.95,2733.46,0],47,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1176.9,2686.32,-3.8147e-006],0,"Auto",[]],[[1194.51,2689.34,-3.8147e-006],327,"Auto",[]],[[1192.24,2665.77,3.8147e-006],341,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Construction Site
		[[[[967.073,2681.66,8.24623],67,"Auto",[]],[[967.302,2683.49,12.1161],64,"Auto",[]],[[961.297,2679.7,4.32953],251,"Auto",[]],[[966.517,2682.28,4.19207],67,"Auto",[]],[[965.858,2681.85,0.302208],67,"Auto",[]],[[949.234,2682.76,0.204025],121,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[942.608,2674.16,12.6081],308,"Auto",[]],[[953.616,2667.63,8.94321],314,"Middle",[]],[[947.198,2654.52,5.25768],12,"Auto",[]],[[946.479,2644.88,1.29385],24,"Auto",[]],[[955.279,2641.69,9.32739],67,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[967.746,2662.37,9.12471],87,"Auto",[]],[[967.659,2665.07,12.9979],80,"Auto",[]],[[966.562,2664,5.04424],293,"Auto",[]],[[964.699,2656.41,1.37216],67,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		Trigger_4 setVariable ["OKS_Disable_Dynamic_Civilians",true,true];
		Trigger_5 setVariable ["OKS_Disable_Dynamic_Civilians",true,true];
	};

	case 9:{
		Trigger_6 setVariable ["OKS_Disable_Dynamic_Civilians",true,true];
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
