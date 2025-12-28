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

Private ["_Vehicles","_MG","_AT","_PatrolCountSmall","_PatrolCountLarge","_HuntVehicles"];
if(OKS_Difficulty isEqualTo 1) then {
	_Vehicles = [
		"UK3CB_ARD_O_BMP1", "UK3CB_ARD_O_BMP1",
		"UK3CB_ARD_O_BMP2", 
		"UK3CB_ARD_O_BTR80a", 
		"UK3CB_ARD_O_MTLB_Cannon", 
		"UK3CB_ARD_O_MTLB_BMP", "UK3CB_ARD_O_MTLB_BMP", 
		"UK3CB_ARD_O_GAZ_Vodnik_Cannon", 
		"UK3CB_ARD_O_Hilux_Spg9", "UK3CB_ARD_O_Hilux_Spg9", 
		"UK3CB_ARD_O_UAZ_SPG9", "UK3CB_ARD_O_UAZ_SPG9"	
	];		
	_MG = ["UK3CB_CHD_O_KORD_high"];
	_AT = ["UK3CB_ARD_O_SPG9"];
	_PatrolCountSmall = 14;
	_PatrolCountLarge = 26;
	_HuntVehicles = [];
} else {
	_Vehicles = [
		"UK3CB_ARD_O_BRDM2_HQ", "UK3CB_ARD_O_BRDM2_HQ", 
		"UK3CB_ARD_O_GAZ_Vodnik_KVPT", 
		"UK3CB_ARD_O_GAZ_Vodnik_PKT", "UK3CB_ARD_O_GAZ_Vodnik_PKT", 
		"UK3CB_ARD_O_Hilux_Pkm", "UK3CB_ARD_O_Hilux_Pkm", "UK3CB_ARD_O_Hilux_Pkm", 
		"UK3CB_ARD_O_Hilux_M2", 
		"UK3CB_ARD_O_Hilux_Dshkm", 
		"UK3CB_ARD_O_UAZ_MG", 
		"UK3CB_ARD_O_BTR40_MG","UK3CB_ARD_O_BTR40_MG"
	];
	_MG = ["UK3CB_AAF_O_PKM_High"];
	_AT = ["UK3CB_AAF_O_KORD","UK3CB_AAF_O_PKM_High"];
	_PatrolCountSmall = 8;
	_PatrolCountLarge = 18;	
	_HuntVehicles = ["UK3CB_TKA_O_BTR40_MG", 
					"UK3CB_TKA_O_BTR40", 
					"UK3CB_TKA_O_BTR60", 
					"UK3CB_TKA_O_M113_M2", 
					"UK3CB_TKA_O_MTLB_KPVT", 
					"UK3CB_TKA_O_Tigr_FFV", 
					"UK3CB_TKA_O_Tigr", 
					"UK3CB_TKA_O_GAZ_Vodnik", 
					"UK3CB_TKA_O_Hilux_Open", 
					"UK3CB_TKA_O_MAZ_543_Transport_Closed", 
					"UK3CB_TKA_O_MAZ_543_Transport_Open", 
					"UK3CB_TKA_O_UAZ_Closed", 
					"UK3CB_TKA_O_UAZ_Open", 
					"UK3CB_TKA_O_Ural_Open", 
					"UK3CB_TKA_O_Ural", 
					"UK3CB_TKA_O_Hilux_Closed"];
};


