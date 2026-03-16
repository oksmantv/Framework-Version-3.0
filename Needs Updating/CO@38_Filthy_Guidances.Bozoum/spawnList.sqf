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

		/// Ambush
		[[],[["UK3CB_ADA_O_LR_SPG9",[976.537,6335.95,0],340,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]],["UK3CB_ADA_O_LR_SPG9",[832.817,6649.28,-1.90735e-006],132,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Side Objective 1
		[[],[["UK3CB_ADA_I_LR_SPG9",[1764.18,6912.82,-1.19209e-006],203,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]],["UK3CB_ADA_I_LR_SPG9",[1646.6,6674.89,-1.19209e-006],177,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Compound
		[[[[1752.71,6758.35,-2.6226e-006],311,"Auto",[]],[[1764.06,6758.5,0],354,"Auto",[]],[[1765.88,6768.38,0.247543],266,"Auto",[]],[[1767.67,6764.89,0.467157],354,"Auto",[]],[[1765.38,6778.17,0.437627],175,"Auto",[]],[[1772.24,6775.08,2.09736],332,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1757.75,6800.49,1.76848],236,"Auto",[]],[[1746.8,6781.82,0],99,"Auto",[]],[[1730.6,6783.93,0],25,"Auto",[]],[[1747.79,6799.38,0],223,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1761.05,6797.74,1.66912],354,"Auto",[]],[[1766.3,6801.32,1.43739],196,"Auto",[]],[[1765.84,6794.41,1.507],354,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Garrison 1
		[[[[928.189,6155.89,0.565149],3,"Auto",[]],[[947.928,6145.94,0.683641],3,"Auto",[]],[[944.708,6143.75,0.571707],3,"Middle",[]]],[["UK3CB_ADA_I_LR_SPG9",[932.098,6118.12,0],74,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]],["UK3CB_ADA_I_LR_SPG9",[912.094,6170.7,0],88,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[971.031,6203.56,0.799795],120,"Auto",[]],[[967.589,6207.56,0.791931],237,"Middle",[]],[[943.844,6202.53,0],199,"Middle",[]],[[937.964,6199.97,0],100,"Middle",[]],[[942.576,6208.13,0.565242],91,"Auto",[]],[[914.707,6185.6,0.865907],3,"Auto",[]],[[974.03,6182.94,1.10178],74,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[976.009,6175.87,1.13013],94,"Auto",[]],[[1003.77,6190.93,9.53674e-007],189,"Middle",[]],[[1022.16,6163.83,0.776173],53,"Auto",[]],[[1020.36,6167.5,0.776291],11,"Auto",[]],[[1013.22,6165.8,0.776019],3,"Auto",[]],[[1017.37,6161.46,0.775971],3,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Side Objective 2
		[[[[141.313,5961.3,0],31,"Middle",[]],[[177.301,6049.71,0.723305],191,"Auto",[]],[[189.023,6056.24,4.02886],103,"Middle",[]],[[165.226,6074.8,4.66499],191,"Middle",[]]],[["UK3CB_ADA_I_BMP1",[101.687,5972.01,0],94,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ADA_I_BMP1",[49.6345,6089.82,0],124,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[235.263,5980.5,-3.8147e-006],257,"Auto",[]],[[199.583,5987.38,-3.8147e-006],143,"Auto",[]],[[205.049,5997.96,0.816919],241,"Auto",[]],[[209.34,5993.25,0.802237],191,"Auto",[]],[[214.296,5992.85,0.739468],203,"Auto",[]],[[223.061,5991.54,0.82646],257,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[229.922,5990.94,0.654272],257,"Auto",[]],[[227.656,5996.93,0.784111],257,"Auto",[]],[[190.872,5988.72,0],191,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Hasty Ambush
		[[[[1309.03,6023.45,0],295,"Auto",[]],[[1311.83,6025.54,0],305,"Auto",[]],[[1309.11,6018.47,0],321,"Auto",[]],[[1306.91,6014.8,0],275,"Auto",[]]],[["UK3CB_ADA_I_LR_SPG9",[1342.74,6011.42,0.0184364],304,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]],["UK3CB_ADA_I_Hilux_Dshkm",[1351.06,6015.44,0.33573],296,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1250.56,6020.92,0],316,"Middle",[]],[[1247.12,6017.77,0],305,"Middle",[]],[[1252.14,6021.94,-4.76837e-007],332,"Auto",[]],[[1263.12,6048.72,0],233,"Auto",[]],[[1264.87,6052.83,0],29,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1274.67,6066.79,0],275,"Auto",[]],[[1283.75,6070.71,0],275,"Auto",[]],[[1284.95,6074.69,0],275,"Auto",[]],[[1286.18,6077.22,0],275,"Auto",[]],[[1291.21,6084.42,0],275,"Auto",[]],[[1292.21,6087.03,1.45435e-005],275,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

			[	
				Trigger_3,  // Name of Trigger used as Spawn Area
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
				,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;

			[	
				Trigger_4,  // Name of Trigger used as Spawn Area
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
				,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;			


		//// Garrison 2
		[[[[2161.56,4997.35,-1.90735e-005],18,"Auto",[]],[[2156.37,4994.28,-3.8147e-006],18,"Auto",[]],[[2151.67,4993.91,7.62939e-006],18,"Auto",[]],[[2156.64,4985.73,1.14441e-005],18,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2125.12,4984.64,0.279659],18,"Auto",[]],[[2119.7,4983.22,0.118847],18,"Auto",[]],[[2115,4971.83,1.10411],18,"Auto",[]],[[2124.5,4969.34,0.969181],18,"Auto",[]],[[2146.79,4972.17,3.8147e-006],18,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2133.11,4958.69,0.52277],60,"Auto",[]],[[2151.77,4952.05,0.215874],18,"Middle",[]],[[2155.28,4955.95,0.217117],315,"Auto",[]],[[2141.67,4949.59,0.898083],18,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2169.62,4969.09,0],8,"Auto",[]],[[2167.64,4969.42,3.8147e-006],359,"Auto",[]],[[2168.78,4964.85,0],18,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {

			[	
				Trigger_5,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					24,		// Number of Patrolling Infantry
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
				,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;

		//// Fort South Bridge.
		[[[[2738.33,3908.17,0],49,"Auto",[]],[[2737.92,3903.37,0.109901],49,"Auto",[]],[[2736.82,3899.2,0.632137],49,"Auto",[]],[[2734.63,3891.94,0.761551],49,"Auto",[]],[[2729.03,3884.89,0.836805],276,"Auto",[]],[[2726.43,3885.05,1.01308],256,"Down",[]],[[2734.06,3874.98,0.381327],348,"Middle",[]],[[2732.6,3886.3,0.0905018],49,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2755.5,3941.15,0.657248],49,"Auto",[]],[[2748.44,3944.58,0.183382],49,"Auto",[]],[[2765.86,3931.15,1.33514e-005],49,"Auto",[]],[[2762.54,3934.55,0.0467224],49,"Auto",[]],[[2752.07,3929.62,-1.90735e-006],49,"Middle",[]],[[2753.93,3927.19,-3.8147e-006],318,"Middle",[]],[[2759.19,3894.15,0.718401],49,"Auto",[]],[[2750.4,3894.04,0.469814],49,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2987.97,3889.97,-9.53674e-006],233,"Auto",[]],[[2999.88,3885.79,-9.53674e-006],233,"Auto",[]],[[3006.89,3881.33,-9.53674e-006],233,"Auto",[]],[[2994.17,3858.82,-9.53674e-006],322,"Middle",[]],[[3008.49,3852.23,0.460866],328,"Middle",[]],[[3045.03,3833.12,-9.53674e-006],233,"Auto",[]],[[3055.85,3859.03,-9.53674e-006],236,"Auto",[]]],[["UK3CB_ADA_I_BTR80a",[2811.49,3991.85,0],219,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",1]]]],["UK3CB_ADA_I_BTR80a",[3058.07,3825.59,0],318,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		
		//// Fort North Bridge.
		[[[[3142.18,4244.96,0],281,"Up",[]],[[3142.17,4248.56,0],290,"Up",[]],[[3142.83,4252.18,0],290,"Middle",[]],[[3147.33,4248.32,0],219,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3069.91,4205.6,1.52909],290,"Up",[]],[[3075.75,4211.78,1.84062],290,"Up",[]],[[3078.09,4218.3,2.01787],290,"Up",[]],[[3076.23,4219.18,2.14771],319,"Down",[]],[[3085.81,4216.21,0.68071],290,"Up",[]],[[3093.1,4210.47,0],290,"Middle",[]],[[3095.82,4217.97,0.067873],290,"Up",[]],[[3101.82,4220.39,0],290,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADA_I_T55",[3000.49,4241.15,0],33,[["driver",-1,[]],["cargo",-1,[0]],["cargo",-1,[0,0]]],[[6,["ADA",1]]]],["UK3CB_ADA_I_BTR80a",[3229.3,4315.16,-9.53674e-007],195,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]],["UK3CB_ADA_I_T55",[3156.83,4227.96,0],285,[["driver",-1,[]],["cargo",-1,[0]],["cargo",-1,[0,0]]],[[6,["ADA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	};

	case 4: {

					[	
				Trigger_6,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					22,		// Number of Patrolling Infantry
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

						[	
				Trigger_7,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					22,		// Number of Patrolling Infantry
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
	};

	case 5: {

		/// Final Counter-Attack
		[start_1,wp_1,end_1,independent,[4,["UK3CB_ADA_O_BTR80a", "UK3CB_ADA_O_BTR60", "UK3CB_ADA_O_BTR40","UK3CB_ADA_O_BTR40"], 6, 25],[true,4]] spawn OKS_Convoy_Spawn;
		[start_2,wp_2,end_2,independent,[4,["UK3CB_ADA_O_T55", "UK3CB_ADR_O_V3S_Closed", "UK3CB_ADR_O_V3S_Open","UK3CB_ADA_O_BTR40_MG"], 6, 25],[true,4]] spawn OKS_Convoy_Spawn;
		[start_3,wp_3,end_3,independent,[4,["UK3CB_ADA_O_BMP1", "UK3CB_ADR_O_V3S_Closed", "UK3CB_ADR_O_V3S_Open","UK3CB_ADA_O_BTR40_MG"], 6, 15],[true,4]] spawn OKS_Convoy_Spawn;
		  
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
