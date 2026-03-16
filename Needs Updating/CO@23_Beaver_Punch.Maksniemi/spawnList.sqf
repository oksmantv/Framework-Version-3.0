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

		["hq","side","1-1 be advised, armored column inbound from the north along the MSR. Plan a hasty ambush, ETA 4 minutes! Drone surveilance suggests the convoy is led by two T-80 Tanks! HQ out."] remoteExec ["OKS_Chat",0];
		"radio1" remoteExec ["playSound",0];
		sleep 210;
		["hq","side","1-1 be advised, the enemy column has just passed defensive line 1, good luck! HQ out."] remoteExec ["OKS_Chat",0];
		"radio2" remoteExec ["playSound",0];
		// Convoy Spawn
		[convoy_1,convoy_2,convoy_3,east,[8,["UK3CB_CW_SOV_O_EARLY_T80B","UK3CB_CW_SOV_O_EARLY_T80B","rhs_btr80a_vv","UK3CB_CW_SOV_O_EARLY_Ural","UK3CB_CW_SOV_O_EARLY_Ural","UK3CB_CW_SOV_O_EARLY_Ural","rhs_btr80_vv","rhs_btr80_vv"], 6, 25],[true,4],[], false, false] spawn OKS_Convoy_Spawn;

		// Mortar
		[mortar_1, east, "precise", "light", ["auto", 25],250,1200,30] execVM "Scripts\NEKY_Mortars\NEKY_Mortars.sqf";

		// Dynamic Zone
		[Trigger_1,false,[0,15,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		/// Static Trench 1
		[[[[968.299,4168.15,0.178342],229,"Up",[]],[[965.275,4158.01,0],141,"Up",[]],[[970.332,4145.24,0],206,"Middle",[]],[[975.262,4143.37,-0.168826],127,"Middle",[]],[[988.301,4133.63,-6.53267e-005],125,"Up",[]],[[980.831,4141.01,1.85966e-005],305,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[963.917,4172.86,0.178341],307,"Up",[]],[[962.966,4168.37,0.178341],17,"Middle",[]],[[950.52,4160.09,0.178341],251,"Up",[]],[[952.98,4157.84,0.178341],251,"Up",[]],[[956.979,4159.73,0.178342],251,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[927.521,4198.37,-9.53674e-007],272,"Up",[]],[[931.557,4193.75,2.86102e-006],272,"Up",[]],[[937.973,4186.45,9.53674e-007],272,"Up",[]],[[942.781,4177,0],272,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1041.97,4101.2,0],253,"Middle",[]],[[1044.77,4093.72,0],253,"Middle",[]],[[1050.19,4083.23,4.76837e-007],322,"Middle",[]],[[1044.81,4072.24,0],206,"Up",[]],[[1043.76,4072.94,0],206,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1043.26,4142.04,0],267,"Up",[]],[[1045.29,4130.09,0],360,"Up",[]],[[1051.12,4119.97,3.00407e-005],311,"Middle",[]],[[1045.16,4110.35,0.0284705],19,"Middle",[]]],[["UK3CB_CW_SOV_O_EARLY_BMP1",[970.967,4387.3,0],182,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["Olive",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;	
	
		if({["echo", vehicleVarName _X] call BIS_fnc_inString} count allPlayers > 0) then {
			[[],[["RHS_Ural_Zu23_MSV_01",[964.148,4214.78,4.76837e-007],249,[["driver",-1,[]],["gunner",-1,[0]],["cargo",2,[1]]],[[6,["standard",1]],[7,["spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1,"light_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		};

		[officer_3,0.5,50,true,true] spawn OKS_Surrender;

		sleep 120;
		[[[[978.387,4098.69,0],305,"Up",[]],[[974.84,4087.86,0.210663],213,"Up",[]],[[972.927,4090.23,-0.0459394],232,"Up",[]],[[982.584,4093.88,-4.76837e-006],37,"Up",[]],[[1001.14,4108.18,-0.000253677],305,"Up",[]],[[1000.96,4116.65,-0.000160694],18,"Up",[]]],[["rhs_btr80a_vdv",[985.149,4101.84,0.285141],256,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 2: {

		[east,arty_1,getMarkerPos "target",10,455,120] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf"; sleep 1;
		[east,arty_2,getMarkerPos "target",10,455,120] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf"; sleep 10;

		/// Static Trench 2
		[[[[1813.3,5104.18,0.319859],200,"Up",[]],[[1816.98,5101.25,0.542087],192,"Up",[]],[[1815.84,5102.36,0],200,"Middle",[]],[[1819.62,5099.29,1.15127],200,"Middle",[]],[[1823.06,5096.65,2.19445],218,"Middle",[]],[[1825.31,5098.41,2.13725],48,"Middle",[]],[[1830.46,5103.86,-1.00136e-005],220,"Middle",[]],[[1832.3,5106.65,0.669612],315,"Middle",[]]],[["rhs_bmp1_msv",[1774.53,5122.59,0],173,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]],["rhs_btr80a_vv",[1828.61,5169.88,0],194,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1752.87,5235.22,0.000209808],275,"Middle",[]],[[1763.6,5235.06,0.617909],181,"Middle",[]],[[1769.79,5236.1,0.653311],155,"Middle",[]],[[1774.55,5237.91,0.1702],136,"Middle",[]],[[1761.01,5242.47,0.000118494],173,"Middle",[]],[[1758.76,5246.17,0.0418274],99,"Up",[]]],[["rhs_bmp1_msv",[1754.18,5184.95,3.00407e-005],139,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;	
		[[[[1821.31,5905.01,0.808625],54,"Up",[]],[[1816.95,5905.01,0.77928],321,"Up",[]],[[1819,5911.85,0.815314],215,"Up",[]],[[1826.03,5906.89,0.77928],105,"Up",[]],[[1799.77,5904.77,0.764018],212,"Up",[]],[[1803.14,5900.21,0.764018],304,"Up",[]],[[1804.01,5903.62,0.764018],21,"Up",[]],[[1806.38,5899.13,0.764018],115,"Up",[]],[[1803.61,5896.46,1.2726],227,"Middle",[]],[[1798.3,5896.57,0.764018],213,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		// Dynamic Zone
		[Trigger_2,false,[0,15,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		if({["echo", vehicleVarName _X] call BIS_fnc_inString} count allPlayers > 0) then {
			[[],[["UK3CB_FIA_O_Fishing_Boat_Zu23",[2167.24,4833.94,3.68496],94,[["driver",-1,[]],["gunner",-1,[4]]],[[6,["GRW",1]],[7,["ClanLogo_Hide",0,"Ammo_Crates_Hide",0]]]],["rhs_gaz66_zu23_vdv",[2012.81,5196.63,0],221,[["driver",-1,[]],["gunner",-1,[0]],["cargo",1,[1]]],[[6,["standard",1]],[7,["cover_hide",0,"spare_hide",0,"bench_hide",0,"rear_numplate_hide",1,"light_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		};

		[officer_4,0.5,50,true,true] spawn OKS_Surrender;
		[officer_5,0.5,50,true,true] spawn OKS_Surrender;
	};

	case 3: {

		/// Static Trench 3
		[[[[1873.2,5867.55,0.937152],40,"Up",[]],[[1874.97,5864.18,1.20893],67,"Up",[]],[[1868.91,5864.28,1.47046],295,"Middle",[]],[[1862.59,5858.3,0.772832],40,"Up",[]],[[1864.36,5854.93,0.865209],67,"Up",[]],[[1858.3,5855.03,0.33481],295,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1862.45,5868.6,1.78316],106,"Middle",[]],[[1851.21,5872.85,0.358424],65,"Up",[]],[[1847.55,5878.2,0.750283],65,"Up",[]],[[1836.16,5869.25,1.16413],164,"Middle",[]],[[1835.27,5864.77,0.064188],184,"Up",[]],[[1833.08,5866.57,0.077177],197,"Up",[]],[[1846.54,5860.29,0.845055],55,"Up",[]],[[1851.77,5858.41,0.571092],79,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1839.08,5895.56,0.432986],212,"Up",[]],[[1842.14,5905.51,0.506216],354,"Up",[]],[[1830.42,5897.07,0.694685],131,"Middle",[]],[[1823.75,5878.62,0.294988],65,"Middle",[]],[[1804.47,5893.38,0.886976],304,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1845.83,5917.13,0.37138],82,"Up",[]],[[1846.2,5913.9,0.528751],95,"Up",[]],[[1841.14,5929.04,0.524714],101,"Up",[]],[[1831.94,5937.22,0.48166],45,"Up",[]],[[1824.28,5936.72,0.361759],34,"Middle",[]],[[1818.06,5928.58,1.22139],156,"Up",[]],[[1811.96,5920.2,0.451035],352,"Middle",[]],[[1817.89,5916.84,0.758609],78,"Up",[]],[[1822.8,5910.52,0.588505],157,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		[[],[["rhs_bmp1_tv",[1892.46,5931.78,0],199,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_tv",[1881.93,5821.42,1.62125e-005],213,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Dynamic Zone
		[Trigger_3,false,[0,15,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;	
		
		if({["echo", vehicleVarName _X] call BIS_fnc_inString} count allPlayers > 0) then {
			[[],[["RHS_ZU23_VMF",[1849.56,5874.03,0.810195],152,[["gunner",-1,[0]],["cargo",0,[1]]],[[7,["Unfold",0]]]],["rhs_gaz66_zu23_vv",[2030.23,5997.52,1.90735e-006],304,[["driver",-1,[]],["gunner",-1,[0]],["cargo",1,[1]]],[[6,["standard",1]],[7,["cover_hide",0,"spare_hide",0,"bench_hide",0,"rear_numplate_hide",1,"light_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		};
	};



	case 4: {

		[east,arty_3,getMarkerPos "target",10,455,120] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf"; sleep 1;
		[east,arty_4,getMarkerPos "target",10,455,120] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf"; sleep 2;
		[east,arty_5,getMarkerPos "target",10,455,120] execVM "Scripts\OKS_Spawn\OKS_ArtyFire.sqf"; sleep 1;

		[officer_1,0.5,50,true,true] spawn OKS_Surrender;
		[officer_2,0.5,50,true,true] spawn OKS_Surrender;

		/// Static Trench 4
		[[[[2339.4,6892.88,0.145667],136,"Middle",[]],[[2337.9,6892.09,0.335221],171,"Up",[]],[[2334.61,6892.1,1.20998],181,"Middle",[]],[[2328.19,6890.15,2.34861],141,"Middle",[]],[[2324.94,6898.23,0],297,"Middle",[]],[[2323.58,6904.1,0],306,"Middle",[]],[[2381.7,6881.01,0.170727],209,"Up",[]],[[2385.12,6879.23,0.721796],193,"Up",[]],[[2388.56,6877.83,0.383262],301,"Middle",[]]],[["rhs_bmp1_tv",[2349.47,6925.56,0.0382576],189,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["rhs_bmp1_tv",[2383.02,6902,0.0382566],203,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[2396.42,6869.74,0],316,"Middle",[]],[[2397.95,6865.19,0.641716],202,"Up",[]],[[2398.03,6860.92,0.801163],189,"Down",[]],[[2411.69,6864.32,-9.53674e-006],163,"Middle",[]],[[2440.24,6858.96,4.48227e-005],274,"Middle",[]],[[2444.33,6857.89,0],283,"Middle",[]],[[2447.91,6855.73,0.647581],183,"Middle",[]],[[2456.24,6853.03,0.722417],165,"Middle",[]],[[2464.18,6852.69,0.810039],144,"Middle",[]],[[2462.1,6853.79,0],273,"Middle",[]],[[2452.8,6858.75,4.76837e-006],189,"Middle",[]],[[2451.12,6866.57,0],102,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// HQ
		[[[[2427.94,6925.36,9.53674e-007],301,"Up",[]],[[2405.91,6925.1,0],299,"Up",[]],[[2399.14,6916.69,0.294175],125,"Up",[]],[[2396.83,6910.61,0.318039],206,"Up",[]],[[2394.63,6911.98,0.317324],44,"Up",[]],[[2399.58,6892.18,0.16515],23,"Up",[]],[[2410.96,6899.31,0],268,"Middle",[]],[[2419.64,6902.52,0.295558],323,"Up",[]],[[2420.95,6906.57,0.293783],301,"Up",[]],[[2425.05,6912.57,0.240533],200,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Dynamic Zone
		[Trigger_4,false,[0,15,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

	};

	case 5: {
	};

	case 6: {
	};

	case 7: {
	};

	case 8: {
	};

	case 9: {
	};

	case 10: {
	};

	case 11: {
	};

	case 12: {
	};	

	case 20: {
		// #0 Counter Trench 0 - Right
		[[1056.33,4327.53,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;
		[[1012.89,4409.37,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;
		[[1146.65,4312,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;

		// BTR-80
		[[],[["UK3CB_CW_SOV_O_LATE_BTR80",[1557.09,4491.15,0.0118179],221,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[[[1155.64,4235.84,-4.76837e-007],[[0,"Move"]]],[[1035.28,4151.32,0.16555],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 21: {
		// Counter Trench 1 - Front
		[[1072.27,4266.14,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;
		[[1148.56,4191.35,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;
		
		// BTR-80A
		[[],[["rhs_btr80a_msv",[1579.78,4517.99,0.00094986],219,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[[[1155.64,4235.84,-4.76837e-007],[[0,"Move"]]],[[1023.46,4166.12,0.564853],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 22: {

		/// Counter Trench 2 - Left
		[[1179.15,4023.44,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;

		[[1270.56,4117.49,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;

		[[1153.02,4190.06,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;
	};

	case 23: {
		/// Counter Trench 1.5
		[[1674.19,5459.27,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;
		[[1581.37,5447.94,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;
		[[1853.43,5509.62,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;

		[[],[["rhs_bmp1_msv",[1972.21,5946.81,0],223,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[1785.42,5419.88,0],[[0,"Move"]]],[[1789.31,5184.69,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 15;
		[[],[["rhs_bmp1_msv",[2003.54,5980.65,0],223,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[1785.42,5419.88,0],[[0,"Move"]]],[[1781.42,5184.67,1.00136e-005],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup; sleep 15;
		[[],[["rhs_bmp1_msv",[2026.14,6007.02,0],216,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[1785.42,5419.88,0],[[0,"Move"]]],[[1799.78,5185.2,9.53674e-007],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		
	};

	case 24: {

		/// Counter Trench 2
		[[1988.13,6128.21,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;
		[[1840.53,6122.88,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;
		[[1765.03,6142.79,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;
		[[1683.32,6068.83,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;
		[[1621.08,5964.6,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;	

		[[],[["rhs_bmp2e_tv",[2324.28,6511.83,0.0107379],183,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[[[1960.8,5932.52,5.72205e-006],[[0,"Move"]]],[[1912.88,5872.23,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup; sleep 15;
		[[],[["rhs_bmp2e_tv",[2324.58,6642.39,0.0107374],179,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[[[1960.8,5932.52,5.72205e-006],[[0,"Move"]]],[[1851.37,5823.38,5.72205e-006],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 25: {

		[[2602.7,6979.89,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;
		[[2621.9,6890.63,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;
		[[2561.53,7028.99,0],4,east,1500,[]] spawn OKS_Rush_SpawnGroup;

		[[],[["rhs_bmp1_tv",[2867.98,6963.94,-1.33514e-005],305,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[2529.47,7069.59,-1.90735e-006],[[0,"Move"]]],[[2410.97,7088.02,-0.285868],[[0,"Move"]]],[[2367.96,6980.91,0.389152],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup; sleep 10;
		[[],[["rhs_bmp2d_msv",[2913.7,6934.71,-2.38419e-006],303,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1]]]]],[[[2529.47,7069.59,-1.90735e-006],[[0,"Move"]]],[[2468.74,6994.47,-0.697839],[[0,"Move"]]],[[2401.4,6966.31,0.505581],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 26: {
	};	

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
