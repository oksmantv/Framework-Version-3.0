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

		// Surf Club - Shore Battery
		[[[[21482.9,10788,0.000130653],18,"Middle",[]],[[21477.4,10791,0.000130653],9,"Up",[]],[[21459.8,10781,0.000130653],31,"Middle",[]],[[21450.1,10764.8,0.000130653],243,"Middle",[]],[[21457.5,10758,0.000130653],242,"Middle",[]],[[21462.7,10756.1,0.000130653],195,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[21513.7,10833.3,0.000130653],17,"Middle",[]],[[21503.5,10835.2,0],272,"Middle",[]],[[21497.1,10825.7,0.000130653],322,"Middle",[]],[[21499.4,10818.1,0.0001297],229,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[21564.4,10892.6,0.000130653],319,"up",[]],[[21557.9,10883.4,0],198,"up",[]],[[21551.3,10887.8,0.0001297],32,"Middle",[]],[[21544.7,10904.9,0],62,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Cache
		[[[[21656.9,10963.1,3.93137],325,"Middle",[]],[[21655.3,10961.3,3.21667],348,"Up",[]],[[21657.5,10960.2,0.386441],357,"Middle",[]],[[21636.9,10962.8,0.354017],51,"Up",[]],[[21635.4,10963.8,0.336058],197,"Middle",[]],[[21653.1,10978,0],132,"Middle",[]],[[21632.4,10951.2,4.01103],181,"Up",[]],[[21626.3,10954.6,3.55503],78,"Up",[]],[[21630.1,10959.3,0.848297],238,"Middle",[]],[[21627,10954.4,0.757851],17,"Middle",[]],[[21632,10953.4,1.06514],238,"Middle",[]],[[21600.5,10957.9,0],56,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// SP North East 
		[[[[22002.5,11104.5,0],227,"Middle",[]],[[22000,11111.8,0],242,"Middle",[]],[[22003.1,11102.3,0],238,"Middle",[]],[[22008.9,11100.9,0],209,"Middle",[]],[[22024,11100.3,0],203,"Middle",[]],[[22018.5,11099,0],235,"Middle",[]]],[["UK3CB_CSAT_B_O_GAZ_Vodnik_PKT",[22004.9,11109.3,7.62939e-05],238,[["driver",-1,[]],["commander",-1,[2]],["turret",-1,[3]]],[[6,["CSAT_B",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// SP West
		[[[[20657.1,11032.7,0],101,"Middle",[]],[[20647.1,11019.1,0],116,"Middle",[]],[[20659.2,11040.2,0],113,"Middle",[]],[[20666.9,11050.6,0.0983925],84,"Middle",[]]],[["UK3CB_CSAT_B_O_GAZ_Vodnik_PKT",[20651.2,11033.3,0],112,[["driver",-1,[]],["commander",-1,[2]],["turret",-1,[3]]],[[6,["CSAT_B",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// SP South
		[[[[21336.1,10556.2,0],16,"up",[]],[[21340.3,10554.1,0],31,"up",[]],[[21326.6,10560.6,0],343,"up",[]],[[21329.4,10560.4,0],358,"Middle",[]]],[["UK3CB_CSAT_B_O_GAZ_Vodnik_PKT",[21331.6,10553.7,9.53674e-07],27,[["driver",-1,[]],["commander",-1,[2]],["turret",-1,[3]]],[[6,["CSAT_B",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[21310.1,10551,0],352,"up",[]],[[21315,10552.9,0],322,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Empty Compound
		[[[[21310.5,10982,0],94,"Middle",[]],[[21307.9,10976.9,0.329285],339,"Up",[]],[[21320.2,10963.7,0],160,"Middle",[]],[[21314.5,10960.8,0],81,"Middle",[]],[[21334.5,10979.5,0.367907],78,"Up",[]],[[21330.2,10981.5,0.116371],348,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[21303.2,11036.9,2.97501],11,"Middle",[]],[[21301.3,11037.6,2.8202],354,"Middle",[]],[[21300.8,11030.7,3.23104],40,"Middle",[]],[[21303.9,11030.7,0.521557],254,"Middle",[]],[[21301.7,11035.6,0.160093],131,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Cache 2
		[[[[21243.4,10960.9,4.07985],172,"Middle",[]],[[21239.7,10964.7,4.56416],254,"Up",[]],[[21243.5,10968.5,3.16719],185,"Middle",[]],[[21243.5,10968,0.422949],230,"Middle",[]],[[21245.9,10966.1,0.74976],78,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[21308.9,10545.7,0],0,[]],[[21312.4,10542,0],0,[]],[[21304.3,10543.5,0],0,[]],[[21309.9,10537.3,9.53674e-07],0,[]],[[21308.1,10542,9.53674e-07],0,[]],[[21305,10538.7,0],0,[]]],[],[[[21247.4,10585.5,0],[[0,"Move"],[1,"SAFE"]]],[[21149.4,10575.3,0.000127435],[[0,"Move"]]],[[21071.1,10588.4,0.00014782],[[0,"Move"]]],[[21039.8,10576.1,0],[[0,"Move"]]],[[20996.1,10522.4,0],[[0,"Move"]]],[[20974.5,10470.7,0],[[0,"Move"]]],[[20948.3,10432.3,0],[[0,"Move"]]],[[20916.7,10426.2,0],[[0,"Move"]]],[[20952,10435.4,-9.53674e-07],[[0,"Move"]]],[[20979.7,10487.4,0],[[0,"Move"]]],[[20994.6,10527.3,0],[[0,"Move"]]],[[21036,10579.6,-9.53674e-07],[[0,"Move"]]],[[21076.5,10592.1,0],[[0,"Move"]]],[[21150.7,10570.8,0],[[0,"Move"]]],[[21248.4,10593.6,0.000136614],[[0,"Move"]]],[[21312,10544,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[20599.2,10585.1,-9.53674e-07],95,[]],[[20595.3,10582,0],95,[]],[[20597.4,10589.9,9.53674e-07],95,[]],[[20590.8,10584.8,0],95,[]],[[20595.6,10586.2,0],95,[]],[[20592.6,10589.6,0],95,[]]],[],[[[20685.7,10584.5,0],[[0,"Move"],[1,"SAFE"]]],[[20751.8,10569.3,0],[[0,"Move"]]],[[20832.3,10607.8,0],[[0,"Move"]]],[[20890.8,10610.6,0],[[0,"Move"]]],[[20925.2,10584.3,0],[[0,"Move"]]],[[20995,10597,0],[[0,"Move"]]],[[21047.2,10622.8,-9.53674e-07],[[0,"Move"]]],[[21004.7,10754.9,9.53674e-07],[[0,"Move"]]],[[21048.1,10622.9,0],[[0,"Move"]]],[[20996.5,10598,0],[[0,"Move"]]],[[20925.6,10585.5,0],[[0,"Move"]]],[[20893.6,10609.4,0],[[0,"Move"]]],[[20830.8,10609.7,0],[[0,"Move"]]],[[20750.2,10568.6,0],[[0,"Move"]]],[[20688.3,10584,0],[[0,"Move"]]],[[20597.3,10582.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[21065.1,10833.1,1.90735e-06],0,[]],[[21068.6,10829.3,1.90735e-06],0,[]],[[21060.5,10830.8,3.8147e-06],0,[]],[[21066.1,10824.7,1.90735e-06],0,[]],[[21064.3,10829.4,3.8147e-06],0,[]],[[21061.2,10826,3.8147e-06],0,[]]],[],[[[20927,10777.6,0],[[0,"Move"],[1,"SAFE"]]],[[20905.6,10862.6,0.000131607],[[0,"Move"]]],[[20821.4,10857.3,0],[[0,"Move"]]],[[20752.3,10809.7,1.90735e-06],[[0,"Move"]]],[[20674,10725,0],[[0,"Move"]]],[[20620.6,10749.7,0],[[0,"Move"]]],[[20584.2,10828.3,0],[[0,"Move"]]],[[20544.8,10972.6,0],[[0,"Move"]]],[[20704.5,11113,0],[[0,"Move"]]],[[20884.8,11048.4,0],[[0,"Move"]]],[[21000,11013.7,1.90735e-06],[[0,"Move"]]],[[21065.4,10956.7,1.90735e-06],[[0,"Move"]]],[[21068.2,10831.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[21110.1,11383,1.90735e-06],126,[]],[[21105,11382.4,0],126,[]],[[21111,11388.1,0],126,[]],[[21102.8,11387.2,1.90735e-06],126,[]],[[21107.6,11385.9,3.8147e-06],126,[]],[[21106.7,11390.4,0],126,[]]],[],[[[21306.6,11245.7,0],[[0,"Move"],[1,"SAFE"]]],[[21307.5,11016.7,0],[[0,"Move"]]],[[21318.2,11110.3,0.000144958],[[0,"Move"]]],[[21369.6,11189.8,1.90735e-06],[[0,"Move"]]],[[21482.3,11322.3,0],[[0,"Move"]]],[[21568.6,11415.8,3.8147e-06],[[0,"Move"]]],[[21421.7,11497,0],[[0,"Move"]]],[[21126.8,11387.9,-5.72205e-06],[[0,"Move"]]],[[21422,11492.2,0],[[0,"Move"]]],[[21569.8,11415.8,3.8147e-06],[[0,"Move"]]],[[21485.3,11321.8,0],[[0,"Move"]]],[[21371.9,11190.9,0],[[0,"Move"]]],[[21317.3,11109.2,0],[[0,"Move"]]],[[21306.6,11015.5,0],[[0,"Move"]]],[[21311.1,11245.9,0],[[0,"Move"]]],[[21106.9,11381.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[21869.2,10945.8,1.19209e-06],0,[]],[[21872.7,10942.1,2.38419e-07],0,[]],[[21864.7,10943.6,2.14577e-06],0,[]],[[21870.2,10937.5,7.15256e-07],0,[]],[[21868.5,10942.1,1.66893e-06],0,[]],[[21865.3,10938.8,1.19209e-06],0,[]]],[],[[[21811,10966.7,0],[[0,"Move"],[1,"SAFE"]]],[[21743.7,10978.9,0],[[0,"Move"]]],[[21620.3,10935.9,0],[[0,"Move"]]],[[21586.4,10907.4,0],[[0,"Move"]]],[[21555.6,10857.6,0],[[0,"Move"]]],[[21511.8,10890.5,0],[[0,"Move"]]],[[21543.6,10930,0],[[0,"Move"]]],[[21561.1,10964.2,0],[[0,"Move"]]],[[21648,11001.3,9.53674e-07],[[0,"Move"]]],[[21752.1,11065.8,0],[[0,"Move"]]],[[21836.3,11045.5,0],[[0,"Move"]]],[[21872.4,10944.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[22012,10975.8,0],0,[]],[[22015.5,10972.1,0],0,[]],[[22007.4,10973.6,0],0,[]],[[22013,10967.5,0],0,[]],[[22011.2,10972.1,0],0,[]],[[22008.1,10968.8,1.90735e-06],0,[]]],[],[[[21976.8,11116.7,0],[[0,"Move"],[1,"SAFE"]]],[[21915.8,11264.5,0.000125885],[[0,"Move"]]],[[21761.8,11309.5,0.000144958],[[0,"Move"]]],[[21561.1,11201.9,0],[[0,"Move"]]],[[21565.3,11055.1,0],[[0,"Move"]]],[[21761.6,11123,0],[[0,"Move"]]],[[21745.4,11039.6,9.53674e-07],[[0,"Move"]]],[[21868.8,10929.1,0],[[0,"Move"]]],[[21749,11042.7,9.53674e-07],[[0,"Move"]]],[[21763.4,11124.5,0.502798],[[0,"Move"]]],[[21563.8,11060,0],[[0,"Move"]]],[[21557.3,11205.4,0],[[0,"Move"]]],[[21767.1,11313.2,0],[[0,"Move"]]],[[21917.1,11260.1,0],[[0,"Move"]]],[[21983.7,11119.2,0],[[0,"Move"]]],[[22015.1,10974.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// BTR Patrol
		[[],[["UK3CB_CSAT_B_O_BTR60",[20580.9,10615.8,2.86102e-05],93,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[[[21197.2,10873.3,0],[[0,"Move"],[1,"SAFE"]]],[[21188.2,11038.3,0],[[0,"Move"]]],[[20947.7,11259.4,0],[[0,"Move"]]],[[21302.2,11879.6,0],[[0,"Move"]]],[[20872.9,11262.2,0],[[0,"Move"]]],[[20451,11073.2,3.8147e-06],[[0,"Move"]]],[[20576.7,10631.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};



	case 2: {

		_Vehicles = [
			"UK3CB_CSAT_B_O_BRDM2", "UK3CB_CSAT_B_O_Tigr_FFV", "UK3CB_CSAT_B_O_GAZ_Vodnik_PKT", 
			"UK3CB_CSAT_B_O_GAZ_Vodnik", "UK3CB_CSAT_B_O_Kamaz_Covered", "UK3CB_CSAT_B_O_Kamaz_Open", 
			"UK3CB_CSAT_B_O_Gaz66_Covered", "UK3CB_CSAT_B_O_Gaz66_Open", "UK3CB_CSAT_B_O_Ural_Open", 
			"UK3CB_CSAT_B_O_UAZ_Closed", "UK3CB_CSAT_B_O_UAZ_Open", "UK3CB_CSAT_B_O_Typhoon_transport", 
			"UK3CB_CSAT_B_O_Typhoon_transport_covered", "UK3CB_CSAT_B_O_LSV_02", "UK3CB_CSAT_B_O_Offroad_HMG",
			 "UK3CB_CSAT_B_O_Offroad_Unarmed", "UK3CB_CSAT_B_O_Offroad_Comms", "UK3CB_CSAT_B_O_Offroad_Covered"
		];

		[spawn_1, spawn_1, NEKY_Hunt_Trigger_1, 4,300,east,_Vehicles,100] spawn OKS_fnc_Huntbase;	
		[spawn_2, spawn_2, NEKY_Hunt_Trigger_1, 4,300,east,_Vehicles,100] spawn OKS_fnc_Huntbase;	
		[spawn_3, spawn_3, NEKY_Hunt_Trigger_1, 4,600,east,_Vehicles,100] spawn OKS_fnc_Huntbase;	
		[spawn_4, spawn_4, NEKY_Hunt_Trigger_1, 4,600,east,_Vehicles,100] spawn OKS_fnc_Huntbase;	
		[heli_1, heli_1, NEKY_Hunt_Trigger_1,EAST,"O_Heli_Transport_04_bench_F","Unload",[2,1]] spawn OKS_fnc_Airbase;
	};

	case 3: {

		// Phase 2
		// SP South
		[[[[10798.4,10855.2,4.25148],187,"up",[]],[[10791.3,10880.5,4.60942],358,"up",[]],[[10797.1,10883.9,4.47391],355,"up",[]]],[["UK3CB_CSAT_B_O_Offroad_HMG",[10793,10847,-1.04904e-05],98,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Artillery
		[[[[11150.6,11437.5,0.0833073],213,"up",[]],[[11176.6,11462.6,1.38591],66,"up",[]],[[11170,11477.2,0.0833073],18,"up",[]],[[11175.3,11469.4,0.239841],54,"up",[]],[[11180.9,11447.7,0.495003],213,"up",[]],[[11195.2,11462.4,0.0833073],213,"up",[]],[[11154.7,11523.1,0.436659],312,"up",[]],[[11156,11520.4,0.491709],162,"up",[]],[[11196.1,11437.4,0.274952],305,"up",[]]],[["UK3CB_CSAT_B_O_Offroad_HMG",[11169,11442.4,-9.53674e-06],337,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Airfield
		[[[[11731.8,11833.5,0.190804],314,"up",[]],[[11738.3,11848.2,0.0646191],210,"up",[]],[[11741.7,11853,0.0571575],3,"up",[]],[[11719.2,11811.7,1.90735e-06],288,"up",[]],[[11578.7,11847.5,0],190,"up",[]],[[11580.2,11854.7,0],322,"up",[]],[[11591.9,11976.6,0],142,"up",[]],[[11584.4,11989.7,-1.90735e-06],354,"up",[]],[[11590.7,12027.3,-1.90735e-06],159,"up",[]],[[11627,12023.3,0],356,"up",[]]],[["UK3CB_CSAT_B_O_PKM_nest",[11748,12025.7,-2.28882e-05],224,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_CSAT_B_O_PKM_nest",[11585.4,11849.2,-2.47955e-05],181,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_B_O_Offroad_HMG",[11604.4,12105.8,-9.53674e-06],163,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// SP Marshes.
		[[[[10552.9,11432.8,0.716877],254,"up",[]],[[10559.3,11432.3,0.485216],15,"up",[]],[[10566.2,11423.8,1.20261],284,"Middle",[]],[[10560,11416,0.0833073],134,"up",[]],[[10554,11418.1,0.0833073],265,"up",[]]],[["UK3CB_CSAT_B_O_M2_TriPod",[10557.5,11431.3,0.485412],224,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		// Objective Marshes.
		[[[[10448.8,11557.2,-2.86102e-05],217,"Up",[]],[[10445.1,11559.6,-2.86102e-05],217,"Up",[]],[[10439.3,11570,-2.95639e-05],217,"Up",[]],[[10455.1,11564.3,-2.86102e-05],217,"Up",[]],[[10457.4,11551,-2.86102e-05],84,"Up",[]],[[10458.1,11548.2,-2.86102e-05],107,"Up",[]],[[10428.1,11581.6,-2.86102e-05],151,"Up",[]],[[10485.9,11544.7,-2.86102e-05],149,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Motorpool.
		[[[[10090.1,11656.6,4.86374e-05],37,"up",[]],[[10107.9,11671.9,0],231,"up",[]],[[10113.9,11667.8,0.925076],37,"up",[]],[[10113.8,11667.8,4.41373],37,"up",[]],[[10119.2,11648.2,4.86374e-05],37,"up",[]],[[10130,11643.3,0.00210953],37,"Middle",[]],[[10120.8,11630,0.126682],37,"up",[]],[[10130.4,11631.3,0.117733],37,"up",[]],[[10110.8,11640.1,0.36331],328,"up",[]]],[["UK3CB_CSAT_B_O_M2_TriPod",[10115.6,11664.4,4.3475],148,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// SP North-West
		[[[[10028.1,11524.5,4.31455],37,"up",[]],[[10024.2,11518.4,4.30734],225,"up",[]],[[9999.62,11530.4,3.69644],50,"up",[]],[[9993.38,11533.3,3.75775],44,"up",[]],[[9996.1,11520.3,3.65234],196,"Middle",[]]],[["UK3CB_CSAT_B_O_Offroad_HMG",[10017.1,11533.6,-1.04904e-05],52,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// HQ.
		[[[[10110.7,11328,4.95911e-05],28,"Middle",[]],[[10126.2,11304.4,0],315,"Middle",[]],[[10141.2,11322.1,4.95911e-05],141,"Middle",[]],[[10121.3,11328.5,0.509941],289,"Middle",[]],[[10129.6,11333.5,0.970091],221,"Middle",[]],[[10126.6,11331.5,4.58341],274,"Middle",[]],[[10126.3,11336.1,4.01661],319,"Up",[]],[[10119.1,11328.7,3.84439],314,"Up",[]],[[10124.2,11324.3,4.57326],154,"Up",[]],[[10132.1,11332.2,1.01685],221,"Middle",[]],[[10128.3,11328.6,1.11178],221,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// SP HQ.
		[[[[10140.7,11260.3,3.64242],117,"up",[]],[[10132.4,11268.1,0.0833073],56,"Middle",[]],[[10119,11267.2,0.327227],349,"up",[]]],[["UK3CB_CSAT_B_O_Offroad_HMG",[10132.7,11275.7,-1.04904e-05],79,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[11453.2,11456.4,0],0,[]],[[11456.2,11453.4,0],0,[]],[[11458.2,11453.4,1.90735e-06],0,[]],[[11460.2,11453.4,1.90735e-06],0,[]],[[11462.2,11453.4,1.90735e-06],0,[]],[[11464.2,11453.4,0],0,[]]],[],[[[11668.4,11758.8,0],[[0,"Move"],[1,"SAFE"]]],[[11599.6,11846.1,-1.33514e-05],[[0,"Move"]]],[[11373.1,11533,-4.00543e-05],[[0,"Move"]]],[[11445,11460.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[11756.4,11900,0],250,[]],[[11758.1,11903.8,0],250,[]],[[11757.4,11905.7,0],250,[]],[[11756.8,11907.6,0],250,[]],[[11756.1,11909.4,0],250,[]],[[11755.4,11911.3,0],250,[]]],[],[[[11565.9,12077.2,0],[[0,"Move"],[1,"SAFE"]]],[[11526,11957.7,0],[[0,"Move"]]],[[11712.1,11798.4,0],[[0,"Move"]]],[[11755.2,11890.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[11171,11191.6,0],0,[]],[[11174,11188.6,0],0,[]],[[11176,11188.6,0],0,[]],[[11178,11188.6,0],0,[]],[[11180,11188.6,0],0,[]],[[11182,11188.6,0],0,[]]],[],[[[11326.2,11345.6,0],[[0,"Move"],[1,"SAFE"]]],[[11060.6,11547,0],[[0,"Move"]]],[[11044.7,11368.8,0],[[0,"Move"]]],[[11162.7,11195.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10698.7,11260.7,0],319,[]],[[10702.9,11260.5,0],319,[]],[[10704.4,11261.8,0],319,[]],[[10705.9,11263.1,0],319,[]],[[10707.4,11264.4,0],319,[]],[[10708.9,11265.8,0],319,[]]],[],[[[10668.2,11490.3,0],[[0,"Move"],[1,"SAFE"]]],[[10550.1,11529.3,0],[[0,"Move"]]],[[10552.2,11371.6,0],[[0,"Move"]]],[[10689.6,11258.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10446.7,11318,0],0,[]],[[10449.7,11315,0],0,[]],[[10451.7,11315,0],0,[]],[[10453.7,11315,0],0,[]],[[10455.7,11315,0],0,[]],[[10457.7,11315,0],0,[]]],[],[[[10593.3,11558.2,0],[[0,"Move"],[1,"SAFE"]]],[[10446.6,11493.5,0],[[0,"Move"]]],[[10366.6,11394.6,0],[[0,"Move"]]],[[10438.4,11322.3,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10346.4,11668.4,0],106,[]],[[10342.7,11666.3,0],106,[]],[[10342.1,11664.4,9.53674e-07],106,[]],[[10341.6,11662.5,9.53674e-07],106,[]],[[10341,11660.6,1.90735e-06],106,[]],[[10340.5,11658.7,0],106,[]]],[],[[[10420.1,11542.7,0],[[0,"Move"],[1,"SAFE"]]],[[10531.2,11610.6,0],[[0,"Move"]]],[[10480.2,11721.2,9.53674e-07],[[0,"Move"]]],[[10352.9,11675.1,9.53674e-07],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9990.39,11267.8,0],63,[]],[[9989.11,11263.8,0],63,[]],[[9990.03,11262,9.53674e-07],63,[]],[[9990.95,11260.2,9.53674e-07],63,[]],[[9991.88,11258.5,9.53674e-07],63,[]],[[9992.8,11256.7,0],63,[]]],[],[[[10298.1,11234.6,0],[[0,"Move"],[1,"SAFE"]]],[[10383.8,11322.8,0],[[0,"Move"]]],[[10134.7,11376.4,1.90735e-06],[[0,"Move"]]],[[9990.41,11277.1,1.90735e-06],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9957.07,11481.1,0],0,[]],[[9960.07,11478.1,0],0,[]],[[9962.07,11478.1,0],0,[]],[[9964.07,11478.1,0],0,[]],[[9966.07,11478.1,0],0,[]],[[9968.07,11478.1,0],0,[]]],[],[[[10274.2,11710,0],[[0,"Move"],[1,"SAFE"]]],[[10039,11726.2,0],[[0,"Move"]]],[[9877,11557.7,0],[[0,"Move"]]],[[9948.82,11485.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10732.3,11016.9,0],0,[]],[[10735.3,11013.9,0],0,[]],[[10737.3,11013.9,1.90735e-06],0,[]],[[10739.3,11013.9,1.90735e-06],0,[]],[[10741.3,11013.9,0],0,[]],[[10743.3,11013.9,0],0,[]]],[],[[[10812.5,11090.4,0],[[0,"Move"],[1,"SAFE"]]],[[10375,11220.9,0],[[0,"Move"]]],[[10652.3,11093.5,0],[[0,"Move"]]],[[10724.1,11021.2,9.53674e-07],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;


	};

	case 4: {

		_Vehicles = [
			"UK3CB_CSAT_B_O_BRDM2", "UK3CB_CSAT_B_O_Tigr_FFV", "UK3CB_CSAT_B_O_GAZ_Vodnik_PKT", 
			"UK3CB_CSAT_B_O_GAZ_Vodnik", "UK3CB_CSAT_B_O_Kamaz_Covered", "UK3CB_CSAT_B_O_Kamaz_Open", 
			"UK3CB_CSAT_B_O_Gaz66_Covered", "UK3CB_CSAT_B_O_Gaz66_Open", "UK3CB_CSAT_B_O_Ural_Open", 
			"UK3CB_CSAT_B_O_UAZ_Closed", "UK3CB_CSAT_B_O_UAZ_Open", "UK3CB_CSAT_B_O_Typhoon_transport", 
			"UK3CB_CSAT_B_O_Typhoon_transport_covered", "UK3CB_CSAT_B_O_LSV_02", "UK3CB_CSAT_B_O_Offroad_HMG",
			 "UK3CB_CSAT_B_O_Offroad_Unarmed", "UK3CB_CSAT_B_O_Offroad_Comms", "UK3CB_CSAT_B_O_Offroad_Covered"
		];

		[spawn_5, spawn_5, NEKY_Hunt_Trigger_2, 4,300,east,_Vehicles,100] spawn OKS_fnc_Huntbase;	
		[spawn_6, spawn_6, NEKY_Hunt_Trigger_2, 4,300,east,_Vehicles,100] spawn OKS_fnc_Huntbase;	
		[spawn_7, spawn_7, NEKY_Hunt_Trigger_2, 4,600,east,_Vehicles,100] spawn OKS_fnc_Huntbase;	
		[spawn_8, spawn_8, NEKY_Hunt_Trigger_2, 4,600,east,_Vehicles,100] spawn OKS_fnc_Huntbase;	
		[spawn_9, spawn_9, NEKY_Hunt_Trigger_2, 4,600,east,_Vehicles,100] spawn OKS_fnc_Huntbase;	
		[heli_2, heli_2, NEKY_Hunt_Trigger_2,EAST,"O_Heli_Transport_04_bench_F","Unload",[2,1]] spawn OKS_fnc_Airbase;

	};

	case 5: {

		// North AO
		[Trigger_1,false,[25,35,false,false],east,2,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
	};

	case 6: {

		_Vehicles = [
			"UK3CB_CSAT_B_O_BRDM2", "UK3CB_CSAT_B_O_Tigr_FFV", "UK3CB_CSAT_B_O_GAZ_Vodnik_PKT", 
			"UK3CB_CSAT_B_O_GAZ_Vodnik", "UK3CB_CSAT_B_O_Kamaz_Covered", "UK3CB_CSAT_B_O_Kamaz_Open", 
			"UK3CB_CSAT_B_O_Gaz66_Covered", "UK3CB_CSAT_B_O_Gaz66_Open", "UK3CB_CSAT_B_O_Ural_Open", 
			"UK3CB_CSAT_B_O_UAZ_Closed", "UK3CB_CSAT_B_O_UAZ_Open", "UK3CB_CSAT_B_O_Typhoon_transport", 
			"UK3CB_CSAT_B_O_Typhoon_transport_covered", "UK3CB_CSAT_B_O_LSV_02", "UK3CB_CSAT_B_O_Offroad_HMG",
			 "UK3CB_CSAT_B_O_Offroad_Unarmed", "UK3CB_CSAT_B_O_Offroad_Comms", "UK3CB_CSAT_B_O_Offroad_Covered"
		];

		[spawn_10, spawn_10, NEKY_Hunt_Trigger_3, 4,300,east,_Vehicles,100] spawn OKS_fnc_Huntbase;	
		[spawn_11, spawn_11, NEKY_Hunt_Trigger_3, 4,300,east,_Vehicles,100] spawn OKS_fnc_Huntbase;	
		[spawn_12, spawn_12, NEKY_Hunt_Trigger_3, 4,600,east,_Vehicles,100] spawn OKS_fnc_Huntbase;	
		[spawn_13, spawn_13, NEKY_Hunt_Trigger_3, 4,600,east,_Vehicles,100] spawn OKS_fnc_Huntbase;	
		[heli_3, heli_3, NEKY_Hunt_Trigger_3,EAST,"O_Heli_Transport_04_bench_F","Unload",[2,1]] spawn OKS_fnc_Airbase;	

	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};

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

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn OKS_fnc_Huntbase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Huntbase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn OKS_fnc_Huntbase;
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
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};

