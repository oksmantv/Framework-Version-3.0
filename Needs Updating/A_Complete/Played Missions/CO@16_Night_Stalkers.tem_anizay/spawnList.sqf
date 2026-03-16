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
Private ["_Vehicles"];
_Vehicles = ["UK3CB_MEE_O_BRDM2_HQ", "UK3CB_MEE_O_BTR40", "UK3CB_MEE_O_BTR40_MG", "UK3CB_MEE_O_Datsun_Pkm", "UK3CB_MEE_O_Hilux_Dshkm", "UK3CB_MEE_O_Hilux_Pkm", "UK3CB_MEE_O_Hilux_Open", "UK3CB_MEE_O_Offroad", "UK3CB_MEE_O_Pickup", "UK3CB_MEE_O_V3S_Closed", "UK3CB_MEE_O_Pickup_M2"];
switch (_case) do {

	case 1: {

		// Patrol
		[[[[1076.36,1143.03,0],0,[]],[[1081.36,1138.03,0],0,[]],[[1071.36,1138.03,0],0,[]],[[1086.36,1133.03,0],0,[]]],[],[[[1105.88,1171.42,0],[[0,"Move"],[1,"SAFE"]]],[[1131.63,1223.18,0],[[0,"Move"]]],[[1100.36,1245.7,-3.05176e-005],[[0,"Move"]]],[[1066.81,1153.61,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1034.15,1157.61,0],0,[]],[[1039.15,1152.61,0],0,[]],[[1029.15,1152.61,0],0,[]],[[1044.15,1147.61,0],0,[]]],[],[[[1067.93,1164.25,0],[[0,"Move"],[1,"SAFE"]]],[[1095.98,1236.04,0],[[0,"Move"]]],[[1053,1223.96,0],[[0,"Move"]]],[[1018.66,1188.75,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[officer_1,0.5,50,true,true] spawn OKS_Surrender;
		[officer_2,0.5,50,true,true] spawn OKS_Surrender;

		[GetPos Infantry_1,200,EAST] spawn OKS_Populate_StaticWeapons;
		[Infantry_1, Spawn_1, NEKY_Hunt_Trigger_1, 3,600, east,5,90] spawn NEKY_Hunt_HuntBase;

		[GetPos Infantry_2,200,EAST] spawn OKS_Populate_StaticWeapons;
		[Infantry_2, Spawn_2, NEKY_Hunt_Trigger_1, 3,600, east,5,90] spawn NEKY_Hunt_HuntBase;

		[GetPos Infantry_3,200,EAST] spawn OKS_Populate_StaticWeapons;
		[Infantry_3, Spawn_3, NEKY_Hunt_Trigger_1, 3,600, east,5,90] spawn NEKY_Hunt_HuntBase;

		[GetPos motospawn_2,200,EAST] spawn OKS_Populate_StaticWeapons;
		[motospawn_2, MotoSpawn_2, NEKY_Hunt_Trigger_1, 3, 600, east, _Vehicles, 160] spawn NEKY_Hunt_HuntBase;	

		[GetPos motospawn_3,200,EAST] spawn OKS_Populate_StaticWeapons;
		[motospawn_3, MotoSpawn_3, NEKY_Hunt_Trigger_1, 3, 600, east, _Vehicles, 160] spawn NEKY_Hunt_HuntBase;	

		[GetPos motospawn_4,200,EAST] spawn OKS_Populate_StaticWeapons;
		[motospawn_4, MotoSpawn_4, NEKY_Hunt_Trigger_1, 3, 600, east, _Vehicles, 160] spawn NEKY_Hunt_HuntBase;

		// Static
		[[[[756.286,485.158,0],29,"Up",[]],[[715.078,510.112,0],29,"Up",[]],[[783.508,1298.05,0],29,"Up",[]],[[791.875,1284.62,1.52588e-005],29,"Up",[]],[[939.648,1530.63,0],29,"Up",[]],[[922.871,1524.46,-1.52588e-005],173,"Up",[]],[[1055.89,1623.66,0],29,"Up",[]],[[1028.94,1635.21,0],188,"Up",[]],[[1776.06,1363.58,0],210,"Up",[]],[[1797.27,1344.92,3.85408],190,"Up",[]],[[1239.52,2250.2,0],230,"Up",[]],[[1178.92,2213.96,0],210,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// South House
		[[[[1047.81,1167.76,3.30884],140,"Up",[]],[[1038,1163.39,3.62279],175,"Up",[]],[[1036.08,1170.26,3.72501],49,"Up",[]],[[1039.74,1164.08,1.00613],49,"Up",[]],[[1042.79,1193.3,0],124,"Up",[]],[[1048.48,1176.39,0],32,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// North House
		[[[[1105.97,1201.55,0],306,"Up",[]],[[1107.13,1216.62,0],211,"Up",[]],[[1104.44,1208.83,3.31789],251,"Up",[]],[[1114.54,1215.59,3.69812],354,"Up",[]],[[1112.13,1212.45,0.970932],140,"Up",[]],[[1113.47,1217.23,0.979721],204,"Up",[]],[[1116.37,1213.06,3.7229],140,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {

		// Patrol
		[[[[5822.83,867.288,-3.05176e-005],0,[]],[[5827.83,862.288,0],0,[]],[[5817.83,862.288,0],0,[]],[[5832.83,857.288,0],0,[]]],[],[[[5849.33,873.998,0],[[0,"Move"],[1,"SAFE"]]],[[5865.31,948.411,0],[[0,"Move"]]],[[5841.69,933.644,0],[[0,"Move"]]],[[5801.17,906.371,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5703.53,922.429,0],0,[]],[[5708.53,917.429,0],0,[]],[[5698.53,917.429,0],0,[]],[[5713.53,912.429,0.885254],0,[]]],[],[[[5762.56,902.958,-3.05176e-005],[[0,"Move"],[1,"SAFE"]]],[[5813.11,957.647,-3.05176e-005],[[0,"Move"]]],[[5731.83,977.54,0],[[0,"Move"]]],[[5688.05,953.57,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[officer_3,0.5,50,true,true] spawn OKS_Surrender;
		[officer_4,0.5,50,true,true] spawn OKS_Surrender;

		[GetPos Infantry_10,200,EAST] spawn OKS_Populate_StaticWeapons;
		[Infantry_10, Spawn_10, NEKY_Hunt_Trigger_2, 3,600, east,5,90] spawn NEKY_Hunt_HuntBase;

		[GetPos Infantry_11,200,EAST] spawn OKS_Populate_StaticWeapons;
		[Infantry_11, Spawn_11, NEKY_Hunt_Trigger_2, 3,600, east,5,90] spawn NEKY_Hunt_HuntBase;

		[GetPos Infantry_12,200,EAST] spawn OKS_Populate_StaticWeapons;
		[Infantry_12, Spawn_12, NEKY_Hunt_Trigger_2, 3,600, east,5,90] spawn NEKY_Hunt_HuntBase;

		[GetPos motospawn_11,200,EAST] spawn OKS_Populate_StaticWeapons;
		[motospawn_11, MotoSpawn_11, NEKY_Hunt_Trigger_2, 3, 600, east, _Vehicles, 160] spawn NEKY_Hunt_HuntBase;	

		[GetPos motospawn_12,200,EAST] spawn OKS_Populate_StaticWeapons;
		[motospawn_12, MotoSpawn_12, NEKY_Hunt_Trigger_2, 3, 600, east, _Vehicles, 160] spawn NEKY_Hunt_HuntBase;	


		// Villa Objective 2
		[[[[5825.09,907.234,7.52802],312,"Up",[]],[[5819.22,901.594,7.32471],312,"Up",[]],[[5842.8,908.735,7.74017],355,"Up",[]],[[5862.31,910.176,7.79501],325,"Up",[]],[[5841.45,891.838,0.739868],44,"Up",[]],[[5825.4,899.303,0.586853],9,"Up",[]],[[5856.88,893.204,0.898193],272,"Up",[]],[[5862.9,900.918,0.888306],326,"Up",[]],[[5855.99,893.226,4.45428],24,"Up",[]],[[5864.31,906.298,4.42764],25,"Up",[]],[[5844.4,909.432,4.26785],342,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {

		// Patrol
		[[[[3521.79,4407.53,0],0,[]],[[3526.79,4402.53,0],0,[]],[[3516.79,4402.53,0],0,[]],[[3531.79,4397.53,0.885284],0,[]]],[],[[[3561.52,4389.6,0],[[0,"Move"],[1,"SAFE"]]],[[3641.52,4454.51,0],[[0,"Move"]]],[[3505.63,4516.58,0],[[0,"Move"]]],[[3474.12,4414.26,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3603.01,4502.16,1.52588e-005],0,[]],[[3608.01,4497.16,-1.52588e-005],0,[]],[[3598.01,4497.16,0.354156],0,[]],[[3613.01,4492.16,0.885284],0,[]]],[],[[[3656.35,4539.66,0],[[0,"Move"],[1,"SAFE"]]],[[3570.39,4603.06,0],[[0,"Move"]]],[[3518.33,4599.97,0],[[0,"Move"]]],[[3559.18,4507.36,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[officer_5,0.5,50,true,true] spawn OKS_Surrender;
		[officer_6,0.5,50,true,true] spawn OKS_Surrender;

		[GetPos Infantry_4,200,EAST] spawn OKS_Populate_StaticWeapons;
		[Infantry_4, Spawn_4, NEKY_Hunt_Trigger_3, 3,600, east,5,90] spawn NEKY_Hunt_HuntBase;

		[GetPos Infantry_5,200,EAST] spawn OKS_Populate_StaticWeapons;
		[Infantry_5, Spawn_5, NEKY_Hunt_Trigger_3, 3,600, east,5,90] spawn NEKY_Hunt_HuntBase;

		[GetPos Infantry_6,200,EAST] spawn OKS_Populate_StaticWeapons;
		[Infantry_6, Spawn_6, NEKY_Hunt_Trigger_3, 3,600, east,5,90] spawn NEKY_Hunt_HuntBase;

		[GetPos motospawn_1,200,EAST] spawn OKS_Populate_StaticWeapons;
		[motospawn_1, MotoSpawn_1, NEKY_Hunt_Trigger_3, 3, 600, east, _Vehicles, 160] spawn NEKY_Hunt_HuntBase;	

		[GetPos motospawn_6,200,EAST] spawn OKS_Populate_StaticWeapons;
		[motospawn_6, MotoSpawn_6, NEKY_Hunt_Trigger_3, 3, 600, east, _Vehicles, 160] spawn NEKY_Hunt_HuntBase;

		[GetPos motospawn_7,200,EAST] spawn OKS_Populate_StaticWeapons;
		[motospawn_7, MotoSpawn_7, NEKY_Hunt_Trigger_3, 3, 600, east, _Vehicles, 160] spawn NEKY_Hunt_HuntBase;

		[GetPos motospawn_5,200,EAST] spawn OKS_Populate_StaticWeapons;
		[motospawn_5, MotoSpawn_5, NEKY_Hunt_Trigger_3, 3, 600, east, _Vehicles, 160] spawn NEKY_Hunt_HuntBase;


		/// Objective 3
		[[[[3543.71,4496.11,0],10,"Up",[]],[[3524.47,4495.88,2.96347],209,"Up",[]],[[3519.56,4503.56,2.96251],317,"Up",[]],[[3535.2,4517.82,3.6696],319,"Up",[]],[[3536.23,4512.59,3.38651],274,"Up",[]],[[3541.12,4508.73,3.38721],277,"Up",[]],[[3545.43,4515.42,3.38744],10,"Up",[]],[[3530.76,4516.85,7.05695],283,"Up",[]],[[3542.78,4514.73,6.72795],10,"Up",[]],[[3539.43,4508.19,6.72795],283,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 4: {

		// Patrol
		[[[[7104.33,3421.2,0],0,[]],[[7109.33,3416.2,0],0,[]],[[7099.33,3416.2,0.354095],0,[]],[[7114.33,3411.2,0.885223],0,[]]],[],[[[7179.68,3502.87,-3.05176e-005],[[0,"Move"],[1,"SAFE"]]],[[7147.54,3524.13,0],[[0,"Move"]]],[[7071.98,3526.34,0],[[0,"Move"]]],[[7061.44,3450.87,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7121.54,3539.81,3.05176e-005],0,[]],[[7126.54,3534.81,0],0,[]],[[7116.54,3534.81,0.354126],0,[]],[[7131.54,3529.81,0.885315],0,[]]],[],[[[7157.58,3619.23,3.05176e-005],[[0,"Move"],[1,"SAFE"]]],[[7103.23,3635.31,0],[[0,"Move"]]],[[7054.52,3589.87,0],[[0,"Move"]]],[[7077.72,3545.02,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[officer_7,0.5,50,true,true] spawn OKS_Surrender;
		[officer_8,0.5,50,true,true] spawn OKS_Surrender;

		[GetPos Infantry_7,200,EAST] spawn OKS_Populate_StaticWeapons;
		[Infantry_7, Spawn_7, NEKY_Hunt_Trigger_4, 3,600, east,5,90] spawn NEKY_Hunt_HuntBase;

		[GetPos Infantry_8,200,EAST] spawn OKS_Populate_StaticWeapons;
		[Infantry_8, Spawn_8, NEKY_Hunt_Trigger_4, 3,600, east,5,90] spawn NEKY_Hunt_HuntBase;

		[GetPos Infantry_9,200,EAST] spawn OKS_Populate_StaticWeapons;
		[Infantry_9, Spawn_9, NEKY_Hunt_Trigger_4, 3,600, east,5,90] spawn NEKY_Hunt_HuntBase;

		[GetPos motospawn_8,200,EAST] spawn OKS_Populate_StaticWeapons;
		[motospawn_8, MotoSpawn_8, NEKY_Hunt_Trigger_4, 3, 600, east, _Vehicles, 160] spawn NEKY_Hunt_HuntBase;

		[GetPos motospawn_9,200,EAST] spawn OKS_Populate_StaticWeapons;
		[motospawn_9, MotoSpawn_9, NEKY_Hunt_Trigger_4, 3, 600, east, _Vehicles, 160] spawn NEKY_Hunt_HuntBase;

		[GetPos motospawn_11,200,EAST] spawn OKS_Populate_StaticWeapons;
		[motospawn_11, MotoSpawn_11, NEKY_Hunt_Trigger_4, 3, 600, east, _Vehicles, 160] spawn NEKY_Hunt_HuntBase;

		/// Objective 4
		[[[[7103.23,3554.34,4.565],152,"Up",[]],[[7112.25,3564.13,8.06537],152,"Up",[]],[[7103.63,3553.27,8.36713],162,"Up",[]],[[7107.53,3566.79,3.49081],107,"Up",[]],[[7107.52,3558.64,5.93408],334,"Up",[]],[[7111,3564.68,0.0922546],305,"Up",[]],[[7122.55,3593.17,2.8046],352,"Up",[]],[[7117.02,3592.68,2.96466],227,"Up",[]],[[7114.1,3595.38,3.05508],152,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
