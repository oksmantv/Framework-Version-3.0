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

		["HQ","side","1-1, be advised, lead scouts report a motorized column heading towards Neumuhle from the south-west, with at least three APCs present. ETA within 4-5 minutes, out."] remoteExec ["OKS_Chat",0];

		_randomSleep = selectRandom [240,300,320];
		//sleep _randomSleep;

		[ambushstart_1,ambushwp_1,ambushend_1,EAST,
		[6,
			["UK3CB_CW_SOV_O_EARLY_BRDM2","UK3CB_CW_SOV_O_EARLY_BTR60","UK3CB_CW_SOV_O_EARLY_Zil131_Covered","UK3CB_CW_SOV_O_EARLY_Zil131_Covered","UK3CB_CW_SOV_O_EARLY_Zil131_Covered","UK3CB_CW_SOV_O_EARLY_Zil131_Covered"
			],
			6,30
		],
		[true,5]
		] spawn OKS_Convoy_Spawn;

		sleep 120;
		OKS_CONVOY_1_ACTIVE = true;
		publicVariable "OKS_CONVOY_1_ACTIVE";
		// sleep 180;
		// [[attackspawn_1,attackspawn_2],8,EAST,700,true,true,30] spawn OKS_Rush_Spawn;		
	};

	case 2: {

		["HQ","side","1-1, be advised, lead scouts confirm the motor column heading towards Borg from the north, expected 2 APCs and numerous trucks/light vehicles. ETA within 4-5 minutes, out."] remoteExec ["OKS_Chat",0];

		_randomSleep = selectRandom [240,300,320];
		sleep _randomSleep;

		[ambushstart_2,ambushwp_2,ambushend_2,EAST,
		[9,
			["UK3CB_CW_SOV_O_EARLY_BRDM2","UK3CB_CW_SOV_O_EARLY_BRDM2","UK3CB_CW_SOV_O_EARLY_UAZ_Closed", "UK3CB_CW_SOV_O_EARLY_UAZ_Open", "UK3CB_CW_SOV_O_EARLY_UAZ_MG", "UK3CB_CW_SOV_O_EARLY_Kraz255_Open", "UK3CB_CW_SOV_O_EARLY_Gaz66_Covered_Flatbed","UK3CB_CW_SOV_O_EARLY_BTR60","UK3CB_CW_SOV_O_EARLY_Zil131_Covered","UK3CB_CW_SOV_O_EARLY_Zil131_Covered"
			,"UK3CB_CW_SOV_O_EARLY_Zil131_Open","UK3CB_CW_SOV_O_EARLY_UAZ_Closed", "UK3CB_CW_SOV_O_EARLY_UAZ_Open"],
			6,30
		],
		[true,4]
		] spawn OKS_Convoy_Spawn;

		sleep 60;
		OKS_CONVOY_2_ACTIVE = true;
		publicVariable "OKS_CONVOY_2_ACTIVE";

	};

	case 3: {

		["HQ","side","1-1, the Russian infantry are attacking in force. Inbound from the northern treeline within 2-3 minutes, repel them and then fallback, out!"] remoteExec ["OKS_Chat",0];
		_randomSleep = selectRandom [120,180,200];
		sleep _randomSleep;		
		[[attack_1,attack_2,attack_3,attack_4],6,EAST,600,true,true,30] spawn OKS_Rush_Spawn;
		sleep 60;
		OKS_ATTACK_1_ACTIVE = true;
		publicVariable "OKS_ATTACK_1_ACTIVE";
	};

	case 4: {

		["HQ","side","1-1, we suspect the enemy now holds Neumuhle and are staging to attack Borg from the north-west. Expect infantry supported by APCs and light vehicles. ETA 2-4 minutes, out."] remoteExec ["OKS_Chat",0];
		_randomSleep = selectRandom [120,180,240];
		sleep _randomSleep;

		[ambushstart_3,ambushwp_3,ambushend_3,EAST,
		[7,
			["UK3CB_CW_SOV_O_EARLY_BRDM2","UK3CB_CW_SOV_O_EARLY_BRDM2","UK3CB_CW_SOV_O_EARLY_UAZ_Closed","UK3CB_CW_SOV_O_EARLY_UAZ_MG", "UK3CB_CW_SOV_O_EARLY_Kraz255_Open", "UK3CB_CW_SOV_O_EARLY_Gaz66_Covered_Flatbed","UK3CB_CW_SOV_O_EARLY_BTR60","UK3CB_CW_SOV_O_EARLY_Zil131_Covered","UK3CB_CW_SOV_O_EARLY_Zil131_Covered"
			,"UK3CB_CW_SOV_O_EARLY_Zil131_Open"],
			8,30
		],
		[true,4]
		] spawn OKS_Convoy_Spawn;	
		sleep 120;
		[[attack_5,attack_6,attack_7,attack_8],3,EAST,600,true,true,30] spawn OKS_Rush_Spawn;
		OKS_ATTACK_2_ACTIVE = true;
		publicVariable "OKS_ATTACK_2_ACTIVE";

	};

	case 5: {

		/// Mortar Patrols
		[[[[11567.9,8881.54,0],0,[]],[[11572.9,8876.54,0],0,[]],[[11562.9,8876.54,0],0,[]],[[11577.9,8871.54,0],0,[]]],[],[[[11521.2,8980.64,0],[[0,"Move"],[1,"SAFE"]]],[[11467,8944.93,0],[[0,"Move"]]],[[11493.7,8846.43,0],[[0,"Move"]]],[[11560.4,8872.34,0.5],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[11348.8,8966.2,5.72205e-006],0,[]],[[11353.8,8961.2,5.72205e-006],0,[]],[[11343.8,8961.2,5.72205e-006],0,[]],[[11358.8,8956.2,5.72205e-006],0,[]]],[],[[[11302.1,9065.29,5.72205e-006],[[0,"Move"],[1,"SAFE"]]],[[11247.9,9029.59,7.62939e-006],[[0,"Move"]]],[[11274.6,8931.09,5.72205e-006],[[0,"Move"]]],[[11341.3,8957,0.500006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[11098.9,9012.6,1.90735e-006],111,[]],[[11092.5,9009.72,0],111,[]],[[11096.1,9019.06,0],111,[]],[[11086,9006.85,0],111,[]]],[],[[[11244.2,9052.8,3.24249e-005],[[0,"Move"],[1,"SAFE"]]],[[11212,9125.4,0],[[0,"Move"]]],[[11088,9099.68,1.90735e-006],[[0,"Move"]]],[[11093,9022.89,0.499998],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[11088.5,8847.98,9.53674e-006],74,[]],[[11085,8841.79,9.53674e-006],74,[]],[[11082.3,8851.4,9.53674e-006],74,[]],[[11081.6,8835.6,1.14441e-005],74,[]]],[],[[[11237.7,8915.05,0],[[0,"Move"],[1,"SAFE"]]],[[11166.4,8974.55,2.47955e-005],[[0,"Move"]]],[[11070.6,8933.87,9.53674e-006],[[0,"Move"]]],[[11077.5,8852.63,0.50001],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10906,8927.12,1.90735e-005],123,[]],[[10899.1,8925.66,2.09808e-005],123,[]],[[10904.5,8934.04,2.09808e-005],123,[]],[[10892.2,8924.2,2.09808e-005],123,[]]],[],[[[11023.2,8899.19,-3.43323e-005],[[0,"Move"],[1,"SAFE"]]],[[11022.9,8976.47,0],[[0,"Move"]]],[[10919,8987.56,1.14441e-005],[[0,"Move"]]],[[10902.4,8938.42,0.500019],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10800.3,9100.13,4.19617e-005],214,[]],[[10798.9,9107.07,4.19617e-005],214,[]],[[10807.2,9101.52,4.19617e-005],214,[]],[[10797.5,9114,4.19617e-005],214,[]]],[],[[[10784.2,8991.79,4.3869e-005],[[0,"Move"],[1,"SAFE"]]],[[10849,8991.45,4.19617e-005],[[0,"Move"]]],[[10881.5,9088.21,4.3869e-005],[[0,"Move"]]],[[10811.6,9103.64,0.50004],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10661.8,8937,-4.57764e-005],111,[]],[[10655.3,8934.15,0],111,[]],[[10659,8943.47,0],111,[]],[[10648.9,8931.3,0],111,[]]],[],[[[10765.4,8942.27,7.24792e-005],[[0,"Move"],[1,"SAFE"]]],[[10760.7,9027.21,-2.09808e-005],[[0,"Move"]]],[[10701.4,9029.21,2.86102e-005],[[0,"Move"]]],[[10656,8947.31,0.499952],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10668.9,9268.24,2.47955e-005],214,[]],[[10667.6,9275.18,2.47955e-005],214,[]],[[10675.9,9269.6,2.47955e-005],214,[]],[[10666.2,9282.12,2.47955e-005],214,[]]],[],[[[10624.5,9135.03,0],[[0,"Move"],[1,"SAFE"]]],[[10696.3,9120.84,4.57764e-005],[[0,"Move"]]],[[10750.1,9256.03,2.28882e-005],[[0,"Move"]]],[[10680.3,9271.7,0.500025],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		/// Statics
		[[[[11028.9,8923.28,0],78,"Auto",[]],[[11034,8929.83,0],78,"Auto",[]],[[11030.3,8937.54,0],78,"Auto",[]],[[11020.5,8928.17,0],78,"Middle",[]]],[["UK3CB_CW_SOV_O_EARLY_BRDM2_HQ",[11015.3,9102.63,-7.62939e-006],168,[["driver",-1,[]],["commander",-1,[0]]],[[6,["SOV",1]]]],["UK3CB_CW_SOV_O_EARLY_BRDM2_HQ",[11075.5,8814.59,-7.62939e-006],70,[["driver",-1,[]],["commander",-1,[0]]],[[6,["SOV",1]]]],["UK3CB_CW_SOV_O_Early_PKM_nest",[11007.7,8911.05,-1.90735e-006],159,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_CW_SOV_O_Early_PKM_nest",[11034,8933.44,-1.14441e-005],72,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10883.9,9073.56,0],97,"Auto",[]],[[10891.2,9069.78,0],90,"Auto",[]],[[10891.5,9065.77,0],115,"Middle",[]],[[10883.6,9059.32,1.90735e-006],97,"Middle",[]],[[10874.1,9072.5,1.90735e-006],78,"Auto",[]]],[["UK3CB_CW_SOV_O_EARLY_UAZ_MG",[10884.9,9084.44,1.71661e-005],102,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]],["UK3CB_CW_SOV_O_Early_PKM_nest",[10889.8,9060.19,0],118,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[10721.2,9002.86,0.073782],88,"Auto",[]],[[10719.5,9007.9,1.14441e-005],71,"Auto",[]],[[10727.7,9015.99,0],98,"Middle",[]],[[10738.9,9011.77,1.90735e-006],101,"Auto",[]],[[10739.4,9004.11,1.90735e-006],78,"Auto",[]],[[10732.3,9002.06,0],123,"Auto",[]]],[["UK3CB_CW_SOV_O_EARLY_UAZ_MG",[10728,8926.03,0],115,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		/// Mortars
		[east,mortar_1,getMarkerPos "borg_marker",10,300,60] execVM "Scripts\OKS_Ambience\OKS_ArtyFire.sqf";
		sleep 10;		
		[east,mortar_2,getMarkerPos "borg_marker",10,300,60] execVM "Scripts\OKS_Ambience\OKS_ArtyFire.sqf";
		sleep 10;		
		[east,mortar_3,getMarkerPos "borg_marker",10,300,60] execVM "Scripts\OKS_Ambience\OKS_ArtyFire.sqf";
		sleep 10;		
		[east,mortar_4,getMarkerPos "borg_marker",10,300,60] execVM "Scripts\OKS_Ambience\OKS_ArtyFire.sqf";
		sleep 10;
		[east,mortar_5,getMarkerPos "borg_marker",10,300,60] execVM "Scripts\OKS_Ambience\OKS_ArtyFire.sqf";
		sleep 10;		
		[east,mortar_6,getMarkerPos "borg_marker",10,300,60] execVM "Scripts\OKS_Ambience\OKS_ArtyFire.sqf";
	
	};

	case 6: {

		["HQ","side","1-1, we suspect a large contingent is continuing their assault through Borg and into Katzien, expected APCs. ETA 3-4 minutes, out."] remoteExec ["OKS_Chat",0];
		[6,getPos escort_1,west,true,getpos exfil_1,"EscortDone",false] spawn OKS_Escort_Friendly;
		[6,getPos escort_2,west,true,getpos exfil_2,"EscortDone",false] spawn OKS_Escort_Friendly;
		[6,getPos escort_3,west,true,getpos exfil_3,"EscortDone",false] spawn OKS_Escort_Friendly;
		_randomSleep = selectRandom [120,180,240];
		sleep _randomSleep;

		[ambushstart_4,ambushwp_4,ambushend_4,EAST,
		[7,
			["UK3CB_CW_SOV_O_EARLY_BRDM2","UK3CB_CW_SOV_O_EARLY_BRDM2","UK3CB_CW_SOV_O_EARLY_UAZ_Closed","UK3CB_CW_SOV_O_EARLY_UAZ_MG", "UK3CB_CW_SOV_O_EARLY_Kraz255_Open", "UK3CB_CW_SOV_O_EARLY_Gaz66_Covered_Flatbed","UK3CB_CW_SOV_O_EARLY_BTR60","UK3CB_CW_SOV_O_EARLY_Zil131_Covered","UK3CB_CW_SOV_O_EARLY_Zil131_Covered"
			,"UK3CB_CW_SOV_O_EARLY_Zil131_Open"],
			8,30
		],
		[true,4]
		] spawn OKS_Convoy_Spawn;	
		sleep 120;
		[[attack_9,attack_10,attack_11],5,EAST,600,true,true,30] spawn OKS_Rush_Spawn;
		[east, "rhs_ka60_grey", false, "unload", AirDropSpawn1, getPos heli_1, AirDropEnd, [2,1], ["Friendly_3"], false, false] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf";
		sleep 15;
		[east, "rhs_ka60_grey", false, "unload", AirDropSpawn2, getPos heli_2, AirDropEnd, [2,1], ["Friendly_3"], false, false] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf";
		sleep 15;
		[east, "rhs_ka60_grey", false, "unload", AirDropSpawn3, getPos heli_3, AirDropEnd, [2,1], ["Friendly_3"], false, false] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf";
		OKS_ATTACK_3_ACTIVE = true;
		publicVariable "OKS_ATTACK_3_ACTIVE";

	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
