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
	/*Bojanovice*/
	[Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
	
	/*Statics*/
	/*Command bunker*/
	[[[[8495.11,7513.97,0.178],298,"Up",[]],[[8493.36,7511.88,0.179],0,"Middle",[]],[[8496.82,7516.15,0.178321],74,"Middle",[]],[[8498.8,7512.79,0.178],0,"Middle",[]],[[8494.7,7520.4,0],80,"",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[8486.63,7526.96,0.791859],343,"Up",[]],[[8492.06,7526.76,0.0964451],77,"Middle",[]],[[8482.72,7522.34,0.735215],29,"Middle",[]],[[8482.89,7518.67,0.688278],63,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	[[[[8472.98,7542.29,0],342,"Down",[]],[[8477.25,7541.58,0],341,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	/*Ruined house*/
	[[[[8417.33,7482.3,3.94624],10,"Up",[]],[[8422.79,7491.87,3.96866],50,"Up",[]],[[8422.64,7483.54,4.62331],145,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[8425.79,7494.13,0.262608],163,"Middle",[]],[[8423.73,7493.42,0.263],225,"Middle",[]],[[8418.69,7491.87,0.260664],332,"Up",[]],[[8422.53,7483.65,0.240565],30,"Up",[]],[[8428.94,7485.36,3.93103],88,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	/*Patrols*/
	/*Inside town*/
	[[[[8407.51,7565.86,0],0,[]],[[8409.51,7565.86,0],0,[]],[[8411.51,7565.86,0],0,[]],[[8404.51,7568.86,0],0,[]]],[],[[[8427.43,7514.86,0],[[0,"Move"],[1,"SAFE"]]],[[8314.3,7458.7,0],[[0,"Move"]]],[[8400.6,7576.84,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[8531.37,7565.55,0],0,[]],[[8533.37,7565.55,-9.53674e-007],0,[]],[[8535.37,7565.55,-9.53674e-007],0,[]],[[8528.37,7568.55,0],0,[]]],[],[[[8661.12,7605.29,0],[[0,"Move"],[1,"SAFE"]]],[[8492.71,7670.06,0],[[0,"Move"]]],[[8472.82,7530.34,0],[[0,"Move"]]],[[8531.14,7560.96,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[8564.25,7488.09,0],0,[]],[[8566.25,7488.09,0],0,[]],[[8568.25,7488.09,0],0,[]],[[8561.25,7491.09,0],0,[]]],[],[[[8717,7551.39,0],[[0,"Move"],[1,"SAFE"]]],[[8797.33,7514.35,0],[[0,"Move"]]],[[8558.94,7387.59,0],[[0,"Move"]]],[[8557.17,7488.49,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[8548.84,7465.57,9.53674e-007],0,[]],[[8550.84,7465.57,9.53674e-007],0,[]],[[8552.84,7465.57,9.53674e-007],0,[]],[[8545.84,7468.57,9.53674e-007],0,[]]],[],[[[8519.97,7379.42,0],[[0,"Move"],[1,"SAFE"]]],[[8366.61,7398.56,0],[[0,"Move"]]],[[8478.98,7492.69,0],[[0,"Move"]]],[[8539.79,7473.83,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	/*Outside of town*/
	[[[[8665.08,7226.39,0],127,[]],[[8671.15,7234.33,0],127,[]],[[8658.07,7225.46,0],127,[]],[[8672.09,7227.32,0],127,[]]],[],[[[8741.86,7126.33,0],[[0,"Move"],[1,"SAFE"]]],[[8532.54,7330.08,0],[[0,"Move"]]],[[8692.61,7254.55,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[8808.63,7099.13,0],0,[]],[[8798.63,7099.13,0],0,[]],[[8813.63,7094.13,-4.76837e-007],0,[]],[[8803.63,7104.13,0],0,[]]],[],[[[8921.01,7285.83,0],[[0,"Move"],[1,"SAFE"]]],[[9047.01,7138.61,2.38419e-007],[[0,"Move"]]],[[9009.87,7128.66,0],[[0,"Move"]]],[[8906.42,7214.87,0],[[0,"Move"]]],[[8796.34,7076.27,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[8205.07,7836.08,0],0,[]],[[8207.07,7836.08,0],0,[]],[[8209.07,7836.08,0],0,[]],[[8202.07,7839.08,0],0,[]]],[],[[[8208.96,8022.71,0],[[0,"Move"],[1,"SAFE"]]],[[8168.25,7856.22,0],[[0,"Move"]]],[[8596.63,7595.54,0],[[0,"Move"]]],[[8562.61,7666.63,0],[[0,"Move"]]],[[8211.64,7843.01,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};
	
	case 11: {
	/*Farmhouse base*/
	[[[[8608.74,7273.48,0.392975],330,"Up",[]],[[8614.8,7270.45,0.393],129,"Middle",[]],[[8625.72,7275.31,0.392975],37,"Up",[]],[[8617.6,7282.01,0.600006],324,"Up",[]],[[8615.82,7280.08,0.497999],106,"Middle",[]],[[8621.28,7270.49,0.392975],172,"Up",[]],[[8621.66,7268.85,3.513],300,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[8633.81,7263.12,0.167677],59,"Up",[]],[[8629.3,7254.77,0.167677],212,"Up",[]],[[8624.17,7260.41,0.167999],0,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[8592.38,7255.23,0],107,"Middle",[]],[[8585.53,7255.14,0],138,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};
	
	case 12: {
	/*Bunker rush*/
	_group1 = [[[[8492.07,7520.77,6.67572e-006],0,[]],[[8492.97,7521.72,0],0,[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[_group1,1000,30,[],[],true] remoteExec ["lambs_wp_fnc_taskRush",[8507.62,7518.22,0]];
	};
	
	case 13: {
	/*Mine rush - discontinued ATM*/
	_group2 = [[[[9205.17,7656.17,0],287,[]],[[9211.39,7659.53,0],287,[]],[[9208.54,7649.95,0],287,[]],[[9217.61,7662.9,0],287,[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[_group2,1000,30,[],[],true] remoteExec ["lambs_wp_fnc_taskRush",[8898.12,7642.72,0]];
	};
	
	case 14: {
	[[[[9195.72,7443.6,0],257,[]],[[9188.79,7472.79,0],257,[]],[[9192.5,7478.81,2.38419e-007],257,[]],[[9185.08,7466.77,0],257,[]],[[9181.37,7460.75,0],257,[]],[[9183.68,7451.02,0],257,[]],[[9177.66,7454.73,0],257,[]],[[9189.7,7447.31,0],257,[]]],[],[[[8624.59,7287.93,5.72205e-006],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	
	};
	
	case 2: {
	
	[Trigger_2,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
	
	/*Statics*/
	/*Velké Hydčice*/
	/*Police station*/
	[[[[10445.4,8222.93,0.826984],247,"Up",[]],[[10447.2,8222.9,0.845209],155,"Up",[]],[[10443.7,8232.33,0.827],185,"Middle",[]],[[10454.2,8230.9,0.962253],0,"Up",[]],[[10451.7,8236.22,4.569],158,"Middle",[]],[[10447.1,8233.63,4.44614],86,"Up",[]],[[10445.7,8221.9,4.419],0,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[10451.8,8225.67,8.27866],122,"Up",[]],[[10441.9,8230.34,8.14682],322,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[10449.8,8226.78,4.50921],302,"Up",[]],[[10443.5,8226.29,4.41949],241,"Up",[]],[[10446.3,8231.27,4.428],237,"Middle",[]],[[10455.5,8227.12,4.52648],187,"Up",[]],[[10455.2,8229.9,4.543],190,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	[[],[["UK3CB_CW_SOV_O_LATE_MTLB_PKT",[10499.4,8174.53,0],230,[["driver",-1,[]],["commander",-1,[0]]],[[6,["SOV",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	
	/*Patrols*/
	[[[[10318.1,8128.9,9.53674e-007],0,[]],[[10308.1,8128.9,1.43051e-006],0,[]],[[10323.1,8123.9,9.53674e-007],0,[]],[[10313.1,8133.9,4.76837e-007],0,[]]],[],[[[10369.4,8065,0],[[0,"Move"],[1,"SAFE"]]],[[10441.1,8115.59,0],[[0,"Move"]]],[[10390.9,8183.65,4.76837e-007],[[0,"Move"]]],[[10208.2,8119.23,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[10577.5,8208.69,0],0,[]],[[10567.5,8208.69,0],0,[]],[[10582.5,8203.69,0],0,[]],[[10572.5,8213.69,-4.76837e-007],0,[]]],[],[[[10508.1,8218.95,0],[[0,"Move"],[1,"SAFE"]]],[[10460.8,8118.87,0],[[0,"Move"]]],[[10504.1,8019.51,0],[[0,"Move"]]],[[10560.1,8112.68,0],[[0,"Move"]]],[[10586,8215.31,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[10414.1,8295.43,0],0,[]],[[10404.1,8295.43,0],0,[]],[[10419.1,8290.43,4.76837e-007],0,[]],[[10409.1,8300.43,0],0,[]]],[],[[[10364.3,8334.32,0],[[0,"Move"],[1,"SAFE"]]],[[10295.2,8206.58,0],[[0,"Move"]]],[[10468.8,8192.75,-4.76837e-007],[[0,"Move"]]],[[10456.4,8281.19,0],[[0,"Move"]]],[[10426.9,8293.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[10705.8,8237.13,0],0,[[301,0]]],[[10698.4,8227.34,0],0,[[301,0]]],[[10700.8,8232.13,0],0,[[301,0]]],[[10705,8230.26,0],0,[[301,0]]]],[],[[[10711.3,8298.3,0],[[0,"Move"],[1,"SAFE"]]],[[10549,8265.05,0],[[0,"Move"]]],[[10580.6,8128.84,0],[[0,"Move"]]],[[10693.6,8197.59,0],[[0,"Move"]]],[[10699.1,8217.92,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
	
	/*Malé Hydčice*/
	/*Statics*/
	[[[[10190.8,8438.13,0.11149],92,"Up",[]],[[10193.6,8436.02,3.27065],263,"Up",[]],[[10193,8440.81,3.27065],354,"Up",[]],[[10188.6,8438.01,3.27065],53,"Up",[]],[[10192.8,8432.87,0.1636],126,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[10225.2,8433.96,1.65119],174,"Middle",[]],[[10210.1,8442.04,0],267,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[10186.6,8450.52,0.63],318,"Middle",[]],[[10183.2,8458.09,0.475533],129,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	[[[[10219.4,8370.1,0],206,"Up",[]],[[10226.1,8367.47,0],124,"Up",[]],[[10224.2,8368.91,0],329,"Middle",[]],[[10230.5,8376.16,7.93934e-005],288,"Middle",[]],[[10232.5,8378.34,0],271,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	/*Patrols*/
	[[[[10103.8,8372.23,-4.76837e-007],0,[]],[[10093.8,8372.23,0],0,[]],[[10108.8,8367.23,-4.76837e-007],0,[]],[[10098.8,8377.23,0],0,[]]],[],[[[10175.5,8438.35,0],[[0,"Move"],[1,"SAFE"]]],[[10185.3,8505,2.76566e-005],[[0,"Move"]]],[[10308.7,8496.48,0.000403881],[[0,"Move"]]],[[10246.2,8383.5,5.43594e-005],[[0,"Move"]]],[[10090.2,8349,-0.000298977],[[0,"Move"]]],[[10097.2,8371.39,-6.19888e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[10037.1,8193.46,0],0,[]],[[10027.1,8193.46,0],0,[]],[[10042.1,8188.46,0],0,[]],[[10032.1,8198.46,0],0,[]]],[],[[[10105.5,8345.88,1.189],[[0,"Move"],[1,"SAFE"]]],[[10231.7,8300.89,1.0252e-005],[[0,"Move"]]],[[10131.1,8186.8,-8.39233e-005],[[0,"Move"]]],[[9988.93,8130.91,-4.05312e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	
	};
	
	case 21: {
	/*Male Hydčice convoy counterattack*/
	[spawnpos_1,waypoint_1,end_1,east,[4,["UK3CB_CW_SOV_O_LATE_T80","UK3CB_CW_SOV_O_EARLY_BMP1","UK3CB_CW_SOV_O_LATE_MTLB_PKT","UK3CB_CW_SOV_O_LATE_MTLB_PKT"], 30, 30],[true,7],[], false, false, ["rush"], "alternate"] spawn OKS_fnc_Convoy_Spawn;

	};
	
	case 22: {
	/*Velké Hydčice Hospital counterattack*/
	[[],[["UK3CB_CW_SOV_O_LATE_BTR70",[11534.3,9312.81,-0.00316238],227,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[[[10584.2,8154.55,0],[[0,"Move"]]],[[10364.6,8233.93,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[10841.2,8528.56,-9.53674e-007],240,[]],[[10826.3,8554.62,-9.53674e-007],240,[]],[[10828.2,8561.44,-9.53674e-007],240,[]],[[10824.4,8547.8,9.53674e-007],240,[]],[[10822.6,8540.98,-9.53674e-007],240,[]],[[10827.5,8532.29,-9.53674e-007],240,[]],[[10820.7,8534.16,-9.53674e-007],240,[]],[[10834.4,8530.43,0.000102043],240,[]]],[],[[[10344,8259.07,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[11077.9,8389.61,0],272,[]],[[11077.6,8379.61,-3.8147e-006],272,[]],[[11083.1,8394.44,-7.24792e-005],272,[]],[[11072.7,8384.78,0],272,[]]],[],[[[10555.7,8152.89,-5.14984e-005],[[0,"Move"]]],[[10354.1,8254.24,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	};
	
	case 3: {
	
	[Trigger_3,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
	
	/*Motorpool*/
	/*Statics*/
	[[[[10314.7,6858.77,0.178341],0,"Up",[]],[[10316.2,6857.27,0.178341],178,"Up",[]],[[10311,6861.38,0.178341],354,"Up",[]],[[10313.4,6857.49,0.178341],272,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[10320.6,6798.98,0],289,"Middle",[]],[[10320,6799.41,2.781],162,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[10346.1,6818.7,0.314518],58,"Up",[]],[[10347.2,6818.39,3.43108],67,"Up",[]],[[10337.2,6819.63,3.434],111,"Middle",[]],[[10341.8,6815.69,3.439],0,"Middle",[]],[[10344,6817.98,3.44959],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[10341.1,6840.58,0.313477],303,"Up",[]],[[10344.7,6837.78,0.313477],355,"Up",[]],[[10342.3,6828.38,0.313],160,"Middle",[]],[[10336.2,6827.53,0.313477],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[10337.9,6818.48,3.43575],79,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
	/*Patrols*/
	[[[[10304,6757.8,0],0,[]],[[10334,6757.8,0],0,[]],[[10339,6752.8,0],0,[]],[[10329,6762.8,0],0,[]],[[10324,6767.8,0],0,[]],[[10314,6767.8,0],0,[]],[[10319,6772.8,0],0,[]],[[10309,6762.8,0],0,[]]],[],[[[10029.1,6770.51,0],[[0,"Move"],[1,"SAFE"]]],[[10037.4,6875.5,0],[[0,"Move"]]],[[10364.1,6935.77,-3.8147e-006],[[0,"Move"]]],[[10361.8,6767.21,-1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[10014,6931.2,3.8147e-006],0,[]],[[10004,6931.2,0],0,[]],[[10019,6926.2,3.8147e-006],0,[]],[[10009,6936.2,0],0,[]]],[],[[[10006.2,7088.28,0],[[0,"Move"],[1,"SAFE"]]],[[9692.04,6838.97,0],[[0,"Move"]]],[[9825.49,6732.11,6.86646e-005],[[0,"Move"]]],[[9991.63,6919.62,5.34058e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[10447.9,6981.98,0],0,[]],[[10437.9,6981.98,0],0,[]],[[10452.9,6976.98,0],0,[]],[[10442.9,6986.98,0],0,[]]],[],[[[10419.1,6573.08,0],[[0,"Move"],[1,"SAFE"]]],[[10364.9,6709.16,7.62939e-006],[[0,"Move"]]],[[10432.8,7006.17,-7.62939e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};
	
	case 4: {
	/*Quarry arty - ON REPLAY NEED TO RE-ADD ARTY VICS + SUPPLY VICS + MARKER + Intel_6 in Hydčive intel with dialogue*/
	/*"intel_6" setMarkerAlpha 1;*/
	/*Statics*/
	/*
	[[[[11107.1,7572.83,0],245,"Down",[]],[[11090.1,7599.4,0],186,"Down",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[11103.2,7736.02,8.701],245,"Up",[]],[[11128.3,7738.19,6.14],0,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[11143.9,7857.15,9.768],245,"Middle",[]],[[11140.9,7866.73,2.46],268,"Down",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[11022.3,7974.94,0],190,"Up",[]],[[11027,7980.41,0],165,"Down",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[11052.3,7760.53,0],245,"Middle",[]],[[11060.8,7770.89,0],0,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[11011.6,7818.13,0],220,"Down",[]],[[11004.3,7826.03,0],149,"Up",[]],[[10999.3,7829.67,0],215,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	*/
	
	/*Patrols*/
	[[[[11080.8,7347.31,0],0,[]],[[11085.8,7345.31,0],0,[]],[[11083.9,7342.26,0],0,[]]],[],[[[11040.8,7346.92,0],[[0,"Move"],[1,"SAFE"]]],[[11156.8,7313.2,-0.0001297],[[0,"Move"]]],[[11176.1,7369.86,0],[[0,"Move"]]],[[11101,7344.32,-0.000228882],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[10883.3,7431.79,-7.62939e-006],0,[]],[[10885,7423.98,0],0,[]],[[10888.3,7429.79,0],0,[]],[[10890,7421.98,0],0,[]]],[],[[[10849.4,7311.71,0],[[0,"Move"],[1,"SAFE"]]],[[10970.4,7310.41,4.57764e-005],[[0,"Move"]]],[[10899.8,7422.32,2.28882e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[10818.4,7467.17,0],0,[]],[[10808.4,7467.17,0],0,[]],[[10823.4,7462.17,3.8147e-006],0,[]],[[10813.4,7472.17,0],0,[]]],[],[[[10864.1,7651.64,0],[[0,"Move"],[1,"SAFE"]]],[[10868.4,7803.34,-1.90735e-005],[[0,"Move"]]],[[10710.7,7536.49,-0.000286102],[[0,"Move"]]],[[10798.2,7461.37,-4.95911e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[10969.6,8019.67,0],0,[]],[[10959.6,8019.67,0],0,[]],[[10974.6,8014.67,0],0,[]],[[10964.6,8024.67,0],0,[]]],[],[[[10899.6,7900.31,0],[[0,"Move"],[1,"SAFE"]]],[[10907.7,8146.7,0.000106812],[[0,"Move"]]],[[11092.3,7995.39,-7.62939e-006],[[0,"Move"]]],[[10950.6,7977.82,-8.39233e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};

	case 5: {
	/*South-western patrols*/
	[[[[9039,6582.65,0],0,[]],[[9044,6577.65,0],0,[]],[[9034,6577.65,-4.76837e-007],0,[]],[[9049,6572.65,0],0,[]]],[],[[[9280.1,6645.63,0],[[0,"Move"]]],[[9152.86,6340.01,-8.01086e-005],[[0,"Move"]]],[[9056,6324.12,-0.000132561],[[0,"Move"]]],[[8926.03,6437.99,-1.14441e-005],[[0,"Move"]]],[[8966.97,6666.9,-1.19209e-005],[[0,"Move"]]],[[9052.71,6614.5,2.67029e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[8819.73,5973.75,0],0,[]],[[8809.73,5973.75,4.76837e-007],0,[]],[[8824.73,5968.75,4.76837e-007],0,[]],[[8814.73,5978.75,4.76837e-007],0,[]]],[],[[[8793.06,5798.66,1.90735e-006],[[0,"Move"]]],[[9053.86,5699.49,0.000107765],[[0,"Move"]]],[[9035.88,5856.76,1.09673e-005],[[0,"Move"]]],[[8826.82,5986.13,1.85966e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};

	case 6: {
	/*South-eastern patrols*/
	[[[[11075.4,6381.35,0],0,[]],[[11065.4,6381.35,7.62939e-006],0,[]],[[11080.4,6376.35,0],0,[]],[[11070.4,6386.35,0],0,[]]],[],[[[11033.3,6555.44,0],[[0,"Move"],[1,"SAFE"]]],[[11150.5,6776.76,0],[[0,"Move"]]],[[11328.2,6443.05,5.34058e-005],[[0,"Move"]]],[[11085.9,6354.9,2.28882e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[10309.2,5738.36,0],0,[]],[[10314.2,5736.36,0],0,[]]],[],[[[10985.4,6154.71,0],[[0,"Move"],[1,"SAFE"]]],[[11309.5,6368.7,-7.62939e-006],[[0,"Move"]]],[[10304.2,5724.41,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};
	
	case 7: {
	/*Eastern patrol*/
	[[[[11459.4,7938.94,7.62939e-006],0,[]],[[11449.4,7938.94,7.62939e-006],0,[]],[[11464.4,7933.94,7.62939e-006],0,[]],[[11454.4,7943.94,7.62939e-006],0,[]]],[],[[[11530.6,7604.27,0],[[0,"Move"],[1,"SAFE"]]],[[11450,7172.01,7.62939e-006],[[0,"Move"]]],[[11300.5,7269.4,-8.39233e-005],[[0,"Move"]]],[[11391.5,7888.45,2.28882e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};
	
	case 8: {
	/*Northern patrols*/
	[[[[8569.6,8258.26,0],0,[]],[[8559.6,8258.26,0],0,[]],[[8574.6,8253.26,0],0,[]],[[8564.6,8263.26,0],0,[]]],[],[[[8258,8287.47,0],[[0,"Move"],[1,"SAFE"]]],[[9468.41,8310.54,0],[[0,"Move"]]],[[8579.31,8262.72,-7.62939e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[9403.74,8121.95,0],0,[]],[[9393.74,8121.95,0],0,[]],[[9408.74,8116.95,0],0,[]],[[9398.74,8126.95,0],0,[]]],[],[[[9244.98,7969.86,0],[[0,"Move"],[1,"SAFE"]]],[[9436.98,7868.15,0],[[0,"Move"]]],[[9803.88,8058.26,4.76837e-007],[[0,"Move"]]],[[9429.67,8146.96,-1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};
	
	case 9: {
	/*Factory patrol*/
	[[[[9724.53,7788.17,0],0,[]],[[9743.68,7810.78,0],0,[]],[[9748.68,7805.78,0],0,[]],[[9738.68,7805.78,0],0,[]],[[9753.68,7800.78,0],0,[]],[[9735.3,7801.29,0],0,[]],[[9731.7,7796.53,0],0,[]],[[9728.31,7792.93,0],0,[]]],[],[[[10119.1,7978.73,0],[[0,"Move"],[1,"SAFE"]]],[[10168.7,7907.26,-9.53674e-007],[[0,"Move"]]],[[9769.62,7721.03,0],[[0,"Move"]]],[[9743.37,7798.22,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};
	
	
	case 99: {
	/*Hlinený Újezd*/
	[[[[9119.52,8983.52,0],0,[]],[[9124.52,8978.52,3.8147e-006],0,[]],[[9114.52,8978.52,0],0,[]],[[9129.52,8973.52,0],0,[]],[[9109.52,8973.52,0],0,[]],[[9134.52,8968.52,3.8147e-006],0,[]],[[9104.52,8968.52,0],0,[]],[[9139.52,8963.52,0],0,[]]],[],[[[8905.34,8976.55,0],[[0,"Move"],[1,"SAFE"]]],[[8889.48,8800.4,0],[[0,"Move"]]],[[9284.63,8789.29,-3.8147e-006],[[0,"Move"]]],[[9293.28,9006.01,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};
	
	case 98: {
	/*Hejnáˇ*/
	[[[[10906.9,6975.73,0],0,[]],[[10896.9,6975.73,0],0,[]],[[10911.9,6970.73,0],0,[]],[[10901.9,6980.73,0],0,[]]],[],[[[10980.1,6809.27,-2.28882e-005],[[0,"Move"]]],[[11032.8,6901.93,4.19617e-005],[[0,"Move"]]],[[10906.6,7042,3.8147e-006],[[0,"Move"]]],[[10883.7,6991.25,-3.8147e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[10958,7134.3,0],0,[]],[[10948,7134.3,0],0,[]],[[10963,7129.3,0],0,[]],[[10953,7139.3,3.8147e-006],0,[]]],[],[[[10852.8,7223.85,-7.62939e-005],[[0,"Move"]]],[[10906.8,7055.45,3.8147e-006],[[0,"Move"]]],[[10954.5,7131.78,1.14441e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[11005.9,7169.28,0],0,[]],[[10995.9,7169.28,0],0,[]],[[11010.9,7164.28,-7.62939e-006],0,[]],[[11000.9,7174.28,-7.62939e-006],0,[]]],[],[[[11169.7,7163.67,-7.62939e-006],[[0,"Move"]]],[[11058.2,7089.54,-0.000247955],[[0,"Move"]]],[[10987.1,7124.43,-2.28882e-005],[[0,"Move"]]],[[10999.2,7164.35,2.67029e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	};
	
	case 97: {
	/*Hunt*/
	[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 6,2100,east,["UK3CB_CW_SOV_O_EARLY_Gaz66_Covered","UK3CB_CW_SOV_O_EARLY_BTR70"],30] spawn OKS_fnc_Huntbase;
	};
	
	
	/*Old for artillery*/
	/*
	[east,arty_1,getMarkerPos "target_1",5,350,30] spawn "Scripts\OKS_Spawn\OKS_fnc_ArtyFire.sqf";
	[east,arty_2,getMarkerPos "target_1",5,400,30] spawn "Scripts\OKS_Spawn\OKS_fnc_ArtyFire.sqf";
	*/
	
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

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn OKS_fnc_Huntbase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Huntbase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn OKS_fnc_Huntbase;
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
		   6 - Cargo Split - [How many teams,Procent of Cargo] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_OKS_fnc_AirDrop isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};

