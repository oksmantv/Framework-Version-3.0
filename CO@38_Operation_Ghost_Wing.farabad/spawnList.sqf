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

		// North-West Raid.
		[[[[2021.76,4895.43,4.55161],128,"Auto",[]],[[2018.07,4890.91,4.51786],159,"Auto",[]],[[2008.18,4901.79,0.977348],214,"Middle",[]],[[2009.14,4890.19,1.74675],260,"Middle",[]],[[1998.66,4910.83,1.39614],189,"Middle",[]],[[2008.67,4909.73,3.30244],270,"Middle",[]],[[1994.13,4898.04,1.99123],34,"Middle",[]],[[1998.14,4915.92,0.606739],278,"Middle",[]],[[2012.36,4908.96,1.66595],73,"Middle",[]],[[1991.5,4903.91,0],95,"Middle",[]],[[2001.62,4910.49,2.28245],121,"Middle",[]],[[2009.07,4907.75,3.31255],311,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2009.5,4879.11,1.13835],213,"Middle",[]],[[2003.69,4874.56,2.42642],128,"Middle",[]],[[1987.66,4864.92,1.95],198,"Auto",[]],[[1999.48,4875.41,5.32922],126,"Middle",[]],[[1997.02,4873.95,2.41885],232,"Middle",[]],[[1973.61,4867.99,4.75033],158,"Auto",[]],[[1968.17,4869.18,5.98359],185,"Auto",[]],[[1945.86,4877.77,3.73975],39,"Up",[]],[[1941.19,4882.04,3.75728],252,"Middle",[]],[[1944.94,4879.96,0.206944],156,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1947.6,4854.86,2.62619],74,"Middle",[]],[[1954.81,4857.26,1.69329],273,"Middle",[]],[[1956.79,4861.11,0.815578],328,"Middle",[]],[[1946.26,4860.75,0.0934029],228,"Middle",[]],[[1944.5,4868.77,6.14526],54,"Middle",[]],[[1942.63,4864.34,3.10898],173,"Middle",[]],[[1948.22,4867.35,3.09098],74,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1979.06,4876.33,1.30005],126,"Middle",[]],[[1993.02,4879.1,1.45318],226,"Middle",[]],[[1982.74,4888.81,1.36575],184,"Middle",[]],[[1985.07,4887.87,1.5],165,"Middle",[]],[[1992.61,4887.13,1.49619],193,"Middle",[]],[[1991.01,4893.15,1.73858],276,"Middle",[]],[[1979.83,4881.12,1.44909],40,"Middle",[]],[[1985.42,4875.17,1.52061],55,"Up",[]],[[1985.43,4891.76,1.66238],96,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1982.14,4892.75,3.11144],332,"Middle",[]],[[1983.82,4900.3,2.35373],221,"Middle",[]],[[1970.12,4884.62,1.4438],71,"Middle",[]],[[1961.05,4909.92,3.68137],326,"Middle",[]],[[1941.27,4866.9,6.22454],57,"Middle",[]],[[1940.06,4869.12,6.22146],345,"Middle",[]],[[1942.53,4869.25,3.0851],262,"Middle",[]],[[1942.13,4872.42,3.84052],246,"Middle",[]],[[1943.88,4875.72,0.307329],59,"Middle",[]],[[1939.36,4873.41,1.90735e-06],204,"Middle",[]]],[["UK3CB_TKM_O_Hilux_Pkm",[1980.77,4909.95,0],245,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[1935.57,4886.84,6.26501],139,"Up",[]],[[1933.48,4885.76,6.36559],163,"Up",[]],[[1938.6,4889.72,6.07511],184,"Up",[]],[[1951,4910.19,3.86426],197,"Middle",[]],[[1922.76,4880.28,0],159,"Middle",[]],[[1924.52,4881.56,0],159,"Middle",[]],[[1924.49,4931.81,0],153,"Middle",[]],[[1924.59,4934.35,0],153,"Middle",[]],[[1949.37,4912.24,0],176,"Up",[]],[[1944.36,4917.44,0.249443],186,"Middle",[]]],[["UK3CB_TKM_O_Hilux_Pkm",[1924.54,4952.65,0],150,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrol.
		[[[[8008.42,2935.01,0],315,[]],[[8012.67,2934.99,0],315,[]],[[8014.09,2936.4,0],315,[]],[[8015.51,2937.81,0],315,[]]],[],[[[7937.04,2801.73,0],[[0,"Move"],[1,"SAFE"]]],[[7864.5,2847.46,0],[[0,"Move"]]],[[7843.22,2932.68,0],[[0,"Move"]]],[[8002.31,2937.16,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8156.65,3197.73,0],0,[]],[[8159.65,3194.73,0],0,[]],[[8161.65,3194.73,0],0,[]],[[8163.65,3194.73,1.90735e-06],0,[]]],[],[[[8047.77,3147.12,0],[[0,"Move"],[1,"SAFE"]]],[[7927.93,3196.97,1.90735e-06],[[0,"Move"]]],[[8042.86,3244.34,0],[[0,"Move"]]],[[8153.81,3203.57,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8197.29,3031.68,0],317,[]],[[8201.53,3031.53,0],317,[]],[[8202.99,3032.89,0],317,[]],[[8204.45,3034.26,0],317,[]]],[],[[[8197.85,2926.74,0],[[0,"Move"],[1,"SAFE"]]],[[8043.28,2925.09,0],[[0,"Move"]]],[[8062.42,2994.3,0],[[0,"Move"]]],[[8191.24,3034.01,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		// HLS reaction.
		[[],[["UK3CB_MEI_O_KORD_high",[2331.34,5013.44,0],237,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_KORD_high",[2212.1,5155.69,0],237,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_KORD_high",[2042.48,5317.3,0],237,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_KORD_high",[2015.89,5309.14,-7.62939e-06],237,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_KORD_high",[1293.44,4641.91,0],82,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_KORD_high",[1651.14,4126.04,0],82,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_KORD_high",[1783.38,4094.26,0],82,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_KORD_high",[1858.29,4120.08,0],82,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_KORD_high",[2436.64,4495.84,0],257,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_KORD_high",[2449.84,4518.41,0],321,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_KORD_high",[2186.84,4224.21,0],352,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_KORD_high",[1501.82,5021.63,0],182,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_KORD_high",[1494.81,5044.82,3.8147e-06],55,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_KORD_high",[1603.58,4922.35,0],106,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_PKM_High",[1878.1,4360.98,0],8,[["gunner",-1,[0]]],[]],["UK3CB_MEI_O_PKM_High",[1172.37,4826.28,0],63,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Hunters.
		[HuntBase_1, HuntSpawn_1, HuntTrigger_1, 8, 300, EAST, 8, 120] spawn OKS_fnc_HuntBase;
		[HuntBase_2, HuntSpawn_2, HuntTrigger_1, 8, 300, EAST, 8, 120] spawn OKS_fnc_HuntBase;
		[HuntBase_3, HuntSpawn_3, HuntTrigger_1, 8, 300, EAST, 8, 120] spawn OKS_fnc_HuntBase;
		[HuntBase_4, HuntSpawn_4, HuntTrigger_1, 8, 300, EAST, 8, 120] spawn OKS_fnc_HuntBase;
		[HuntBase_5, HuntSpawn_5, HuntTrigger_1, 8, 300, EAST, 8, 120] spawn OKS_fnc_HuntBase;

		sleep 180;
		[[],[["UK3CB_TKM_O_Pickup_DSHKM",[1739.34,4322.72,0.72414],323,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["WHITE_STRIPE",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]]],[[[1716.23,4397.76,-3.8147e-06],[[0,"Move"]]],[[1799.62,4472.6,-4.57764e-05],[[0,"Move"]]],[[1839.69,4585.44,0],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKM_O_Pickup_DSHKM",[1325.48,4961.89,0.724163],113,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["WHITE_STRIPE",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]]],[[[1425.91,4942.75,0],[[0,"Move"]]],[[1570.87,5009.68,0],[[0,"Move"]]],[[1655.11,4997.67,3.8147e-06],[[0,"Hold"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {

		// Convoy Attack.
		["hq","side","1st Platoon be advised, an insurgent convoy is approaching the village from the south. Let them get close and ambush them! HQ out."] remoteExec["OKS_fnc_Chat",0];

		// Enable debug mode to see herringbone formation details
		missionNamespace setVariable ["GOL_Convoy_Debug", true, false];
		missionNamespace setVariable ["GOL_Convoy_Markers_Debug", true, false];

		[convoy_1, convoy_2, convoy_3, east, [10, ["UK3CB_TKM_O_BTR40_MG","UK3CB_TKM_O_BTR40_MG", "UK3CB_TKM_O_BTR40",  "UK3CB_TKM_O_BTR40",  "UK3CB_TKM_O_BTR40",  "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_BTR60", "UK3CB_TKM_O_BTR60", "UK3CB_MEI_O_Hilux_Mortar", "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_BTR40"], 30, 25], [true, 5], [], false, false, ["attack"], true] spawn OKS_fnc_Convoy_Spawn;
	};

	case 4: {
		
		// Second HLS.
		[[[[7931.17,2991.05,3.57977],348,"Auto",[]],[[7964,2991.27,2.93812],303,"Auto",[]],[[7948.47,3012.39,0],116,"Auto",[]],[[7962.09,3026.67,0],194,"Auto",[]],[[7949.38,3025.15,0.0557237],96,"Auto",[]],[[7949.51,3031.06,0.201771],149,"Middle",[]],[[7959.3,3029.01,0.795476],123,"Auto",[]],[[7953.79,3028.94,0.721542],31,"Middle",[]],[[7931.11,3000.3,0.811596],77,"Auto",[]],[[7930.87,2988.63,0.497016],5,"Auto",[]],[[7933.81,2993.73,0.511584],69,"Auto",[]],[[7960.29,2991.75,0.174856],200,"Auto",[]],[[7967.66,2988.07,0],275,"Auto",[]],[[7971.92,3005.24,4.76837e-07],281,"Middle",[]],[[7945.54,2987.21,0],5,"Middle",[]],[[7973.84,3029.5,0],178,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7984.03,3023.93,2.61293],294,"Middle",[]],[[7985.78,3027.64,0.171262],284,"Middle",[]],[[7985.55,3022,0.179669],268,"Middle",[]],[[7995.98,3037.64,0],76,"Middle",[]],[[8012.48,3021.35,0],198,"Middle",[]],[[8002.79,3026.41,3.57365],2,"Auto",[]],[[7995.67,3021.91,3.45727],73,"Auto",[]],[[7991.69,3021.17,3.45725],280,"Auto",[]],[[7993.03,3025.5,3.45863],242,"Auto",[]],[[8002.78,3025.7,6.75391],313,"Middle",[]],[[7994.47,3024.77,9.31658],318,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8028.2,3010.92,0],68,"Auto",[]],[[8031.15,2989.05,0],290,"Auto",[]],[[8027.79,2996.94,2.32364],263,"Auto",[]],[[8028.38,2999.54,1.60084],274,"Auto",[]],[[8028.18,3004.08,1.61382],272,"Auto",[]],[[8002.19,3066.03,2.92174],258,"Auto",[]],[[8005.98,3065.89,0.293368],291,"Auto",[]],[[8011.03,3061.97,0.403206],237,"Auto",[]],[[7994.42,3054.66,0],95,"Middle",[]],[[8011.57,3065.93,0],22,"Middle",[]],[[8024.39,3060.11,4.00341],263,"Auto",[]],[[8030.89,3062.18,3.85438],199,"Middle",[]],[[8031.08,3059.64,0.481791],316,"Auto",[]],[[8058.12,3034.99,0],200,"Middle",[]],[[8049.69,3048.61,2.93939],275,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8128.11,2989.6,6.66456],220,"Auto",[]],[[8127.75,2996.91,6.7787],308,"Auto",[]],[[8127.88,2997.17,3.76053],288,"Auto",[]],[[8137.33,2992.88,3.51647],129,"Auto",[]],[[8127.56,2995.01,3.39115],151,"Auto",[]],[[8134.7,2993.53,3.48432],237,"Auto",[]],[[8132.54,2993.25,0.125614],18,"Auto",[]],[[8130.15,2993.42,0.0836229],241,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8155.79,2996.02,6.24443],344,"Auto",[]],[[8143.24,2996.63,6.96174],344,"Auto",[]],[[8143.15,2990.46,3.57279],243,"Auto",[]],[[8144.03,2994.09,3.61219],260,"Auto",[]],[[8149.19,2992.89,0.0368652],166,"Auto",[]],[[8143.55,2993,0.29543],249,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[8177.31,2992.63,3.93721],83,"Auto",[]],[[8173.92,2996.7,3.98446],24,"Auto",[]],[[8173.13,2986.95,4.05884],352,"Middle",[]],[[8166.98,2996.78,4.09689],102,"Auto",[]],[[8166.23,2996.43,6.97173],344,"Auto",[]],[[8177.03,2993.1,6.80846],21,"Auto",[]],[[8161.27,2995.69,4.85637],352,"Auto",[]],[[8162.91,2994.04,0.19555],208,"Auto",[]],[[8170,2992.74,0.299627],344,"Auto",[]],[[8174.32,2985.48,0.277961],263,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrol.
		[[[[1924.36,4848.89,0],0,[]],[[1927.36,4845.89,0],0,[]],[[1929.36,4845.89,0],0,[]],[[1931.36,4845.89,0],0,[]]],[],[[[1808.37,4776.01,0],[[0,"Move"],[1,"SAFE"]]],[[1721.31,4865.98,-1.14441e-05],[[0,"Move"]]],[[1805.39,4963.54,-3.8147e-06],[[0,"Move"]]],[[1921.53,4854.72,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[2193.66,4945.52,0],0,[]],[[2196.66,4942.52,3.8147e-06],0,[]],[[2198.66,4942.52,3.8147e-06],0,[]],[[2200.66,4942.52,0],0,[]]],[],[[[2077.67,4872.64,0],[[0,"Move"],[1,"SAFE"]]],[[1990.61,4962.61,0],[[0,"Move"]]],[[2058.43,5042.59,0],[[0,"Move"]]],[[2190.83,4951.35,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1988.12,5042.11,0],0,[]],[[1991.12,5039.11,0],0,[]],[[1993.12,5039.11,0],0,[]],[[1995.12,5039.11,3.8147e-06],0,[]]],[],[[[1913.01,4928.35,0],[[0,"Move"],[1,"SAFE"]]],[[1805.76,4980.21,0],[[0,"Move"]]],[[1828.06,5085.3,0],[[0,"Move"]]],[[1985.29,5047.94,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 5: {

		// First Counters.
		[HuntSpawn_6, HuntSpawn_6, HuntTrigger_2, 12, 300, EAST, 6, 30] spawn OKS_fnc_HuntBase;
		[HuntSpawn_7, HuntSpawn_7, HuntTrigger_2, 12, 300, EAST, 6, 30] spawn OKS_fnc_HuntBase;
		[HuntSpawn_8, HuntSpawn_8, HuntTrigger_2, 12, 300, EAST, 6, 30] spawn OKS_fnc_HuntBase;
		[HuntSpawn_9, HuntSpawn_9, HuntTrigger_2, 12, 300, EAST, 6, 30] spawn OKS_fnc_HuntBase;
		[HuntSpawn_10, HuntSpawn_10, HuntTrigger_2, 12, 300, EAST, 6, 30] spawn OKS_fnc_HuntBase;
	};

	case 6: {

		// Main Attack.
		sleep 60;
		[convoy_4, convoy_5, convoy_6, east, [8, ["UK3CB_TKM_O_BTR40_MG","UK3CB_TKM_O_BTR40_MG", "UK3CB_TKM_O_Ural_Zu23",  "UK3CB_TKM_O_BTR40",  "UK3CB_TKM_O_BTR40",  "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_BTR60", "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_BTR40"], 30, 25], [true, 7], [], false, false, ["attack"], true] spawn OKS_fnc_Convoy_Spawn;
		sleep 240;
		[convoy_7, nil, convoy_8, east, [8, ["UK3CB_TKM_O_BTR40_MG","UK3CB_TKM_O_BTR40_MG", "UK3CB_TKM_O_Ural_Zu23",  "UK3CB_TKM_O_BTR40",  "UK3CB_TKM_O_BTR40",  "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_BTR60", "UK3CB_TKM_O_BTR40", "UK3CB_TKM_O_BTR40"], 30, 25], [true, 7], [], false, false, ["attack"], true] spawn OKS_fnc_Convoy_Spawn;

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
