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

OKS_Difficulty = ["OKS_Difficulty", 1] call BIS_fnc_getParamValue;

params [
	"_case"
];

switch (_case) do {

	case 1: {

		// Trench 1
		[[[[13587.5,11372.4,0.00886488],215,"Middle",[]],[[13586.4,11372.9,-0.0126143],215,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13556.9,11384.1,0.264488],178,"Up",[]],[[13553.2,11383.5,0.0314612],178,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13566.8,11385.4,0.18837],178,"Up",[]],[[13564.4,11385.2,0.225573],178,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13559.6,11385.4,0.00124216],268,"Middle",[]],[[13585,11376.2,-0.00240755],168,"Middle",[]],[[13585.1,11388.9,-0.0253978],279,"Up",[]],[[13592.3,11384.1,0],191,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13608.1,11384.1,-0.11384],215,"Middle",[]],[[13613.8,11400.1,-0.00458336],200,"Middle",[]],[[13610.2,11390,-9.53674e-007],215,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13602.3,11396.2,-5.14984e-005],18,"Middle",[]],[[13604.7,11402.5,9.9659e-005],198,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Cache Trench Cross
		[[[[13480.1,11389.4,-0.000464439],91,"Up",[]],[[13478.5,11388.1,-2.19345e-005],120,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13472.1,11383.6,0.000466347],132,"Up",[]],[[13466.1,11389.3,0.0393524],160,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13473,11391.8,-4.95911e-005],67,"Up",[]],[[13473.3,11395.5,-0.00026989],57,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Artillery Nest
		[east,mortar_1,getPos TargetObject,7,300,180] spawn OKS_fnc_ArtyFire; sleep 2;
		[east,mortar_2,getPos TargetObject,7,300,180] spawn OKS_fnc_ArtyFire;

		// Artillery Trench 2
		[[[[13826.2,11713.3,0],274,"Middle",[]],[[13826,11714.8,-0.000366688],248,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13826.7,11692.2,0.131382],240,"Up",[]],[[13827.2,11694.6,0.224127],266,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13827.5,11709.2,0],0,"Up",[]],[[13836.5,11710.1,4.76837e-007],82,"Middle",[]],[[13831.3,11695.4,0.191381],44,"Middle",[]],[[13831.6,11692.9,0.147425],209,"Middle",[]],[[13837.1,11701.4,0.000287533],12,"Middle",[]],[[13841.8,11719,0],359,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13832.6,11680.9,-4.76837e-007],261,"Up",[]],[[13833,11677.1,8.58307e-006],90,"Middle",[]],[[13839.6,11675.4,0.2531],197,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13850.7,11668.9,-8.96454e-005],14,"Middle",[]],[[13852.3,11661,0],337,"Middle",[]],[[13847.2,11659.7,0],204,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13873.6,11669.3,0.264011],280,"Middle",[]],[[13866.7,11675.2,4.76837e-006],195,"Up",[]],[[13869.2,11685.1,0.490157],353,"Middle",[]],[[13865.2,11683.1,0],173,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;


		// Supply Convoy 3
		[[[[13487.5,12139.5,0],151,"Middle",[]],[[13500,12141.7,0],137,"Middle",[]],[[13518.4,12140.9,0],168,"Middle",[]],[[13527,12148.5,0],137,"Middle",[]],[[13514.2,12154.2,0],137,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13476.9,12205,-7.62939e-006],155,"Middle",[]],[[13480.2,12219,0],190,"Middle",[]],[[13467,12189.6,0],179,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13468.2,12177.2,0],118,"Middle",[]],[[13462.2,12162,0],191,"Middle",[]],[[13464.9,12154.7,0],99,"Middle",[]],[[13463.1,12146.6,0],119,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13413.9,12180.8,0],117,"Middle",[]],[[13410.2,12177.5,0],117,"Middle",[]],[[13399.7,12159.6,0],117,"Middle",[]],[[13410.6,12169,0],117,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;	

		private _Vehicles = [];
		// Mechanized Spawn or Moto Spawn
		if(OKS_Difficulty isEqualTo 1) then {

			_Vehicles = [
				"rhs_tigr_msv", 
				"rhs_bmp1_msv", 
				"RHS_UAZ_MSV_01", 
				"rhs_btr60_msv", 
				"rhs_bmp2_msv", 
				"rhs_Ob_681_2", 
				"rhs_bmp3_msv", 
				"rhsgref_BRDM2_msv", 
				"rhs_gaz66_msv", 
				"rhs_kamaz5350_msv", 
				"rhs_kamaz5350_open_msv", 
				"RHS_Ural_MSV_01", 
				"RHS_Ural_Open_MSV_01", 
				"rhs_t80"
			];

			// Trench 1
			[[],[["rhs_bmp1_msv",[13570.7,11371.5,4.76837e-007],202,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[13616.9,11501.4,0],203,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_ADR_O_SPG9",[13543,11402.4,9.53674e-007],130,[["gunner",-1,[0]]],[]],["UK3CB_ADR_O_SPG9",[13625.7,11412.7,0],221,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		
			// Trench Arty 2
			[[],[["UK3CB_AAF_O_DSHKM",[13833.5,11686.4,0],191,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_SPG9",[13831.6,11726.9,0],258,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_SPG9",[13825.3,11797.6,0],163,[["gunner",-1,[0]]],[]],["rhs_bmp1_msv",[13794,11725.8,-5.24521e-006],223,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp2e_msv",[13908.7,11859.3,0],213,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		
			// Supply Convoy
			[[],[["rhs_bmp1_msv",[13464,12100.3,-3.8147e-006],111,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_ADA_O_SPG9",[13521.1,12143.4,6.10352e-005],137,[["gunner",-1,[0]]],[]],["UK3CB_ADA_O_SPG9",[13411.9,12109.6,6.10352e-005],68,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		} else {

			_Vehicles = [
				"rhs_tigr_msv", 
				"rhs_bmp1_msv", 
				"RHS_UAZ_MSV_01", 
				"rhs_btr60_msv", 
				"rhsgref_BRDM2_msv", 
				"rhs_gaz66_msv", 
				"rhs_kamaz5350_msv", 
				"rhs_kamaz5350_open_msv", 
				"RHS_Ural_MSV_01", 
				"RHS_Ural_Open_MSV_01"
			];

			// Trench 1
			[[],[["rhsgref_BRDM2_HQ_msv",[13570.7,11371.5,0],202,[["driver",-1,[]],["commander",-1,[0]]],[[6,["olive",1]]]],["rhsgref_BRDM2_HQ_msv",[13616.9,11501.4,0],203,[["driver",-1,[]],["commander",-1,[0]]],[[6,["olive",1]]]],["UK3CB_ADR_O_PKM_Low",[13543,11402.4,9.53674e-007],130,[["gunner",-1,[0]]],[]],["UK3CB_ADR_O_PKM_Low",[13625.7,11412.7,0],221,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		
			// Trench 2
			[[],[["UK3CB_CW_SOV_O_LATE_BRDM2_HQ",[13794,11725.8,0],223,[["driver",-1,[]],["commander",-1,[0]]],[[6,["SOV",1]]]],["UK3CB_AAF_O_DSHKM",[13833.5,11686.4,0],191,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_Low",[13831.6,11726.9,0],258,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_Low",[13825.3,11797.6,0],163,[["gunner",-1,[0]]],[]],["UK3CB_CW_SOV_O_LATE_UAZ_MG",[13908.7,11859.3,0],213,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV2",1]],[7,["light_hide",0,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		
			// Supply Convoy
			[[],[["rhsgref_BRDM2_HQ_vdv",[13464,12100.3,0],111,[["driver",-1,[]],["commander",-1,[0]]],[[6,["olive",1]]]],["UK3CB_ADA_O_DSHkM_Mini_TriPod",[13411.9,12109.6,0],68,[["gunner",-1,[0]]],[]],["UK3CB_ADA_O_PKM_Low",[13521.1,12143.4,0],137,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		};


		[Spawn_1, Spawn_1, HuntTrigger_1, 6,400+(random 300),east,_Vehicles,120+(120)] spawn OKS_fnc_HuntBase; sleep 10;
		[Spawn_2, Spawn_2, HuntTrigger_1, 6,400+(random 300),east,_Vehicles,120+(120)] spawn OKS_fnc_HuntBase; sleep 10;
		[Spawn_3, Spawn_3, HuntTrigger_1, 6,400+(random 300),east,_Vehicles,120+(120)] spawn OKS_fnc_HuntBase; sleep 10;
		[Spawn_4, Spawn_4, HuntTrigger_1, 6,400+(random 300),east,_Vehicles,120+(120)] spawn OKS_fnc_HuntBase; sleep 10;
		[Spawn_5, Spawn_5, HuntTrigger_1, 6,400+(random 300),east,_Vehicles,120+(120)] spawn OKS_fnc_HuntBase; sleep 10;
		[Spawn_6, Spawn_6, HuntTrigger_1, 6,400+(random 300),east,_Vehicles,120+(120)] spawn OKS_fnc_HuntBase;

	};

	case 2: {

		// Trench 1 Counter-Attack
		[[[13410.8,11656.2,0],[13685.4,11588.9,0],[13749.9,11465.9,0]],10,1,10,"rush",east,1500,"trench1counter"] spawn OKS_fnc_Lambs_Wavespawn;
	
	};

	case 3: {

		// Ambush
		[[[12958.4,11330,0],[12774.4,11556,0],[12753,11742.6,0],[13057,11844.4,0]],4,1,10,"rush",east,1500,"ambushcounter"] spawn OKS_fnc_Lambs_Wavespawn;
		
		if(OKS_Difficulty isEqualTo 1) then {
			[[],[["rhs_bmp1_msv",[11981.6,12025.7,-2.28882e-005],126,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[12326.7,11823,3.05176e-005],[[0,"Move"]]],[[12640.1,11740.1,0],[[0,"Move"]]],[[12840.1,11612.8,3.8147e-006],[[0,"Move"]]],[[12982,11555.4,3.05176e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		} else {
			[[],[["UK3CB_CW_SOV_O_LATE_BRDM2_HQ",[11981.6,12025.7,-2.28882e-005],126,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[12326.7,11823,3.05176e-005],[[0,"Move"]]],[[12640.1,11740.1,0],[[0,"Move"]]],[[12840.1,11612.8,3.8147e-006],[[0,"Move"]]],[[12982,11555.4,3.05176e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		};

		// Trench Past Ambush
		[[[[12374.3,11928.4,2.28882e-005],128,"Middle",[]],[[12373.2,11927.1,7.62939e-006],128,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12339.9,11911.5,-7.62939e-006],143,"Up",[]],[[12343.4,11915.1,0],128,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12357,11930.7,0.124573],128,"Up",[]],[[12347.1,11921.1,7.62939e-006],221,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12367.9,11941.8,0.0214462],229,"Middle",[]],[[12374.5,11931.5,1.52588e-005],170,"Up",[]],[[12336.7,11912.5,0],290,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		if(OKS_Difficulty isEqualTo 1) then {
			[[],[["rhs_bmp1_msv",[12166.6,11883.9,0],111,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ADG_O_SPG9",[12333.7,11920.1,0],217,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_SPG9",[12374.2,11939.4,0],143,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		} else {
			[[],[["UK3CB_ADG_O_PKM_High",[12374.3,11938.5,0],143,[["gunner",-1,[0]]],[]],["UK3CB_ADG_O_PKM_Low",[12333.7,11920.1,0],217,[["gunner",-1,[0]]],[]],["UK3CB_CW_SOV_O_LATE_UAZ_MG",[12166.6,11883.9,0],111,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV2",1]],[7,["light_hide",0,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		};

	};

	case 4: {
		// Trench 2 Counter
		[[[14015.2,11961.9,0],[13845.5,11959.3,0],[13635.7,11920.8,0]],7,1,10,"rush",east,1500,"trench2counter"] spawn OKS_fnc_Lambs_Wavespawn;
	
		if(OKS_Difficulty isEqualTo 1) then {
			[[],[["rhs_btr80a_vdv",[14154.8,12205.8,2.40803e-005],200,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[[[14059.5,11943.9,0],[[0,"Move"]]],[[13949.1,11835.4,-8.34465e-006],[[0,"Move"]]],[[13892,11793.4,-0.000176191],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		} else {
			[[],[["rhs_btr80_vdv",[14154.8,12205.8,2.40803e-005],200,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[[[14059.5,11943.9,0],[[0,"Move"]]],[[13949.1,11835.4,-8.34465e-006],[[0,"Move"]]],[[13892,11793.4,-0.000176191],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		};
	};

	case 5: {
		// Evac Counter
		[[[14015.2,11961.9,0],[13845.5,11959.3,0],[13635.7,11920.8,0]],5,1,10,"rush",east,1500,"evaccounter"] spawn OKS_fnc_Lambs_Wavespawn;
	};

	case 6: {
		// Convoy Counter
		[[[13422.4,12457.4,0],[13330.6,12317.6,0],[13298.1,12230.4,0]],5,1,10,"rush",east,1500,"convoycounter"] spawn OKS_fnc_Lambs_Wavespawn;
		
		if(OKS_Difficulty isEqualTo 1) then {
			[[],[["rhs_btr80a_vdv",[13408.3,12820.4,0],116,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[[[13632,12576,0],[[0,"Move"]]],[[13587.1,12382,-3.05176e-005],[[0,"Move"]]],[[13495.9,12264.2,1.52588e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		} else {
			[[],[["rhs_btr80_vmf",[13408.3,12820.4,0],116,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[[[13632,12576,0],[[0,"Move"]]],[[13587.1,12382,-3.05176e-005],[[0,"Move"]]],[[13495.9,12264.2,1.52588e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		};			
	};

	case 7:{

		// Roadblock
		[[[[11747.6,12142.4,0.0842743],58,"Up",[]],[[11766.3,12159.3,0.611755],130,"Up",[]],[[11775.3,12164.9,0.319504],150,"Up",[]],[[11757.5,12167.8,0],260,"Up",[]],[[11758.4,12194.1,0],221,"Up",[]],[[11763.3,12194.1,0.586655],221,"Up",[]],[[11736.3,12160.6,0.278488],221,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Fuel Supply
		[[[[11567.8,12420.9,0.0658112],191,"Up",[]],[[11566.5,12423.7,0.0623016],191,"Up",[]],[[11570.1,12428.2,0.352127],191,"Up",[]],[[11574.9,12419.9,0.368057],191,"Up",[]],[[11595.3,12411.3,0.537018],154,"Up",[]],[[11599.2,12415.1,0.742096],122,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[11597.3,12379,0],82,"Up",[]],[[11594.6,12389.6,2.12814],255,"Up",[]],[[11600.8,12391.5,2.24602],79,"Up",[]],[[11623.2,12387.1,0],6,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Airfield
		[[[[11903.2,12536.9,9.06601],190,"Up",[]],[[11901.7,12539.6,12.9458],189,"Up",[]],[[11900.2,12485.1,4.66551],239,"Up",[]],[[11876.7,12473,0],161,"Up",[]],[[11871.3,12472.2,0],185,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[11891.5,12442,0.382309],297,"Up",[]],[[11886,12424.5,0.235229],296,"Up",[]],[[11887.9,12418.4,0.263031],115,"Up",[]],[[11881.4,12418.4,3.41409],325,"Up",[]],[[11879.2,12419.1,7.02802],210,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[11885.8,12415.9,6.72749],187,"Up",[]],[[11887.2,12416,3.33669],161,"Up",[]],[[11856.4,12426.5,0],190,"Up",[]],[[11853.5,12432.8,2.43457],24,"Up",[]],[[11857,12438,0.132858],270,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[11846.5,12430.4,0.0725708],177,"Up",[]],[[11850.8,12428.3,0.0870361],24,"Up",[]],[[11865.4,12407.6,0.308044],290,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Hangar
		[[[[11994.5,12484.1,3.32651],120,"Up",[]],[[11988.9,12463.6,0.516602],290,"Up",[]],[[12020,12483.1,0.112076],120,"Up",[]],[[12026.5,12447.9,0.474411],120,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12058,12443,0.177017],1,"Up",[]],[[12050.3,12444,3.29773],319,"Up",[]],[[12052.3,12445,0.165115],336,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12068.6,12461.1,3.31192],276,"Up",[]],[[12024.8,12451.5,3.22314],120,"Up",[]],[[12117.6,12659.4,7.48004],231,"Up",[]],[[12124.1,12656.2,7.48001],218,"Up",[]],[[12133.2,12652.8,7.48001],200,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12206.6,12647.6,0],230,"Up",[]],[[12195.9,12653.4,0],230,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		if(OKS_Difficulty isEqualTo 1) then {
			// Roadblock
			[[],[["UK3CB_CW_SOV_O_Late_PKM_nest",[11737.3,12190.8,1.52588e-005],160,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_AAF_O_SPG9",[11731.9,12192.3,3.05176e-005],152,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		
			// Fuel Supply
			[[],[["rhs_bmp1_msv",[11545.9,12412.8,0],186,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[11493,12614.7,0],155,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		
			// Airfield
			[[],[["rhs_bmp1d_msv",[12187.5,12615,0],266,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp2e_msv",[11911,12537,1.52588e-005],204,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

			// Statics Airfield
			[[],[["UK3CB_ADM_O_SPG9",[11803,12572.1,0],224,[["gunner",-1,[0]]],[]],["UK3CB_ADM_O_SPG9",[11869,12473.3,0],185,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		} else {
			// Roadblock
			[[],[["UK3CB_CW_SOV_O_Late_PKM_nest",[11737.3,12190.8,1.52588e-005],160,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_AAF_O_NSV",[11731.9,12192.3,0],152,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		
			// Fuel Supply
			[[],[["UK3CB_CW_SOV_O_LATE_UAZ_MG",[11545.9,12412.8,0],186,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV2",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_CW_SOV_O_LATE_UAZ_MG",[11493,12614.7,0],155,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV2",1]],[7,["light_hide",0,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;		
		
			// Airfield
			[[],[["rhsgref_BRDM2_msv",[12187.5,12615,0],266,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["olive",1]]]],["rhsgref_BRDM2_msv",[11911,12537,1.52588e-005],204,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["olive",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		
			// Statics Airfield
			[[],[["UK3CB_ADM_O_PKM_Low",[11803,12572.1,0],224,[["gunner",-1,[0]]],[]],["UK3CB_ADM_O_PKM_Low",[11869,12473.3,0],185,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		};


	};

	case 8: {

		// Evac 2 Counter
		[[[12022.9,13063.1,0],[12433.7,12979.2,0],[12685.6,12529.9,0],[12635.3,12835.9,0]],2,1,10,"rush",east,1500,"evaccounter2"] spawn OKS_fnc_Lambs_Wavespawn;

		if(OKS_Difficulty isEqualTo 1) then {
			// Vehicle Attack
			[[],[["rhs_bmp2e_tv",[12591.4,12900.1,0],263,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0]]]]],[[[12503.8,12887.7,3.05176e-005],[[0,"Move"]]],[[12473.8,12854,-3.05176e-005],[[0,"Move"]]],[[12397.5,12802.9,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup; sleep 60;
			[[],[["rhs_bmp1_vv",[12262.1,13189.7,0],140,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[[[12298.4,13073.9,0],[[0,"Move"]]],[[12231,12942,0],[[0,"Move"]]],[[12194.7,12772.3,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		} else {
			// Vehicle Attack
			[[],[["rhsgref_BRDM2_HQ_msv",[12591.4,12900.1,0],263,[["driver",-1,[]],["commander",-1,[0]]],[[6,["olive",1]]]]],[[[12503.8,12887.7,3.05176e-005],[[0,"Move"]]],[[12473.8,12854,-3.05176e-005],[[0,"Move"]]],[[12397.5,12802.9,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup; sleep 60;
			[[],[["rhsgref_BRDM2_HQ_msv",[12262.1,13189.7,7.62939e-006],140,[["driver",-1,[]],["commander",-1,[0]]],[[6,["olive",1]]]]],[[[12298.4,13073.9,0],[[0,"Move"]]],[[12231,12942,0],[[0,"Move"]]],[[12194.7,12772.3,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		};
	
	};

	case 9: {

		// Friendly Evacuation
		[[[[13941.9,13330.5,1.90735e-006],0,[]],[[13946.9,13325.5,0],0,[]],[[13936.9,13325.5,0],0,[]],[[13951.9,13320.5,0],0,[]]],[],[[[14015.6,13264.9,0.000135422],[[0,"Move"]]],[[14037,13206.5,5.05447e-005],[[0,"Move"]]],[[13923.3,13279.2,0],[[0,"Move"]]],[[13938.6,13317.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[13920,13096.3,0],0,[]],[[13925,13091.3,0],0,[]],[[13915,13091.3,0],0,[]],[[13930,13086.3,0],0,[]]],[],[[[14030.8,13088.6,0],[[0,"Move"]]],[[14039.7,13165.7,0],[[0,"Move"]]],[[13934.7,13187.4,0],[[0,"Move"]]],[[13916.8,13083.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[14052.4,13204.8,0],0,[]],[[14057.4,13199.8,9.53674e-007],0,[]],[[14047.4,13199.8,0],0,[]],[[14062.4,13194.8,9.53674e-007],0,[]]],[],[[[14107.2,13154.9,0],[[0,"Move"]]],[[14172.3,13055.9,0.0698218],[[0,"Move"]]],[[14068.1,13128.9,0],[[0,"Move"]]],[[14049.1,13191.9,0.207067],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[13828.4,13246.2,0.156628],0,[]],[[13833.4,13241.2,0],0,[]],[[13823.4,13241.2,0],0,[]],[[13838.4,13236.2,0],0,[]]],[],[[[13904.9,13202.9,0],[[0,"Move"]]],[[13863.5,13134.1,0],[[0,"Move"]]],[[13806.7,13193.4,1.90735e-006],[[0,"Move"]]],[[13825.2,13233.3,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Statics
		[[[[13942.1,13285.3,4.43882],164,"Up",[]],[[13944.3,13286.6,4.44231],134,"Up",[]],[[13939.2,13285.6,4.42504],175,"Up",[]],[[13939.2,13285.7,0.4398],176,"Up",[]],[[13945.8,13289.3,0.52212],161,"Up",[]],[[13914.3,13254.1,15.778],152,"Middle",[]],[[13915.7,13256.5,15.7775],119,"Middle",[]],[[13916,13183.5,4.37531],65,"Up",[]],[[13912.1,13186.2,4.39002],54,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13990.1,13136.3,0.718805],32,"Up",[]],[[13960.3,13150.9,0],32,"Up",[]],[[13984.2,13169.9,2.6496],150,"Up",[]],[[13986.3,13172.4,2.8171],116,"Up",[]],[[13988.5,13185.9,4.45236],150,"Up",[]],[[14003.2,13170.8,4.90614],292,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13981.6,13259.8,5.54834],193,"Up",[]],[[13980.2,13260.7,5.46637],193,"Up",[]],[[13988.2,13248.3,0.146669],213,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13965.5,13203.6,1.76534],285,"Up",[]],[[13971.5,13213.5,1.9379],282,"Up",[]],[[13958.9,13196.8,0],148,"Up",[]],[[13946.2,13201.8,1.90735e-006],295,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13972.9,13199.1,2.60784],335,"Up",[]],[[13976.8,13205.1,2.58858],260,"Up",[]],[[13984.2,13205.5,2.58858],234,"Up",[]],[[13976,13192.2,2.84176],24,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[13981.5,13189.4,3.07726],337,"Up",[]],[[13991,13194.3,5.27964],289,"Up",[]],[[13987.9,13189.3,4.84729],304,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[14179.8,13071.4,9.53126],186,"Up",[]],[[14176.5,13071.8,9.51305],186,"Up",[]],[[14094,13127.9,14.0616],164,"Up",[]],[[14086.3,13124,13.9995],233,"Up",[]],[[14070.6,13161.7,13.9649],256,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Vehicles
		if(OKS_Difficulty isEqualTo 1) then {
			[[],[["UK3CB_CW_SOV_O_LATE_UAZ_SPG9",[13911.6,13139.4,4.19617e-005],32,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV2",1]],[7,["light_hide",0,"spare_hide",0]]]],["rhs_bmp1_msv",[14019.2,13138.7,0],121,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_msv",[13871.2,13219.4,7.43866e-005],119,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["rhs_t80b",[13949.5,13269.6,1.90735e-006],130,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[7,["kshield_unhide",1,"kdeck_unhide",1,"sideskirt_unhide",0,"fbskirt_unhide",1,"ftskirt_unhide",1,"log_unhide",0,"snorkel_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		} else {
			[[],[["UK3CB_CW_SOV_O_LATE_BTR40_MG",[13911.6,13139.4,4.19617e-005],32,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV2",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_CW_SOV_O_LATE_UAZ_MG",[14019.2,13138.7,0],121,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_CW_SOV_O_LATE_UAZ_MG",[13871.2,13219.4,7.43866e-005],119,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["rhs_btr60_msv",[13949.5,13269.6,1.90735e-006],130,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[7,["kshield_unhide",1,"kdeck_unhide",1,"sideskirt_unhide",0,"fbskirt_unhide",1,"ftskirt_unhide",1,"log_unhide",0,"snorkel_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		};
	};

	case 10:{
		// Friendly Evac Counter-Attack
		[[getPos evac_1,getPos evac_2,getPos evac_3,getPos evac_4],3,4,180,"rush",east,1500,"evacCounter"] spawn OKS_fnc_Lambs_Wavespawn;
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};


/*
	GOL SCRIPT EXAMPLES

	=======================================

	OKS_fnc_Createobjectives - Creates an objective based on OKS_fnc_Dynamic settings with task creation/completion.

	[Object_1,"sector",300,EAST,false,false,false] spawn OKS_fnc_CreateObjectives;

	Params: Position, Type, Range, Side, Patrols?, PlaceObjects?, OverrideTaskNotification?

	Types Available:
	sector (Clear an area)
	neutralize (Clear a building)
	cache (destroy weapons cache)
	motorpool (destroy supply vehicle)
	ammotruck (destroy a patrolling supply vehicle)
	radiotower (destroy a radiotower - decreases hunt response/respawn delay)
	hvttruck (destroy a patrolling vehicle with an HVT)
	artillery (destroy an active artillery piece)
	antiair (destroy an active anti-air position)
	hostage (secure a building with hostiles & two hostages)

    =======================================

	GW_Ambient_AAA

	Setup a scripted AAA that fires randomly into the air until it finds a target and locks on. It has less accuracy than standard AAA positions for balance.

	Code:
	[aaa_1,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;

	Params:
	AAA Object, side of crew, Is an HMG, Range of AAA, Should be assisted by nearby radar

    =======================================

	OKS_fnc_ArtyFire

	Setup an artillery to fire into the sky until destroyed. Take note that it is supposed to delete the rounds from landing to save performance.
	This might fail, so make sure the target is not near friendly positions or bases.

	Code:
	[east,arty_1,getpos ArtyTarget_1,7,300,180,false] spawn OKS_fnc_ArtyFire;

	Params:
	Side of Crew, Artillery Object, Artillery Target, Rounds per Salvo, Rearm Delay, Reload Delay, Should give full crew.

    =======================================

	OKS_fnc_ArtySupression

	Setup an active artillery barrage on specified targets until destroyed.

	Code:
	[livearty_1,[getPos ArtySuppress_1,getPos ArtySuppress_2,getPos ArtySuppress_3],east,1,1,true,true,300,true] spawn OKS_fnc_ArtySupression;

	Params:
	Artillery Object, Array with Target positions, Side of Crew, Rounds per target, Delay per target, Unlimited Ammo, Should Loop until Destroyed, Delay per Salvo, Mark with Red Smoke on Target.

	=======================================

	OKS_fnc_Destroy_Task

	Setup a destroy/kill objective on a target.

	Code:
	[officer_1,"Kill the Officer","Enemy Officer","You need to kill this %1 because it needs to happen","kill",nil,true,true] spawn OKS_fnc_Destroy_Task;

	Params:
	Target Object, Task Title, Target Type, Task Description, Task Icon, Task Parent, Should Mark Position on Map, Should Show Popup when created/completed

	=======================================

	OKS_fnc_Evacuate_HVT

	Setup a HVT Capture Objective. The last variable sets true/false if they target should be set to captive (tied hands). False for enemy officers, true for friendly captives.

	Code:
	[Group HVT_1,getMarkerPos "respawn_west",west,false,nil,true] spawn OKS_fnc_Evacuate_HVT;

	Params:
	Group of HVT, Exfil Position (Either pickup (Extract On) or dropoff (Extract off)), Side of Extract Helicopter, Should Send AI Helicopter Evac, Parent Task, Is Captive

	=======================================

	OKS_fnc_Destroy_Barricade

	Setup Barricade Objective. Objective to destroy objects lined up as a blockade on a road. Make sure the object is destructible by testing it.

	Code:
	[[barricade_1,barricade_2]] spawn OKS_fnc_Destroy_Barricade;

	Params:
	Array with Barricade Objects

	=======================================

	OKS_fnc_Convoy_Spawn

	Spawn a convoy that moves until engaged, they will dismount, armed vehicles will hunt and dismounts will rush.

	Code:
	[spawn_1,waypoint_1,end_1,west,[4,["rhs_btr60_msv"], 6, 25],[true,6],[], false, false] spawn OKS_fnc_Convoy_Spawn;

	Params:
	Spawn Position, First Waypoint, End Waypoint (Scattered formation), Side of Convoy, Convoy Array [](Number, [TypeArray]), Speed meters/second, dispersion]
	Dismount Array (Should have dismount, how many), ConvoyArray to populate variable, forced careless (ignore everything), delete on arrival.

	=======================================

	OKS_fnc_Lambs_SpawnGroup

	Spawns a team that either creep/rush/hunt based on LAMBS. Used for quick and intense counter-attacks by enemy infantry.

	Code:
	[SpawnPos,"rush",UnitsPerBase,Side,Range,[]] spawn OKS_fnc_Lambs_SpawnGroup;

	Params:
	Position, Type of Waypoint (rush,creep,hunt), Units to spawn, Side of units, Range of waypoint (around the spawn), unit array that gets populated with the units.


	=======================================

	OKS_fnc_Defuse_Explosive

	Creates a defuse explosive objective with 600 (10 minutes) seconds to complete on the "SatchelCharge" object with the name bomb_1.
	This can be replaced with a position to create an explosive on the position using getPos bomb_1.

	Code:
	[bomb_1,600] spawn OKS_fnc_Defuse_Explosive;

	Params:
	[bomb_1,600,bombtarget_1,"BombDetonated","BombDefused"] spawn OKS_fnc_Defuse_Explosive;
	Bomb Object or Position, Time Delay (Seconds), Target Object (Destroyed upon detonation), VariableName to set to true if failed, VariableName to set to true if succeeded.

	=======================================

	OKS_fnc_PowerGenerator

	Sets up a generator to be disabled by action to turn off light sources in the area around it. 

	Code:
	[Generator_1,true,true,1000] spawn OKS_fnc_PowerGenerator;

	Params:
	Generator Object, Should Add Action to disable, Turn Off Lights when disabled, Range of disabled lights from Generator
	
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   Dynamic Script Params
		   0 - Trigger Name (Object)
		   1 - Disabled - Keep False
		   2 - Number of Infantry - [Static Integer,Patrol Integer,CreateSectorObjective?,LocalPatrols?] (Array) -
		   3 - Wheeled Patrols (Integer/Number)
		   4 - APC Patrols (Integer/Number)
		   5 - Tank Patrols (Integer/Number)
		   6 - Roadblocks [RoadBlocksCount,OnlyOnTarmac,LocalPatrols?,NumberChanceForVehicle(0-1)] (Array)
		   7 - Mortar Pits [MortarCount,LocalPatrols?] (Array)
		   8 - Random Objectives [ObjectiveCount,LocalPatrols?] (Array)
		   9 - Hunt Array Bases [Infantry,Wheeled,APC,Tank,Helicopter]
		   10 - Dynamic Civilians on? (Boolean)

			Local Patrols - This means that the strongpoints / roadblocks / mortar pits / objectives have their own local patrols near their position.
			If you use it on Parameter 2, 30% of the static contacts will be turned into patrols.

		   Note:
		   The Dynamic Scripts does work on its own however is very limited in selecting positions for strongpoints.
		   You as an editor can assist the dynamic script by placing down locations for pinpointing different positions.
		   In Eden-Editor "Location"s can be found in Systems (F5) and Game Logics > Locations.

		   Area, Base, City, Evac Point, Resupply Point & Town -> Spawns Strongpoints & Sector Tasks (Selects Random Buildings in Area. Generally more contacts per building)
		   Outpost -> Spawns Compounds & Sector Tasks (Selects all buildings in range of compoundSize (Settings) and spawns even-spread over all buildings)
		   FOB -> Spawns Roadblocks, use the direction of the logic to define the direction of the roadblock.
		   Respawn Point -> If you use HuntBases these locations will be picked, use the direction of the logic to choose the spawn direction 15-25m away from logic.
		   Camp -> Static Objective positions, once again direction of logic defines direction of Objective compositions.
		   Village -> Defines village area for the Dynamic Civilian presence, radius is found in Settings.sqf

		   All Locations are not required, the script will find its own locations, however for the best experience and best result, help the dynamic script by placing these logics.

		   Example:
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_CreateZone")};

			//// START OF ZONE /////
			[	Trigger_1,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					8,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
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
			] spawn OKS_fnc_CreateZone;
			//// END OF ZONE ////

		};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   	HuntBase Params

		   	0 - Base Object (Object)
		   	1 - Spawn Object (Object)
		   	2 - Hunt Trigger (Trigger)
		   	3 - Wave Count (Integer/Number)
		   	4 - Respawn Delay in Seconds (Integer/Number)
		   	5 - Enemy Side (Side)
		   	6 - Unit Selection - (Integer/String/Array with Strings)
		   	7 - Refresh Rate in Seconds (Integer/Number)

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,east,6,30] spawn OKS_fnc_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,east,"O_APC_Tracked_02_cannon_F",30] spawn OKS_fnc_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,east,"O_APC_Tracked_02_cannon_F","O_Truck_03_transport_F"],30] OKS_fnc_HuntBase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_HuntBase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn OKS_fnc_HuntBase;
		};

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   AirBase Params

		   0 - Base Object (Object)
		   1 - Spawn Object (Object)
		   2 - Hunt Trigger (Trigger)
		   3 - Enemy Side (Side)
		   4 - Classname of Helicopter (String)
		   5 - Type of Insert (Unload ONLY) (String)
		   6 - Cargo Split - [How many teams,Procent of Cargo] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};

