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

		[[],[["UK3CB_MEE_O_Hilux_Dshkm",[2406.07,2811.87,0],182,[["gunner",-1,[0]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]],["UK3CB_MEE_O_Hilux_Dshkm",[3660.62,2894.61,-1.52588e-005],146,[["gunner",-1,[0]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]],["UK3CB_MEE_O_Hilux_Dshkm",[3431.78,4468.19,0],109,[["gunner",-1,[0]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]],["UK3CB_MEE_O_Hilux_Dshkm",[6959.93,845.831,1.52588e-005],330,[["gunner",-1,[0]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[2420.96,2741.32,0],1,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[3667.72,2852.77,-1.52588e-005],1,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[3426.14,4441.54,0],303,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[6984,811.673,1.52588e-005],1,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[6668.27,1479.38,0],1,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[6358.4,2188.82,0],1,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[6310.91,2201.7,0],6,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[6334.7,3165.28,0],1,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[6310.61,3178.15,0],1,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[6342.4,4635.7,0],1,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[5249.02,5023.75,0],37,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[5201.13,5031.43,0],330,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Offroad_M2",[2397.31,2714.39,1.52588e-005],164,[["gunner",-1,[0]]],[[6,["MEE",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]],["UK3CB_MEE_O_Offroad_M2",[3640.58,2890.05,0],138,[["gunner",-1,[0]]],[[6,["MEE",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]],["UK3CB_MEE_O_Offroad_M2",[3453.63,4418.19,0],151,[["gunner",-1,[0]]],[[6,["MEE",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]],["UK3CB_MEE_O_Offroad_M2",[6648.65,1507.7,-1.52588e-005],301,[["gunner",-1,[0]]],[[6,["MEE",1]],[7,["HideBackpacks",1,"HideBumper1",1,"HideBumper2",1,"HideConstruction",1,"Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		
		// Village 1
		[[[[3478.07,629.148,0],48,"Up",[]],[[3492,632.383,1.52588e-005],298,"Up",[]],[[3486.93,615.381,3.17435],202,"Up",[]],[[3493.86,616.349,2.77815],48,"Up",[]],[[3501.8,629.139,0],218,"Up",[]],[[3465.14,621.447,1.52588e-005],72,"Up",[]],[[3468.45,632.47,0.363297],48,"Up",[]],[[3488.4,616.288,0.438385],299,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3585.26,660.993,3.84886],326,"Up",[]],[[3593.56,657.064,3.43005],160,"Up",[]],[[3584.29,654.917,0.765167],69,"Up",[]],[[3579.25,662.692,0],59,"Up",[]],[[3596.2,678.106,0],227,"Middle",[]],[[3585.97,652.759,3.24852],237,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3576.87,726.802,0],230,"Up",[]],[[3559.65,729.792,2.80057],280,"Up",[]],[[3568.26,734.384,4.29012],326,"Up",[]],[[3570.29,726.696,3.97757],192,"Up",[]],[[3576.83,716.307,0.542038],308,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3549.86,722.997,0],157,"Up",[]],[[3544.15,705.464,5.36012],326,"Up",[]],[[3546.38,699.32,1.45328],326,"Up",[]],[[3539.19,703.186,1.52588e-005],326,"Up",[]],[[3546.52,710.424,0],275,"Up",[]],[[3569.64,682.182,1.52588e-005],61,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3549.86,722.997,0],157,"Up",[]],[[3544.15,705.464,5.36012],326,"Up",[]],[[3546.38,699.32,1.45328],326,"Up",[]],[[3539.19,703.186,1.52588e-005],326,"Up",[]],[[3546.52,710.424,0],275,"Up",[]],[[3569.64,682.182,1.52588e-005],61,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Village 2
		[[[[5750.46,936.278,-3.05176e-005],110,"Up",[]],[[5750.35,930.197,1.02505],79,"Up",[]],[[5755.73,918.311,-3.05176e-005],65,"Up",[]],[[5748.35,927.656,1.55249],111,"Up",[]],[[5754.97,923.722,0.602478],110,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5768.84,976.725,-6.10352e-005],270,"Up",[]],[[5761.05,965.033,-3.05176e-005],7,"Up",[]],[[5767.78,960.306,-3.05176e-005],30,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5795.3,963.398,-3.05176e-005],243,"Up",[]],[[5784.63,971.201,1.21481],158,"Up",[]],[[5776.13,968.518,5.67831],244,"Up",[]],[[5779.76,964.734,5.18457],61,"Up",[]],[[5777.37,965.181,8.18338],114,"Up",[]],[[5784.31,962.526,8.01379],269,"Up",[]],[[5780.36,964.946,2.11148],258,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Villa
		[[[[5858.8,895.714,4.44],325,"Up",[]],[[5861.15,900.511,4.41241],204,"Up",[]],[[5865.51,904.437,4.48206],272,"Up",[]],[[5857.89,902.337,0.754547],225,"Up",[]],[[5864.7,903.881,0.887207],293,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5841.14,897.472,4.27875],67,"Up",[]],[[5837.09,895.871,4.27475],278,"Up",[]],[[5845.03,888.305,4.43494],12,"Up",[]],[[5852.9,894.893,4.34476],337,"Up",[]],[[5849.54,901.684,0.693726],301,"Up",[]],[[5854.21,892.98,0.838898],338,"Up",[]]],[["UK3CB_AAF_O_DSHKM",[5842.02,907.544,4.26544],301,[],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5819.99,901.605,7.35687],303,"Up",[]],[[5826.26,908.57,7.52762],303,"Up",[]],[[5834.6,893.318,0.70636],328,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {

		[HuntBase_5, HuntSpawn_5, Trigger_2, 4,300,east,["UK3CB_MEE_O_BTR40_MG", "UK3CB_MEE_O_M113tank_M240", "UK3CB_MEE_O_Datsun_Pkm", "UK3CB_MEE_O_Datsun_Open", "UK3CB_MEE_O_Hilux_BMP", "UK3CB_MEE_O_Hilux_M2", "UK3CB_MEE_O_Hilux_Open", "UK3CB_MEE_O_LR_Open", "UK3CB_MEE_O_LR_Closed", "UK3CB_MEE_O_Pickup", "UK3CB_MEE_O_Van_Transport", "UK3CB_MEE_O_M998_4DR"],60] spawn NEKY_Hunt_HuntBase;
		[HuntBase_6, HuntSpawn_6, Trigger_2, 4,300,east,["UK3CB_MEE_O_BTR40_MG", "UK3CB_MEE_O_M113tank_M240", "UK3CB_MEE_O_Datsun_Pkm", "UK3CB_MEE_O_Datsun_Open", "UK3CB_MEE_O_Hilux_BMP", "UK3CB_MEE_O_Hilux_M2", "UK3CB_MEE_O_Hilux_Open", "UK3CB_MEE_O_LR_Open", "UK3CB_MEE_O_LR_Closed", "UK3CB_MEE_O_Pickup", "UK3CB_MEE_O_Van_Transport", "UK3CB_MEE_O_M998_4DR"],60] spawn NEKY_Hunt_HuntBase;
		[HuntBase_7, HuntSpawn_7, Trigger_2, 4,300,east,["UK3CB_MEE_O_BTR40_MG", "UK3CB_MEE_O_M113tank_M240", "UK3CB_MEE_O_Datsun_Pkm", "UK3CB_MEE_O_Datsun_Open", "UK3CB_MEE_O_Hilux_BMP", "UK3CB_MEE_O_Hilux_M2", "UK3CB_MEE_O_Hilux_Open", "UK3CB_MEE_O_LR_Open", "UK3CB_MEE_O_LR_Closed", "UK3CB_MEE_O_Pickup", "UK3CB_MEE_O_Van_Transport", "UK3CB_MEE_O_M998_4DR"],60] spawn NEKY_Hunt_HuntBase;
		[HuntBase_8, HuntSpawn_8, Trigger_2, 4,300,east,["UK3CB_MEE_O_BTR40_MG", "UK3CB_MEE_O_M113tank_M240", "UK3CB_MEE_O_Datsun_Pkm", "UK3CB_MEE_O_Datsun_Open", "UK3CB_MEE_O_Hilux_BMP", "UK3CB_MEE_O_Hilux_M2", "UK3CB_MEE_O_Hilux_Open", "UK3CB_MEE_O_LR_Open", "UK3CB_MEE_O_LR_Closed", "UK3CB_MEE_O_Pickup", "UK3CB_MEE_O_Van_Transport", "UK3CB_MEE_O_M998_4DR"],60] spawn NEKY_Hunt_HuntBase;

		/// Village 3
		// OP
		[[[[4672.08,3282.57,0],237,"Up",[]],[[4659.68,3261.8,-3.05176e-005],318,"Up",[]],[[4672.95,3253.43,1.52588e-005],339,"Up",[]],[[4672.14,3278.79,0.123215],129,"Up",[]],[[4671.78,3276.05,2.87419],260,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6186.29,3662.43,4.86533],99,"Up",[]],[[6177.21,3662.97,1.08087],241,"Up",[]],[[6182.61,3657.76,4.56612],208,"Middle",[]],[[6181.74,3665.36,8.02792],277,"Middle",[]],[[6183.21,3660.8,7.57416],246,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		[[[[5099.07,3583.56,-3.05176e-005],81,"Up",[]],[[5113.71,3590.81,-4.57764e-005],197,"Up",[]],[[5126.07,3580.8,-4.57764e-005],256,"Up",[]],[[5126.82,3588.77,-4.57764e-005],195,"Up",[]],[[5117.31,3586.35,0.329468],162,"Up",[]],[[5137.3,3584.38,3.56795],187,"Up",[]],[[5143.69,3583.36,0.536179],192,"Up",[]],[[5131.27,3578.45,-4.57764e-005],97,"Up",[]],[[5132.71,3588.09,-6.10352e-005],159,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5151.35,3579.18,-4.57764e-005],243,"Up",[]],[[5153.38,3584.17,-4.57764e-005],169,"Up",[]],[[5162.71,3579.73,-4.57764e-005],187,"Up",[]],[[5175.6,3575.87,-4.57764e-005],247,"Middle",[]],[[5170.75,3578.44,0.91301],16,"Up",[]],[[5163.06,3585.12,0.148819],81,"Up",[]],[[5192.51,3583.79,0],257,"Middle",[]],[[5176.27,3588.44,-4.57764e-005],163,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[5153.58,3664.98,-1.52588e-005],201,"Up",[]],[[5146.94,3674.02,0],254,"Up",[]],[[5133.55,3657.69,0.0168304],21,"Up",[]],[[5130.87,3667.9,0.0168152],109,"Up",[]],[[5133.48,3671.22,0.605789],93,"Up",[]],[[5140.63,3673.41,2.45894],155,"Middle",[]],[[5138.48,3672.38,2.65367],162,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5180.35,3677.21,0],216,"Up",[]],[[5159.66,3666.44,1.52588e-005],76,"Up",[]],[[5172.34,3684.56,0],189,"Up",[]],[[5167.8,3686.91,1.12877],186,"Up",[]],[[5158.23,3680.14,0.0168152],64,"Up",[]],[[5154.74,3681.38,-1.52588e-005],147,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[5146.01,3494.04,-1.52588e-005],178,"Up",[]],[[5154.65,3498.89,7.06392],178,"Up",[]],[[5150.02,3498.5,7.10669],178,"Up",[]],[[5151.95,3498.66,4.17],178,"Up",[]],[[5155.4,3504.09,1.02428],257,"Up",[]],[[5150.97,3501.96,4.14465],62,"Up",[]],[[5155.1,3504.76,7.05269],263,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5176.51,3501.46,-4.57764e-005],178,"Up",[]],[[5164.08,3493.35,-4.57764e-005],62,"Up",[]],[[5170.35,3505.91,2.21248],169,"Up",[]],[[5171.5,3502.62,5.77396],284,"Up",[]],[[5168.27,3498.32,6.79604],205,"Up",[]],[[5169.13,3507.66,5.72079],350,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Vehicles
		[[],[["UK3CB_MEE_O_Hilux_M2",[5156.16,3655.84,0],245,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23_Front",[5186.64,3644.77,4.57764e-005],155,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[5253.4,3661.09,0],280,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_Hilux_Zu23",[5121.26,3663.97,-1.52588e-005],323,[["gunner",-1,[1]]],[[6,["MEE",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_MEE_O_LR_SPG9",[5226.27,3534.98,-1.52588e-005],223,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["MEE",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

			//// START OF ZONE /////
			[	Trigger_3,  // Name of Trigger used as Spawn Area
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
				,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;
			//// END OF ZONE ////	

	};

	case 3: {

		/// Hunt Village 3
		[HuntBase_11, HuntSpawn_11, Trigger_3, 4,300,east,["UK3CB_MEE_O_BTR40_MG", "UK3CB_MEE_O_M113tank_M240", "UK3CB_MEE_O_Datsun_Pkm", "UK3CB_MEE_O_Datsun_Open", "UK3CB_MEE_O_Hilux_BMP", "UK3CB_MEE_O_Hilux_M2", "UK3CB_MEE_O_Hilux_Open", "UK3CB_MEE_O_LR_Open", "UK3CB_MEE_O_LR_Closed", "UK3CB_MEE_O_Pickup", "UK3CB_MEE_O_Van_Transport", "UK3CB_MEE_O_M998_4DR"],60] spawn NEKY_Hunt_HuntBase;
		[HuntBase_12, HuntSpawn_12, Trigger_3, 4,300,east,["UK3CB_MEE_O_BTR40_MG", "UK3CB_MEE_O_M113tank_M240", "UK3CB_MEE_O_Datsun_Pkm", "UK3CB_MEE_O_Datsun_Open", "UK3CB_MEE_O_Hilux_BMP", "UK3CB_MEE_O_Hilux_M2", "UK3CB_MEE_O_Hilux_Open", "UK3CB_MEE_O_LR_Open", "UK3CB_MEE_O_LR_Closed", "UK3CB_MEE_O_Pickup", "UK3CB_MEE_O_Van_Transport", "UK3CB_MEE_O_M998_4DR"],60] spawn NEKY_Hunt_HuntBase;
		[HuntBase_13, HuntSpawn_13, Trigger_3, 4,300,east,["UK3CB_MEE_O_BTR40_MG", "UK3CB_MEE_O_M113tank_M240", "UK3CB_MEE_O_Datsun_Pkm", "UK3CB_MEE_O_Datsun_Open", "UK3CB_MEE_O_Hilux_BMP", "UK3CB_MEE_O_Hilux_M2", "UK3CB_MEE_O_Hilux_Open", "UK3CB_MEE_O_LR_Open", "UK3CB_MEE_O_LR_Closed", "UK3CB_MEE_O_Pickup", "UK3CB_MEE_O_Van_Transport", "UK3CB_MEE_O_M998_4DR"],60] spawn NEKY_Hunt_HuntBase;
		[HuntBase_10, HuntSpawn_15, Trigger_3, 4,300,east,["UK3CB_MEE_O_BTR40_MG", "UK3CB_MEE_O_M113tank_M240", "UK3CB_MEE_O_Datsun_Pkm", "UK3CB_MEE_O_Datsun_Open", "UK3CB_MEE_O_Hilux_BMP", "UK3CB_MEE_O_Hilux_M2", "UK3CB_MEE_O_Hilux_Open", "UK3CB_MEE_O_LR_Open", "UK3CB_MEE_O_LR_Closed", "UK3CB_MEE_O_Pickup", "UK3CB_MEE_O_Van_Transport", "UK3CB_MEE_O_M998_4DR"],60] spawn NEKY_Hunt_HuntBase;
		[HuntBase_9, HuntSpawn_14, Trigger_3, 4,300,east,["UK3CB_MEE_O_BTR40_MG", "UK3CB_MEE_O_M113tank_M240", "UK3CB_MEE_O_Datsun_Pkm", "UK3CB_MEE_O_Datsun_Open", "UK3CB_MEE_O_Hilux_BMP", "UK3CB_MEE_O_Hilux_M2", "UK3CB_MEE_O_Hilux_Open", "UK3CB_MEE_O_LR_Open", "UK3CB_MEE_O_LR_Closed", "UK3CB_MEE_O_Pickup", "UK3CB_MEE_O_Van_Transport", "UK3CB_MEE_O_M998_4DR"],60] spawn NEKY_Hunt_HuntBase;

	};

	case 4: {

		[[[[4372.3,3970.57,1.52588e-005],184,"Middle",[]],[[4357.96,3969.81,1.52588e-005],177,"Middle",[]],[[4359.62,4020.27,1.52588e-005],184,"Middle",[]],[[4371.35,4046.27,1.52588e-005],184,"Up",[]],[[4360.55,4045.39,0.728088],135,"Middle",[]],[[4360.46,4025.32,0.728867],59,"Middle",[]],[[4322.84,4010.61,1.52588e-005],249,"Middle",[]],[[4324.61,4005.87,0],341,"Middle",[]],[[4301.01,3995.71,1.52588e-005],205,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4305.29,3991.15,1.52588e-005],244,"Middle",[]],[[4315.13,3995.64,0.728867],348,"Middle",[]],[[4279.67,3993.8,0],115,"Up",[]],[[4265.34,3993.35,0],61,"Up",[]],[[4268.05,4013.99,0],177,"Up",[]],[[4265.57,4036.44,0],186,"Middle",[]],[[4263.56,4038,0],187,"Middle",[]],[[4252.5,3983.53,0],15,"Middle",[]],[[4242.68,3977.26,3.12651],14,"Up",[]],[[4247.34,3976.94,3.12183],34,"Up",[]],[[4249.27,3975.92,0.593491],280,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4240.62,3970.81,0.601669],39,"Up",[]],[[4249.45,3969.22,0.722076],290,"Up",[]],[[4240.49,3972.27,3.20168],182,"Up",[]],[[4245.14,4036.73,0],72,"Up",[]],[[4238.02,4049.43,0],133,"Up",[]],[[4227.68,4094.41,0.702499],171,"Up",[]],[[4201.67,4090.84,0.728851],64,"Up",[]],[[4208.7,4085.89,0],42,"Middle",[]],[[4229.02,4090.64,0],158,"Middle",[]],[[4233.02,4136.51,0.728851],185,"Up",[]],[[4237.2,4124.42,3.05176e-005],259,"Middle",[]],[[4230.22,4130.8,0],206,"Middle",[]],[[4238.98,4131.56,0.728851],192,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4314.77,4128.93,0],238,"Middle",[]],[[4320,4134.96,0.728836],215,"Middle",[]],[[4338.33,4074.95,0.728851],303,"Middle",[]],[[4330.94,4077.31,0],346,"Middle",[]],[[4309.17,4074.56,0],192,"Middle",[]],[[4319.92,4042.38,0],63,"Middle",[]],[[4323.67,4027.61,0],353,"Middle",[]],[[4287.27,4093.24,0],154,"Middle",[]],[[4275.96,4087.24,0],116,"Middle",[]],[[4275.08,4091.18,0.728851],69,"Middle",[]],[[4280.68,4104.67,0.739883],162,"Middle",[]],[[4317.24,3950.64,0],135,"Middle",[]],[[4302.14,3968.24,0],139,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
