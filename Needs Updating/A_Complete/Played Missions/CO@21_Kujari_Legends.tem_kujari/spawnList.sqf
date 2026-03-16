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

		// Patrol
		[[[[8446.44,7165.35,0],0,[]],[[8451.44,7160.35,0],0,[]],[[8441.44,7160.35,0],0,[]],[[8456.44,7155.35,0],0,[]]],[],[[[8265.74,7197.66,0],[[0,"Move"],[1,"AWARE"]]],[[8243.42,7131.6,-1.90735e-005],[[0,"Move"]]],[[8414.06,7120.03,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8163.48,7210.65,9.53674e-007],336,[]],[[8170.07,7208.08,0],336,[]],[[8160.91,7204.06,0],336,[]],[[8176.66,7205.51,0],336,[]]],[],[[[8014.27,7174.95,4.76837e-007],[[0,"Move"],[1,"AWARE"]]],[[8030.11,7128.06,0],[[0,"Move"]]],[[8152.05,7156.13,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7859.27,7298.03,0],104,[]],[[7853.22,7294.37,0.829344],104,[]],[[7855.62,7304.08,0],104,[]],[[7847.16,7290.72,0],104,[]]],[],[[[8007.56,7442.67,9.53674e-007],[[0,"Move"],[1,"AWARE"]]],[[7863.36,7383.1,0],[[0,"Move"]]],[[7829.87,7309.08,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8093.09,7675.85,0],213,[]],[[8091.63,7682.77,0],213,[]],[[8100.01,7677.32,9.53674e-007],213,[]],[[8090.16,7689.69,0],213,[]]],[],[[[8238.42,7390.63,9.53674e-007],[[0,"Move"],[1,"AWARE"]]],[[8516.58,7539.37,0],[[0,"Move"]]],[[8154.55,7783.07,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[8630.55,7227.86,9.53674e-007],0,[]],[[8635.55,7222.86,9.53674e-007],0,[]],[[8625.55,7222.86,1.90735e-006],0,[]],[[8640.55,7217.86,9.53674e-007],0,[]]],[],[[[8650.45,7892.3,0],[[0,"Move"],[1,"AWARE"]]],[[8320.28,8000.4,0],[[0,"Move"]]],[[8610.11,7193.93,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7474.21,7814.61,0],104,[]],[[7468.15,7810.96,0.829344],104,[]],[[7470.56,7820.66,0],104,[]],[[7462.1,7807.3,0],104,[]]],[],[[[7646.07,7918.8,0],[[0,"Move"],[1,"AWARE"]]],[[7521.97,8059.47,9.53674e-007],[[0,"Move"]]],[[7444.81,7825.67,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7844.71,7965.76,0],104,[]],[[7838.65,7962.1,0.829345],104,[]],[[7841.05,7971.81,9.53674e-007],104,[]],[[7832.6,7958.45,9.53674e-007],104,[]]],[],[[[7717.8,7929.98,0],[[0,"Move"],[1,"AWARE"]]],[[7692.62,7824.05,0],[[0,"Move"]]],[[7866.4,7936.64,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7451.77,7311.19,9.53674e-007],104,[]],[[7445.72,7307.53,0.829345],104,[]],[[7448.12,7317.24,9.53674e-007],104,[]],[[7439.66,7303.88,2.86102e-006],104,[]]],[],[[[7727.29,7633.22,0],[[0,"Move"],[1,"AWARE"]]],[[7351.79,7667.57,0],[[0,"Move"]]],[[7425.61,7338.54,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Compound Static
		[[[[8093.04,7443.11,0.924295],259,"Up",[]],[[8095.53,7435.73,3.35157],160,"Up",[]],[[8069.66,7449.89,0.0179253],182,"Up",[]],[[8072.74,7432.99,0],344,"Up",[]],[[8082.86,7448.43,0.93955],135,"Up",[]],[[8076.27,7446.26,0.38906],202,"Up",[]],[[8118.03,7483.55,9.53674e-007],159,"Up",[]],[[8108.28,7481.97,0],168,"Up",[]]],[["UK3CB_AAF_O_PKM_High",[8093.99,7434.87,3.55363],175,[["gunner",-1,[0]]],[]],["UK3CB_AAF_O_SPG9",[8079.02,7447.38,3.98807],154,[["gunner",-1,[0]]],[]],["rhs_bmp1_msv",[8112.66,7488.15,1.43051e-005],170,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		
		// Between and First Mortar
		[[[[7717.61,7828.98,0],129,"Up",[]],[[7764.39,7851.24,2.86102e-005],134,"Up",[]],[[7756.63,7846.96,0.000190735],131,"Up",[]],[[7984.94,7687.95,0],168,"Up",[]],[[7994.69,7689.52,0],159,"Up",[]],[[7708.1,7824.67,0],113,"Up",[]]],[["rhs_bmp1_msv",[7989.28,7694.25,0],170,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[7746.73,7885.92,0],86,"Up",[]],[[7694.19,7855.97,1.90735e-006],134,"Up",[]],[[7704.46,7865.51,0],53,"Middle",[]],[[7707.3,7860.98,0],48,"Middle",[]]],[["UK3CB_ADA_O_PKM_nest",[7826.82,7946.24,0],211,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_ADA_O_PKM_nest",[7842.21,7929.49,-3.8147e-006],147,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ADA_O_BTR40_MG",[7756.71,7854.8,-2.67029e-005],137,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]]]],["UK3CB_AAF_O_SPG9",[7720.56,7830.44,-1.71661e-005],109,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		// mortar
		[mortar_1, east, "precise", "light", ["auto", 50],250,900,20] execVM "Scripts\NEKY_Mortars\NEKY_Mortars.sqf";

		// AAA
		[[],[["UK3CB_ADA_O_MTLB_ZU23",[8307.01,7740.71,1.62125e-005],255,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[3]]],[[6,["ADA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		// Counter Compound
		[attack_3,5,east,2000,[]] spawn OKS_Rush_SpawnGroup;
		[attack_4,5,east,2000,[]] spawn OKS_Rush_SpawnGroup;

		[vehicle_01,nil,"UK3CB_ADA_O_BTR80a",east,2000] spawn OKS_Hunt_SpawnGroup; sleep 60;
		[vehicle_2,nil,"UK3CB_ADA_O_Hilux_Spg9",east,2000] spawn OKS_Hunt_SpawnGroup;
	};

	case 3: {

		// Counter Mortar
		[attack_1,5,east,2000,[]] spawn OKS_Rush_SpawnGroup;
		[attack_2,5,east,2000,[]] spawn OKS_Rush_SpawnGroup;	

		[vehicle_3,nil,"UK3CB_ADA_O_BTR80a",east,2000] spawn OKS_Hunt_SpawnGroup; sleep 60;
		[vehicle_4,nil,"UK3CB_ADA_O_Hilux_Spg9",east,2000] spawn OKS_Hunt_SpawnGroup;			
	};

	case 4: {

		// Village Statics
		[[[[7280.33,9553.9,3.02835],134,"Up",[]],[[7276.22,9554.16,3.25999],174,"Up",[]],[[7272.07,9561.74,1.23049],31,"Up",[]],[[7261.77,9576.21,0],310,"Up",[]],[[7276.7,9578.04,0],31,"Up",[]],[[7272.83,9586,0.430977],262,"Up",[]]],[["UK3CB_AAF_O_SPG9",[7279.59,9563.63,3.58406],162,[["gunner",-1,[0]]],[]],["UK3CB_ADA_O_LR_SPG9",[7250.96,9580.75,0],32,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[7301.44,9592.34,0],326,"Middle",[]],[[7291.55,9611.11,0],311,"Up",[]],[[7305.07,9607.48,0.238672],122,"Up",[]],[[7299.44,9616.63,0.909306],197,"Up",[]],[[7302.87,9565.18,0],31,"Up",[]],[[7305.25,9575.78,0.354961],289,"Up",[]],[[7274.5,9587.4,3.48201],127,"Middle",[]]],[["UK3CB_AAF_O_SPG9",[7296.41,9573.32,0],193,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrol
		[[[[7214.82,10267.9,0.738836],0,[]],[[7219.82,10262.9,0.738836],0,[]],[[7209.82,10262.9,0.738838],0,[]],[[7224.82,10257.9,0.738838],0,[]]],[],[[[7247.72,10329.5,0.738844],[[0,"Move"]]],[[7299.46,10315.4,0.738844],[[0,"Move"]]],[[7323.06,10261.9,0.738909],[[0,"Move"]]],[[7267.02,10237.6,0.738838],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7354.98,10221.2,0],0,[]],[[7359.98,10216.2,0],0,[]],[[7349.98,10216.2,0],0,[]],[[7364.98,10211.2,0],0,[]]],[],[[[7360.26,10253.7,0],[[0,"Move"]]],[[7495.16,10255.2,0.51025],[[0,"Move"]]],[[7469.91,10195.2,0],[[0,"Move"]]],[[7359.17,10204.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7318.66,10092.8,1.69273],0,[]],[[7323.66,10087.8,1.49519],0,[]],[[7313.66,10087.8,1.44258],0,[]],[[7328.66,10082.8,1.40551],0,[]]],[],[[[7333.01,10163.3,5.56059],[[0,"Move"]]],[[7502.01,10141.6,3.58756],[[0,"Move"]]],[[7509.9,10100.5,4.31639],[[0,"Move"]]],[[7351.42,10075.8,0.851404],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7375.53,10459.2,0],0,[]],[[7380.53,10454.2,0],0,[]],[[7370.53,10454.2,1.90735e-006],0,[]],[[7385.53,10449.2,0],0,[]]],[],[[[7231.47,10473.9,0],[[0,"Move"]]],[[7209.24,10591.3,1.90735e-006],[[0,"Move"]]],[[7327.96,10633.9,1.90735e-006],[[0,"Move"]]],[[7421.33,10554.8,0],[[0,"Move"]]],[[7391.09,10467.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6994.03,10456.6,0],67,[]],[[6991.39,10450.1,0],67,[]],[[6987.47,10459.3,0],67,[]],[[6988.75,10443.5,0],67,[]]],[],[[[7042.55,10575.2,1.90735e-006],[[0,"Move"]]],[[7140.29,10592.6,0],[[0,"Move"]]],[[7185.96,10516.8,0],[[0,"Move"]]],[[7126.52,10414.8,1.90735e-006],[[0,"Move"]]],[[7007.5,10445.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		
		// Village Patrol
		[[[[7584.91,9495.76,-1.90735e-006],0,[]],[[7589.91,9490.76,1.90735e-006],0,[]],[[7579.91,9490.76,0],0,[]],[[7594.91,9485.76,0],0,[]]],[],[[[7584.64,9682.19,-1.90735e-005],[[0,"Move"]]],[[7428.1,9659.92,3.43323e-005],[[0,"Move"]]],[[7433.28,9472.1,2.86102e-005],[[0,"Move"]]],[[7569.17,9474.63,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7318.81,9525.04,0],0,[]],[[7323.81,9520.04,0],0,[]],[[7313.81,9520.04,0],0,[]],[[7328.81,9515.04,0],0,[]]],[],[[[7318.55,9711.47,0],[[0,"Move"]]],[[7162.01,9689.2,3.05176e-005],[[0,"Move"]]],[[7167.19,9501.38,2.86102e-005],[[0,"Move"]]],[[7303.07,9503.91,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7257.37,9338.38,0],0,[]],[[7262.37,9333.38,0],0,[]],[[7252.37,9333.38,0],0,[]],[[7267.37,9328.38,0],0,[]]],[],[[[7046.85,9369.33,1.90735e-006],[[0,"Move"]]],[[6641.59,9363.67,0],[[0,"Move"]]],[[6973.03,9376.28,0],[[0,"Move"]]],[[7241.63,9317.24,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7244.57,9681.07,0.562897],0,[]],[[7249.57,9676.07,3.8147e-006],0,[]],[[7239.57,9676.07,3.8147e-006],0,[]],[[7254.57,9671.07,3.8147e-006],0,[]]],[],[[[7244.31,9867.49,3.8147e-006],[[0,"Move"]]],[[7087.77,9845.22,3.62396e-005],[[0,"Move"]]],[[7092.95,9657.4,3.24249e-005],[[0,"Move"]]],[[7228.83,9659.93,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;


		// Forest Static
		[[[[7262,10269.1,0.111866],123,"Middle",[]],[[7279.63,10270.9,-2.86102e-005],155,"Middle",[]],[[7280.83,10276.2,2.28882e-005],224,"Middle",[]],[[7260.48,10285.8,0.693207],127,"Middle",[]],[[7261.16,10289.4,0.533012],139,"Middle",[]],[[7301.9,10272.4,-0.00925446],185,"Middle",[]],[[7307.6,10270.9,-0.0478821],173,"Middle",[]],[[7301.51,10291.6,-0.090107],215,"Up",[]]],[["UK3CB_ADA_O_PKM_High",[7304.35,10271,0],176,[["gunner",-1,[0]]],[]],["UK3CB_AAF_O_PKM_nest_des",[7271.32,10263,0.280006],163,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[7335.79,10545.5,-1.90735e-005],119,"Middle",[]],[[7344.63,10529.4,-0.012001],119,"Middle",[]],[[7341.5,10529.2,4.00543e-005],251,"Middle",[]],[[7335.61,10531,-1.90735e-005],175,"Middle",[]],[[7351.71,10530.3,0.512423],300,"Middle",[]],[[7355.54,10531.7,0.516562],300,"Middle",[]],[[7356.26,10539.6,9.53674e-006],108,"Up",[]],[[7348.76,10547.2,1.90735e-006],55,"Up",[]],[[7342.88,10547.9,-4.00543e-005],217,"Up",[]],[[7335.71,10539.5,9.53674e-006],159,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Forest Vehicles and Bunkers
		[[],[["UK3CB_ADA_O_Hilux_Spg9",[7433.33,10565.1,0],273,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],["UK3CB_ADA_O_Hilux_Spg9",[7196.7,10241.8,0],328,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],["UK3CB_ADA_O_Hilux_Spg9",[7567.81,10158.3,1.90735e-006],357,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],["UK3CB_AAF_O_PKM_nest",[7402.09,10487,0],182,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_AAF_O_PKM_nest",[7269.66,10611.1,0],135,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 5: {

		// Village Counter
		[attack_5,3,east,2000,[]] spawn OKS_Rush_SpawnGroup;
		[attack_6,3,east,2000,[]] spawn OKS_Rush_SpawnGroup;	
		[attack_7,3,east,2000,[]] spawn OKS_Rush_SpawnGroup;
		[attack_8,3,east,2000,[]] spawn OKS_Rush_SpawnGroup;

		[vehicle_5,nil,"UK3CB_ADA_O_BTR80a",east,2000] spawn OKS_Hunt_SpawnGroup; sleep 120;
		[vehicle_6,nil,"UK3CB_ADA_O_BMP1",east,2000] spawn OKS_Hunt_SpawnGroup;	

	};

	case 6: {

		// Camp 1 Counter
		[attack_9,3,east,2000,[]] spawn OKS_Rush_SpawnGroup;
		[attack_10,3,east,2000,[]] spawn OKS_Rush_SpawnGroup;	
		[attack_11,3,east,2000,[]] spawn OKS_Rush_SpawnGroup;

		[vehicle_7,nil,"UK3CB_ADA_O_BTR80a",east,2000] spawn OKS_Hunt_SpawnGroup; sleep 120;
		[vehicle_8,nil,"UK3CB_ADA_O_BMP1",east,2000] spawn OKS_Hunt_SpawnGroup;			
	};

	case 7: {

		// Camp 2 Counter
		[attack_9,3,east,2000,[]] spawn OKS_Rush_SpawnGroup;
		[attack_10,3,east,2000,[]] spawn OKS_Rush_SpawnGroup;	
		[attack_11,3,east,2000,[]] spawn OKS_Rush_SpawnGroup;

		[vehicle_7,nil,"UK3CB_ADA_O_BTR80a",east,2000] spawn OKS_Hunt_SpawnGroup; sleep 120;
		[vehicle_9,nil,"UK3CB_ADA_O_BMP1",east,2000] spawn OKS_Hunt_SpawnGroup;		
	};

	case 8: {

		// Open area statics
		// Stone Wall Arty
		[[[[7327.89,12776.6,7.82013e-005],198,"Up",[]],[[7343,12779.4,7.72476e-005],198,"Up",[]],[[7340.6,12806.7,7.82013e-005],122,"Up",[]],[[7326.29,12805.3,7.82013e-005],255,"Up",[]],[[7348.72,12740.6,7.82013e-005],152,"Up",[]],[[7338.07,12737.5,7.82013e-005],191,"Up",[]],[[7346.45,12766.9,7.72476e-005],64,"Middle",[]],[[7331.09,12738,7.82013e-005],192,"Up",[]],[[7330.42,12766.1,7.82013e-005],9,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// HQ Barracks
		[[[[7076.51,12775,4.57764e-005],186,"Up",[]],[[7059.99,12772.1,1.90735e-006],186,"Up",[]],[[7041.26,12768.9,0],168,"Up",[]],[[7104.16,12780.5,4.57764e-005],135,"Up",[]],[[7088.02,12783.2,4.57764e-005],16,"Up",[]],[[7089.98,12793,4.57764e-005],312,"Middle",[]],[[7077.47,12782.8,0.5793],162,"Up",[]],[[7072.62,12783.8,0.305681],186,"Up",[]],[[7055.84,12787.1,1.90735e-006],9,"Middle",[]],[[7049.61,12773.3,-1.52588e-005],347,"Middle",[]],[[7048.21,12788.7,0],99,"Up",[]],[[7045.83,12784.8,0],186,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Trench Arty
		[[[[6930.06,13439.2,0],116,"Up",[]],[[6921.15,13438.6,0],212,"Up",[]],[[6909.87,13437.9,0],135,"Up",[]],[[6896.48,13422.7,0],349,"Middle",[]],[[6889.25,13440,0],123,"Middle",[]],[[6884.97,13423.4,0],244,"Middle",[]],[[6888.69,13425.7,0.31838],187,"Up",[]],[[6917.06,13450.1,0],133,"Middle",[]],[[6922.02,13457.2,0],148,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Final HQ
		[[[[7435.51,14153.2,7.86781e-005],198,"Up",[]],[[7425.92,14155,7.82013e-005],146,"Up",[]],[[7418.33,14160.5,7.82013e-005],234,"Up",[]],[[7431,14163.8,0.00894928],217,"Up",[]],[[7418.67,14183,7.82013e-005],198,"Up",[]],[[7406.82,14178.8,7.82013e-005],188,"Up",[]],[[7401.84,14195.1,7.82013e-005],90,"Up",[]],[[7418.12,14209.4,7.82013e-005],184,"Up",[]],[[7428.93,14214.3,0],198,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// Vehicle Static
		[[],[["UK3CB_ADA_O_LR_SPG9",[7336.26,12849.2,-1.23978e-005],175,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]],["UK3CB_ADA_O_LR_SPG9",[6942.67,12835.6,-1.14441e-005],141,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]],["UK3CB_ADA_O_LR_SPG9",[7119.55,13199.9,-1.04904e-005],177,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]],["UK3CB_ADA_O_LR_SPG9",[6480.41,13410.1,-1.14441e-005],96,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]],["UK3CB_ADA_O_LR_SPG9",[6661.18,13903.2,-1.14441e-005],128,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]],["UK3CB_ADA_O_LR_SPG9",[7408.72,14333.9,0],177,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]],["UK3CB_ADA_O_LR_SPG9",[7628.78,14191.6,0],212,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["Radio_Hide",0,"Front_Grill_Hide",0,"Light_Covers_Hide",0,"Fuel_Cans_Hide",0,"ClanLogo_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[7517.44,12839.6,0],0,[]],[[7522.44,12834.6,0],0,[]],[[7512.44,12834.6,0],0,[]],[[7527.44,12829.6,0],0,[]]],[],[[[7363.21,12748.9,0],[[0,"Move"]]],[[7276.19,12683.9,0],[[0,"Move"]]],[[7240.12,12774.5,0],[[0,"Move"]]],[[7295.65,12883.6,0],[[0,"Move"]]],[[7468.3,12940,0],[[0,"Move"]]],[[7509,12846.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7122.67,12694.6,5.72205e-006],55,[]],[[7121.43,12687.7,3.8147e-006],55,[]],[[7115.71,12695.9,1.90735e-006],55,[]],[[7120.19,12680.7,3.8147e-006],55,[]]],[],[[[6960,12769.2,0],[[0,"Move"]]],[[6856.88,12803.3,1.90735e-006],[[0,"Move"]]],[[6910.52,12884.8,1.90735e-006],[[0,"Move"]]],[[7031.8,12901.7,1.90735e-006],[[0,"Move"]]],[[7176.88,12792.4,3.8147e-006],[[0,"Move"]]],[[7123.8,12705.7,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6881.75,13013.5,5.72205e-006],149,[]],[[6874.87,13015.2,0],149,[]],[[6883.4,13020.4,0],149,[]],[[6868,13016.8,3.8147e-006],149,[]]],[],[[[6965.92,13171.4,0],[[0,"Move"]]],[[7006.2,13272.3,0],[[0,"Move"]]],[[7084.25,13213.9,1.90735e-006],[[0,"Move"]]],[[7093.88,13091.8,1.90735e-006],[[0,"Move"]]],[[6976.09,12953.5,1.90735e-006],[[0,"Move"]]],[[6892.74,13011.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7188.8,13236.6,0],243,[]],[[7191.01,13243.3,0],243,[]],[[7195.52,13234.4,0],243,[]],[[7193.22,13250,0],243,[]]],[],[[[7339.35,13139.9,0],[[0,"Move"]]],[[7436.64,13091.6,0],[[0,"Move"]]],[[7372.07,13018.5,0],[[0,"Move"]]],[[7249.61,13018.8,0],[[0,"Move"]]],[[7121.36,13147.4,0],[[0,"Move"]]],[[7186.12,13225.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7481.97,13168.2,5.72205e-006],149,[]],[[7475.09,13169.9,0],149,[]],[[7483.62,13175.1,1.90735e-006],149,[]],[[7468.22,13171.5,3.8147e-006],149,[]]],[],[[[7566.13,13326.1,0],[[0,"Move"]]],[[7606.41,13427,0],[[0,"Move"]]],[[7684.47,13368.6,0],[[0,"Move"]]],[[7694.1,13246.5,3.8147e-006],[[0,"Move"]]],[[7576.31,13108.2,0],[[0,"Move"]]],[[7492.96,13166.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7050.48,13630.3,5.72205e-006],284,[]],[[7056.54,13634,0.755449],284,[]],[[7054.12,13624.3,0.459297],284,[]],[[7062.6,13637.6,5.72205e-006],284,[]]],[],[[[7101.09,13458.7,0],[[0,"Move"]]],[[7143.05,13358.5,0],[[0,"Move"]]],[[7046.43,13345.5,1.90735e-006],[[0,"Move"]]],[[6954,13425.8,1.90735e-006],[[0,"Move"]]],[[6941.14,13607,1.90735e-006],[[0,"Move"]]],[[7041.38,13623.9,0.431076],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6768.77,13311.3,5.72205e-006],149,[]],[[6761.89,13313,1.90735e-006],149,[]],[[6770.42,13318.2,0],149,[]],[[6755.02,13314.6,7.62939e-006],149,[]]],[],[[[6852.93,13469.2,0],[[0,"Move"]]],[[6893.21,13570.1,0],[[0,"Move"]]],[[6971.27,13511.7,1.90735e-006],[[0,"Move"]]],[[6980.9,13389.6,1.90735e-006],[[0,"Move"]]],[[6863.11,13251.3,2.86102e-006],[[0,"Move"]]],[[6779.76,13309.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6505.43,13232,1.14441e-005],115,[]],[[6498.79,13229.5,3.8147e-006],115,[]],[[6502.98,13238.6,3.8147e-006],115,[]],[[6492.16,13227.1,7.62939e-006],115,[]]],[],[[[6449.59,13366.3,0],[[0,"Move"]]],[[6529.48,13548.2,0],[[0,"Move"]]],[[6608.08,13731.5,0],[[0,"Move"]]],[[6651.98,13508.9,0],[[0,"Move"]]],[[6623.56,13135.4,0],[[0,"Move"]]],[[6515.56,13236.6,3.8147e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7367.45,13735.5,0],149,[]],[[7360.58,13737.1,0],149,[]],[[7369.11,13742.4,0],149,[]],[[7353.71,13738.8,0],149,[]]],[],[[[7451.62,13893.4,0],[[0,"Move"]]],[[7491.9,13994.3,0],[[0,"Move"]]],[[7569.96,13935.8,0],[[0,"Move"]]],[[7579.59,13813.8,0],[[0,"Move"]]],[[7461.8,13675.5,0],[[0,"Move"]]],[[7378.44,13733.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7125.21,14211.6,3.8147e-006],261,[]],[[7129.41,14217.3,1.90735e-006],261,[]],[[7130.9,14207.4,0],261,[]],[[7133.61,14223,3.8147e-006],261,[]]],[],[[[7237.92,14072.7,0],[[0,"Move"]]],[[7315.18,13996.3,1.90735e-006],[[0,"Move"]]],[[7230.99,13947.1,0],[[0,"Move"]]],[[7114.78,13985.8,1.90735e-006],[[0,"Move"]]],[[7033.25,14148.1,1.90735e-006],[[0,"Move"]]],[[7119.28,14202.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7112.66,14438.8,1.90735e-006],173,[]],[[7107.1,14443.2,0],173,[]],[[7117.03,14444.4,0],173,[]],[[7101.54,14447.5,0],173,[]]],[],[[[7255,14547.2,0],[[0,"Move"]]],[[7333.68,14622.1,0],[[0,"Move"]]],[[7380.26,14536.5,0],[[0,"Move"]]],[[7338.11,14421.5,0],[[0,"Move"]]],[[7173.39,14344.9,0],[[0,"Move"]]],[[7121.9,14432.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7668.79,14467,7.62939e-006],17,[]],[[7672.09,14460.8,1.90735e-006],17,[]],[[7662.54,14463.7,0],17,[]],[[7675.39,14454.5,1.90735e-006],17,[]]],[],[[[7494.65,14425.9,0],[[0,"Move"]]],[[7392.3,14389.5,1.90735e-006],[[0,"Move"]]],[[7384.6,14486.7,1.90735e-006],[[0,"Move"]]],[[7469.89,14574.6,1.90735e-006],[[0,"Move"]]],[[7651.51,14577.5,1.90735e-006],[[0,"Move"]]],[[7662.88,14476.5,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7294.95,14289.3,0],261,[]],[[7299.15,14295,0],261,[]],[[7300.64,14285.1,0],261,[]],[[7303.35,14300.7,0],261,[]]],[],[[[7407.66,14150.3,0],[[0,"Move"]]],[[7484.92,14074,0],[[0,"Move"]]],[[7400.72,14024.8,0],[[0,"Move"]]],[[7284.52,14063.4,0],[[0,"Move"]]],[[7202.98,14225.7,0],[[0,"Move"]]],[[7289.02,14279.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7629.55,14258.4,0],0,[]],[[7634.55,14253.4,0],0,[]],[[7624.55,14253.4,0],0,[]],[[7639.55,14248.4,0],0,[]]],[],[[[7475.32,14167.7,8.39233e-005],[[0,"Move"]]],[[7388.29,14102.7,5.34058e-005],[[0,"Move"]]],[[7352.23,14193.3,5.34058e-005],[[0,"Move"]]],[[7407.75,14302.4,-0.000165939],[[0,"Move"]]],[[7580.41,14358.8,1.90735e-006],[[0,"Move"]]],[[7621.11,14265.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		// Hunt bases
		_Vehicles = [
			"UK3CB_ADA_O_BMP1", "UK3CB_ADA_O_BMP2", "UK3CB_ADA_O_BTR80a", "UK3CB_ADA_O_MTLB_Cannon", "UK3CB_ADA_O_MTLB_KPVT",
			"UK3CB_ADM_O_MTLB_BMP","UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_Hilux_Closed", "UK3CB_ADA_O_Hilux_Open", 
			"UK3CB_ADA_O_LR_Closed", "UK3CB_ADA_O_LR_Open", "UK3CB_ADA_O_Offroad", "UK3CB_ADA_O_Pickup", "UK3CB_ADA_O_V3S_Open", 
			"UK3CB_ADA_O_V3S_Closed", "UK3CB_ADA_O_Ural", "UK3CB_ADA_O_Ural_Open", "UK3CB_ADA_O_Van_Transport"
		];
		[Infantry_3, Infantry_3, NEKY_Hunt_Trigger_1, 3,900,east,5,180] spawn NEKY_Hunt_HuntBase;
		[Infantry_4, Infantry_4, NEKY_Hunt_Trigger_1, 3,900,east,5,160] spawn NEKY_Hunt_HuntBase;
		[Infantry_5, Infantry_5, NEKY_Hunt_Trigger_1, 3,900,east,5,140] spawn NEKY_Hunt_HuntBase;
		[Infantry_6, Infantry_6, NEKY_Hunt_Trigger_1, 3,900,east,5,140] spawn NEKY_Hunt_HuntBase;
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 2,900,east,_Vehicles,180] spawn NEKY_Hunt_HuntBase; sleep 30 + (random 30);	
		
	};

	case 9: {

		_Vehicles = [
			"UK3CB_ADA_O_BMP1", "UK3CB_ADA_O_BMP2", "UK3CB_ADA_O_BTR80a", "UK3CB_ADA_O_MTLB_Cannon", "UK3CB_ADA_O_MTLB_KPVT",
			"UK3CB_ADM_O_MTLB_BMP","UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_Hilux_Closed", "UK3CB_ADA_O_Hilux_Open", 
			"UK3CB_ADA_O_LR_Closed", "UK3CB_ADA_O_LR_Open", "UK3CB_ADA_O_Offroad", "UK3CB_ADA_O_Pickup", "UK3CB_ADA_O_V3S_Open", 
			"UK3CB_ADA_O_V3S_Closed", "UK3CB_ADA_O_Ural", "UK3CB_ADA_O_Ural_Open", "UK3CB_ADA_O_Van_Transport"
		];
		// First Camp Hunt
		[Infantry_1, Infantry_1, NEKY_Hunt_Trigger_1, 3,900,east,5,120] spawn NEKY_Hunt_HuntBase;
		[Infantry_2, Infantry_2, NEKY_Hunt_Trigger_1, 3,900,east,5,120] spawn NEKY_Hunt_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 2,900,east,_Vehicles,120] spawn NEKY_Hunt_HuntBase;
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_1, 2,900,east,_Vehicles,140] spawn NEKY_Hunt_HuntBase;

	};

	case 10: {

		_Vehicles = [
			"UK3CB_ADA_O_BMP1", "UK3CB_ADA_O_BMP2", "UK3CB_ADA_O_BTR80a", "UK3CB_ADA_O_MTLB_Cannon", "UK3CB_ADA_O_MTLB_KPVT",
			"UK3CB_ADM_O_MTLB_BMP","UK3CB_ADA_O_Datsun_Pickup", "UK3CB_ADA_O_Hilux_Closed", "UK3CB_ADA_O_Hilux_Open", 
			"UK3CB_ADA_O_LR_Closed", "UK3CB_ADA_O_LR_Open", "UK3CB_ADA_O_Offroad", "UK3CB_ADA_O_Pickup", "UK3CB_ADA_O_V3S_Open", 
			"UK3CB_ADA_O_V3S_Closed", "UK3CB_ADA_O_Ural", "UK3CB_ADA_O_Ural_Open", "UK3CB_ADA_O_Van_Transport"
		];
		// Second Camp Hunt
		[Infantry_3, Infantry_3, NEKY_Hunt_Trigger_1, 3,900,east,5,120] spawn NEKY_Hunt_HuntBase;
		[Infantry_4, Infantry_4, NEKY_Hunt_Trigger_1, 3,900,east,5,120] spawn NEKY_Hunt_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 2,900,east,_Vehicles,120] spawn NEKY_Hunt_HuntBase; sleep 30 + (random 30);	
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_1, 2,900,east,_Vehicles,160] spawn NEKY_Hunt_HuntBase; sleep 30 + (random 30);
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
