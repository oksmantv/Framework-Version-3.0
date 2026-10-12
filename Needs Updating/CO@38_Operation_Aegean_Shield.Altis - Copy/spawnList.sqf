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

		/// AAA
		{[_X,["UK3CB_CSAT_B_O_Ural_Zu23"]] spawn OKS_fnc_Radar;} foreach [radar_1,radar_2,radar_3,radar_4];

		// BMP3s
		[[],[["UK3CB_CSAT_B_O_BMP3MERA",[20889.9,19374.8,0],260,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CSAT_B",1]]]],["UK3CB_CSAT_B_O_BMP3MERA",[20521.7,19304.6,0],230,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CSAT_B",1]]]],["UK3CB_CSAT_B_O_BMP3MERA",[22854.8,20038.8,-1.90735e-05],274,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CSAT_B",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		[Group officer_1,getMarkerPos "respawn_west",west,false,nil,false] spawn OKS_fnc_Evacuate_HVT;

		// Trenches
		[[[[19883.3,19016.7,0],234,"Up",[]],[[19880.3,19031.6,0],234,"Up",[]],[[19873.6,19047.1,0],226,"Up",[]],[[19846,19054.3,0],291,"Middle",[]],[[19838.6,19048.3,0.235504],232,"Up",[]],[[19842.1,19046.7,0.23951],197,"Up",[]],[[19844.6,19046.1,0.252052],194,"Up",[]],[[19843.4,19050.9,0.176437],86,"Middle",[]],[[19890.4,19054.5,0],234,"Middle",[]],[[19906.2,19035.8,0],13,"Middle",[]]],[["UK3CB_CHD_W_O_SPG9",[19893.6,19052.4,-0.00012207],219,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[19888.9,18989.6,3.8147e-006],330,"Up",[]],[[19894.9,18987.9,0],107,"Middle",[]],[[19886.5,19000.8,0],234,"Up",[]],[[19938.9,19013.6,0],196,"Middle",[]],[[19915.7,18991,0],199,"Middle",[]],[[19908.6,19008.4,0.0828476],352,"Middle",[]],[[19906.9,19006.2,0],203,"Up",[]],[[19901.7,19008.7,7.62939e-006],220,"Up",[]],[[19902.8,19011.6,0.114609],62,"Middle",[]],[[19921.2,19030.7,0],65,"Middle",[]]],[["UK3CB_CHD_W_O_SPG9",[19935.6,19014.2,-0.00012207],212,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[19957.6,19022.3,0],355,"Middle",[]],[[19950.4,19022.2,0],53,"Middle",[]],[[19972.1,18993.3,-7.62939e-006],230,"Middle",[]],[[19953,18990.7,0],188,"Up",[]],[[19937.1,18992.4,0],232,"Up",[]],[[19984.7,18993,0.813293],231,"Up",[]],[[19988,18994.4,0.644203],146,"Up",[]],[[19985.6,18998.6,0.314041],98,"Middle",[]],[[19982.8,18995.5,0.6931],316,"Middle",[]]],[["UK3CB_CHD_W_O_SPG9",[19965,19014.8,-0.00012207],191,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		/// IFVs Sentries
		[[],[["UK3CB_CSAT_B_O_T72A",[19412.9,19171.3,0],214,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CSAT_B_O_BMP1",[19976.9,19627.8,0],183,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CSAT_B_O_BMP1",[20584.1,20105.9,0],229,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CSAT_B_O_BMP1",[20333.2,18761.4,0],262,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Huntbase
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 5, 300, east,["UK3CB_CSAT_B_O_T55", "UK3CB_CSAT_B_O_T72A", "UK3CB_CSAT_B_O_BRM1K", "O_APC_Tracked_02_cannon_F"],120] spawn OKS_fnc_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 5, 300, east,["UK3CB_CSAT_B_O_T55", "UK3CB_CSAT_B_O_T72A", "UK3CB_CSAT_B_O_BRM1K", "O_APC_Tracked_02_cannon_F","UK3CB_CSAT_B_O_GAZ_Vodnik_Cannon", "UK3CB_CSAT_B_O_GAZ_Vodnik_KVPT", "UK3CB_CSAT_B_O_UAZ_SPG9", "UK3CB_CSAT_B_O_BRDM2"],120] spawn OKS_fnc_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 5, 300, east,["UK3CB_CSAT_B_O_T55", "UK3CB_CSAT_B_O_T72A", "UK3CB_CSAT_B_O_BRM1K", "O_APC_Tracked_02_cannon_F","UK3CB_CSAT_B_O_GAZ_Vodnik_Cannon", "UK3CB_CSAT_B_O_GAZ_Vodnik_KVPT", "UK3CB_CSAT_B_O_UAZ_SPG9", "UK3CB_CSAT_B_O_BRDM2"],120] spawn OKS_fnc_HuntBase;
	
		// IFV Phase 2
		[[],[["UK3CB_CSAT_B_O_T72A",[21583.5,19606.4,0],256,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",1]]]],["UK3CB_CSAT_B_O_BMP1",[22048.9,19539.8,0],247,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_B_O_BMP1",[22384.6,20606.4,-0.000217438],218,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",1]]]],["UK3CB_CSAT_B_O_T72A",[22903.1,20256,0],304,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",1]]]],["UK3CB_CSAT_B_O_BMP1",[23134.4,19927.1,-9.53674e-007],238,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[19920,18608.9,0],153,[]],[[19913.3,18611.1,0],153,[]],[[19922.2,18615.6,0],153,[]],[[19906.6,18613.4,0],153,[]]],[],[[[19742.4,18656.7,0],[[0,"Move"],[1,"SAFE"]]],[[19442.2,18756.5,9.53674e-007],[[0,"Move"]]],[[19772,18811,0],[[0,"Move"]]],[[19964.5,18726.1,0],[[0,"Move"]]],[[19930.2,18614.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[20031.3,18891.1,0],153,[]],[[20024.6,18893.3,0],153,[]],[[20033.5,18897.8,0],153,[]],[[20017.9,18895.5,0.511711],153,[]]],[],[[[19922.5,18922.5,0],[[0,"Move"],[1,"SAFE"]]],[[19718,19046,0],[[0,"Move"]]],[[19935,19112.9,0],[[0,"Move"]]],[[20107.5,18956.9,3.8147e-006],[[0,"Move"]]],[[20041.5,18896.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[20322.9,18742.6,0],153,[]],[[20316.2,18744.9,0],153,[]],[[20325.2,18749.3,0],153,[]],[[20309.5,18747.1,0],153,[]]],[],[[[20217.4,18756.7,0],[[0,"Move"],[1,"SAFE"]]],[[20087.3,18832.6,0],[[0,"Move"]]],[[20318,18930.1,0],[[0,"Move"]]],[[20399.1,18808.4,0],[[0,"Move"]]],[[20333.2,18748.3,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Radar Station
		[[[[20298.5,18811.4,0],313,"Up",[]],[[20294.3,18803.8,0],29,"Middle",[]],[[20292.3,18794.6,7.62939e-06],29,"Middle",[]],[[20296.4,18788.8,7.62939e-06],128,"Middle",[]],[[20291.4,18791.8,0.731773],210,"Up",[]],[[20286.6,18794.7,1.5316],210,"Up",[]],[[20283.2,18795.6,0.902748],210,"Up",[]],[[20283.1,18798.7,0.87574],210,"Up",[]],[[20283.4,18801.3,0.302361],210,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[20316,18762.1,0.264198],210,"Up",[]],[[20316.3,18758.9,0.075531],210,"Up",[]],[[20316.8,18755.9,0.27813],210,"Up",[]],[[20320.5,18756.5,0],45,"Middle",[]],[[20320.9,18761.5,0.297142],8,"Middle",[]],[[20323.6,18760.8,0.193298],119,"Middle",[]],[[20329.9,18754.8,0],109,"Middle",[]],[[20325.9,18755.4,0.652908],225,"Middle",[]],[[20323.9,18765.4,0],300,"Up",[]],[[20326.8,18771.5,0],178,"Middle",[]],[[20345.5,18762.1,4.13186],278,"Up",[]],[[20346.6,18759.3,4.30736],233,"Up",[]],[[20350.8,18760.7,4.40256],142,"Up",[]],[[20334.9,18770.6,0.684219],58,"Up",[]],[[20337.2,18774.1,0.795738],167,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Artillery 
		{
			[east,_X,[18776.5,16608.2,0.00151443],7,300,120] spawn OKS_fnc_ArtyFire;
			[_X] spawn OKS_fnc_Destroy_Task;
			sleep 5;
		} foreach [arty_1,arty_2,arty_3];

		// MLRS
		{
			[east,_X,[18776.5,16608.2,0.00151443],15,300,120] spawn OKS_fnc_ArtyFire;
			[_X] spawn OKS_fnc_Destroy_Task;
			sleep 5;			
		} foreach [arty_4,arty_5,arty_6];

		[civilian_1,5,5,4,5,false,true,"greek"] spawn OKS_fnc_Civilians;

		_AAAGroup = [[],[["UK3CB_CSAT_B_O_Ural_Zu23",[23271,19925.4,0],121,[["driver",-1,[]],["Gunner",1,[0]],["gunner",-1,[1]]],[[6,["CSAT_B",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_O_G_V3S_Zu23",[23255.5,19959.1,0],315,[["driver",-1,[]],["Gunner",0,[]],["Gunner",1,[0]],["gunner",-1,[1]]],[[6,["CSAT_B",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_O_G_V3S_Zu23",[23182.8,20023.6,-1.23978e-05],308,[["driver",-1,[]],["Gunner",0,[]],["Gunner",1,[0]],["gunner",-1,[1]]],[[6,["CSAT_B",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_O_G_V3S_Zu23",[23197.3,21807.3,-0.00537872],145,[["driver",-1,[]],["Gunner",0,[]],["Gunner",1,[0]],["gunner",-1,[1]]],[[6,["CSAT_B",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_O_G_V3S_Zu23",[23280.7,21820.8,0],266,[["driver",-1,[]],["Gunner",0,[]],["Gunner",1,[0]],["gunner",-1,[1]]],[[6,["CSAT_B",1]],[7,["ClanLogo_Hide",1]]]],["UK3CB_O_G_V3S_Zu23",[23239.4,21778.5,-0.00746536],321,[["driver",-1,[]],["Gunner",0,[]],["Gunner",1,[0]],["gunner",-1,[1]]],[[6,["CSAT_B",1]],[7,["ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		sleep 20;
		
		{
			[vehicle (leader _X)] spawn OKS_fnc_Destroy_Task; sleep 5;
		} foreach ([_AAAGroup, true] call BIS_fnc_groupVehicles);

		{
			[_X] spawn OKS_fnc_Destroy_Task;
			sleep 5;
		} foreach [support_1,support_2,support_3];		

		// Tanks Second Line 
		[[],[["UK3CB_CSAT_B_O_T55",[20946.8,17964.1,-0.000179291],322,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CSAT_B",1]],[7,["Barrels_Hide",0]]]],["UK3CB_CSAT_B_O_T55",[21206.3,18361.8,0],287,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CSAT_B",1]],[7,["Barrels_Hide",0]]]],["UK3CB_CSAT_B_O_T55",[21552.4,18325.2,-0.000173569],277,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CSAT_B",1]],[7,["Barrels_Hide",0]]]],["UK3CB_CSAT_B_O_T55",[21440.2,18032.1,-0.000175476],297,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CSAT_B",1]],[7,["Barrels_Hide",0]]]],["UK3CB_CSAT_B_O_T55",[20620.2,18788.6,0],170,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CSAT_B",1]],[7,["Barrels_Hide",0]]]],["UK3CB_CSAT_B_O_T55",[21759.7,19220.4,-0.000175476],234,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["CSAT_B",1]],[7,["Barrels_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;		
	};

	case 2: {

		// Trench Counter-Attack
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_1, 6, 25, east,["UK3CB_CSAT_B_O_GAZ_Vodnik_Cannon", "UK3CB_CSAT_B_O_T55", "UK3CB_CSAT_B_O_T55", "UK3CB_CSAT_B_O_BRDM2"],5] spawn OKS_fnc_HuntBase;

		// Air Spawns
		[] spawn {
			while {!triggerActivated NEKY_Hunt_Trigger_3} do {
				_spawn = selectRandom [airspawn_1,airspawn_2,airspawn_3];
				[getPos _spawn,[22278,19441.9,0],selectRandom ["UK3CB_CSAT_B_O_MIG21_AA", "UK3CB_CSAT_B_O_Su25SM", "UK3CB_CSAT_B_O_MIG21", "UK3CB_CSAT_B_O_MIG29SM"],east,false,"SAD",selectRandom [1000,500,750]] spawn OKS_fnc_AirSpawn; 
				sleep 900 + (random 600);
			};
		};

		// High-Ground
		[[[[22061.1,19524.9,-9.15527e-05],274,"Middle",[]],[[22062.9,19524,-0.000114441],199,"Middle",[]],[[22070.1,19521.7,-1.52588e-05],298,"Middle",[]],[[22074,19509.1,-0.00038147],273,"Up",[]],[[22081,19501.9,-0.00118256],199,"Middle",[]],[[22087.7,19504.4,-0.000389099],262,"Middle",[]],[[22069,19502.1,0.522408],263,"Up",[]],[[22070.8,19500.2,0.398277],215,"Up",[]],[[22072.9,19497.7,0.470825],223,"Up",[]],[[22075.5,19499.9,0.0910339],357,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[22040.4,19536.8,0.323704],284,"Middle",[]],[[22048.7,19532.9,-0.326447],88,"Middle",[]],[[22053,19523.6,-0.0886688],228,"Middle",[]]],[["UK3CB_CSAT_B_O_SPG9",[22045.9,19542.3,-8.01086e-05],260,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_B_O_BMP1",[22404.5,19435,-3.43323e-05],238,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CSAT_B_O_BMP1",[22089,19516.8,-0.00252533],261,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CSAT_B_O_BMP1",[21580.2,19620.2,0.111481],264,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 3: {

		// Village 2
		[[[[22432.1,20010.9,9.53674e-006],351,"Up",[]],[[22416.7,20001.6,9.53674e-006],64,"Up",[]],[[22390.6,20004.9,0.374229],241,"Up",[]],[[22393.4,20007.2,0.23687],44,"Up",[]],[[22416.7,20018,0.265074],264,"Up",[]],[[22420.3,20020.4,3.09514],12,"Up",[]],[[22415.3,20016,3.1327],17,"Up",[]],[[22419,20024.4,0],286,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[22415.3,20050.4,0.261965],227,"Up",[]],[[22413.2,20057,0.316221],133,"Up",[]],[[22426.6,20046.8,0.266268],259,"Up",[]],[[22426.9,20053.7,7.62939e-006],240,"Up",[]]],[["UK3CB_ARD_O_SPG9",[22428.4,20040.1,-7.62939e-005],258,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[22437.8,20036.4,9.53674e-006],185,"Up",[]],[[22445.5,20042,7.62939e-006],323,"Middle",[]],[[22460.9,20027.5,7.62939e-006],34,"Middle",[]],[[22450.5,20033.6,0.232092],233,"Up",[]],[[22446.4,20027.2,3.30147],281,"Up",[]],[[22447,20031.1,3.33292],299,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[22511.4,20016.2,2.93817],306,"Up",[]],[[22508.5,20009.6,3.29272],22,"Up",[]],[[22508.8,20008.6,0.424593],347,"Up",[]],[[22501.5,20008.8,7.62939e-006],115,"Up",[]],[[22518.9,20023,7.62939e-006],258,"Up",[]],[[22517.8,20018.4,0.312229],83,"Up",[]],[[22520.5,19998.7,0],307,"Middle",[]],[[22502.8,19984,9.53674e-006],125,"Up",[]],[[22489.9,19995.4,9.53674e-006],25,"Middle",[]],[[22469.2,20003.7,1.14441e-005],310,"Middle",[]]],[["UK3CB_ARD_O_SPG9",[22506,20027.1,-7.82013e-005],252,[["gunner",-1,[0]]],[]],["UK3CB_ARD_O_SPG9",[22485.9,19973.1,-7.62939e-005],254,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Ioannina
		[[[[23121.4,20054,1.03742],211,"Up",[]],[[23107.9,20060.6,1.04227],270,"Up",[]],[[23113.5,20055.8,0.866604],1,"Up",[]],[[23142.2,20030,0.505732],303,"Middle",[]],[[23145.2,20019.5,0.942127],239,"Middle",[]],[[23158.6,20007.2,0.453954],134,"Middle",[]],[[23165,20006.3,0.499814],268,"Middle",[]],[[23170.1,19996.8,0.735054],307,"Middle",[]],[[23166.4,19999,0.682714],228,"Up",[]]],[["UK3CB_CHD_O_SPG9",[23179.5,20029.1,-1.90735e-006],282,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[23223,19959.8,0.192676],288,"Up",[]],[[23227.2,19961.1,0.22334],54,"Up",[]],[[23229.3,19945.4,0.227386],306,"Up",[]],[[23233.3,19943.8,0.281323],17,"Up",[]],[[23240.2,19953.7,0],275,"Middle",[]],[[23254.2,19943.5,3.0245],292,"Middle",[]],[[23256,19936.7,3.06605],306,"Up",[]],[[23235.6,19940,0.224462],31,"Up",[]],[[23244.1,19931.6,0],344,"Up",[]],[[23237.4,19926.9,0.377431],225,"Up",[]],[[23243.2,19924.9,0.809535],243,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[23264.6,19886.6,0.713047],37,"Up",[]],[[23260.2,19888.7,0.575541],69,"Up",[]],[[23261.1,19883,0.562652],304,"Up",[]]],[["UK3CB_CHD_O_SPG9",[23271.8,19886.9,-2.86102e-006],312,[["gunner",-1,[0]]],[]],["UK3CB_CSAT_B_O_BMP1",[23277.5,20031.6,0],230,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",1]]]],["UK3CB_CSAT_B_O_BMP1",[23264.7,19911,0],244,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[22548.2,19923.1,0],153,[]],[[22541.5,19925.3,0],153,[]],[[22550.5,19929.8,0],153,[]],[[22534.8,19927.6,0],153,[]]],[],[[[22479.2,19887.2,0],[[0,"Move"],[1,"SAFE"]]],[[22432.2,19969.3,0],[[0,"Move"]]],[[22503.6,20038.5,0],[[0,"Move"]]],[[22571.3,19999.3,0],[[0,"Move"]]],[[22558.5,19928.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[22478.6,20045.4,0],110,[]],[[22472.2,20042.4,1.90735e-006],110,[]],[[22475.6,20051.8,0],110,[]],[[22465.8,20039.4,0],110,[]]],[],[[[22444.6,19983,0],[[0,"Move"],[1,"SAFE"]]],[[22351.3,20005.8,0],[[0,"Move"]]],[[22368.3,20086.4,0],[[0,"Move"]]],[[22425.3,20103.9,0],[[0,"Move"]]],[[22482.1,20056.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[22455.7,20186.2,0],119,[]],[[22448.9,20184.2,0],119,[]],[[22453.7,20192.9,0],119,[]],[[22442.1,20182.2,9.53674e-007],119,[]]],[],[[[22359.2,20136.6,0],[[0,"Move"],[1,"SAFE"]]],[[22172.1,20152.6,0],[[0,"Move"]]],[[22312,20192.1,0],[[0,"Move"]]],[[22421.5,20220.2,0],[[0,"Move"]]],[[22460.9,20196.7,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[22822.1,19843.1,0],153,[]],[[22815.4,19845.4,0],153,[]],[[22824.4,19849.8,0],153,[]],[[22808.7,19847.6,0],153,[]]],[],[[[22734.6,19859,1.90735e-006],[[0,"Move"],[1,"SAFE"]]],[[22598.4,19926.8,0],[[0,"Move"]]],[[22822.3,20005.8,1.90735e-006],[[0,"Move"]]],[[22852.1,19904.1,0],[[0,"Move"]]],[[22832.4,19848.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[23219.7,19757.8,0],220,[]],[[23219,19764.8,0],220,[]],[[23226.7,19758.5,0],220,[]],[[23218.3,19771.9,0],220,[]]],[],[[[23132.3,19831,0],[[0,"Move"],[1,"SAFE"]]],[[23183.3,19940.7,0],[[0,"Move"]]],[[23281.4,19870.6,0],[[0,"Move"]]],[[23278.6,19792.9,0],[[0,"Move"]]],[[23229,19750.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[23238.1,20058.3,0],153,[]],[[23231.4,20060.5,0],153,[]],[[23240.4,20065,0],153,[]],[[23224.7,20062.8,0],153,[]]],[],[[[23150.6,20074.2,0],[[0,"Move"],[1,"SAFE"]]],[[23065.4,20127.3,0],[[0,"Move"]]],[[23200.3,20147.9,0],[[0,"Move"]]],[[23268.1,20119.3,0],[[0,"Move"]]],[[23248.4,20064,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[23443.7,20012.4,0],112,[]],[[23437.1,20009.7,0],112,[]],[[23440.9,20019,0],112,[]],[[23430.6,20007,0],112,[]]],[],[[[23367.3,19966.8,0],[[0,"Move"],[1,"SAFE"]]],[[23268.2,19950.8,0],[[0,"Move"]]],[[23356.2,20055,0],[[0,"Move"]]],[[23426.1,20078.1,0],[[0,"Move"]]],[[23447.6,20023.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[civilian_2,5,5,4,5,false,true,"greek"] spawn OKS_fnc_Civilians;
		[civilian_3,5,5,4,5,false,true,"greek"] spawn OKS_fnc_Civilians;
	};


	case 4: {

		_Vehicles = ["UK3CB_CSAT_B_O_T55", "UK3CB_CSAT_B_O_T55", "UK3CB_CSAT_B_O_BMP2", "UK3CB_CSAT_B_O_BRM1K"];

		// Ioannina Counter-Attack
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_2, 8, 300, east, _Vehicles, 120] spawn OKS_fnc_HuntBase;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_2, 8, 300, east, _Vehicles, 120] spawn OKS_fnc_HuntBase;
		[Spawn_7, Spawn_7, NEKY_Hunt_Trigger_2, 8, 300, east, _Vehicles, 120] spawn OKS_fnc_HuntBase;

	};

	case 5: {

		// Nidasos
		[[[[22608.6,21668.1,0.267546],123,"Up",[]],[[22610.4,21672.6,0.294899],71,"Up",[]],[[22604.1,21644.7,1.90735e-006],172,"Up",[]],[[22607.4,21644.8,0],86,"Middle",[]]],[["UK3CB_CSAT_B_O_BMP1",[22568.7,21654.8,5.72205e-006],164,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]],["UK3CB_CSAT_B_O_BMP1",[22623.2,21632.5,5.72205e-006],166,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[22638.5,21665.7,0.534554],114,"Up",[]],[[22635.1,21671.7,0.7628],259,"Up",[]],[[22643.6,21669.1,1.27733],263,"Up",[]],[[22652.4,21659.9,1.90735e-006],267,"Up",[]],[[22637.9,21654.3,0],160,"Up",[]],[[22642.8,21650.4,0],156,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[22667.5,21684.6,0.169804],171,"Up",[]],[[22677.9,21664.4,0],156,"Middle",[]],[[22662,21651.7,0.203987],188,"Up",[]],[[22664.1,21645.1,3.16324],163,"Up",[]],[[22661.6,21651.5,3.05527],127,"Middle",[]],[[22647.4,21672.1,0.33992],177,"Middle",[]]],[["UK3CB_CSAT_B_O_BMP1",[22811.5,21656.3,5.72205e-006],211,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		_Vehicles = ["UK3CB_CSAT_B_O_T55", "UK3CB_CSAT_B_O_T55", "UK3CB_CSAT_B_O_BMP2", "UK3CB_CSAT_B_O_BRM1K"];

		// Nidasos Counter-Attack
		[Spawn_8, Spawn_8, NEKY_Hunt_Trigger_3, 8, 180, east, _Vehicles, 120] spawn OKS_fnc_HuntBase;
		[Spawn_9, Spawn_9, NEKY_Hunt_Trigger_3, 8, 180, east, _Vehicles, 120] spawn OKS_fnc_HuntBase;
		[Spawn_10, Spawn_10, NEKY_Hunt_Trigger_3, 8, 180, east, _Vehicles, 120] spawn OKS_fnc_HuntBase;

		// AAA Section
		[[[[23186.1,21816.4,0.223289],55,"Up",[]],[[23177.9,21810.8,0.357254],55,"Up",[]],[[23180.1,21808.3,0.306391],131,"Up",[]],[[23186.6,21800.4,-1.90735e-006],229,"Up",[]],[[23170.4,21792.8,0.665924],337,"Up",[]],[[23175.4,21787.3,0.657574],239,"Up",[]],[[23180.2,21785.2,0.462692],13,"Up",[]]],[["UK3CB_CSAT_B_O_BMP1",[23185.3,21769.9,-0.000297546],256,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[23218.9,21777.9,3.8147e-006],285,"Middle",[]],[[23225.5,21780.4,0.171402],39,"Up",[]],[[23226,21775.4,0.618519],167,"Up",[]],[[23232.3,21769,0.509472],142,"Up",[]],[[23230.8,21769.4,0.598877],219,"Up",[]],[[23248.8,21829.4,0.275192],312,"Up",[]],[[23256.8,21824.3,3.08487],141,"Up",[]],[[23254.2,21821.6,0.241825],300,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[23222.4,21847.1,0.136383],175,"Up",[]],[[23215.5,21848.9,0],213,"Up",[]]],[["UK3CB_CSAT_B_O_BMP1",[23235.2,21856.9,-0.000293732],249,[["driver",-1,[]],["Gunner",-1,[0]]],[[6,["CSAT_B",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[23227,21910.2,0],0,[]],[[23232,21905.2,-1.90735e-006],0,[]],[[23222,21905.2,0],0,[]],[[23237,21900.2,0],0,[]]],[],[[[23298.2,21856.8,0],[[0,"Move"],[1,"SAFE"]]],[[23350.7,21771.3,-0.000167847],[[0,"Move"]]],[[23220.8,21813.1,-0.000148773],[[0,"Move"]]],[[23172.9,21869,-0.000637054],[[0,"Move"]]],[[23215.3,21909.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[23159.3,21856.4,0],58,[]],[[23157.7,21849.5,1.90735e-006],58,[]],[[23152.4,21857.9,0],58,[]],[[23156.1,21842.6,0],58,[]]],[],[[[23152,21767.7,0],[[0,"Move"],[1,"SAFE"]]],[[23107.4,21677.8,0],[[0,"Move"]]],[[23073.8,21810,0],[[0,"Move"]]],[[23095.7,21880.3,0],[[0,"Move"]]],[[23152.6,21866,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[23186.1,21662.9,0],139,[]],[[23179.1,21663.4,0],139,[]],[[23186.7,21669.9,0],139,[]],[[23172,21664,0],139,[]]],[],[[[23097.3,21657,0],[[0,"Move"],[1,"SAFE"]]],[[23001.8,21687.8,0],[[0,"Move"]]],[[23127.7,21740.6,0],[[0,"Move"]]],[[23200.4,21729.4,0],[[0,"Move"]]],[[23194.7,21670.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[22811.5,21631.2,0],63,[]],[[22809.3,21624.5,0],63,[]],[[22804.8,21633.4,0],63,[]],[[22807.1,21617.8,0],63,[]]],[],[[[22796.1,21543.6,0],[[0,"Move"],[1,"SAFE"]]],[[22743.5,21458.1,0],[[0,"Move"]]],[[22722.1,21592.9,0],[[0,"Move"]]],[[22750.4,21660.9,0],[[0,"Move"]]],[[22805.8,21641.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[22568.7,21690.7,0],41,[]],[[22569.1,21683.6,0],41,[]],[[22561.6,21690.2,1.90735e-006],41,[]],[[22569.6,21676.6,0],41,[]]],[],[[[22587.3,21603.7,1.90735e-006],[[0,"Move"],[1,"SAFE"]]],[[22552,21511,0],[[0,"Move"]]],[[22366.4,21589.8,0],[[0,"Move"]]],[[22411.6,21702.8,0],[[0,"Move"]]],[[22559.5,21698,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[22833.2,21729.6,0],139,[]],[[22826.2,21730.1,0],139,[]],[[22833.8,21736.6,0],139,[]],[[22819.1,21730.6,0],139,[]]],[],[[[22744.4,21723.7,0],[[0,"Move"],[1,"SAFE"]]],[[22648.9,21754.5,0],[[0,"Move"]]],[[22774.7,21807.3,0],[[0,"Move"]]],[[22847.4,21796,0],[[0,"Move"]]],[[22841.8,21737.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 6: {

		//
		// GRAD Artillery
		[[[[20245.8,19174.7,0.67065],231,"Up",[]],[[20250.4,19178.4,0.505171],115,"Up",[]],[[20251.6,19187.5,2.98351],321,"Up",[]],[[20257.1,19185.7,3.25441],290,"Middle",[]],[[20256.9,19185.4,0.334332],207,"Up",[]],[[20252.5,19187.7,0.182907],61,"Up",[]],[[20257.8,19196.3,0],333,"Up",[]],[[20251,19174.6,0],40,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[20280.5,19309.3,0.775789],257,"Up",[]],[[20280.3,19313.2,0.802518],288,"Up",[]],[[20274,19239.8,0.277149],289,"Middle",[]],[[20272.2,19237.1,0.258844],291,"Middle",[]],[[20284,19230.1,0.427853],267,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[20272.1,19202.1,0],178,"Up",[]],[[20274.8,19208.3,0.105434],37,"Up",[]],[[20284.6,19203.8,-1.90735e-006],317,"Middle",[]],[[20280.8,19197.9,0.216293],52,"Up",[]],[[20280.1,19199.7,3.04582],40,"Up",[]],[[20283.2,19204.4,3.09328],313,"Middle",[]],[[20278.8,19205.9,0],29,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[20294.4,19186.4,1.47427],220,"Up",[]],[[20296.8,19189.3,0.925678],123,"Up",[]],[[20302.2,19179.4,0.372358],152,"Up",[]],[[20303.4,19186.1,0.15798],30,"Up",[]],[[20308.4,19181.6,0.451338],335,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[20362.7,19103,8.29265],153,[]],[[20356,19105.3,8.29265],153,[]],[[20364.9,19109.7,8.29265],153,[]],[[20349.3,19107.5,8.29266],153,[]]],[],[[[20257.2,19117.1,8.29266],[[0,"Move"],[1,"SAFE"]]],[[20165.9,19216.4,8.29221],[[0,"Move"]]],[[20313,19384.8,8.29218],[[0,"Move"]]],[[20410.1,19266.1,8.29308],[[0,"Move"]]],[[20372.9,19108.7,8.29265],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		
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

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn OKS_fnc_fnc_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn OKS_fnc_fnc_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn OKS_fnc_fnc_HuntBase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_fnc_HuntBase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn OKS_fnc_fnc_HuntBase;
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