switch (_case) do {

	case 1: {

		// Anti-Air MGs.
		[[],[["rhs_KORD_high_MSV",[3497.45,8220.71,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[3501.04,8221.87,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[3566.37,9091.61,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[3570.37,9092.72,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[4136.95,7855.04,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[4140.53,7856.19,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[4712.94,8810.51,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[4716.47,8811.84,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[5615.13,9257.71,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[5618.68,9258.83,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[5244.68,8073.08,0],221,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[5247.89,8071.24,0],221,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[4798.26,7081.39,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[4801.78,7082.49,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[3544.2,7186.12,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[3548.14,7187.14,0],173,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[5783.04,8368.61,0],278,[["gunner",-1,[0]]],[]],["rhs_KORD_high_MSV",[5783.32,8364.9,0],278,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		[mortar_1, east, "precise", "light", ["auto", 50],150,600,25] execVM "Scripts\NEKY_Mortars\NEKY_Mortars.sqf";	
		[Group officer_1,getPos ExfilSite_1,west,true,nil,false] execVM "Scripts\OKS_Task\OKS_Evacuate_HVT.sqf";

		// Blocking T-55s
		[[],[
			["UK3CB_ARD_O_T55",[2603.28,6680.78,0],179,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[2531.81,6684.85,1],172,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_TKA_O_UAZ_MG",[2717.45,6666.04,0],180,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_TKA_O_UAZ_MG",[2660.53,6677.54,0],171,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[2837.53,6877.04,0],209,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_TKA_O_UAZ_MG",[3108.58,6807.95,0],237,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[2651.11,7082.04,0],238,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		// Penetration 1
		[[[[3625.15,6141.2,3.14841],223,"Middle",[]],[[3623.53,6143.16,3.15103],228,"Middle",[]],[[3620.34,6147.79,3.58081],238,"Middle",[]],[[3641.81,6140.37,4.18005],230,"Middle",[]],[[3643.07,6137.5,4.17061],230,"Middle",[]],[[3646.9,6142.89,3.82708],259,"Middle",[]],[[3646.53,6116.92,0],233,"Middle",[]],[[3651.02,6112.57,0],230,"Middle",[]]],[[selectRandom _Vehicles,[3651.34,6116.08,1],237,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3901.86,5982.81,3.57439],288,"Up",[]],[[3933.67,6021.52,3.78223],334,"Up",[]],[[3928.26,6015.13,3.6953],261,"Up",[]],[[3909.39,6009.02,5.15764],320,"Middle",[]],[[3911.58,6004.31,5.10466],280,"Middle",[]]],[[selectRandom _AT,[3891.04,5978.46,3.24394],281,[["gunner",-1,[0]]],[]],[selectRandom _Vehicles,[3939.99,6014.42,1],1,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3836.62,6197.19,3.71284],193,"Up",[]],[[3840.44,6197.75,3.61592],158,"Up",[]],[[3816.19,6197.21,2.61186],220,"Middle",[]]],[[selectRandom _Vehicles,[3842.87,6212.9,1],88,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3958.68,6191.25,0],262,"Up",[]],[[3964.19,6198.71,2.99057],258,"Middle",[]],[[3989.72,6202.04,6.36431],257,"Middle",[]],[[3989.34,6208.1,6.43774],283,"Middle",[]]],[[selectRandom _Vehicles,[3999.67,6204.53,1],331,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4016.31,6241.95,3.15804],280,"Middle",[]],[[4016.74,6240.24,3.15126],229,"Middle",[]],[[4015.34,6221.57,7.62939e-006],256,"Middle",[]],[[4028.62,6242.6,6.27094],244,"Middle",[]],[[4025.99,6244.53,3.33019],246,"Middle",[]],[[4029.09,6245.94,3.16801],306,"Up",[]],[[4021.48,6239.06,0],189,"Up",[]],[[4032.38,6248.69,3.10337],320,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3922.18,6300.01,3.55969],256,"Up",[]],[[3922.9,6296.63,3.52087],256,"Up",[]],[[3932.6,6295.61,3.32268],198,"Up",[]],[[3927.88,6296.34,3.65938],218,"Up",[]],[[3979.65,6323.06,2.82447],172,"Up",[]],[[3991.99,6286.83,3.01135],188,"Middle",[]],[[3948.07,6269.76,1.44086],94,"Up",[]],[[3963.86,6282.47,0.913445],170,"Up",[]],[[3983.47,6274.35,0],154,"Middle",[]]],[[selectRandom _AT,[3976.44,6288.07,0],202,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Penetration 2
		[[[[4522.19,6416.6,3.03887],290,"Up",[]],[[4512.06,6431.27,3.11197],276,"Up",[]],[[4502.72,6477.41,8.19835],274,"Up",[]],[[4504.48,6475.28,5.31048],251,"Up",[]],[[4505.24,6482.12,1.97305],352,"Up",[]],[[4558.74,6485.71,7.32029],320,"Middle",[]],[[4558.06,6486.35,4.39147],321,"Up",[]],[[4503.66,6479.67,8.08512],299,"Up",[]],[[4560.75,6484.76,4.48935],47,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4439.06,6529.66,0],238,"Up",[]],[[4473.87,6541.37,-7.62939e-006],235,"Up",[]],[[4446.89,6545.19,8.09321],238,"Middle",[]],[[4448.84,6544.61,5.23254],168,"Middle",[]],[[4479.76,6559.38,0.902632],126,"Up",[]],[[4488.21,6562.94,0.449461],274,"Up",[]],[[4482.13,6570.45,0.141922],133,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4484.67,6478.66,3.46046],267,"Middle",[]],[[4540.85,6638.88,1.04904e-005],217,"Up",[]],[[4535.93,6643.93,-1.43051e-005],221,"Up",[]],[[4529.24,6647.68,1.14441e-005],225,"Up",[]],[[4528.89,6691.41,9.72748e-005],193,"Up",[]],[[4547.2,6685.39,3.62396e-005],178,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4416.31,6609.67,8.35552],158,"Up",[]],[[4371.43,6652.4,4.99971],189,"Middle",[]],[[4366.66,6683.82,7.94619],161,"Up",[]],[[4433.07,6663.03,7.83898],70,"Up",[]],[[4469.76,6619.14,-9.53674e-006],80,"Up",[]],[[4467.13,6631.51,-2.86102e-006],53,"Up",[]],[[4488.67,6661.01,0],190,"Up",[]],[[4499.55,6662.24,1.90735e-006],80,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[],[[selectRandom _AT,[4485.26,6477.4,3.5173],255,[["gunner",-1,[0]]],[]],[selectRandom _AT,[4373,6652.12,4.93431],195,[["gunner",-1,[0]]],[]],[selectRandom _AT,[4494.3,6660.67,0],184,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		[Trigger_1,false,[0,_PatrolCountSmall,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_2,false,[0,_PatrolCountLarge,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;	

		[
			getPos drone_1,
			getPos drone_2,
			east,
			"UK3CB_TKA_O_UH1H_M240",
			["LOITER",false],		
			[500,4],
			[100,500],
			["","","","","","",""],
			true
		] spawn OKS_Scout;	

		[getPos aa_1,east,50,500,1500,120] spawn OKS_IR_AA;
		[getPos aa_2,east,50,500,1500,120] spawn OKS_IR_AA;
	
	};

	case 2: {

		// Penetration 3
		[[[[4727.53,7469.99,2.5574],170,"Up",[]],[[4729.43,7471.63,2.58922],116,"Up",[]],[[4612.97,7389.37,0.028862],113,"Up",[]],[[4616.74,7394.29,0.028862],136,"Up",[]],[[4629.21,7431.2,0.028862],112,"Up",[]],[[4618.19,7432.85,4.19886],56,"Up",[]],[[4651.33,7425.61,0.028862],112,"Up",[]],[[4629.52,7460.28,0],164,"Middle",[]],[[4726.12,7489.47,0.028861],70,"Up",[]],[[4615.58,7438.32,0.02215],50,"Up",[]],[[4525.27,7456.86,3.0881],36,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4866.26,7594.63,6.6533],160,"Up",[]],[[4866,7597.13,3.70414],69,"Up",[]],[[4904.38,7609.6,6.62056],178,"Up",[]],[[4902.38,7611.75,3.69101],248,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4994.36,7397.25,3.68314],241,"Up",[]],[[4997.12,7394.35,3.59457],183,"Up",[]],[[5004.13,7396.2,3.17021],183,"Up",[]],[[4987.67,7417.79,3.70367],238,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[],[[selectRandom _AT,[4984.44,7428.93,3.21286],211,[["gunner",-1,[0]]],[]],[selectRandom _Vehicles,[4882.39,7611.02,1],161,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[4722.52,7492.27,8.58307e-006],58,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _AT,[4607.98,7396.32,0.160492],129,[["gunner",-1,[0]]],[]],[selectRandom _AT,[4523.42,7459.55,3.15746],227,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		[[[[5255.16,7449.81,3.70002],148,"Up",[]],[[5258.41,7452.01,3.65733],148,"Up",[]],[[5255.02,7461.98,3.31847],36,"Up",[]],[[5232.66,7441.22,3.59205],194,"Up",[]]],[[selectRandom _AT,[5231.72,7446.01,3.7958],145,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5649.09,7196.25,2.60941],209,"Up",[]],[[5625.52,7212.22,9.59968],209,"Middle",[]],[[5623.58,7215.62,9.57583],242,"Middle",[]],[[5615.8,7246.85,3.61432],255,"Middle",[]],[[5538.26,7364.91,3.68896],243,"Up",[]],[[5540.75,7361.21,3.45063],181,"Up",[]],[[5563.72,7326.89,2.745],181,"Up",[]],[[5726.03,7379.33,3.60087],246,"Up",[]],[[5731.66,7377.22,3.45237],216,"Up",[]],[[5598.18,7684.66,7.2615],142,"Up",[]],[[5496.46,7647.34,7.69991],86,"Up",[]],[[5504.01,7565.15,3.85837],94,"Up",[]]],[[selectRandom _AT,[5725.6,7409.88,3.21005],195,[["gunner",-1,[0]]],[]],[selectRandom _Vehicles,[5475.45,7754.12,8.58307e-006],160,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Artillery Objective
		{[east,_X,getPos (selectRandom [target_1,target_2,target_3]),6,300,300] spawn OKS_ArtyFire; sleep (3 +(random 5));} foreach [arty_1,arty_2,arty_3];

		[Trigger_3,false,[0,_PatrolCountLarge,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;	

		[
			getPos drone_3,
			getPos drone_4,
			east,
			"UK3CB_TKA_O_UH1H_M240",
			["LOITER",false],		
			[500,4],
			[100,500],
			["","","","","","",""],
			true
		] spawn OKS_Scout;			
	};

	case 3: {

		// Penetration 4
		[[[[5418.5,7989.77,0],279,"Up",[]],[[5414.52,8001.94,0],225,"Up",[]],[[5424.25,8006.68,0],279,"Up",[]],[[5439.11,7997.37,3.05763],164,"Middle",[]],[[5418.29,7983.57,6.27095],184,"Middle",[]],[[5403.3,8015.89,3.12708],237,"Up",[]],[[5465.68,8035.72,3.67959],206,"Up",[]],[[5410.92,8024.63,3.69636],74,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5116.68,7888.6,3.69451],124,"Up",[]],[[5116.65,7912.03,6.35505],105,"Up",[]],[[5093.83,7917.99,3.11994],77,"Middle",[]],[[5191.15,7855.72,3.76442],73,"Up",[]],[[5212.24,7845.03,3.14497],139,"Up",[]]],[[selectRandom _Vehicles,[5426.52,8001.4,0],247,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4690.24,7884.87,3.7241],134,"Up",[]],[[4691.18,7892.03,3.39409],112,"Up",[]],[[4690.38,7887.54,3.7241],122,"Up",[]],[[4688.04,7907.26,3.39409],139,"Up",[]],[[4691.04,7917.13,3.75463],134,"Up",[]],[[4695.52,7916.81,3.8091],87,"Up",[]]],[[selectRandom _Vehicles,[4689.81,7902.24,0],91,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4343.72,7998.57,0.084095],115,"Up",[]],[[4344.12,8012.62,0],115,"Up",[]],[[4344.19,8008.13,0.084095],102,"Up",[]],[[4329.02,7985.63,0.084095],166,"Up",[]],[[4343.44,8002.92,0.084095],117,"Up",[]],[[4325.95,7996.39,0.084095],53,"Up",[]],[[4335.4,8018.25,0.084095],48,"Up",[]],[[4325.04,8042.26,3.10951],138,"Middle",[]]],[[selectRandom _Vehicles,[4325.72,8032.03,0],128,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Artillery Objective
		[[[[4859.51,8201.7,2.66896],280,"Up",[]],[[4877.69,8172.26,3.59263],280,"Up",[]],[[4874.6,8174.33,0.524994],350,"Up",[]],[[4872.27,8180.95,0],199,"Up",[]],[[4859.56,8196.25,0.152397],109,"Up",[]],[[4867.88,8148.73,6.27096],30,"Up",[]],[[4873.86,8065.78,6.36821],182,"Middle",[]],[[4869.62,8068.99,6.22606],199,"Middle",[]],[[4863.28,8114.57,0],270,"Up",[]],[[4856.77,8125.74,0],188,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4844.46,8122.61,0],145,"Up",[]],[[4830.64,8109.92,0],265,"Up",[]],[[4825.57,8126.85,0],179,"Up",[]],[[4818.01,8128.81,9.53674e-007],184,"Up",[]],[[4789.03,8119.09,3.28242],247,"Up",[]],[[4790.34,8126.09,3.63296],276,"Up",[]],[[4789.55,8103.86,3.61724],187,"Up",[]],[[4816.2,8093.74,2.69417],202,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[],[[selectRandom _Vehicles,[4815.5,8145.71,1],290,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[4850.55,8087.13,1],187,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[4781.05,8098.42,1],173,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		[
			getPos drone_5,
			getPos drone_6,
			east,
			"UK3CB_TKA_O_UH1H_M240",
			["LOITER",false],		
			[500,4],
			[100,500],
			["","","","","","",""],
			true
		] spawn OKS_Scout;	

		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 6,450,east,_HuntVehicles,200] spawn NEKY_Hunt_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 6,450,east,_HuntVehicles,200] spawn NEKY_Hunt_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 6,450,east,_HuntVehicles,200] spawn NEKY_Hunt_HuntBase;
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_1, 6,450,east,_HuntVehicles,200] spawn NEKY_Hunt_HuntBase;

	};

	case 4: {

		// Clear Phase 1 area of enemies
		[Phase1Trigger] spawn OKS_DeleteDeadAndObjects;

		[Trigger_4,false,[0,_PatrolCountLarge,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;	

		// Penetration 5
		[[[[5266.77,8356.86,6.63961],128,"Up",[]],[[5268.17,8358.51,3.71635],128,"Up",[]],[[5253.68,8377,2.69703],90,"Up",[]],[[5175.7,8358.63,6.6293],210,"Middle",[]],[[5161.7,8372.13,4.22335],212,"Up",[]],[[5213.16,8389.88,1.57917],56,"Up",[]],[[5236.96,8382.16,1.47714],22,"Up",[]]],[[selectRandom _Vehicles,[5192.85,8397.09,0],81,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[5287.54,8384.42,0],199,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5040.05,8538.04,3.36335],247,"Up",[]],[[5039.85,8540.84,3.36335],329,"Up",[]],[[5049.99,8535.65,3.77835],177,"Up",[]],[[5031.75,8525.71,2.64278],226,"Up",[]],[[5059.75,8516.7,6.3243],233,"Up",[]],[[5067.76,8486.34,3.65623],193,"Up",[]]],[[selectRandom _Vehicles,[5092.69,8519.4,0],160,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4865.53,8520.51,3.74384],178,"Up",[]],[[4869.17,8521.15,3.67571],164,"Up",[]],[[4874.35,8526.67,3.36883],132,"Up",[]],[[4825.78,8614.19,3.72962],94,"Up",[]],[[4821.86,8616.03,3.71573],283,"Up",[]],[[4814.95,8612.53,3.52351],283,"Up",[]],[[4790.24,8643.44,3.85351],283,"Up",[]],[[4799.33,8645.55,3.52351],173,"Up",[]]],[[selectRandom _Vehicles,[4825.25,8651.68,0],241,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],[selectRandom _Vehicles,[4871.41,8755.82,0],166,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

	};

	case 5: {

		// Clear Phase 2 area of enemies
		{
			if(!isPlayer _X && side _X == east && _X in (List Phase2Trigger)) then {
				deleteVehicle _X
			};
		} foreach allUnits;
		{
			if(!isPlayer _X && side _X == east && _X in (List Phase2Trigger)) then {
				{deleteVehicle _X} foreach crew _X;
			};
		} foreach vehicles;

		// HQ Objective
		{
			[_X,nil,selectRandom _Vehicles,east,(600 + (random 300)),"hunt",1000] spawn OKS_Inactive_VehicleSpawn;
		} foreach [Reserve_1,Reserve_2,Reserve_3,Reserve_4,Reserve_5,Reserve_6];		

		[[[[6290.77,8572.9,0.173855],114,"Up",[]],[[6289.72,8583.8,0.173855],114,"Up",[]],[[6308.36,8585.05,0.50825],266,"Up",[]],[[6308.78,8580.52,3.08951],265,"Middle",[]],[[6305.13,8590.45,0.173855],206,"Middle",[]],[[6298.2,8605.16,6.77992],270,"Up",[]],[[6301.24,8602.62,3.8387],194,"Up",[]],[[6296.81,8607,3.82457],13,"Up",[]],[[6304.09,8607.59,0.745148],271,"Up",[]],[[6311.08,8576.48,0.523855],194,"Up",[]],[[6306.98,8607.33,0.173856],182,"Up",[]],[[6300.36,8614.28,0.173856],194,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6511.8,8645.32,0.407899],194,"Up",[]],[[6516.49,8649.89,0.173856],272,"Up",[]],[[6508.47,8671.14,0.173856],181,"Up",[]],[[6515.17,8665.26,3.83818],194,"Up",[]],[[6513.49,8665.75,6.75521],194,"Up",[]],[[6512.31,8667.67,6.59514],308,"Up",[]],[[6518.44,8672.19,6.77458],194,"Up",[]],[[6516.65,8669.97,3.65072],249,"Up",[]],[[6511.26,8670.28,0.571331],100,"Up",[]],[[6521.63,8675.68,0.173856],177,"Up",[]],[[6534.78,8659.56,0.173856],295,"Up",[]],[[6530.9,8680.24,0.173856],182,"Up",[]],[[6534.09,8669.66,6.77459],274,"Up",[]],[[6534.5,8675.37,6.72954],222,"Up",[]],[[6535.55,8670.41,0.745148],194,"Up",[]],[[6544.77,8672.14,0.173856],194,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;		



	};

	case 6: {

		[
			getPos drone_7,
			getPos drone_8,
			east,
			"UK3CB_TKA_O_UH1H_M240",
			["LOITER",false],		
			[500,4],
			[100,500],
			["","","","","","",""],
			true
		] spawn OKS_Scout;	

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
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_CreateZone")};

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
			] spawn OKS_CreateZone;
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

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn NEKY_Hunt_HuntBase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Hunt_HuntBase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn NEKY_Hunt_HuntBase;
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
		   6 - gunner Split - [How many teams,Procent of gunner] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
