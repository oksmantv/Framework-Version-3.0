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



#include "\OKS_GOL_MISC\script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};

params [
	"_case"
];

switch (_case) do {

	case 1: {

		[Group officer_1,getMarkerPos "respawn_west",west,false,nil,false] spawn OKS_fnc_Evacuate_HVT;

		// AAA Threats.
		[[
			[[13045.1,15179.7,0.766047],257,"Middle",[[301,0]],"mat"],
			[[13044.2,15173.1,0.573224],232,"Middle",[[301,0]],"mat"],
			[[13057.2,15178.5,0.905752],213,"Middle",[[301,0]],"mat"]
		],[
			["rhs_KORD_high_MSV",[15820.9,13308.9,0.077631],293,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[15820.8,13304.4,0.114897],261,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[15240.4,13821.2,0.0958729],250,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[15243.3,13817.8,0.285747],218,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[14069.9,13829.1,0.149426],142,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[14072.6,13832.4,0.134213],101,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[13962.5,14263.7,0.138474],130,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[13964.4,14267.7,0.319896],89,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[14414.2,15373.9,-0.195939],192,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[14418.4,15373.1,-0.0225859],151,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[15305.4,14770.3,0.0177746],192,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[15309.5,14769.4,0.187971],151,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[13962.1,15100.2,0.274607],170,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[13966.8,15100.7,0.264907],129,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[13900,15318.2,-0.0493498],160,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[13904.2,15319.9,0.00269222],119,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[14875.2,14069.3,0.0735989],170,[["gunner",-1,[0]]],[[351,false]]],
			["rhs_KORD_high_MSV",[14879.5,14070.1,0.204154],129,[["gunner",-1,[0]]],[[351,false]]],
			["RHS_ZU23_VDV",[15181.6,14031.5,0.00790787],111,[["gunner",-1,[0]]],[[7,["Unfold",0]],[351,false]]],
			["RHS_ZU23_VDV",[13771.4,14650.6,-0.00916481],111,[["gunner",-1,[0]]],[[7,["Unfold",0]],[351,false]]],
			["RHS_ZU23_VDV",[15402.6,15674,0.114271],166,[["gunner",-1,[0]]],[[7,["Unfold",0]],[351,false]]],
			["RHS_ZU23_VDV",[12181.2,15077.8,0.218161],111,[["gunner",-1,[0]]],[[7,["Unfold",0]],[351,false]]],
			["RHS_ZU23_VDV",[16015.3,13072.4,0.178615],271,[["gunner",-1,[0]]],[[7,["Unfold",0]],[351,false]]],
			["RHS_ZU23_MSV",[13050,15178.3,0],240,[["gunner",-1,[0]]],[[7,["Unfold",0]],[351,false]]]
		],[],east] call GW_Common_fnc_spawnGroup;

		// /// ZONE 1 ///
		// [	
		// 	Trigger_1,  // Name of Trigger used as Spawn Area
		// 	false, 		// DO NOT EDIT
		// 	[
		// 		0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
		// 		0,		// Number of Patrolling Infantry
		// 		false,  // Create Sector Objective on Garrison?
		// 		false   // Should have dedicated patrols near static positions
		// 	],
		// 	east, // Side of Enemy
		// 	0,    // Number of Wheeled on Patrol
		// 	2,    // Number of APCs on Patrol
		// 	2,    // Number of Tanks on Patrol
		// 	[
		// 		4,     // Number of Roadblocks - Preferred Game Logic Location 'FOB'"
		// 		false,  // Should be on tarmac.
		// 		true, // Should have dedicated patrol.
		// 		1  	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
		// 	],
		// 	[
		// 		0,     // Number of Mortars
		// 		false  // Should have dedicated patrols around it
		// 	],[
		// 		0,    // Number of Random Objectives - Preferred Game Logic Location 'Camp'"
		// 		false // Should have dedicated patrols around it
		// 	],
		// 	[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Preferred Game Logic Location 'Respawn Point'"
		// 	,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
		// ] spawn OKS_fnc_CreateZone;

		// Jungle Patrols
		[[
			[[14693.8,12057.5,0],0,"Up",[[301,0]],"sl"],[[14698.8,12052.5,0],0,"Up",[[301,1]],"r"],
			[[14688.8,12052.5,0],0,"Up",[[301,0]],"mat"],[[14703.8,12047.5,9.53674e-07],0,"Up",[[301,0]],"g"],
			//[[14683.8,12047.5,0],0,"Up",[[301,0]],"r"],[[14708.8,12042.5,0],0,"Up",[[301,0]],"mmg"],
			[[14678.8,12042.5,0],0,"Up",[[301,0]],"r"]//,[[14713.8,12037.5,0],0,"Up",[[301,0]],"mmg"]
		],[],[[[14817.2,12003.6,0],[[0,"Move"],[1,"SAFE"]]],[[14949.5,12123.4,9.67979e-05],[[0,"Move"]]],[[14927.5,12279.7,0],[[0,"Move"]]],[[14737.8,12340.3,9.87053e-05],[[0,"Move"]]],[[14642.2,12241.2,3.43323e-05],[[0,"Move"]]],[[14547,12167.1,0],[[0,"Move"]]],[[14682.4,12067.4,4.76837e-07],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[14320.2,11995.1,0],0,"Up",[[301,0]],"sl"],[[14325.2,11990.1,0],0,"Up",[[301,1]],"r"],
			[[14315.2,11990.1,0],0,"Up",[[301,0]],"mat"],[[14330.2,11985.1,0],0,"Up",[[301,0]],"g"],
			//[[14310.2,11985.1,9.53674e-07],0,"Up",[[301,0]],"r"],[[14335.2,11980.1,0],0,"Up",[[301,0]],"mmg"],
			[[14305.2,11980.1,0],0,"Up",[[301,0]],"r"]//,[[14340.2,11975.1,9.53674e-07],0,"Up",[[301,0]],"mmg"]
		],[],[[[14293.3,12129.2,0],[[0,"Move"],[1,"SAFE"]]],[[14310.4,12217.7,-9.53674e-07],[[0,"Move"]]],[[14402.5,12244.1,0],[[0,"Move"]]],[[14615.6,11978.9,0],[[0,"Move"]]],[[14460.7,12046.6,0],[[0,"Move"]]],[[14347.8,12202.8,0],[[0,"Move"]]],[[14366.8,11997,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;

		[[
			[[14982,12627.1,0],300,[]],[[14988.8,12628.9,0],300,[]],
			//[[14983.8,12620.2,0],300,[]],[[14995.6,12630.7,0],300,[]],
			[[14985.6,12613.4,0],300,[]],[[15002.5,12632.5,0],300,[]],
			[[14987.4,12606.6,0],300,[]],[[15009.3,12634.4,0],300,[]]
		],[],[[[14883.3,12726.3,4.76837e-007],[[0,"Move"],[1,"SAFE"]]],[[14982.4,12920.9,0],[[0,"Move"]]],[[14862.5,13007.6,0],[[0,"Move"]]],[[14603,12898.7,0],[[0,"Move"]]],[[14742.8,12707.8,3.33786e-005],[[0,"Move"]]],[[14723.2,12551.2,0],[[0,"Move"]]],[[14967.7,12622.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[
			[[14561.6,13174.7,9.53674e-007],0,[]],[[14566.6,13169.7,9.53674e-007],0,[]],
			//[[14556.6,13169.7,0],0,[]],[[14571.6,13164.7,9.53674e-007],0,[]],
			[[14551.6,13164.7,9.53674e-007],0,[]],[[14576.6,13159.7,9.53674e-007],0,[]],
			[[14546.6,13159.7,0],0,[]],[[14581.6,13154.7,9.53674e-007],0,[]]
		],[],[[[14334.4,13355.7,9.53674e-007],[[0,"Move"],[1,"SAFE"]]],[[14606.5,13555.4,0],[[0,"Move"]]],[[14604,13807.6,0],[[0,"Move"]]],[[14485.5,14008.6,0],[[0,"Move"]]],[[14642.7,13677.7,0],[[0,"Move"]]],[[14359.4,13354.4,4.76837e-007],[[0,"Move"]]],[[14550.2,13184.6,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[
			[[14762.2,13930.6,0],0,[]],[[14767.2,13925.6,0],0,[]],
			[[14757.2,13925.6,0],0,[]],[[14772.2,13920.6,0],0,[]],
			//[[14752.2,13920.6,0],0,[]],[[14777.2,13915.6,9.53674e-007],0,[]],
			[[14747.2,13915.6,0],0,[]],[[14782.2,13910.6,0],0,[]]
		],[],[[[14728.9,14034.8,0],[[0,"Move"],[1,"SAFE"]]],[[14739.7,14196.8,0],[[0,"Move"]]],[[14737.7,14522.9,0],[[0,"Move"]]],[[14564.9,14587.7,0],[[0,"Move"]]],[[14565.3,14301.4,0],[[0,"Move"]]],[[14485.7,14053.4,0],[[0,"Move"]]],[[14750.9,13940.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[
			[[15419.7,13055.6,0],0,[]],[[15422.7,13052.6,0],0,[]],
			//[[15424.7,13052.6,0],0,[]],[[15426.7,13052.6,0],0,[]],
			[[15428.7,13052.6,0],0,[]],[[15430.7,13052.6,0],0,[]],
			[[15432.7,13052.6,0],0,[]],[[15434.7,13052.6,0],0,[]]
		],[],[[[15190.9,13365.6,0],[[0,"Move"],[1,"SAFE"]]],[[15401.5,13384.6,-2.86102e-006],[[0,"Move"]]],[[15456.4,13624.3,-3.8147e-006],[[0,"Move"]]],[[15457.3,13861.3,-5.24521e-005],[[0,"Move"]]],[[15683.8,13657.4,7.72476e-005],[[0,"Move"]]],[[15641,13354.6,-0.000120163],[[0,"Move"]]],[[15553.8,13233.9,-3.8147e-006],[[0,"Move"]]],[[15532.2,12993,4.76837e-005],[[0,"Move"]]],[[15445.9,13028.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		
		// Ambush Party East.
		[[[[15949.4,12633.7,-4.76837e-06],184,"up",[[301,0]],"mat"],[[15945.3,12633.9,-4.76837e-06],205,"up",[[301,0]],"mat"],[[15942,12636.1,0],202,"up",[[301,0]],"mat"],[[15941.9,12651.5,-4.76837e-06],268,"up",[[301,0]],"mat"],[[15960.4,12649.8,-4.76837e-06],191,"up",[[301,0]],"mat"],[[15964,12636,0],205,"up",[[301,0]],"mat"],[[15966.7,12636.2,0],188,"up",[[301,0]],"mmg"],[[15969.1,12648.2,0.00963593],119,"Middle",[[301,0]],"mat"],[[15943.9,12635.1,0],198,"Middle",[[301,0]],"mmg"],[[15940.4,12638,0],237,"up",[[301,0]],"mmg"]],[],[],east] call GW_Common_fnc_spawnGroup;
		
		// Tanks, Patrols, Ambushes
		[[
			[[15904.8,13650.3,0],0,"up",[[301,0]],"sl"],
			[[15909.8,13645.3,4.76837e-07],0,"up",[[301,0]],"ar"],
			[[15899.8,13645.3,0],0,"up",[[301,0]],"mmg"],
			//[[15914.8,13640.3,0],0,"up",[[301,0]],"ag"],
			//[[15894.8,13640.3,4.76837e-07],0,"up",[[301,0]],"lr"],
			[[15919.8,13635.3,-9.53674e-07],0,"up",[[301,0]],"r"],
			[[15889.8,13635.3,4.76837e-07],0,"up",[[301,0]],"mat"]
			//[[15924.8,13630.3,0],0,"up",[[301,1]],"sm"]
		],[],[[[15680.9,13601.1,0],[[0,"Move"],[1,"SAFE"]]],[[15683.5,13751.9,0],[[0,"Move"]]],[[15763.8,13743.4,0],[[0,"Move"]]],[[15787.4,13926.8,0],[[0,"Move"]]],[[15893.8,13880.8,9.53674e-07],[[0,"Move"]]],[[15909.9,13677,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[14657.4,13446.9,2.95639e-05],0,"up",[[301,0]],"sl"],
			//[[14662.4,13441.9,3.05176e-05],0,"up",[[301,0]],"ar"],
			[[14652.4,13441.9,3.05176e-05],0,"up",[[301,0]],"mmg"],
			//[[14667.4,13436.9,3.05176e-05],0,"up",[[301,0]],"ag"],
			[[14647.4,13436.9,3.05176e-05],0,"up",[[301,0]],"lr"],
			[[14672.4,13431.9,2.95639e-05],0,"up",[[301,0]],"r"],
			[[14642.4,13431.9,3.00407e-05],0,"up",[[301,0]],"mat"]
			//[[14677.4,13426.9,3.05176e-05],0,"up",[[301,1]],"sm"]
		],[],[[[14429.1,13423.3,3.05176e-05],[[0,"Move"],[1,"SAFE"]]],[[14327.1,13502.7,0],[[0,"Move"]]],[[14361.6,13571.2,0],[[0,"Move"]]],[[14484.4,13504.5,0],[[0,"Move"]]],[[14583.2,13514.3,3.43323e-05],[[0,"Move"]]],[[14662.5,13473.5,3.05176e-05],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[
			[[14581,13796.7,4.76837e-07],54,"up",[[301,0]],"sl"],
			[[14579.9,13789.7,4.76837e-07],54,"up",[[301,0]],"ar"],
			[[14574.1,13797.8,4.76837e-07],54,"up",[[301,0]],"mmg"],
			//[[14578.8,13782.7,0],54,"up",[[301,0]],"ag"],
			[[14567.1,13798.9,0],54,"up",[[301,0]],"lr"],
			[[14577.6,13775.7,4.76837e-07],54,"up",[[301,0]],"r"],
			[[14560.1,13800.1,4.76837e-07],54,"up",[[301,0]],"mat"]
			//[[14576.5,13768.7,4.76837e-07],54,"up",[[301,1]],"sm"]
		],[],[[[14491.8,13878.1,0],[[0,"Move"],[1,"SAFE"]]],[[14512.6,14111.6,4.76837e-07],[[0,"Move"]]],[[14555.5,14266.5,0],[[0,"Move"]]],[[14573.9,14057.6,0],[[0,"Move"]]],[[14575.2,13883.3,0],[[0,"Move"]]],[[14638,13818.9,9.53674e-07],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;

		// static
		[[[[15803.9,13253.8,0.235516],272,"Down",[[301,0]],"mat"],[[15803.7,13261.4,0.0131226],295,"Down",[[301,0]],"mat"],[[15803,13258.3,0.0464897],269,"Down",[[301,0]],"mat"],[[15801.3,13405,0.0540123],266,"up",[[301,0]],"mat"],[[15803.4,13407.8,0.04603],281,"up",[[301,0]],"mat"]],[["UK3CB_TKA_O_T55",[15796.1,13397.8,0.0689754],291,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Barrels_Hide",0]],[351,false]]],["UK3CB_TKA_O_T55",[15805.5,13266.7,-0.0521355],294,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Barrels_Hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		[[[[14199.4,13855.2,0.00986195],87,"up",[[301,0]],"mat"],[[14200.3,13847.7,0.0665703],109,"up",[[301,0]],"mat"],[[14200.7,13850.9,0.0108614],83,"up",[[301,0]],"mat"],[[14180.3,13887.6,6.67572e-06],80,"up",[[301,0]],"mat"],[[14178.4,13884.6,0.0137358],95,"up",[[301,0]],"mat"]],[["UK3CB_TKA_O_T55",[14184.4,13895.6,-0.0106192],105,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Barrels_Hide",0]],[351,false]]],["UK3CB_TKA_O_T55",[14199.3,13842.5,0.130466],108,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Barrels_Hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		[[[[13734.7,14583.3,0.755945],130,"Up",[[301,0]],"mat"],[[13730.2,14577.2,0.0199242],153,"Up",[[301,0]],"mat"],[[13732.6,14579.3,0.276325],127,"Up",[[301,0]],"mat"],[[13743.8,14612.2,0.121572],124,"Up",[[301,0]],"mat"],[[13740.4,14611.3,-0.0590954],139,"Up",[[301,0]],"mat"]],[["UK3CB_TKA_O_T55",[13752.4,14614.6,0.289911],149,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Barrels_Hide",0]],[351,false]]],["UK3CB_TKA_O_T55",[13725.3,14574.1,0.116407],152,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Barrels_Hide",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		
		// Hunters
		_Vehicles = [["UK3CB_CSAT_A_O_T72A", "UK3CB_CSAT_A_O_Marid_Cage"], ["UK3CB_CSAT_A_O_T72A", "UK3CB_CSAT_A_O_Marid_Cage"], ["UK3CB_CSAT_A_O_BRM1K","UK3CB_CSAT_A_O_Marid_Cage"]];
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 4,1500,independent,_Vehicles,300] spawn OKS_fnc_Huntbase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 4,1500,independent,_Vehicles,300] spawn OKS_fnc_Huntbase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 4,1500,independent,_Vehicles,300] spawn OKS_fnc_Huntbase;

		// AT squads.
		[[[[14420.2,15375.9,0.335767],86,"Middle",[[301,0]],"mat"],[[14413.5,15373.4,0],282,"Middle",[[301,0]],"mat"],[[14416.6,15372,0],152,"Up",[[301,0]],"mat"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[15096,14358.2,1.20094],243,"Middle",[[301,0]],"sl"],[[15100,14353.4,1.11311],89,"Middle",[[301,0]],"ar"],[[15091.1,14353.7,1.60969],35,"Middle",[[301,0]],"mmg"],[[15093.1,14349.8,4.20455],254,"Up",[[301,0]],"ag"],[[15095.5,14362.9,0.943727],282,"Up",[[301,0]],"lr"],[[15089.9,14361.3,3.98204],186,"Up",[[301,0]],"r"],[[15088.8,14360.5,1.37449],328,"Up",[[301,0]],"mat"],[[15098.7,14352.3,3.55621],166,"Up",[[301,1]],"sm"],[[15095.6,14352,3.73009],180,"Up",[[301,0]],"mat"],[[15089.5,14358.3,3.81654],248,"Up",[[301,0]],"mat"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[15014.5,14384.8,5.93825],184,"Up",[[301,0]],"mat"],[[15010.7,14382.3,5.91719],209,"Up",[[301,0]],"mat"],[[15008.9,14388.6,17.7355],206,"Up",[[301,0]],"mat"],[[15013,14387.5,30.7295],181,"Up",[[301,0]],"mat"],[[15011,14388.5,30.737],218,"Up",[[301,0]],"mat"],[[15184.3,14026.1,0.458723],158,"Up",[[301,0]],"mat"],[[15181.2,14026.7,0.763584],180,"Up",[[301,0]],"mat"],[[15176.4,14035.3,0.302656],18,"Middle",[[301,0]],"mat"],[[15241.1,13819.2,9.53674e-07],213,"Up",[[301,0]],"mat"],[[14072,13831.1,0],126,"Up",[[301,0]],"mat"],[[13946.9,14254.6,5.28583],328,"Up",[[301,0]],"mat"],[[13939,14253.2,5.35576],188,"Up",[[301,0]],"mat"],[[13962.8,14266,9.53674e-07],82,"Up",[[301,0]],"mat"],[[13778.6,14646.3,0.562632],110,"Up",[[301,0]],"mat"],[[13767.4,14656,0.797842],33,"Up",[[301,0]],"mat"],[[13964.6,15101.4,0],156,"Up",[[301,0]],"mat"],[[13968.8,15105.2,0.444158],87,"Middle",[[301,0]],"mat"]],[],[],east] call GW_Common_fnc_spawnGroup;

		// Artillery 
		{
			[east,_X,[15082.6,10770.3,0],7,300,120] spawn OKS_fnc_ArtyFire; sleep 2 + (random 2);
		} foreach [arty_1,arty_2,arty_3,arty_4];

		// Artillery Guards
		[[
			[[14881.9,13837.6,0],239,"Up",[]],[[14924.5,13856.7,0],239,"Up",[]],
			//[[14897.7,13874.1,0],264,"Up",[]],[[14890.3,13891.6,-1.90735e-006],167,"Up",[]],
			[[14906.8,13887.7,1.2828],55,"Up",[]],[[14902.9,13888.4,1.27286],168,"Up",[]],
			//[[14896,13904.3,0],59,"Up",[]],[[14929,13935.1,0],219,"Up",[]],
			[[14892.7,13949.9,0],166,"Middle",[]],[[14923.4,13879.3,9.53674e-007],68,"Middle",[]],
			[[14948.4,13891.4,0],199,"Middle",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Fort 183
		[[
			[[15139.9,13843.4,-0.00111389],348,"Up",[[301,0]],"sl"],[[15139.9,13817.8,0],17,"Up",[[301,0]],"r"],
			//[[15113.3,13795.6,0],55,"Up",[[301,0]],"mat"],[[15086.7,13796.7,0],175,"Up",[[301,0]],"g"],
			[[15063.1,13800.1,0],279,"Up",[[301,1]],"ag"],[[15052.4,13818.9,0],163,"Up",[[301,0]],"ar"],
			//[[15052.6,13840.6,0],214,"Up",[[301,0]],"mat"],[[15069.6,13843.2,0],264,"Up",[[301,1]],"ag"],
			[[15078.6,13840.2,0],229,"Up",[[301,0]],"r"],[[15099,13843.3,0],223,"Up",[[301,0]],"ar"],
			//[[15073,13841.2,0],256,"Up",[[301,0]],"r"],[[15102.6,13791.8,1.90735e-06],278,"Middle",[[301,0]],"r"],
			[[15056.7,13804.2,0],226,"Up",[[301,0]],"ar"],[[15128.8,13807.1,0],156,"Up",[[301,0]],"r"],
			[[15119.3,13844.1,0],82,"Up",[[301,1]],"ag"],[[15079.2,13820.2,0.0303078],172,"Up",[[301,0]],"r"]
		],[["UK3CB_TKA_O_BMP1",[15094.5,13821.5,9.53674e-07],176,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]],[351,false]]],["UK3CB_TKA_O_BMP1",[15070.7,13824.5,0.217956],246,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]],[351,false]]],["UK3CB_TKA_O_BMP1",[15120.7,13829.3,0],146,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 2: {	

		// Patrol.
		[[
			[[14614.9,14733.8,0],0,[]],[[14619.9,14728.8,0],0,[]],
			//[[14609.9,14728.8,0],0,[]],[[14624.9,14723.8,0],0,[]],
			[[14604.9,14723.8,0],0,[]],[[14629.9,14718.8,4.76837e-007],0,[]],
			[[14599.9,14718.8,0],0,[]],[[14634.9,14713.8,0],0,[]]
		],[],[[[14725.6,14829.6,0],[[0,"Move"],[1,"SAFE"]]],[[14818.6,14964.7,0],[[0,"Move"]]],[[14795.4,15157.4,0],[[0,"Move"]]],[[14567.3,15281.4,0],[[0,"Move"]]],[[14516.4,15056.6,0],[[0,"Move"]]],[[14541.8,14901.6,0],[[0,"Move"]]],[[14603.6,14743.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Compound 1
		[[
			[[14128.4,15125.9,0],283,"Up",[]],
			//[[14112.9,15127.7,-9.53674e-007],115,"Up",[]],
			[[14111.7,15138.3,0.449832],115,"Up",[]],
			[[14115,15146.7,0.870539],58,"Up",[]],
			//[[14115.2,15142.6,0.507829],151,"Up",[]],
			[[14124.3,15143,0.292004],115,"Up",[]],
			//[[14132,15139,0.393819],125,"Up",[]],
			[[14124.8,15132.4,0.789651],231,"Up",[]],
			[[14128.5,15144.8,0],122,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Compound 2
		[[
			[[14070.4,15177,0],226,"Up",[]],
			[[14057.3,15185.2,0.230444],132,"Up",[]],
			//[[14056.4,15185.4,3.20151],182,"Up",[]],
			[[14067.8,15187.3,3.59171],135,"Up",[]],
			//[[14064.1,15194.4,3.65943],59,"Up",[]],
			[[14067.7,15187.2,0.767337],243,"Up",[]],
			[[14065.5,15192.8,0.842728],188,"Up",[]],
			//[[14077.8,15186.2,0.564056],287,"Up",[]],
			//[[14078.3,15179.5,0.725471],298,"Middle",[]],
			[[14081.6,15191.2,0.52574],228,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;

		// Compound 3
		[[
			[[14039.4,15185.5,0],52,"Up",[]],
			//[[14031.8,15180.8,0.295921],15,"Up",[]],
			//[[14023.3,15192.6,0],139,"Up",[]],
			[[14032.1,15196,0.674995],306,"Up",[]],
			[[14026.8,15192.1,0.299964],318,"Middle",[]],
			//[[14021.1,15213.3,0],174,"Middle",[]],
			[[14011.3,15205.4,-9.53674e-007],94,"Up",[]],
			//[[14007.5,15210.2,0.380541],226,"Up",[]],
			[[14017.8,15213.5,1.12092],52,"Up",[]],
			//[[14013.2,15214.9,1.06348],226,"Up",[]],
			[[14040.7,15205.8,0],173,"Middle",[]],
			[[14033.7,15200.3,0],82,"Middle",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;

		// Ruined Buildings Sentries
		[[
			[[14087.5,15138.5,0.351057],0,"Up",[]],
			//[[14096,15145.2,0.889367],0,"Up",[]],
			[[14097.5,15157.5,0.34046],0,"Up",[]],
			//[[14101.5,15178.5,0.946243],0,"Up",[]],
			[[14055.1,15166.2,1.00757],0,"Up",[]],
			[[14092.5,15185.5,0.53451],0,"Up",[]]
		],[],[]] call GW_Common_fnc_spawnGroup;

		// Trench Sentries.
		[[
			[[14192.7,15182.9,0.0558662],220,"Middle",[[301,0]],"mat"],
			//[[14196.1,15181,0.133732],194,"Up",[[301,0]],"lr"],
			[[14199,15179.5,0.0466995],189,"Up",[[301,0]],"mmg"],
			//[[14205.7,15176.6,2.04557],193,"Middle",[[301,0]],"mmg"],
			[[14210,15183.3,0.853703],110,"Middle",[[301,0]],"mat"],
			//[[14211.6,15187,-0.0788612],199,"Middle",[[301,0]],"lr"],
			[[14212,15188.4,0.309924],99,"Up",[[301,0]],"mmg"],
			//[[14207,15177.4,2.10798],118,"Middle",[[301,0]],"mmg"],
			[[14204.5,15178.7,2.08419],243,"Middle",[[301,0]],"mmg"]
		],[],[],east] call GW_Common_fnc_spawnGroup;
	
		// Strongpoint Sentries.
		[[
			[[14158.9,15232.7,1.33514e-05],200,"Up",[[301,0]],"mmg"],
			//[[14163.6,15225.3,1.33514e-05],174,"Up",[[301,0]],"mmg"],
			[[14171.2,15228.7,0],142,"Up",[[301,0]],"mat"],
			//[[14170.8,15232.2,0],109,"Up",[[301,0]],"mat"],
			[[14166.9,15238.5,1.90735e-06],23,"Up",[[301,0]],"mat"],
			[[14163.5,15234.9,0],59,"Middle",[[301,0]],"mat"],
			[[14167.2,15232.5,0],247,"Middle",[[301,0]],"mat"]
		],[
			["UK3CB_ADE_O_DSHkM_Mini_TriPod",[14160.2,15230.5,0],226,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_ADR_O_SPG9",[14165.5,15226.4,0],157,[["gunner",-1,[0]]],[[351,false]]]
		],[],east] call GW_Common_fnc_spawnGroup;

		// Artillery Nest
		null = [Mortar_1,east,"precise","light",["Up",50],150,1200,20,-1,-1] spawn OKS_fnc_Mortars;

		[[
			[[14049.4,15300.5,0.480527],133,"Up",[[301,0]],"mat"],
			[[14045.5,15298.1,0.915296],142,"Middle",[[301,0]],"mat"],
			[[14048.4,15299.2,0.740287],142,"Middle",[[301,0]],"mat"],
			[[14041.1,15304.5,0.0400877],74,"Middle",[[301,0]],"mat"],
			[[14049.3,15306.2,0],103,"Middle",[[301,0]],"mat"],
			[[14052.7,15304.4,0],59,"Middle",[[301,0]],"mat"],
			[[14057.1,15307.6,1.04402],58,"Middle",[[301,0]],"mat"],
			[[14057.7,15306.2,1.00201],80,"Middle",[[301,0]],"mat"],
			[[14038.8,15299.8,0.900122],252,"Middle",[[301,0]],"mat"],
			[[14030.6,15296.2,1.69578],230,"Middle",[[301,0]],"mat"],
			[[14029.9,15298,1.75719],267,"Middle",[[301,0]],"mat"]
		],[],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 3: {

		// Artillery Counter
		_Vehicles = ["UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_MTLB_BMP"];
		{
			[_X,NEKY_Hunt_Trigger_1,selectRandom _Vehicles,5,east,2000] spawn OKS_fnc_Mechanized_Spawn;
		} foreach [mech_1,mech_2,mech_3];

		[[],[["UK3CB_TKA_O_T34",[13852.4,16235,0],192,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]],["turret",-1,[1]]],[[6,["TKA",1]],[7,["Hull_Flag_Hide",1]],[351,false]]],["UK3CB_TKA_O_BMP1",[13868.6,16253,0],195,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]],[351,false]]],["UK3CB_TKA_O_BTR70",[13839.7,16250.3,0],180,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",0]],[351,false]]]],[[[14686,15266.7,0],[[0,"Move"],[1,"AWARE"],[4,"WEDGE"],[5,"NORMAL"]]],[[14906.1,14803.3,0],[[0,"Move"]]],[[14904,14453.3,0],[[0,"Move"]]],[[14976.4,14146,0],[[0,"Move"]]],[[15084.9,13916.9,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
	
		[[],[["UK3CB_TKA_O_Bell412_Armed_dynamicLoadout",[5171.63,15443.4,0],105,[["driver",-1,[]],["turret",-1,[0]],["turret",-1,[1]],["turret",-1,[2]],["commander",-1,[3]]],[[6,["TKA",1]],[7,["AddRocketLaunchers",0,"AddGuns",0,"AddCargohook",0,"AddCargoHook_cover",1,"AddFlareLauncher",0,"AddNoseradar",1,"AddWinch",0,"DoorL2_Hide",0,"DoorR2_Hide",0,"RotorCover_Hide",0]],[8,["","",""]],[351,false]]]],[[[14934.9,13469.4,9.53674e-07],[[0,"SAD"],[1,"COMBAT"],[2,"RED"],[5,"FULL"]]]],east] call GW_Common_fnc_spawnGroup;
	
	};

	case 4: {

		// Support Counter
		_Vehicles = ["UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_MTLB_BMP"];

		// Artillery Counter
		{
			[_X,NEKY_Hunt_Trigger_1,selectRandom _Vehicles,5,east,2000] spawn OKS_fnc_Mechanized_Spawn;
		} foreach [mech_4,mech_5,mech_6,mech_7];

		["BATTALION HQ","side","1st Platoon be advised, a large mechanized force is heading in from the north. 2 columns of mechanized infantry at least. Repel the incoming reinforcements, HQ out."] remoteExec ["OKS_fnc_Chat",0];
		[ConvoySpawn_1,ConvoyWP_1,ConvoyEnd_1,independent,[4,["UK3CB_CSAT_A_O_BMP1","UK3CB_CSAT_A_O_BMP1","UK3CB_CSAT_A_O_BRM1K","UK3CB_CSAT_A_O_BMP1"],35,30,100],[true,8],[],false,false,["attack"],"offroad"] spawn OKS_fnc_Convoy_Spawn; sleep 15;
		[ConvoySpawn_2,ConvoyWP_2,ConvoyEnd_2,independent,[4,["UK3CB_CSAT_A_O_BMP1","UK3CB_CSAT_A_O_BMP1","UK3CB_CSAT_A_O_BRM1K","UK3CB_CSAT_A_O_BMP1"],35,30,100],[true,8],[],false,false,["attack"],"offroad"] spawn OKS_fnc_Convoy_Spawn;
		[[],[["UK3CB_TKA_O_Bell412_Armed_dynamicLoadout",[1521.31,15812.1,0],105,[["driver",-1,[]],["turret",-1,[0]],["turret",-1,[1]],["turret",-1,[2]],["commander",-1,[3]]],[[6,["TKA",1]],[7,["AddRocketLaunchers",0,"AddGuns",0,"AddCargohook",0,"AddCargoHook_cover",1,"AddFlareLauncher",0,"AddNoseradar",1,"AddWinch",0,"DoorL2_Hide",0,"DoorR2_Hide",0,"RotorCover_Hide",0]],[8,["","",""]],[351,false]]],["UK3CB_TKA_O_Bell412_Armed_dynamicLoadout",[1503.11,15833.1,0],105,[["driver",-1,[]],["turret",-1,[0]],["turret",-1,[1]],["turret",-1,[2]],["commander",-1,[3]]],[[6,["TKA",1]],[7,["AddRocketLaunchers",0,"AddGuns",0,"AddCargohook",0,"AddCargoHook_cover",1,"AddFlareLauncher",0,"AddNoseradar",1,"AddWinch",0,"DoorL2_Hide",0,"DoorR2_Hide",0,"RotorCover_Hide",0]],[8,["","",""]],[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 5: {
		// First Ambush Counter.
		_Vehicles = [["UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_BMP1"], ["UK3CB_TKA_O_MTLB_BMP", "UK3CB_TKA_O_Hilux_Spg9",  "UK3CB_TKA_O_Hilux_Spg9"], ["UK3CB_TKA_O_UAZ_SPG9", "UK3CB_TKA_O_T34"]];
		[Spawn_4, Spawn_4, nil, 1,1,east,_Vehicles,1] spawn OKS_fnc_Huntbase;
	};

	case 6: {
		// Approach Counter.
		[[],[
			["UK3CB_TKA_O_BMP1",[16297.7,14444.6,0],192,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]],["turret",-1,[1]]],[[6,["TKA",1]],[7,["Hull_Flag_Hide",1]],[351,false]]],
			["UK3CB_TKA_O_BMP1",[16309.7,14459,0],195,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]],[351,false]]],
			["UK3CB_TKA_O_BMP1",[16289.5,14457.2,0],180,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",0]],[351,false]]]],[[[16228.6,14315.1,0],[[0,"Move"],[1,"AWARE"],[4,"WEDGE"],[5,"NORMAL"]]],[[16213.9,14138.2,-5.62668e-05],[[0,"Move"]]],[[16191.1,13781.3,3.62396e-05],[[0,"Move"]]],[[15889.6,13352.5,-1.33514e-05],[[0,"Move"]]],[[15577.6,13356.2,-3.33786e-06],[[0,"Move"]]],[[15422.9,13427.9,1.90735e-06],[[0,"Move"]]],[[15181.2,13447.9,-3.8147e-05],[[0,"Move"]]],[[14999.4,13366.2,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;	
	};

	case 7: {
		// Artillery Strike on Civilians
		["Task_4","FAILED"] call BIS_fnc_taskSetState;
		["BATTALION HQ","side","1st Platoon be advised, you have passed into the civilian area, making the village a target. Find and neutralize the mortars striking the village. HQ, out."] spawn OKS_fnc_ChatGlobal;
		
		[arty_5,[getPos target_1,getPos target_2,getPos target_3],east,4,2,true,true,90,false] spawn OKS_fnc_ArtySuppression; sleep 2;
		[arty_6,[getPos target_2,getPos target_3,getPos target_1],east,4,2,true,true,90,false] spawn OKS_fnc_ArtySuppression; sleep 2;
		[arty_7,[getPos target_3,getPos target_2,getPos target_1],east,4,2,true,true,90,false] spawn OKS_fnc_ArtySuppression;
		[[arty_5,arty_6,arty_7],"Stop Attack on Civilians","mortar pit","The Takistanis has set up a team of mortars to attack the nearby village because we entered the agreed neutralized zone. They believe we will stage our attack from here. Destroy the %1, there are %2 mortars in total.",nil,"Task_4",false] spawn OKS_fnc_Destroy_Task;
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};

