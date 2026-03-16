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
		_Vehicles = ["UK3CB_ARD_O_MTLB_BMP", "UK3CB_ARD_O_MTLB_Cannon", "UK3CB_ARD_O_BMP1", "UK3CB_ARD_O_BMP2", "UK3CB_ARD_O_BRM1K", "UK3CB_ARD_O_BTR80a", "UK3CB_ARD_O_GAZ_Vodnik_Cannon", "UK3CB_ARD_O_BRDM2_UM", "UK3CB_ARD_O_BRDM2"];
		[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,900,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;
		[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,900,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;
		[Base_3, Spawn_3, NEKY_Hunt_Trigger_1, 5,900,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;

	
		// Block 8
		[[],[["UK3CB_ARD_O_MTLB_Cannon",[11985.8,14718.6,0.0301208],227,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]],["UK3CB_ARD_O_MTLB_BMP",[11980.1,14725.4,-0.123711],256,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		/// Static Vehicles
		[[],[["UK3CB_ADM_O_Pickup_SPG9",[10818.3,14719.9,1.00211334],159,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],["UK3CB_ARD_O_UAZ_SPG9",[10706.7,14797.2,0.0062561],141,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_ARD_O_BMP2",[10699,14791.4,0.0116577],139,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0]]]],["UK3CB_ADM_O_Pickup_SPG9",[11172.2,14937.3,0],198,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		/// Block 7
		[[],[["UK3CB_ARD_O_MTLB_Cannon",[10672.1,14129.4,0.00202942],164,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]],["UK3CB_ARD_O_MTLB_BMP",[10642.5,14124.6,0.00337982],193,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		// Static Vehicle Airfield
		[[],[["UK3CB_ARD_B_BMP1",[11217.8,11611.9,0],270,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_ARD_B_BMP1",[11612.5,11855.6,-0.000249863],224,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["UK3CB_ARD_B_BMP1",[11655.7,11765.4,1.90735e-006],229,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		// Block 2
		[[],[["UK3CB_ARD_O_Ural_Zu23",[9848.95,12279.3,1.0136509],258,[["driver",-1,[]],["gunner",-1,[0]],["cargo",2,[1]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]],["UK3CB_ARD_O_MTLB_BMP",[10339.8,12840.1,0.0414543],181,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]],["UK3CB_ARD_O_MTLB_Cannon",[10352,12846.2,0.0044899],153,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		// Static Vehicles Therisa
		[[],[["UK3CB_ARD_O_MTLB_BMP",[10653.2,12283.5,1.00082016],121,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]],["UK3CB_ARD_O_MTLB_BMP",[10564.6,12333.3,0],220,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]],["UK3CB_ARD_O_MTLB_BMP",[10732.4,12231.4,-5.72205e-006],127,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		// Fields
		[[],[["UK3CB_ARD_B_BMP1",[11468.7,12565.5,1.00028038],38,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[[[12306.9,12491,0],[[0,"Move"],[1,"SAFE"]]],[[11913.3,13085.7,0],[[0,"Move"]]],[[11460.5,13388.1,0],[[0,"Move"]]],[[11365.6,13079.8,0],[[0,"Move"]]],[[11463.6,12557.3,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Pier Fields Vehicles
		[[],[["UK3CB_ARD_O_BMP2K",[11813.7,12628.4,0],228,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]]]],["UK3CB_ARD_O_BMP1",[12375.3,13198.8,-7.43866e-005],234,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ARD_O_BMP1",[12753.2,13100.8,-7.34329e-005],229,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["UK3CB_ARD_O_BMP2",[13175.7,13309,-8.58307e-005],272,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1]]]],["UK3CB_ARD_O_BRM1K",[13845,13001.2,-4.29153e-005],286,[["driver",-1,[]],["gunner",0,[0]],["turret",-1,[1]]],[[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;


		/// Block 1
		[[[[10799.8,10854.5,4.29888],180,"Auto",[]],[[10793.3,10855.2,4.35824],276,"Auto",[]],[[10795.8,10859.7,4.19243],341,"Middle",[]],[[10798.8,10855.7,0.656914],174,"Auto",[]],[[10793.4,10854.7,0.862175],169,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10791.1,10874.2,4.52104],198,"Middle",[]],[[10796.3,10874,4.33259],198,"Middle",[]],[[10802.3,10876.6,0.808349],125,"Middle",[]],[[10798.6,10876.4,0.857663],245,"Middle",[]],[[10794.3,10884.1,0],278,"Middle",[]],[[10802.7,10895.9,-4.76837e-007],233,"Middle",[]],[[10797.2,10901.1,0.152876],267,"Middle",[]]],[["UK3CB_FIA_B_SPG9",[10802.5,10876.5,7.77543],176,[["gunner",-1,[0]]],[]],["UK3CB_FIA_B_SPG9",[10792.4,10874.8,4.42069],194,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// AA Camp
		[[[[10012,11217.6,0],253,"Middle",[]],[[10014.7,11222.9,0.695168],244,"Middle",[]],[[10006.4,11211.9,4.1156],79,"Up",[]],[[10006.6,11209.7,4.35295],103,"Up",[]],[[10006,11207.6,0],19,"Middle",[]],[[10003.3,11235.6,4.18007],78,"Up",[]],[[10002.7,11231.4,4.24645],83,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10020.7,11233.2,1.90735e-006],19,"Middle",[]],[[10015.9,11230.8,0.612413],203,"Middle",[]],[[10035,11254.2,4.01264],157,"Auto",[]],[[10037.2,11256.4,4.81521],106,"Auto",[]],[[10034.2,11258.8,4.41145],31,"Auto",[]]],[["UK3CB_ARD_B_ZsuTank",[10027.8,11245.1,-0.000102997],123,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrol
		[[[[10396,11605,0],0,[]],[[10401,11600,0],0,[]],[[10391,11600,9.53674e-007],0,[]],[[10406,11595,0],0,[]]],[],[[[10366,11404.2,0],[[0,"Move"]]],[[10483.5,11318.6,0],[[0,"Move"]]],[[10671.5,11481.3,0],[[0,"Move"]]],[[10469.4,11685.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Vehicle Patrol
		[[],[["UK3CB_ARD_B_BMP1",[10760.2,11121,1],270,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[[[9740.7,11667.8,0],[[0,"Move"],[1,"SAFE"]]],[[10401,12354.8,9.53674e-007],[[0,"Move"]]],[[10438.4,12013.3,0],[[0,"Move"]]],[[10764,11174.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Artillery 1
		[[[[11170.1,11472.3,1],343,"Auto",[]],[[11177.3,11462,1.43307],194,"Middle",[]],[[11171.8,11467,0.312706],232,"Up",[]],[[11174.3,11470.9,0.10412],194,"Middle",[]],[[11173,11466.9,3.58344],237,"Middle",[]]],[["UK3CB_ARD_B_BMP1",[11160.3,11465.5,6.67572e-005],165,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[11197.2,11460.5,0],140,"Auto",[]],[[11190.5,11465.4,0],157,"Auto",[]],[[11198.6,11439.1,0],343,"Auto",[]],[[11200,11450,0],241,"Auto",[]],[[11203.4,11445.7,0],231,"Auto",[]],[[11183.6,11450.7,3.70602],140,"Middle",[]],[[11180.6,11447.4,0.377644],199,"Middle",[]],[[11177.9,11453.2,0.680038],294,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		[east,arty_1,getMarkerPos "target",10,400,120] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";
		[east,arty_2,getMarkerPos "target",10,400,120] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";
		[east,arty_3,getMarkerPos "target",10,400,120] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";
		[east,arty_4,getMarkerPos "target",10,400,120] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";


		/// Airfield
		[[[[11574.2,11946,0.218151],34,"Auto",[]],[[11587.6,11968,0.290014],205,"Auto",[]],[[11540.7,11967.9,0.204229],97,"Middle",[]],[[11571.4,11998.6,3.24249e-005],45,"Auto",[]],[[11624.8,12020,3.24249e-005],311,"Auto",[]],[[11628.6,12024.9,3.05176e-005],332,"Auto",[]]],[["UK3CB_LSM_O_KORD_high",[11745.7,11859.8,0],294,[["gunner",-1,[0]]],[]],["UK3CB_LSM_O_KORD_high",[11720,11814.1,0],279,[["gunner",-1,[0]]],[]],["UK3CB_ARD_O_Ural_Zu23",[11663.2,11948.5,-3.8147e-006],222,[["driver",-1,[]],["gunner",-1,[0]],["cargo",2,[1]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]],["UK3CB_ARD_O_UAZ_SPG9",[11589.7,12019.8,2.09808e-005],113,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_ARD_B_BMP1",[11630.5,12113,-0.000448227],213,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		/// Therisa
		[[[[10525.6,12018.3,0],0,[]],[[10530.6,12013.3,0],0,[]],[[10520.6,12013.3,-9.53674e-007],0,[]],[[10535.6,12008.3,0],0,[]]],[],[[[10614.1,11904.5,0],[[0,"Move"]]],[[10814.1,11822.1,0],[[0,"Move"]]],[[10837.6,11955.6,0],[[0,"Move"]]],[[10683.5,12084.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;


		// Vehicle Patrol
		[[],[["UK3CB_ARD_B_BMP1",[9654.41,12514.9,-0.00251961],41,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[[[10104.4,12846.2,0],[[0,"Move"],[1,"SAFE"]]],[[10292.8,12456.7,0],[[0,"Move"]]],[[9923.42,12133.8,0],[[0,"Move"]]],[[9623.92,12480.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Patrol
		[[[[10611.8,12339.3,9.53674e-007],0,[]],[[10616.8,12334.3,0],0,[]],[[10606.8,12334.3,0],0,[]],[[10621.8,12329.3,0],0,[]]],[],[[[10573.2,12299.5,0],[[0,"Move"]]],[[10569.3,12228.4,-1.62125e-005],[[0,"Move"]]],[[10618.2,12275.6,-8.58307e-006],[[0,"Move"]]],[[10614.3,12331.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10673.8,12243,0],0,[]],[[10678.8,12238,0],0,[]],[[10668.8,12238,0],0,[]],[[10683.8,12233,0.177528],0,[]]],[],[[[10614.4,12236.8,0],[[0,"Move"]]],[[10625.9,12171.3,0],[[0,"Move"]]],[[10687.7,12206.5,0],[[0,"Move"]]],[[10676.3,12234.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10783.6,12384.7,0],0,[]],[[10788.6,12379.7,0],0,[]],[[10778.6,12379.7,0],0,[]],[[10793.6,12374.7,0],0,[]]],[],[[[10647.4,12357.4,0],[[0,"Move"]]],[[10722.7,12270.3,0.516836],[[0,"Move"]]],[[10768,12333.7,1.90735e-006],[[0,"Move"]]],[[10786.9,12379,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[11223,12532.6,0],0,[]],[[11228,12527.6,0],0,[]],[[11218,12527.6,0],0,[]],[[11233,12522.6,0],0,[]]],[],[[[11163.8,12291.3,0.260477],[[0,"Move"]]],[[11269.8,12043.9,3.8147e-006],[[0,"Move"]]],[[11443.4,12302.7,3.8147e-006],[[0,"Move"]]],[[11345.7,12464.8,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		
		/// Static
		[[[[10616.1,12295.9,4.22098],43,"Auto",[]],[[10618.4,12294.8,4.10501],43,"Auto",[]],[[10615.6,12289.2,0.35222],203,"Auto",[]],[[10612.1,12273.5,0.168347],127,"Auto",[]],[[10625.6,12262.5,0.28175],319,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10650.9,12306.7,0.499426],291,"Auto",[]],[[10654.6,12318,0.763319],204,"Auto",[]],[[10645.3,12309.9,0.576204],141,"Middle",[]],[[10659.4,12317.1,0],16,"Auto",[]],[[10647,12327.9,0],203,"Middle",[]],[[10673.3,12322.8,0],300,"Auto",[]]],[["UK3CB_FIA_B_SPG9",[10638.7,12309.7,4.76837e-006],145,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10631.7,12277.7,0.705497],217,"Auto",[]],[[10631.8,12268.7,0.647649],315,"Auto",[]],[[10634.8,12271.8,0.596184],67,"Auto",[]],[[10649.4,12272.9,0.172691],39,"Auto",[]],[[10660.9,12287.1,4.13122],190,"Auto",[]],[[10663.4,12293.1,0.497183],223,"Auto",[]],[[10661.6,12294,4.45648],190,"Auto",[]],[[10659.8,12296.3,0.160469],222,"Auto",[]]],[["UK3CB_FIA_B_SPG9",[10660,12300.3,-7.62939e-006],270,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		{[_X,0.5,50,true,true] spawn OKS_Surrender} foreach [officer_1,officer_2,officer_3,officer_4,officer_5,officer_6,officer_7,officer_8,officer_9,officer_10];
	};

	case 2: {

		_Vehicles = ["UK3CB_ARD_O_MTLB_BMP", "UK3CB_ARD_O_MTLB_Cannon", "UK3CB_ARD_O_BMP1", "UK3CB_ARD_O_BMP2", "UK3CB_ARD_O_BRM1K", "UK3CB_ARD_O_BTR80a", "UK3CB_ARD_O_GAZ_Vodnik_Cannon", "UK3CB_ARD_O_BRDM2_UM", "UK3CB_ARD_O_BRDM2"];	
		[Base_4, Spawn_4, NEKY_Hunt_Trigger_2, 3,900,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;
		[Base_5, Spawn_5, NEKY_Hunt_Trigger_2, 3,900,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;
		[Base_6, Spawn_6, NEKY_Hunt_Trigger_2, 3,900,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;


		/// Fields Patrol
		[[[[12426.2,13359.2,0],0,[]],[[12431.2,13354.2,0],0,[]],[[12421.2,13354.2,1.90735e-006],0,[]],[[12436.2,13349.2,0],0,[]]],[],[[[12234.3,13251.9,0],[[0,"Move"]]],[[12452.7,13161.8,0],[[0,"Move"]]],[[12536.4,13302.7,0],[[0,"Move"]]],[[12518.6,13493.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Arty Pier
		[east,grad_1,getMarkerPos "target",12,500,180] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";	sleep 2;
		[east,grad_2,getMarkerPos "target",12,500,180] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";	sleep 2;
		[east,grad_3,getMarkerPos "target",12,500,180] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";	

		/// Pier Outpost
		[[[[14010.3,12972.5,4.29896],291,"Auto",[]],[[14010.2,12969.9,4.43792],291,"Auto",[]],[[14011.8,12969.4,2.11978],291,"Auto",[]],[[14247.2,12976.1,0.325855],217,"Auto",[]],[[14247.3,12978.9,0.82905],272,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[14237.7,13010.3,1.48684],247,"Auto",[]],[[14237,13017.5,1.36422],236,"Auto",[]],[[14279.9,13005.2,0.728132],356,"Auto",[]],[[14288.4,13005.5,0.760814],316,"Auto",[]],[[14273.8,13036.1,0],11,"Auto",[]],[[14273.9,13026.5,4.76837e-007],197,"Auto",[]],[[14303.8,13067.4,4.29403],258,"Auto",[]],[[14307.6,13064.6,4.02168],233,"Auto",[]],[[14270.8,13058,0],171,"Middle",[]]],[["UK3CB_ARD_O_Ural_Zu23",[14300.4,13078.8,1.26457],0,[["driver",-1,[]],["gunner",-1,[0]],["cargo",2,[1]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[14333.6,13040.4,3.19862],220,"Auto",[]],[[14332.8,13048.1,3.11499],285,"Auto",[]],[[14338.8,13047.1,0.599222],242,"Middle",[]],[[14331.2,13045.7,0.785164],263,"Auto",[]],[[14339,13040.9,0.65013],296,"Middle",[]],[[14344.1,13034.7,2.38419e-007],226,"Auto",[]],[[14327.7,13062.1,0.835651],105,"Auto",[]],[[14321.6,13062.1,0.79293],152,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[14291.5,13024.6,17.7838],241,"Auto",[]],[[14290.9,13029.2,17.9],267,"Auto",[]],[[14292.3,13028.8,12.7727],271,"Auto",[]],[[14293,13034.3,13.0027],337,"Auto",[]],[[14325.3,13011.7,4.27413],255,"Auto",[]],[[14325.3,13016,4.04243],262,"Auto",[]],[[14292.2,13031.3,8.59915],247,"Auto",[]],[[14296.9,13032.5,4.63897],237,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Pier Patrol
		[[[[14164.6,13033.1,0],0,[]],[[14169.6,13028.1,0],0,[]],[[14159.6,13028.1,0],0,[]],[[14174.6,13023.1,0],0,[]]],[],[[[14029.6,13007.8,0],[[0,"Move"]]],[[14082.2,12943.1,0],[[0,"Move"]]],[[14224.9,12916.8,0],[[0,"Move"]]],[[14257.1,13044,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;	
	
		/// Block 3
		[[[[10921.3,12727.2,0],191,"Auto",[]],[[10925,12725.3,0],191,"Auto",[]],[[10907.1,12746.1,0],297,"Auto",[]],[[10914.1,12743.5,0],132,"Auto",[]],[[10919.7,12767.4,0],174,"Middle",[]],[[10916.4,12785.6,0.0618858],125,"Auto",[]],[[10924.8,12771.1,0.208883],98,"Auto",[]],[[10932.6,12773.8,0.222078],93,"Auto",[]],[[10944.6,12779.1,0],172,"Auto",[]]],[["UK3CB_ARD_O_BTR80a",[10897.7,12748.4,-3.62396e-005],212,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",1]]]],["UK3CB_FIA_B_SPG9",[10914.1,12765.7,-0.000232697],151,[["gunner",-1,[0]]],[]],["UK3CB_ARD_O_BMP1",[10953.7,12756.9,1.90735e-006],202,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		/// Block 4
		[[[[11230.2,13216.3,0.510295],200,"Auto",[]],[[11225.1,13220.6,0.405266],215,"Auto",[]],[[11240.3,13238.9,0.379425],204,"Auto",[]],[[11234,13238.7,0.599396],275,"Auto",[]],[[11234.8,13234.7,0.401752],209,"Auto",[]],[[11235.3,13242.1,0.134729],356,"Auto",[]],[[11237.5,13232.8,4.1768],185,"Middle",[]],[[11232.4,13236.6,3.85235],230,"Middle",[]]],[["UK3CB_ARD_O_MTLB_BMP",[11239.5,13222.7,0],196,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]],["UK3CB_ARD_O_GAZ_Vodnik_Cannon",[11174.1,13225.7,1.14441e-005],144,[["driver",-1,[]],["commander",-1,[2]]],[[6,["ARD",1]],[7,["Beacons_Hide",0]]]],["UK3CB_FIA_B_SPG9",[11175,13238.9,0],142,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Polakkio Vehicle Static
		[[],[["UK3CB_ARD_O_MTLB_BMP",[10969.1,13363.1,-0.000249863],165,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]],["UK3CB_ARD_O_Hilux_Spg9",[11022.6,13427.6,1],162,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],["UK3CB_ARD_O_BTR80a",[10983.2,13431.6,-5.72205e-005],114,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ARD_O_BTR80a",[10638.6,13264.1,3.8147e-006],347,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[[[10828,13505.6,4.19617e-005],[[0,"Move"]]],[[11027.5,13464.6,0],[[0,"Move"]]],[[11079.4,13291.1,0],[[0,"Move"]]],[[10885.8,13365.8,0],[[0,"Move"]]],[[10663.4,13253.3,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Polakkio Patrols
		[[[[10908.2,13539.6,0],0,[]],[[10913.2,13534.6,0],0,[]],[[10903.2,13534.6,0],0,[]],[[10918.2,13529.6,0],0,[]]],[],[[[10829.3,13388.1,0],[[0,"Move"]]],[[10957.6,13387,0],[[0,"Move"]]],[[11018,13448.9,0],[[0,"Move"]]],[[10931.3,13521,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[11054.2,13545.3,0.0382404],0,[]],[[11059.2,13540.3,0],0,[]],[[11049.2,13540.3,0],0,[]],[[11064.2,13535.3,0],0,[]]],[],[[[11017.9,13358.4,0],[[0,"Move"]]],[[11070.2,13312.7,0],[[0,"Move"]]],[[11123.1,13470.7,0.206629],[[0,"Move"]]],[[11077.4,13526.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// HQ Static
		[[[[10988.5,13373.9,0.889906],135,"Auto",[]],[[10988.1,13378.8,4.26949],63,"Auto",[]],[[10987.7,13374.2,4.26691],116,"Auto",[]],[[10995.1,13386.5,0.809853],124,"Auto",[]],[[10990.1,13385.6,0.831917],126,"Auto",[]],[[10992.7,13383.5,4.44987],130,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10980.6,13400.9,4.72484],110,"Auto",[]],[[10980.3,13396.5,4.75585],189,"Middle",[]],[[10977,13395.6,0.660276],27,"Auto",[]],[[10983.6,13407,4.60075],130,"Auto",[]],[[10981.3,13411.3,4.3576],194,"Auto",[]],[[10981.1,13411.6,0.472713],130,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10994.2,13403.8,3.73612],208,"Auto",[]],[[10996.1,13403,0.396894],39,"Auto",[]],[[11000,13405.3,0.490396],39,"Auto",[]],[[11006.2,13405.4,4.15096],39,"Auto",[]],[[11003.6,13398.9,4.15171],207,"Auto",[]],[[11004.4,13399.9,0.709908],234,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Block 5
		[[[[11512.4,13565,9.53674e-007],65,"Auto",[]],[[11523.3,13583.3,0.415782],340,"Auto",[]],[[11516.9,13583.6,0.351405],230,"Middle",[]],[[11514.6,13590.2,0],252,"Middle",[]],[[11504.7,13602.8,0.357243],173,"Auto",[]]],[["UK3CB_ARD_O_MTLB_BMP",[11540.9,13577.9,-6.10352e-005],196,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]],["UK3CB_FIA_B_SPG9",[11513.2,13581.2,0],307,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[11542.1,13594.6,0.6313],26,"Auto",[]],[[11529.4,13606.3,0.344767],233,"Middle",[]],[[11533.9,13605,9.53674e-007],142,"Auto",[]],[[11560.2,13583.2,0],248,"Auto",[]]],[["UK3CB_ARD_O_GAZ_Vodnik_Cannon",[11536.8,13616.6,-0.0013504],266,[["driver",-1,[]],["commander",-1,[2]]],[[6,["ARD",1]],[7,["Beacons_Hide",0]]]],["UK3CB_FIA_B_SPG9",[11523.4,13600.7,-9.05991e-005],353,[["gunner",-1,[0]]],[]],["UK3CB_FIA_B_SPG9",[11556.2,13591.6,0],11,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		// Alikampos Patrol
		[[[[11999.9,14493.9,0],0,[]],[[12004.9,14488.9,1.90735e-006],0,[]],[[11994.9,14488.9,1.90735e-006],0,[]],[[12009.9,14483.9,0],0,[]]],[],[[[11762.1,14394.4,0],[[0,"Move"]]],[[11897,14300.8,0],[[0,"Move"]]],[[12044.2,14370.6,0],[[0,"Move"]]],[[12023,14475.2,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[east,arty_5,getMarkerPos "target",12,500,180] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";	sleep 2;
		[east,arty_6,getMarkerPos "target",12,500,180] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";	sleep 2;

		/// Block 6
		[[[[11616.8,14258.5,0],139,"Auto",[]],[[11630.4,14251.4,0],260,"Auto",[]],[[11636.7,14238.5,0],263,"Auto",[]],[[11649,14234.2,9.53674e-007],107,"Auto",[]]],[["UK3CB_ARD_O_MTLB_BMP",[11619.2,14229.6,-6.96182e-005],208,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]],["UK3CB_ARD_O_MTLB_Cannon",[11680.3,14227.7,-0.00352669],194,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["ARD",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		/// Vehicle Patrol
		[[],[["UK3CB_ADM_O_Pickup_SPG9",[10913.1,14655.3,3.8147e-006],116,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]]],[[[11442.4,14744.3,0],[[0,"Move"]]],[[11928.8,14712.7,0],[[0,"Move"]]],[[12114.6,14369.7,-9.53674e-007],[[0,"Move"]]],[[11380.7,14363.4,0],[[0,"Move"]]],[[10940.8,14595.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		/// Patrol
		[[[[11004,14655.8,0],0,[]],[[11009,14650.8,0],0,[]],[[10999,14650.8,0],0,[]],[[11014,14645.8,0],0,[]]],[],[[[11020.2,14500.2,0],[[0,"Move"]]],[[11055.6,14469.4,0],[[0,"Move"]]],[[11168,14605.5,0],[[0,"Move"]]],[[11080.9,14671.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[11226.7,14594.7,0],0,[]],[[11231.7,14589.7,3.8147e-006],0,[]],[[11221.7,14589.7,3.8147e-006],0,[]],[[11236.7,14584.7,3.8147e-006],0,[]]],[],[[[11064.5,14388.5,0],[[0,"Move"]]],[[11194.8,14282.2,0],[[0,"Move"]]],[[11360.8,14413.4,0],[[0,"Move"]]],[[11249.9,14576.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		/// Static
		[[[[11118.4,14605.1,4.81876],104,"Auto",[]],[[11113.9,14604.8,4.42905],104,"Auto",[]],[[11117.3,14604.5,0.796627],104,"Auto",[]],[[11112.2,14607,0.447701],104,"Auto",[]],[[11107,14604.5,0],104,"Up",[]],[[11111.4,14605.3,4.42812],268,"Up",[]],[[11111.6,14596,0],94,"Up",[]],[[11096.3,14597.7,0],111,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[11087.1,14609.7,0],23,"Middle",[]],[[11093.3,14608.1,0.641193],175,"Up",[]],[[11094.2,14611.6,0.394188],10,"Up",[]],[[11090.1,14621.8,0.310722],177,"Up",[]],[[11082.8,14626.6,3.28479],249,"Up",[]],[[11086.7,14627.2,0.406784],100,"Up",[]],[[11087.8,14629.2,3.1523],197,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[11107.7,14630.2,0.109009],342,"Auto",[]],[[11094.8,14627.8,0],168,"Middle",[]],[[11110.6,14624,0.605419],185,"Auto",[]],[[11116.7,14617,0],25,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;


		/// Final Arty
		[[[[11000.3,14885.9,-7.62939e-006],170,"Auto",[]],[[11004.8,14888.1,-7.62939e-006],107,"Middle",[]],[[11018,14836.4,-7.62939e-006],107,"Auto",[]],[[11011.3,14838.4,-7.62939e-006],313,"Auto",[]],[[11000.9,14844.6,0],107,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[11013.6,14869.6,-3.8147e-006],31,"Auto",[]],[[11012.5,14861.5,-7.62939e-006],203,"Auto",[]],[[11015.5,14855.9,-7.62939e-006],107,"Auto",[]],[[11016.6,14859.7,0.91679],87,"Auto",[]],[[11026.2,14858.8,0.77771],155,"Middle",[]],[[11031.2,14857.4,1.03035],138,"Middle",[]]],[["UK3CB_ADG_O_SPG9",[11024.5,14860.3,1.700119],158,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Arty
		[east,arty_7,getMarkerPos "target",12,500,180] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";	sleep 2;
		[east,arty_8,getMarkerPos "target",12,500,180] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";	sleep 2;
		[east,arty_9,getMarkerPos "target",12,500,180] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf";		
	
		_Vehicles = ["UK3CB_ARD_O_MTLB_BMP", "UK3CB_ARD_O_MTLB_Cannon", "UK3CB_ARD_O_BMP1", "UK3CB_ARD_O_BMP2", "UK3CB_ARD_O_BRM1K", "UK3CB_ARD_O_BTR80a", "UK3CB_ARD_O_GAZ_Vodnik_Cannon", "UK3CB_ARD_O_BRDM2_UM", "UK3CB_ARD_O_BRDM2"];			
		[Base_7, Spawn_7, NEKY_Hunt_Trigger_3, 3,900,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;
		[Base_8, Spawn_8, NEKY_Hunt_Trigger_3, 3,900,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;
		[Base_9, Spawn_9, NEKY_Hunt_Trigger_3, 3,900,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;	

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
