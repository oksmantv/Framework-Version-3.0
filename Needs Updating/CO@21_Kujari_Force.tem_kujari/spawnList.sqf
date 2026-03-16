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

		// Static
		[[[[10688.9,7121.8,1.15277],0,"Up",[]],[[10689.7,7115.76,1.13759],0,"Up",[]],[[10689.9,7121.41,7.50212],0,"Up",[]],[[10690.8,7121.02,4.54],0,"Up",[]],[[10690.8,7116.4,4.21648],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		_Vehicles = ["UK3CB_ADE_O_BTR40_MG", "UK3CB_ADE_O_BTR40", "UK3CB_ADE_O_MTLB_BMP", "UK3CB_ADE_O_MTLB_KPVT", "UK3CB_ADE_O_Hilux_M2", "UK3CB_ADE_O_Hilux_Spg9", "UK3CB_ADE_O_Hilux_Zu23_Front", "UK3CB_ADE_O_LR_SPG9", "UK3CB_ADE_O_LR_Closed", "UK3CB_ADE_O_V3S_Open", "UK3CB_ADE_O_V3S_Closed", "UK3CB_ADE_O_Pickup_DSHKM"];
		[Trigger_1,false,[0,20,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_2,false,[0,15,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_3,false,[0,20,false,false],east,0,0,0,[1,true,false,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Base_3, Spawn_3, NEKY_Hunt_Trigger_1, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Base_5, Spawn_5, NEKY_Hunt_Trigger_1, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;

		[infantry_1, ispawn_1, NEKY_Hunt_Trigger_1, 3,900,east,6,180] spawn NEKY_Hunt_HuntBase;
		[infantry_2, ispawn_2, NEKY_Hunt_Trigger_1, 3,900,east,6,180] spawn NEKY_Hunt_HuntBase;
		[infantry_3, ispawn_3, NEKY_Hunt_Trigger_1, 3,900,east,6,180] spawn NEKY_Hunt_HuntBase;

		// Static Village 1
		[[[[10014.3,8000.12,0.00863266],157,"Middle",[]],[[10010,8001.57,0.00863266],256,"Up",[]],[[10007.3,8010.26,0.00863361],239,"Up",[]],[[10008.2,8006.87,0.00863266],232,"Middle",[]],[[9994.13,8012.42,2.94098],162,"Middle",[]],[[9998,8013.57,2.99717],169,"Down",[]],[[9998.06,8014.13,0.322573],199,"Up",[]],[[9991.45,8020.3,0.408937],102,"Up",[]],[[9992.28,8021.32,3.2271],47,"Up",[]],[[10015.9,7980.94,3.22489],169,"Up",[]],[[10010.2,7982.86,2.78531],169,"Up",[]],[[10015.9,7980.44,0.396842],26,"Up",[]],[[10011.5,7984.08,0.354444],15,"Up",[]],[[9995.07,7989.75,2.77107],169,"Up",[]],[[9999.43,7986.81,3.22861],169,"Up",[]],[[10002.5,7991.17,0.00863266],101,"Middle",[]],[[9987.36,7996.61,0.00863266],90,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[10028.1,8027.17,3.27768],170,"Up",[]],[[10022.5,8030.69,2.6249],212,"Middle",[]],[[10033,8041.38,2.67029e-005],164,"Middle",[]],[[10036.5,8044.84,3.86641],188,"Middle",[]],[[10042.1,8047.72,3.88506],170,"Up",[]],[[10031.6,8051.39,3.22722],250,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Mortar
		[mortar_2, east, "precise", "light", ["auto", 25],250,1200,30] execVM "Scripts\NEKY_Mortars\NEKY_Mortars.sqf";	

	};

	case 2: {

		_Vehicles = ["UK3CB_ADE_O_BTR40_MG", "UK3CB_ADE_O_BTR40", "UK3CB_ADE_O_MTLB_BMP", "UK3CB_ADE_O_MTLB_KPVT", "UK3CB_ADE_O_Hilux_M2", "UK3CB_ADE_O_Hilux_Spg9", "UK3CB_ADE_O_Hilux_Zu23_Front", "UK3CB_ADE_O_LR_SPG9", "UK3CB_ADE_O_LR_Closed", "UK3CB_ADE_O_V3S_Open", "UK3CB_ADE_O_V3S_Closed", "UK3CB_ADE_O_Pickup_DSHKM"];
		[Base_4, Spawn_4, NEKY_Hunt_Trigger_2, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Base_6, Spawn_6, NEKY_Hunt_Trigger_2, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Base_7, Spawn_7, NEKY_Hunt_Trigger_2, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;
		[Base_8, Spawn_8, NEKY_Hunt_Trigger_2, 3,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase;

		[infantry_4, ispawn_4, NEKY_Hunt_Trigger_2, 3,900,east,6,180] spawn NEKY_Hunt_HuntBase;
		[infantry_5, ispawn_5, NEKY_Hunt_Trigger_2, 3,900,east,6,180] spawn NEKY_Hunt_HuntBase;
		[infantry_3, ispawn_3, NEKY_Hunt_Trigger_2, 3,900,east,6,180] spawn NEKY_Hunt_HuntBase;

		[Trigger_4,false,[0,20,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_5,false,[0,15,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		[Trigger_6,false,[0,20,false,false],east,0,0,0,[2,true,false,1],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Static Village 2
		[[[[9637.03,9746.12,3.29249],189,"Up",[]],[[9631.13,9754.15,6.11942],119,"Down",[]],[[9630,9747.15,3.80395],209,"Up",[]],[[9640.23,9745.77,3.61903],119,"Up",[]],[[9640.84,9745.27,0.174273],10,"Up",[]],[[9644.83,9761.01,0.149191],119,"Up",[]],[[9630.41,9750.58,1.11001],78,"Up",[]],[[9631.13,9754.27,3.68334],119,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9522.98,9772.93,0],203,"Middle",[]],[[9534.21,9764.67,0],200,"Up",[]],[[9529.53,9771.92,2.82718],189,"Middle",[]],[[9541.59,9774.65,1.90735e-006],130,"Up",[]],[[9547.8,9782.05,0],131,"Up",[]],[[9537.47,9787.55,0.208935],119,"Up",[]],[[9541.42,9790.45,0],121,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9470.01,9709.32,0],119,"Up",[]],[[9460.22,9718.11,0],33,"Up",[]],[[9452.47,9727.63,0.293838],57,"Up",[]],[[9468.42,9719.18,0.809275],210,"Up",[]],[[9471.75,9713.03,0.644937],119,"Up",[]],[[9475.26,9720.05,0],20,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[9406.56,9739.57,0],205,"Up",[]],[[9411.45,9740.24,0],119,"Up",[]],[[9404.08,9733.18,0.417367],19,"Up",[]],[[9394.24,9730.88,0.283257],38,"Up",[]],[[9394.66,9731,3.08017],222,"Up",[]],[[9394.68,9722.44,9.53674e-007],198,"Up",[]],[[9410.56,9719.84,9.53674e-007],177,"Up",[]],[[9391.66,9736.55,9.53674e-007],253,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Mortar
		[mortar_1, east, "precise", "light", ["auto", 25],250,1200,30] execVM "Scripts\NEKY_Mortars\NEKY_Mortars.sqf";	
	};

	case 3: {
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
