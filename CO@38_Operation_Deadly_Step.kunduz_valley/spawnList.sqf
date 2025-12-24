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



#include "\OKS_GOL_Misc\script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};

params [
	"_case"
];

switch (_case) do {

	case 1: {

		// Cache 1 Ambush.
		[[[[8496.71,6436.06,4.02272],184,"Up",[]],[[8496.1,6455.93,6.27191],144,"Up",[]],[[8498.42,6454.81,6.27191],255,"Up",[]],[[8499.31,6458.16,3.16169],229,"Up",[]],[[8497.94,6458.02,0.326792],144,"Up",[]],[[8500.41,6455.32,0.348158],288,"Up",[]]],[],[],west] call GW_Common_fnc_spawnGroup;
		[[[[8553.43,6395.48,3.56317],265,"Up",[]],[[8550.91,6442.13,2.57897],251,"Up",[]],[[8553.51,6447.72,2.75626],220,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[getpos LambsGroupSpawn_1, "ambushhunt", 4, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_2, "ambushhunt", 4, west, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_3, "ambushhunt", 4, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_4, "ambushhunt", 4, west, 300] spawn OKS_fnc_Lambs_SpawnGroup;


		// Random Patrols up until trench.
		[[[[8717.16,6185.7,3.24249e-05],0,[]],[[8722.16,6180.7,3.24249e-05],0,[]],[[8712.16,6180.7,3.24249e-05],0,[]],[[8727.16,6175.7,3.24249e-05],0,[]]],[],[[[8571.51,6183.67,0],[[0,"Move"],[1,"SAFE"]]],[[8582.94,6295.32,1.90735e-06],[[0,"Move"]]],[[8709.76,6361.91,0],[[0,"Move"]]],[[8736.2,6186.69,3.43323e-05],[[0,"Cycle"]]]],west] call GW_Common_fnc_spawnGroup;
		[[[[8510.85,5811.9,0],0,[]],[[8515.85,5806.9,0],0,[]],[[8505.85,5806.9,0],0,[]],[[8520.85,5801.9,0],0,[]]],[],[[[8372.92,5796.44,0],[[0,"Move"],[1,"SAFE"]]],[[8382.44,5967.4,-2.19345e-05],[[0,"Move"]]],[[8509.71,5964.79,-4.3869e-05],[[0,"Move"]]],[[8529.89,5812.88,0],[[0,"Cycle"]]]],west] call GW_Common_fnc_spawnGroup;
		[[[[8391.17,5359.12,9.53674e-07],0,[]],[[8396.17,5354.12,9.53674e-07],0,[]],[[8386.17,5354.12,9.53674e-07],0,[]],[[8401.17,5349.12,9.53674e-07],0,[]]],[],[[[8171.82,5401.08,0],[[0,"Move"],[1,"SAFE"]]],[[8209.16,5544.58,0],[[0,"Move"]]],[[8390.03,5512.01,0],[[0,"Move"]]],[[8410.22,5360.1,2.86102e-06],[[0,"Cycle"]]]],west] call GW_Common_fnc_spawnGroup;
		[[[[8786.17,5350.72,0],0,[]],[[8791.17,5345.72,0],0,[]],[[8781.17,5345.72,1.90735e-06],0,[]],[[8796.17,5340.72,0],0,[]]],[],[[[8648.24,5335.27,0],[[0,"Move"],[1,"SAFE"]]],[[8657.76,5506.23,0],[[0,"Move"]]],[[8785.02,5503.62,0],[[0,"Move"]]],[[8805.21,5351.71,3.8147e-06],[[0,"Cycle"]]]],west] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		// Cache 1 Ambush.
		[[],[["UK3CB_TKM_O_LandRover_Opentop_DSHKM",[8760.6,6166.36,0],283,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["Camo_1",1]],[7,["Axe_Hide",1,"Exhaust_Cover_Hide",1,"Fuel_Cans_Hide",1,"Front_Grill_Hide",1,"Light_Covers_Hide",1,"Radio_Hide",1,"Shovel_Hide",1,"Beacons_Hide",0,"DoorsRear_Hide",0,"Rear_Cargo_Box_Hide",1,"DoorFrontLeft_Hide",0,"DoorFrontRight_Hide",0,"Front_Fuel_Boxes_Hide",1,"Side_Rails_Hide",1]]]]],[[[8615.58,6185.19,0],[[0,"Move"]]],[[8600.32,6191.18,0],[[0,"Move"]]],[[8599.33,6207.45,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKM_O_LandRover_Opentop_DSHKM",[7868.54,6011.63,0],67,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["Camo_1",1]],[7,["Axe_Hide",1,"Exhaust_Cover_Hide",1,"Fuel_Cans_Hide",1,"Front_Grill_Hide",1,"Light_Covers_Hide",1,"Radio_Hide",1,"Shovel_Hide",1,"Beacons_Hide",0,"DoorsRear_Hide",0,"Rear_Cargo_Box_Hide",1,"DoorFrontLeft_Hide",0,"DoorFrontRight_Hide",0,"Front_Fuel_Boxes_Hide",1,"Side_Rails_Hide",1]]]]],[[[7955.2,6041.33,0],[[0,"Move"]]],[[8017.83,6086.38,-1.04904e-05],[[0,"Move"]]],[[8075.32,6120.12,5.43594e-05],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[getpos LambsGroupSpawn_5, "rush", 5, independent, 400] spawn OKS_fnc_Lambs_SpawnGroup;

		// IED 2 Ambush Party.
		[getpos LambsGroupSpawn_6, "ambushhunt", 6, west, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_7, "ambushhunt", 6, west, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_8, "ambushhunt", 6, west, 300] spawn OKS_fnc_Lambs_SpawnGroup;

		// IED 2 Ambush Party.
		[[[[8585.86,5953.84,3.77487],216,"Up",[]],[[8589.35,5954.16,3.7798],229,"Up",[]],[[8614.93,5960.94,0.907415],149,"Up",[]],[[8619.87,5977.62,1.50989],135,"Up",[]],[[8628.34,5984.32,-1.90735e-06],165,"Up",[]],[[8629.31,5976.56,0.197535],227,"Up",[]],[[8624.19,5982.52,0.182598],98,"Middle",[]],[[8634.81,5980.34,0.305082],338,"Up",[]],[[8655.1,5981.3,0],212,"Up",[]],[[8656.64,5974.88,3.29511],239,"Up",[]],[[8656.67,5978.89,6.36503],280,"Up",[]]],[],[],west] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		// IED 2 Ambush.
		[[],[["UK3CB_TKM_O_Pickup_DSHKM",[8783.09,5732.68,0],231,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["WHITE_STRIPE",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]]],[[[8593.84,5577.67,0],[[0,"Move"]]],[[8569.17,5715.68,0],[[0,"Move"]]],[[8557.28,5810.1,2.38419e-05],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		[getpos LambsGroupSpawn_9, "rush", 4, independent, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_10, "rush", 4, west, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_11, "rush", 4, independent, 500] spawn OKS_fnc_Lambs_SpawnGroup;

		// IED 3 & Trench
		[[[[8639.93,5609.37,1.72874],0,"Up",[]],[[8639.37,5605.27,1.88818],0,"Up",[]],[[8642.73,5604.25,1.87808],20,"Up",[]],[[8644.98,5605.21,1.80886],0,"Up",[]],[[8647.2,5602.14,1.83842],174,"Up",[]],[[8640.48,5587.82,5.05447e-05],262,"Middle",[]],[[8651.99,5589.18,4.76837e-05],69,"Middle",[]],[[8657.76,5578.06,4.95911e-05],263,"Middle",[]],[[8655.85,5565.75,0.254662],105,"Middle",[]],[[8653.43,5565.7,0.299931],210,"Middle",[]],[[8637.95,5570.73,0],87,"Middle",[]],[[8634.06,5569.57,9.53674e-07],161,"Middle",[]],[[8630.74,5557.47,0],13,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8660.35,5546.6,0.323799],116,"Middle",[]],[[8657.7,5544.84,0.303551],230,"Middle",[]],[[8638.81,5539.55,-9.53674e-07],356,"Middle",[]],[[8645.69,5529.94,9.53674e-07],336,"Middle",[]],[[8663.21,5530.79,0],277,"Middle",[]],[[8649.88,5517.96,0.356045],355,"Up",[]],[[8650.31,5509.48,0.696593],182,"Up",[]],[[8657.07,5509.33,0.572163],0,"Up",[]],[[8654.62,5515.1,0.532733],0,"Up",[]],[[8651.38,5513.35,0.594952],0,"Up",[]],[[8648.71,5512.67,0.64509],0,"Middle",[]]],[],[],west] call GW_Common_fnc_spawnGroup;

		[[[[8802.19,5754.65,3.68314],230,"Up",[]],[[8802.93,5760.02,3.76539],0,"Up",[]],[[8799.4,5759.69,3.76539],0,"Up",[]],[[8802.65,5759.88,0.256245],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8885.1,5798.69,0],65,"Up",[]],[[8881.54,5796.24,0],283,"Up",[]],[[8871.38,5812.1,3.31414],209,"Up",[]],[[8874.82,5817.12,3.16159],335,"Up",[]],[[8876.26,5814.03,3.14462],131,"Up",[]],[[8882.28,5824.56,3.55327],169,"Up",[]],[[8876.46,5833.73,0.905346],135,"Up",[]],[[8882.66,5823.7,0.472216],16,"Up",[]],[[8895.45,5806.94,0.337164],123,"Up",[]],[[8893.86,5824.27,1.90735e-06],193,"Up",[]],[[8902.85,5784.28,3.06973],247,"Middle",[]],[[8903.32,5787.85,3.02451],247,"Middle",[]]],[["UK3CB_ADE_O_DSHkM_Mini_TriPod",[8902.93,5786.27,3.32464],257,[["gunner",-1,[0]]],[]]],[],west] call GW_Common_fnc_spawnGroup;

		// Mortar Pit TRench Objective.
		[independent, DestroyObject_21, [8259.98,6692.86,0], 7, 300, 30] spawn OKS_fnc_ArtyFire; sleep 2;
		[independent, DestroyObject_19, [8259.98,6692.86,0], 7, 300, 30] spawn OKS_fnc_ArtyFire; sleep 2;
		[independent, DestroyObject_20, [8259.98,6692.86,0], 7, 300, 30] spawn OKS_fnc_ArtyFire;

	};

	case 4: {

		// Trench Counter.
		[[[[8994.37,5355.34,0],0,[]],[[8999.37,5350.34,0],0,[]],[[8989.37,5350.34,0],0,[]],[[9004.37,5345.34,0],0,[]],[[8984.37,5345.34,0],0,[]],[[9009.37,5340.34,0],0,[]],[[8979.37,5340.34,0],0,[]],[[9014.37,5335.34,0],0,[]]],[],[[[8894.32,5355.94,-0.000156403],[[0,"Move"]]],[[8746.57,5459,4.48227e-05],[[0,"Move"]]],[[8649.94,5528.5,0.0073595],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[9039.79,5445.97,1.325],0,[]],[[9044.79,5440.97,3.8147e-06],0,[]],[[9034.79,5440.97,3.8147e-06],0,[]],[[9049.79,5435.97,3.8147e-06],0,[]],[[9029.79,5435.97,3.8147e-06],0,[]],[[9054.79,5430.97,3.8147e-06],0,[]],[[9024.79,5430.97,3.8147e-06],0,[]],[[9059.79,5425.97,3.8147e-06],0,[]]],[],[[[8983.85,5549.62,1.90735e-06],[[0,"Move"]]],[[8833.44,5523.95,0],[[0,"Move"]]],[[8641.55,5572.3,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	
		sleep 10;
		[[],[["UK3CB_TKM_O_UAZ_Dshkm",[9074.96,5437.22,-4.95911e-05],323,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]]],[[[9020.75,5520.11,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKM_O_UAZ_Dshkm",[9147.75,5174.74,0],346,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Green",1]],[7,["light_hide",1,"spare_hide",0]]]]],[[[9105.75,5356.87,0],[[0,"Move"]]],[[8954.06,5357.45,-7.62939e-06],[[0,"Move"]]],[[8899.68,5360.92,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 30;
		[[],[["UK3CB_ADM_O_Hilux_Pkm",[9109.27,5863.55,8.96454e-05],251,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[[[8944.56,5807.51,-0.000120163],[[0,"Move"]]],[[8786.95,5736.01,0],[[0,"Move"]]],[[8741.65,5702.56,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
	
		// IED 4.
		[[[[8781,5213.67,3.26508],222,"Up",[]],[[8780.58,5217.81,3.30455],222,"Up",[]],[[8781.66,5221.81,3.61694],264,"Up",[]],[[8782.43,5224.46,3.58826],332,"Up",[]],[[8786.37,5211.43,0],264,"Up",[]],[[8781.59,5214.42,0.270561],62,"Up",[]],[[8786.1,5220.5,0.870348],264,"Up",[]],[[8784.76,5225.38,0.886627],264,"Up",[]],[[8781.39,5222.38,0.870228],264,"Up",[]],[[8811.07,5214.32,0],329,"Up",[]],[[8800.02,5214.8,3.62651],346,"Middle",[]],[[8780.43,5228.37,0],298,"Middle",[]],[[8786.48,5238.45,2.26313],255,"Up",[]],[[8748.19,5221.03,6.39414],278,"Middle",[]],[[8747.85,5218.82,6.3915],278,"Middle",[]]],[["UK3CB_ADE_O_DSHkM_Mini_TriPod",[8748.63,5217.89,6.58895],282,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[8732.52,5151.34,6.97162],298,"Up",[]],[[8732.15,5148.15,6.93472],298,"Up",[]],[[8734.42,5152.02,6.82752],298,"Up",[]],[[8741.41,5152.53,6.22619],298,"Up",[]],[[8738.05,5152.09,3.56233],298,"Up",[]],[[8731.89,5149.94,4.09275],298,"Up",[]],[[8738.89,5145.66,0.338116],340,"Up",[]],[[8738.21,5152.48,0.470909],359,"Up",[]],[[8754.41,5125.8,3.85715],7,"Up",[]],[[8762.58,5127.92,3.30091],298,"Up",[]],[[8764.36,5154.76,0],198,"Up",[]],[[8744.41,5148.27,-1.90735e-06],197,"Up",[]],[[8732.05,5128.87,0.014513],18,"Up",[]],[[8754,5123.72,1.00217],46,"Up",[]],[[8759.39,5124.73,0.918024],298,"Up",[]],[[8751.38,5127.21,1.49897],356,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[8808.68,5153.96,0],0,[]],[[8813.68,5148.96,0],0,[]],[[8803.68,5148.96,0],0,[]],[[8818.68,5143.96,0],0,[]]],[],[[[8787.29,5097.79,0],[[0,"Move"]]],[[8696.2,5082.07,0],[[0,"Move"],[1,"SAFE"]]],[[8652.4,5164.31,3.8147e-06],[[0,"Move"]]],[[8802.25,5156.28,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8905,5200.73,0.244499],0,[]],[[8910,5195.73,-0.86277],0,[]],[[8900,5195.73,1.38595],0,[]],[[8915,5190.73,-1.92004],0,[]]],[],[[[8899.01,5175.19,1.58273],[[0,"Move"]]],[[8778.01,5188.16,0.205341],[[0,"Move"],[1,"SAFE"]]],[[8765.74,5258.7,6.37773],[[0,"Move"]]],[[8900.03,5250.69,1.7194],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[getpos LambsGroupSpawn_12, "ambushhunt", 4, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_13, "ambushhunt", 4, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_14, "ambushhunt", 4, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_15, "ambushhunt", 4, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_16, "ambushhunt", 4, independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
	};

	case 5: {

		// Counter IED 4
		[getpos LambsGroupSpawn_17, "hunt", 6, independent, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_18, "hunt", 6, independent, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_19, "hunt", 6, independent, 500] spawn OKS_fnc_Lambs_SpawnGroup;
		[getpos LambsGroupSpawn_20, "hunt", 6, independent, 500] spawn OKS_fnc_Lambs_SpawnGroup;
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*
	GOL SCRIPT EXAMPLES:
	Link to README: https://github.com/oksmantv/Guerrillas-of-Liberations-Misc-Addon?tab=readme-ov-file#readme 
*/ 