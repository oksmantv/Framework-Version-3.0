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

SystemChat format ["GW_Fnc_spawnList Executed - Case: %1", _case];

switch (_case) do {

	case 1: {

		Attack1Time = time;
		publicVariable "Attack1Time";
		_AttackGroups = [];
		["BATTALION HQ","side","1st Platoon be advised, the Soviets are on the move. Lead element to be expected crossing the bridge in 3 minutes. The main advance to be expected no later than 10 minutes. Godspeed, HQ out."] spawn OKS_fnc_ChatGlobal;
		
		// 41st Motor-Rifle Battalion Company.
		[ConvoySpawn_1,[ConvoyWP_1_1,ConvoyWP_1],ConvoyEnd_1,east,[2,["UK3CB_CW_SOV_O_LATE_BRDM2","UK3CB_CW_SOV_O_LATE_BRDM2"],45,50,30],[true,4],_AttackGroups,false,false,["attack"],"offroad"] spawn OKS_fnc_Convoy_Spawn;
		[ConvoySpawn_4,ConvoyWP_4,ConvoyEnd_4,independent,[4,["rhs_gaz66_msv","rhs_gaz66_msv","rhs_gaz66_msv","rhs_prp3_msv"],45,50,30],[true,4],_AttackGroups,false,false,["attack"],"offroad"] spawn OKS_fnc_Convoy_Spawn; 

		[[],[
			["UK3CB_CHD_O_Gaz66_ZU23",[6960.57,7179.28,2.28882e-05],345,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["cover_hide",0,"spare_hide",0,"bench_hide",0,"rear_numplate_hide",1,"light_hide",0]],[351,false]]],
			["UK3CB_CHD_O_Gaz66_ZU23",[7253.15,6342.75,-0.32811],7,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["cover_hide",0,"spare_hide",0,"bench_hide",0,"rear_numplate_hide",1,"light_hide",0]],[351,false]]],
			["UK3CB_CHD_O_Gaz66_ZU23",[9545.53,5916.61,-0.0038147],7,[["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["cover_hide",0,"spare_hide",0,"bench_hide",0,"rear_numplate_hide",1,"light_hide",0]],[351,false]]],
			["UK3CB_MEE_O_KORD_high",[8536.77,6460.31,3.95841],64,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_MEE_O_KORD_high",[8539.37,6495.61,0.782733],357,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_MEE_O_KORD_high",[8841.33,6233.26,0],30,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_MEE_O_KORD_high",[8823.37,6183.98,0],30,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_MEE_O_KORD_high",[7226.3,7026.31,-0.246122],30,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_MEE_O_KORD_high",[7238.04,7004.16,1.52588e-05],82,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_MEE_O_KORD_high",[7389.26,6433.91,-0.00479698],25,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_MEE_O_KORD_high",[7436.95,6372.57,-0.000152588],25,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_MEE_O_KORD_high",[7338.41,6330.13,0.29018],57,[["gunner",-1,[0]]],[[351,false]]]
		],[],east] call GW_Common_fnc_spawnGroup;

		// 10 minutes ahead of main force
		sleep 600;

		// Main Advane 
		Attack2Time = time;
		publicVariable "Attack2Time";

		_AttackGroups2 = [];
		["BATTALION HQ","side","1st Platoon be advised, the main advance has left Rabi and are heading towards the bridge. Godspeed, HQ out."] spawn OKS_fnc_ChatGlobal;
		[ConvoySpawn_3,ConvoyWP_3,ConvoyEnd_3,independent,[6,["rhs_btr70_msv","rhs_gaz66_msv","rhs_btr70_msv","rhs_gaz66_msv","rhs_gaz66_msv","rhs_prp3_msv"],45,50,30],[true,5],_AttackGroups2,false,false,["attack"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;
	
		waitUntil {
			sleep 60; 
			({
				_Group = _X;
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group <= ceil(count units _Group * 0.15)
			} count _AttackGroups == count _AttackGroups 
			&&
			{
				_Group = _X;
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group <= ceil(count units _Group * 0.15)
			} count _AttackGroups2 == count _AttackGroups2) || Attack2Time + 1200 < time;
		};
		systemChat "Main Attack 1 Complete";
		Attack1Complete = true;
		publicVariable "Attack1Complete";
	};

	case 2: {

		waitUntil { sleep 15; Attack1Complete || Attack2Time + 900 < time};

		_AttackGroups = [];

		// Second Counter.
		Attack3Time = time;
		publicVariable "Attack3Time";

		["BATTALION HQ","side","1st Platoon be advised, more forces are heading towards the bridge. An enemy motorized platoon and infantry platoon are inbound, HQ out."] spawn OKS_fnc_ChatGlobal;

		[ConvoySpawn_2,ConvoyWP_2,ConvoyEnd_2,independent,[4,["rhs_btr70_msv","rhs_gaz66_msv","rhs_gaz66_msv","rhs_gaz66_msv","rhs_prp3_msv"],35,50,30],[true,4],_AttackGroups,false,false,["attack"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;

		_Group1 = [[[[9119.95,7170.42,0],30,[[301,0]],"sl"],[[9120.33,7167.65,0],75,[[301,0]],"ar"],[[9118.35,7165.18,0],352,[[301,0]],"mmg"],[[9116.79,7161.53,0],75,[[301,0]],"ag"],[[9114.04,7159.57,0],352,[[301,0]],"lr"],[[9113.25,7155.41,0],75,[[301,0]],"r"],[[9109.74,7153.95,0],352,[[301,0]],"mat"],[[9109.71,7149.29,0],75,[[301,1]],"ag"]],[],[[[9176.94,7270.51,0],[[0,"Move"],[1,"AWARE"],[4,"FILE"]]],[[9297.52,7495.86,-1.90735e-06],[[0,"Move"]]],[[9436.66,7741.62,2.19345e-05],[[0,"Move"]]],[[9576.83,7891.36,-3.09944e-06],[[0,"Move"]]],[[9746.59,7958.61,2.12193e-05],[[0,"Move"]]],[[9896.96,8127.02,-4.52995e-06],[[0,"Move"]]],[[9597.05,8032.77,0],[[0,"SAD"]]]],independent] call GW_Common_fnc_spawnGroup;
		_Group2 = [[[[9018.87,6997.43,0],30,[[301,0]],"sl"],[[9019.25,6994.66,0],75,[[301,0]],"ar"],[[9017.27,6992.19,0],352,[[301,0]],"mmg"],[[9015.71,6988.54,4.76837e-07],75,[[301,0]],"ag"],[[9012.97,6986.58,0],352,[[301,0]],"lr"],[[9012.17,6982.42,0],75,[[301,0]],"r"],[[9008.67,6980.96,0],352,[[301,0]],"mat"],[[9008.63,6976.3,0],75,[[301,1]],"ag"]],[],[[[9176.2,7270.97,0],[[0,"Move"],[1,"AWARE"],[4,"FILE"]]],[[9296.78,7496.32,0],[[0,"Move"]]],[[9435.92,7742.08,2.14577e-05],[[0,"Move"]]],[[9576.09,7891.82,0.612203],[[0,"Move"]]],[[9745.85,7959.07,2.0504e-05],[[0,"Move"]]],[[9896.22,8127.48,0],[[0,"Move"]]],[[9574.18,8191.92,0],[[0,"SAD"]]]],independent] call GW_Common_fnc_spawnGroup;
		_Group3 = [[[[8979.58,6893.67,0],14,[[301,0]],"sl"],[[8980.72,6891.12,0],59,[[301,0]],"ar"],[[8979.5,6888.19,0],336,[[301,0]],"mmg"],[[8979.02,6884.25,0],59,[[301,0]],"ag"],[[8976.93,6881.61,0],336,[[301,0]],"lr"],[[8977.32,6877.39,0],59,[[301,0]],"r"],[[8974.36,6875.02,0],336,[[301,0]],"mat"],[[8975.62,6870.53,0],59,[[301,1]],"ag"]],[],[[[9176.26,7270.54,0],[[0,"Move"],[1,"AWARE"],[4,"FILE"]]],[[9296.84,7495.89,0],[[0,"Move"]]],[[9435.98,7741.64,2.09808e-05],[[0,"Move"]]],[[9576.15,7891.38,0.612202],[[0,"Move"]]],[[9745.91,7958.64,2.00272e-05],[[0,"Move"]]],[[9896.28,8127.05,0],[[0,"Move"]]],[[9631.6,8108.8,14.0707],[[0,"SAD"]]]],independent] call GW_Common_fnc_spawnGroup;

		{
			_AttackGroups pushBackUnique _X;
		} foreach [_Group1,_Group2,_Group3];

		waitUntil {
			sleep 60; 
			({
				_Group = _X;
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group <= ceil(count units _Group * 0.15)
			} count _AttackGroups == count _AttackGroups) || Attack3Time + 1200 < time;
		};
		systemChat "Second Attack Complete";
		Attack2Complete = true;
		publicVariable "Attack2Complete";
	};

	case 3: {
		
		waitUntil { sleep 15; Attack1Complete && Attack2Complete };
		systemChat "Attack1Complete & Attack2Complete - Bridge Counter-Attack";
		// Bridge Counter-Attack
		_AttackGroups = [];
		Attack4Time = time;
		publicVariable "Attack4Time";
		["BATTALION HQ","side","1st Platoon be advised, the last of the main thrust are inbound towards the bridge, a mechanized company and an infantry company, HQ out."] spawn OKS_fnc_ChatGlobal;

		[ConvoySpawn_5,ConvoyWP_5,ConvoyEnd_5,east,[5,["UK3CB_CW_SOV_O_LATE_BRDM2","rhs_gaz66_msv","rhs_gaz66_msv","rhs_gaz66_msv","rhs_gaz66_msv"],35,50,30],[true,6],_AttackGroups,false,false,["attack"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;
		[ConvoySpawn_8,ConvoyWP_8,ConvoyEnd_8,independent,[5,["rhs_bmp1_msv","rhs_t80","rhs_gaz66_msv","rhs_gaz66_msv","rhs_prp3_msv"],35,50,30],[true,8],_AttackGroups,false,false,["attack"],"offroad"] spawn OKS_fnc_Convoy_Spawn; sleep 30;
		_Group1 = [[[[8812.9,7100.11,0],0,[[301,0]],"sl"],[[8817.9,7095.11,4.76837e-07],0,[[301,0]],"ar"],[[8807.9,7095.11,9.53674e-07],0,[[301,0]],"g"],[[8822.9,7090.11,0],0,[[301,0]],"lr"],[[8802.9,7090.11,0],0,[[301,0]],"mat"],[[8827.9,7085.11,0],0,[[301,0]],"mat"],[[8797.9,7085.11,0],0,[[301,0]],"ab"],[[8832.9,7080.11,0],0,[[301,1]],"ag"]],[],[[[8904.15,7273.02,0],[[0,"Move"],[1,"AWARE"]]],[[8950.71,7472.45,-1.52588e-05],[[0,"Move"]]],[[8959.26,7611.62,0],[[0,"Hold"],[1,"COMBAT"],[4,"LINE"]]]],east] call GW_Common_fnc_spawnGroup;
		_Group2 = [[[[8889.97,7095.23,0],0,[[301,0]],"sl"],[[8894.97,7090.23,0],0,[[301,0]],"ar"],[[8884.97,7090.23,0],0,[[301,0]],"g"],[[8899.97,7085.23,0],0,[[301,0]],"lr"],[[8879.97,7085.23,0],0,[[301,0]],"mat"],[[8904.97,7080.23,0],0,[[301,0]],"mat"],[[8874.97,7080.23,0],0,[[301,0]],"ab"],[[8909.97,7075.23,0],0,[[301,1]],"ag"]],[],[[[8981.22,7268.15,0],[[0,"Move"],[1,"AWARE"]]],[[9053.13,7462.69,0.037487],[[0,"Move"]]],[[9062.19,7597.88,0],[[0,"Hold"],[1,"COMBAT"],[4,"LINE"]]]],east] call GW_Common_fnc_spawnGroup;
		_Group3 = [[[[8950.3,7091.44,0],0,[[301,0]],"sl"],[[8955.3,7086.44,0],0,[[301,0]],"ar"],[[8945.3,7086.44,0],0,[[301,0]],"g"],[[8960.3,7081.44,0],0,[[301,0]],"lr"],[[8940.3,7081.44,0],0,[[301,0]],"mat"],[[8965.3,7076.44,0],0,[[301,0]],"mat"],[[8935.3,7076.44,0],0,[[301,0]],"ab"],[[8970.3,7071.44,0],0,[[301,1]],"ag"]],[],[[[9063.16,7255.58,0],[[0,"Move"],[1,"AWARE"]]],[[9195.47,7499.8,0],[[0,"Move"]]],[[9280.73,7728.05,0],[[0,"SAD"],[1,"COMBAT"],[4,"LINE"]]]],east] call GW_Common_fnc_spawnGroup;
		_Group4 = [[[[8388.8,7338.28,0],66,[[301,0]],"sl"],[[8386.22,7331.7,-9.53674e-07],66,[[301,0]],"ar"],[[8382.22,7340.86,0],66,[[301,0]],"mmg"],[[8383.64,7325.12,-9.53674e-07],66,[[301,0]],"ag"],[[8375.64,7343.45,0],66,[[301,0]],"lr"],[[8381.06,7318.53,0],66,[[301,0]],"r"],[[8369.05,7346.03,9.53674e-07],66,[[301,0]],"mat"],[[8378.48,7311.95,-9.53674e-07],66,[[301,1]],"ag"]],[],[[[8702.42,7454.02,0],[[0,"Move"],[3,25],[4,"LINE"]]],[[9014.88,7690.48,0],[[0,"Move"],[3,25]]],[[9820.33,8109.57,0],[[0,"SAD"]]]],independent] call GW_Common_fnc_spawnGroup;
		_Group5 = [[[[8374.1,7423.85,0],66,[[301,0]],"sl"],[[8371.52,7417.26,0],66,[[301,0]],"ar"],[[8367.52,7426.43,9.53674e-07],66,[[301,0]],"mmg"],[[8368.94,7410.68,0],66,[[301,0]],"ag"],[[8360.93,7429.01,9.53674e-07],66,[[301,0]],"lr"],[[8366.35,7404.1,1.90735e-06],66,[[301,0]],"r"],[[8354.35,7431.59,1.90735e-06],66,[[301,0]],"mat"],[[8363.77,7397.51,0],66,[[301,1]],"ag"]],[],[[[8682.36,7543.75,0],[[0,"Move"],[3,25],[4,"LINE"]]],[[8914.6,7735.88,3.30855],[[0,"Move"],[3,25]]],[[9576.48,8168.69,0],[[0,"SAD"]]]],independent] call GW_Common_fnc_spawnGroup;
		_Group6 = [[[[8171.17,7425.47,4.76837e-07],66,[[301,0]],"sl"],[[8168.59,7418.88,-9.53674e-07],66,[[301,0]],"ar"],[[8164.59,7428.05,0],66,[[301,0]],"mmg"],[[8166.01,7412.3,-1.90735e-06],66,[[301,0]],"ag"],[[8158.01,7430.63,4.76837e-07],66,[[301,0]],"lr"],[[8163.43,7405.72,9.53674e-07],66,[[301,0]],"r"],[[8151.42,7433.21,9.53674e-07],66,[[301,0]],"mat"],[[8160.85,7399.13,-9.53674e-07],66,[[301,1]],"ag"]],[],[[[8469.69,7562.1,9.53674e-07],[[0,"Move"],[3,25],[4,"LINE"]]],[[8630.63,7625.03,0],[[0,"Move"],[3,25]]],[[9321.02,8201.41,3.8147e-06],[[0,"SAD"]]]],independent] call GW_Common_fnc_spawnGroup;
		
		{
			_AttackGroups pushBackUnique _X;
		} foreach [_Group1,_Group2,_Group3,_Group4,_Group5,_Group6];

		waitUntil {
			sleep 60; 
			({
				_Group = _X;
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group <= ceil(count units _Group * 0.15)
			} count _AttackGroups == count _AttackGroups &&
			Attack1Complete && Attack2Complete) || Attack4Time + 1500 < time;
		};

		Attack3Complete = true;
		publicVariable "Attack3Complete";	
		[4] spawn GW_fnc_SpawnList;
	};

	case 4: {

		["BATTALION HQ","side","1st Platoon be advised, the main thrust for the bridge has been halted. Friendly forces are about to relieve you on the bridge, fallback to Outpost Karage."] spawn OKS_fnc_ChatGlobal;
		["Task1","SUCCEEDED"] call BIS_fnc_taskSetState; sleep 5;
		"Task2" call BIS_fnc_taskSetCurrent;

		"Marker_113" setMarkerText "Secured Bridge";
		"Marker_113" setMarkerColor "ColorGreen";
		"Marker_253" setMarkerColor "ColorGreen";

		"Marker_114" setMarkerText "Attacked Bridge";
		"Marker_114" setMarkerColor "ColorRed";
		"Marker_255" setMarkerColor "ColorRed";

		{_X setMarkerAlpha 0} foreach [		
			"marker_38", 
			"marker_58", 
			"marker_59", 
			"marker_60", 
			"marker_61", 
			"marker_71", 
			"marker_223", 
			"marker_224", 
			"marker_36", 
			"marker_237", 
			"marker_226", 
			"marker_230", 
			"marker_234", 
			"marker_238", 
			"marker_242", 
			"marker_37", 
			"marker_225", 
			"marker_229", 
			"marker_233", 
			"marker_241", 
			"FLNSEG_WEST_17_INNER", 
			"FLNSEG_WEST_17_OUTER", 
			"FLNSEG_WEST_19_INNER", 
			"FLNSEG_WEST_19_OUTER", 
			"FLNSEG_WEST_21_INNER", 
			"FLNSEG_WEST_21_OUTER", 
			"FLNSEG_WEST_22_INNER", 
			"FLNSEG_WEST_22_OUTER", 
			"FLNSEG_WEST_23_INNER", 
			"FLNSEG_WEST_23_OUTER", 
			"FLNSEG_WEST_24_INNER", 
			"FLNSEG_WEST_24_OUTER", 
			"marker_227", 
			"marker_228", 
			"marker_231", 
			"marker_232", 
			"marker_235", 
			"marker_236", 
			"marker_239", 
			"marker_240", 
			"marker_243", 
			"marker_244",
			"marker_44", 
			"marker_43", 
			"marker_42"
		];
		{_X setMarkerAlpha 1} foreach [
			"marker_51", 
			"marker_94", 
			"marker_97", 
			"marker_92", 
			"marker_95", 
			"marker_98", 
			"marker_93", 
			"marker_96", 
			"marker_99", 
			"FLNSEG_WEST_2_OUTER_1", 
			"FLNSEG_WEST_2_INNER_1", 
			"FLNSEG_WEST_6_OUTER_1", 
			"FLNSEG_WEST_6_INNER_1",
			"FLNSEG_WEST_10_INNER_1", 
			"FLNSEG_WEST_10_OUTER_1", 
			"FLNSEG_WEST_11_INNER_1", 
			"FLNSEG_WEST_11_OUTER_1", 
			"FLNSEG_WEST_1_INNER_1", 
			"FLNSEG_WEST_1_OUTER_1", 
			"FLNSEG_WEST_3_INNER_1", 
			"FLNSEG_WEST_3_OUTER_1", 
			"FLNSEG_WEST_4_INNER_1", 
			"FLNSEG_WEST_4_OUTER_1", 
			"FLNSEG_WEST_5_INNER_1", 
			"FLNSEG_WEST_5_OUTER_1", 
			"FLNSEG_WEST_7_INNER_1", 
			"FLNSEG_WEST_7_OUTER_1", 
			"FLNSEG_WEST_8_INNER_1", 
			"FLNSEG_WEST_8_OUTER_1", 
			"FLNSEG_WEST_9_INNER_1", 
			"FLNSEG_WEST_9_OUTER_1",
			"marker_100", 
			"marker_101", 
			"marker_102"
		];

		// Friendly Convoy
		[ConvoySpawn_9,ConvoyWP_9,ConvoyEnd_9,west,[4,["UK3CB_GAF_B_BMP2","UK3CB_GAF_B_BMP2","UK3CB_GAF_B_BTR80","UK3CB_GAF_B_BTR80"],35,50,30],[true,3],[],false,false,["hold"],"convoystop"] spawn OKS_fnc_Convoy_Spawn; sleep 30;
		[ConvoySpawn_10,ConvoyWP_10,ConvoyEnd_10,west,[4,["UK3CB_GAF_B_BMP2","UK3CB_GAF_B_BMP2","UK3CB_GAF_B_BTR80","UK3CB_GAF_B_BTR80"],35,50,30],[true,3],[],false,false,["hold"],"convoystop"] spawn OKS_fnc_Convoy_Spawn; sleep 120;

		["BATTALION HQ","side","1st Platoon be advised, a secondary force is moving across the river to the south-east. Reinforce 2nd Platoon and repel the final attack! HQ out."] spawn OKS_fnc_ChatGlobal;		

		// Southern Flank Attack
		[true, ["Task2","MainTask"], ["2nd Platoon has deployed its force to hold the crossing near Outpost Karage. If attacked, they will hold their ground and report contact to you. If the crossing falls, you must retake it.", "Hold Crossing", "cookiemarker2"], [10244.4,8288.17,0], 1, 3, true, "defend"] call BIS_fnc_taskCreate; sleep 5;
		[true, ["Task2_1","Task2"], ["If 2nd platoon meets contact, it is up to you to support them in any way possible and ensure their survival", "Protect 2nd Platoon", "cookiemarker2"], [10225.5,8378.35,0], 1, 3, true, "help"] call BIS_fnc_taskCreate;

		_AttackGroups = [];

		[ConvoySpawn_6,ConvoyWP_6,ConvoyEnd_6,east,[6,["rhs_t80","rhs_t80","rhs_gaz66_msv","rhs_gaz66_msv","rhs_bmp1_msv","rhs_prp3_msv","rhs_gaz66_msv"],35,50,30],[true,6],_AttackGroups,false,false,["attack"],"offroad"] spawn OKS_fnc_Convoy_Spawn; sleep 120;
		[ConvoySpawn_7,ConvoyWP_7,ConvoyEnd_7,east,[6,["rhs_bmp1_msv","rhs_t80","rhs_gaz66_msv","rhs_gaz66_msv"],35,50,30],[true,6],_AttackGroups,false,false,["attack"],"offroad"] spawn OKS_fnc_Convoy_Spawn;
		_Group1 = [[[[10573.1,8294.86,0],302,[[301,0]],"sl"],[[10580,8296.43,0.0247664],302,[[301,0]],"ar"],[[10574.7,8287.96,-0.13922],302,[[301,0]],"mmg"],[[10586.9,8298.01,0.509704],302,[[301,0]],"ag"],[[10576.3,8281.07,-0.468807],302,[[301,0]],"lr"],[[10593.8,8299.59,0.721272],302,[[301,0]],"r"],[[10577.8,8274.18,-0.882334],302,[[301,0]],"mat"],[[10600.7,8301.16,1.00161],302,[[301,1]],"ag"]],[],[[[10443.2,8374.44,-7.15256e-07],[[0,"Move"]]],[[10376.6,8405.97,0],[[0,"Hold"]]]],east] call GW_Common_fnc_spawnGroup;
		_Group2 = [[[[10542.2,8219.7,1.63803],302,[[301,0]],"sl"],[[10549,8221.27,1.56128],302,[[301,0]],"ar"],[[10543.7,8212.8,1.64604],302,[[301,0]],"mmg"],[[10555.9,8222.85,1.90961],302,[[301,0]],"ag"],[[10545.3,8205.91,1.65777],302,[[301,0]],"lr"],[[10562.8,8224.43,2.16301],302,[[301,0]],"r"],[[10546.9,8199.02,1.63982],302,[[301,0]],"mat"],[[10569.7,8226,2.34958],302,[[301,1]],"ag"]],[],[[[10412.3,8299.28,1.23918],[[0,"Move"]]],[[10345.6,8330.81,1.73508],[[0,"Hold"]]]],east] call GW_Common_fnc_spawnGroup;
		_Group3 = [[[[10344.5,8059.05,0.874429],334,[[301,0]],"sl"],[[10351.2,8056.71,0.489842],334,[[301,0]],"ar"],[[10342.2,8052.38,0.686836],334,[[301,0]],"mmg"],[[10357.9,8054.37,0.561982],334,[[301,0]],"ag"],[[10339.8,8045.7,0.594835],334,[[301,0]],"lr"],[[10364.5,8052.03,0.954192],334,[[301,0]],"r"],[[10337.5,8039.03,0.505339],334,[[301,0]],"mat"],[[10371.2,8049.69,1.46029],334,[[301,1]],"ag"]],[],[[[10269.5,8205.9,0.983381],[[0,"Move"]]],[[10207.6,8358.13,1.959],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
	
		{
			_AttackGroups pushBackUnique _X;
		} foreach [_Group1,_Group2,_Group3];

		waitUntil {
			sleep 60; 
			{
				_Group = _X;
				{Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group <= ceil(count units _Group * 0.15)
			} count _AttackGroups == count _AttackGroups;
		};
		["BATTALION HQ","side","1st Platoon be advised, the Soviet attack has stalled. Friendly reserves are inbound to plug the gaps. Mission Complete!"] spawn OKS_fnc_ChatGlobal;
		["Task2","SUCCEEDED"] call BIS_fnc_taskSetState; sleep 3;
		["MainTask","SUCCEEDED"] call BIS_fnc_taskSetState; 

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

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*
	GOL SCRIPT EXAMPLES:
	Link to README: https://github.com/oksmantv/Guerrillas-of-Liberations-Misc-Addon?tab=readme-ov-file#readme 
*/