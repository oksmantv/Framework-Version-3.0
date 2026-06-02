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

private _Tanks = [
	"UK3CB_ARD_O_T72A", 
	"UK3CB_ARD_O_T72A", 
	"UK3CB_ARD_O_T55", 
	"UK3CB_ARD_O_T55", 
	"UK3CB_ARD_O_T55", 
	"UK3CB_ARD_O_T72B", 
	"UK3CB_ARD_O_T72B", 
	"UK3CB_ARD_O_T72BB"
];

switch (_case) do {

	case 1: {
		
		{
			[Group _X,getMarkerPos "respawn_west",west,false,nil,true] spawn OKS_fnc_Evacuate_HVT;
		} foreach [officer_1,officer_3,officer_4];		
		
		{
			[east,_X,[2112.86,4721.93,0.00144196],10,180,180] spawn OKS_fnc_ArtyFire; sleep 2;
		} foreach [arty_1,arty_2,arty_3,arty_4,arty_5];

		{
			[_X, ["UK3CB_ADA_O_V3S_Zu23","UK3CB_ARD_O_Ural_Zu23"], 3500, 2500, 50] spawn OKS_fnc_Radar; sleep 2;
		} foreach [radar_1,radar_2];


		[Trigger_2,false,[0,15,false,false],east,0,0,2,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		[Trigger_4,false,[0,15,false,false],east,0,0,3,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

		{
			[getPos _X, east, 25, 300, 3000, 30] spawn OKS_fnc_IR_AA; sleep 2;
		} foreach [ir_1,ir_2,ir_3,ir_4,ir_5];

		// Patrols
		//[[[[2464.47,7993.5,0],0,[]],[[2469.47,7988.5,0],0,[]],[[2459.47,7988.5,0],0,[]],[[2474.47,7983.5,-9.53674e-007],0,[]],[[2454.47,7983.5,0],0,[]],[[2479.47,7978.5,0],0,[]],[[2449.47,7978.5,0],0,[]],[[2484.47,7973.5,0],0,[]]],[],[[[2119.5,8560.4,0],[[0,"Move"]]],[[1962.14,8007.63,-9.53674e-007],[[0,"Move"]]],[[2456.29,7963.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[4639.67,7529.95,0],0,[]],[[4644.67,7524.95,1.90735e-006],0,[]],[[4634.67,7524.95,1.90735e-006],0,[]],[[4649.67,7519.95,1.90735e-006],0,[]],[[4629.67,7519.95,1.90735e-006],0,[]],[[4654.67,7514.95,1.90735e-006],0,[]],[[4624.67,7514.95,3.8147e-006],0,[]],[[4659.67,7509.95,1.90735e-006],0,[]]],[],[[[4098.78,7954.67,9.53674e-007],[[0,"Move"]]],[[4005.89,7371.96,0],[[0,"Move"]]],[[4687.39,7081,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[2853.21,8839.08,0],0,[]],[[2858.21,8834.08,0],0,[]],[[2848.21,8834.08,0],0,[]],[[2863.21,8829.08,0],0,[]],[[2843.21,8829.08,0],0,[]],[[2868.21,8824.08,0],0,[]],[[2838.21,8824.08,0],0,[]],[[2873.21,8819.08,0],0,[]]],[],[[[1804.07,9365.95,0],[[0,"Move"]]],[[2300.65,9075.22,0],[[0,"Move"]]],[[2845.03,8809.28,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Tanks Afofo B.
		[[],[["UK3CB_ARD_O_T55",[852.873,7731.59,-0.000225067],115,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],["UK3CB_ARD_O_T72A",[999.874,7895.34,-1.90735e-006],135,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]],["UK3CB_ARD_O_T72A",[726.956,7853.18,-3.52859e-005],157,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Tanks Afofo K
		[[],[["UK3CB_ARD_O_T55",[910.48,7270.66,0],82,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],["UK3CB_ARD_O_T55",[929.947,7321.07,-8.86917e-005],92,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],["UK3CB_ARD_O_T72A",[888.35,7160.12,9.53674e-007],52,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Tanks Lawan.
		[[],[["UK3CB_ARD_O_T55",[3790.3,8499.85,-0.000980377],205,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],["UK3CB_ARD_O_T55",[3872.51,8386.92,0],201,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ARD_O_T72A",[3909.59,8710.66,-3.8147e-005],256,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]],["UK3CB_ARD_O_T72A",[4146.05,8700.98,0],263,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Mawa
		[[],[["UK3CB_ARD_O_T55",[4026.17,6623.09,-0.00732231],251,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],["UK3CB_ARD_O_T72A",[3921.15,6079.14,-0.00266743],288,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_ARD_O_T72A",[3486.58,6054.64,0],25,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Tanks_Hide",0]]]],["UK3CB_ARD_O_T55",[3307.08,6093.19,9.53674e-007],333,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Anti-Air.
		[[],[
			["UK3CB_ADA_O_V3S_Zu23",[4627.17,7645.28,2],189,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1]]]],
			["UK3CB_ADA_O_V3S_Zu23",[2938.22,8663.95,2],221,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1]]]],
			["UK3CB_ADA_O_V3S_Zu23",[828.726,9435.95,2],194,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1]]]],
			["UK3CB_ADA_O_V3S_Zu23",[733.841,8134.44,2],294,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1]]]],
			["UK3CB_ADA_O_V3S_Zu23",[3918.95,9884.07,2],148,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1]]]],
			["UK3CB_ADA_O_V3S_Zu23",[949.443,10950.8,2],188,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1]]]],
			["UK3CB_ADA_O_V3S_Zu23",[3293.12,10820.3,2],94,[["driver",-1,[]],["gunner",-1,[1]]],[[6,["ADA",1]],[7,["ClanLogo_Hide",1]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		[[],[
			["UK3CB_ARD_O_Ural_Zu23",[4579.41,8915.53,1.52588e-05],266,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]],
			["UK3CB_ARD_O_Ural_Zu23",[487.159,8110.04,1.43051e-05],168,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]],
			["UK3CB_ARD_O_Ural_Zu23",[870.184,9842.99,0],308,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]
		],[]] call GW_Common_fnc_spawnGroup;
	
	};

	case 2: {

		[Trigger_3,false,[0,15,false,false],east,0,0,2,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

		// Afofo B
		[[[[832.889,7746.56,0.505939],44,"Up",[]],[[831.088,7754.88,1.11393],156,"Up",[]],[[837.449,7752.03,1.25442],294,"Up",[]],[[839.779,7756.5,1.33071],234,"Up",[]],[[830.319,7740.46,1.40369],142,"Up",[]],[[842.348,7740.74,0],228,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[819.668,7739.92,3.38506],127,"Up",[]],[[815.882,7738.82,3.53866],127,"Up",[]],[[811.32,7739.09,1.20605],340,"Up",[]],[[817.072,7740.04,0.830154],145,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[819.712,7755.3,1.55751],127,"Up",[]],[[811.773,7752.06,0.2535],213,"Up",[]],[[816.948,7751.04,0.494289],243,"Up",[]],[[818.467,7748.53,3.37769],127,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[800.354,7742.01,1.63689],44,"Up",[]],[[807.926,7759.97,0.312592],180,"Up",[]],[[801.613,7755.5,0],69,"Middle",[]],[[802.379,7749.43,0.890261],59,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Afofo K.
	
		// Patrols.
		[[[[1058.58,7143.3,3.08595],341,[]],[[1064.93,7140.2,3.08595],341,[]],[[1055.48,7136.94,3.08595],341,[]],[[1071.29,7137.1,3.08595],341,[]]],[],[[[1181.54,7325.73,1.97914],[[0,"Move"],[1,"SAFE"]]],[[1408.13,7407.71,1.97914],[[0,"Move"]]],[[1056.99,7104.61,1.97914],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[814.064,7138.08,1.10675],0,[]],[[819.064,7133.08,1.10675],0,[]],[[809.064,7133.08,1.10675],0,[]],[[824.064,7128.08,1.10675],0,[]]],[],[[[765.4,7466.38,0],[[0,"Move"],[1,"SAFE"]]],[[994.819,7417.71,1.90735e-006],[[0,"Move"]]],[[799.972,7102.02,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[653.601,7632.38,2.2946],0,[]],[[658.601,7627.38,2.2946],0,[]],[[648.601,7627.38,2.29459],0,[]],[[663.601,7622.38,2.29459],0,[]]],[],[[[671.222,7852.48,1.18766],[[0,"Move"],[1,"SAFE"]]],[[861.412,7670.8,1.18787],[[0,"Move"]]],[[639.509,7596.32,1.18754],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[728.948,7947.14,1.10725],109,[]],[[722.57,7944.08,1.10725],109,[]],[[725.894,7953.51,1.10725],109,[]],[[716.192,7941.03,1.10725],109,[]]],[],[[[907.592,8068.19,0],[[0,"Move"],[1,"SAFE"]]],[[766.878,7757.54,9.53674e-007],[[0,"Move"]]],[[699.623,7972.42,0.000193596],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		
		// Tanks North-West.
		[[],[
			["UK3CB_ARD_O_T55",[708.117,9167.62,0],206,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[575.863,9142.31,4.76837e-07],163,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[514.692,9250.84,0],158,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;
		[[],[
			["UK3CB_ARD_O_T55",[950.473,9746.46,-3.8147e-06],162,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[928.424,9751.29,0],177,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[818.021,9857.62,0],204,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[800.35,9864.83,0],204,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		[Spawn_1, Spawn_1, HuntTrigger_1, 30, 600, east, _Tanks, 120] spawn OKS_fnc_HuntBase;
		[Spawn_5, Spawn_5, HuntTrigger_1, 30, 600, east, _Tanks, 120] spawn OKS_fnc_HuntBase;
		[Spawn_7, Spawn_7, HuntTrigger_1, 30, 600, east, _Tanks, 120] spawn OKS_fnc_HuntBase;

		[AirBase_1, AirSpawn_1, AirHuntTrigger_1, EAST, "UK3CB_ARD_O_Mi_24P", 'paradropthenpatrol', [2,1], 900, 300, 300, 8] spawn OKS_fnc_Airbase;
	};

	case 3: {

		// Lawan.
		[[[[4098.13,8648.18,5.42851],176,[]],[[4092.79,8652.8,5.42851],176,[]],[[4102.76,8653.52,5.42851],176,[]],[[4087.44,8657.43,5.42851],176,[]]],[],[[[4019.27,8496.88,0],[[0,"Move"],[1,"SAFE"]]],[[3838.11,8602.99,1.90735e-006],[[0,"Move"]]],[[4109.6,8685.16,5.42851],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4065.29,8759.43,1.10734],155,[]],[[4058.66,8761.9,1.10734],155,[]],[[4067.76,8766.05,1.10734],155,[]],[[4052.04,8764.37,1.10734],155,[]]],[],[[[3951.53,8662.62,1.90735e-006],[[0,"Move"],[1,"SAFE"]]],[[3931.93,8746.74,1.90735e-006],[[0,"Move"]]],[[4063.13,8798.08,0.000286102],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3761.65,8831.28,0.957258],21,[]],[[3764.55,8824.84,0.95726],21,[]],[[3755.2,8828.38,0.957258],21,[]],[[3767.46,8818.39,0.95726],21,[]]],[],[[[3959.04,8827.64,0],[[0,"Move"],[1,"SAFE"]]],[[3766.41,8670.38,1.59324],[[0,"Move"]]],[[3735.71,8802.53,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[Spawn_2, Spawn_2, HuntTrigger_1, 30, 600, east, _Tanks, 120] spawn OKS_fnc_HuntBase;
		[Spawn_3, Spawn_3, HuntTrigger_1, 30, 600, east, _Tanks, 120] spawn OKS_fnc_HuntBase;
		[AirBase_3, AirSpawn_3, AirHuntTrigger_1, EAST, "UK3CB_ARD_O_Mi_24P", 'paradropthenpatrol', [2,1], 900, 300, 300, 8] spawn OKS_fnc_Airbase;
	};

	case 4: {

		[Trigger_1,false,[0,15,false,false],east,0,0,2,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		[AirBase_2, AirSpawn_2, AirHuntTrigger_1, EAST, "UK3CB_ARD_O_Mi_24P", 'paradropthenpatrol', [2,1], 900, 300, 300, 8] spawn OKS_fnc_Airbase;

		// Mawa
		[[[[3670.73,6173.38,0],334,"Up",[]],[[3677.8,6194.65,0],264,"Up",[]],[[3676.11,6171.29,0],7,"Up",[]],[[3680.29,6182.09,0.633233],214,"Up",[]],[[3676.66,6184.12,0.575368],260,"Up",[]],[[3678.37,6191.24,0.615583],203,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3605.6,6224.48,0.28043],101,"Up",[]],[[3609.02,6231.91,0.49005],10,"Up",[]],[[3616.97,6227.56,0.751341],297,"Up",[]],[[3624.71,6227.56,0],203,"Up",[]],[[3612.23,6214.68,0.306482],14,"Up",[]],[[3598.55,6221.29,0],21,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3624.05,6252.71,0],253,"Middle",[]],[[3613.77,6265.71,0],184,"Middle",[]],[[3618.98,6263.93,0.715597],341,"Up",[]],[[3619.99,6257.15,0.610003],3,"Up",[]],[[3628.72,6255.32,0.304905],338,"Up",[]],[[3633.97,6255.61,9.53674e-007],343,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3716.66,6249.02,5.97205],330,"Middle",[]],[[3715.93,6247.64,5.98216],330,"Middle",[]],[[3713.16,6248.86,2.5335],293,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[3368.33,6179.02,0],0,[]],[[3373.33,6174.02,0],0,[]],[[3363.33,6174.02,0],0,[]],[[3378.33,6169.02,0],0,[]]],[],[[[3718.56,6419.63,0],[[0,"Move"],[1,"SAFE"]]],[[3513.09,6312.26,0],[[0,"Move"]]],[[3354.24,6142.96,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3418.77,5960.73,1.10705],0,[]],[[3423.77,5955.73,1.10705],0,[]],[[3413.77,5955.73,1.10705],0,[]],[[3428.77,5950.73,1.10705],0,[]]],[],[[[3594.42,6093.19,0],[[0,"Move"],[1,"SAFE"]]],[[3835.35,6096.94,0],[[0,"Move"]]],[[3404.67,5924.67,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3897.53,6089.56,1.10701],306,[]],[[3904.52,6090.67,1.10701],306,[]],[[3898.64,6082.58,1.10701],306,[]],[[3911.5,6091.77,1.10701],306,[]]],[],[[[3503.48,6217.61,0],[[0,"Move"],[1,"SAFE"]]],[[3897.14,6404.86,0],[[0,"Move"]]],[[3918.41,6056.96,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Rara.
		[[[[513.292,9587.28,3.30247],185,"Middle",[]],[[510.688,9593.02,3.62299],185,"Middle",[]],[[513.219,9589.11,0.81638],185,"Middle",[]],[[510.837,9592.65,0.518783],185,"Middle",[]],[[509.839,9598.54,0.498053],185,"Middle",[]],[[499.288,9590.4,0.307047],93,"Middle",[]],[[507.067,9600.83,0],191,"Middle",[]]],[["UK3CB_ARD_O_BMP2",[528.758,9565.51,0],214,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[476.367,9612.08,0.287316],212,"Middle",[]],[[469.747,9600.92,0.355461],147,"Middle",[]],[[464.219,9609.29,1.07763],346,"Middle",[]],[[462.41,9598.96,0.768477],172,"Up",[]]],[["UK3CB_ARD_O_BMP2",[442.59,9597.04,0],176,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["konkurs_hide_source",0,"crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1]]]],["UK3CB_ARD_O_Ural_Zu23",[469.804,9627.79,-2.38419e-06],96,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[409.049,9592.98,0],220,"Middle",[]],[[413.137,9601.1,0],220,"Middle",[]],[[428.971,9603.55,-4.76837e-07],54,"Middle",[]],[[427.482,9588.24,0],155,"Middle",[]],[[427.287,9599.69,2.56252],220,"Middle",[]],[[419.933,9601.71,3.09464],220,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[446.106,9561.22,3.50636],146,"Up",[]],[[446.269,9563.71,3.42607],61,"Up",[]],[[441.143,9556.63,3.72629],170,"Up",[]],[[434.525,9565.4,3.44581],320,"Up",[]],[[442.124,9564.68,3.54762],11,"Up",[]],[[431.097,9550.83,0],343,"Up",[]],[[443.045,9564.57,0.851512],146,"Up",[]],[[445.329,9560.87,0.711031],266,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[487.383,9545.45,9.53674e-07],146,"Up",[]],[[481.551,9545.2,4.76837e-07],146,"Up",[]],[[474.421,9545.22,4.76837e-07],146,"Up",[]],[[486.497,9566.38,9.53674e-07],146,"Up",[]],[[472.312,9564.99,4.76837e-07],146,"Up",[]],[[479.113,9552.73,3.16728],166,"Up",[]],[[480.883,9556.94,2.96644],124,"Middle",[]],[[471.923,9567.94,9.53674e-07],146,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {

		// Tanks North-East.
		[[],[
			["UK3CB_ARD_O_T55",[3529.44,10333.7,0],292,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[3543.28,10352.6,0],306,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[3809.78,10118.4,0],169,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[3793.26,10104.8,0],169,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[2101.89,10199.8,0],263,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[2093.28,10212.2,0],263,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[1521.93,10443.9,0],148,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]],
			["UK3CB_ARD_O_T55",[1491.27,10432.4,0],167,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0]]],[[6,["ARD",1]],[7,["Barrels_Hide",0]]]]
		],[]] call GW_Common_fnc_spawnGroup;

		[Trigger_5,false,[0,25,false,false],east,0,0,3,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;

		{
			[_X, east, "precise", "light", ["auto", 50], 150, 1500, 30] spawn OKS_fnc_Mortars;
		} foreach [mortar_1,mortar_2,mortar_3];

		[Spawn_6, Spawn_6, HuntTrigger_1, 30, 600, east, _Tanks, 120] spawn OKS_fnc_HuntBase;
		[Spawn_4, Spawn_4, HuntTrigger_1, 30, 600, east, _Tanks, 120] spawn OKS_fnc_HuntBase;
	};

	case 6: {

		// Madairi.
		[[[[2400.23,10751.1,5.72205e-06],1,"Up",[]],[[2400,10732,7.62939e-06],122,"Up",[]],[[2406.1,10736.4,3.20177],1,"Up",[]],[[2405.45,10747.1,3.66707],254,"Up",[]],[[2413.81,10735.3,3.8147e-06],1,"Up",[]],[[2417.96,10739.2,5.72205e-06],269,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2417.81,10712.4,3.56892],3,"Up",[]],[[2416.52,10710.6,0.979496],298,"Up",[]],[[2420.41,10684.8,2.72738],198,"Up",[]],[[2428.15,10684.5,3.15636],155,"Middle",[]],[[2416.66,10705.7,3.81315],185,"Up",[]],[[2433.09,10699.9,-1.90735e-06],265,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2407.23,10713.1,3.36168],317,"Up",[]],[[2394.36,10687.5,0.430622],360,"Up",[]],[[2403.41,10690.7,0.247169],317,"Up",[]],[[2393.52,10689.4,3.18958],79,"Up",[]],[[2406.57,10711.8,0.359221],157,"Up",[]],[[2413.56,10704.6,3.86728],234,"Middle",[]],[[2411.07,10691.5,1.90735e-06],150,"Up",[]],[[2394.05,10694.4,0],324,"Up",[]],[[2404.23,10703.1,0],101,"Up",[]],[[2393.54,10706.3,0],127,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[2419.97,10735.7,5.72205e-06],358,"Up",[]],[[2432.01,10745.4,5.72205e-06],289,"Up",[]],[[2430.96,10741.2,0.3932],1,"Up",[]],[[2426.35,10734.2,3.40973],1,"Up",[]],[[2430.28,10731.8,3.39729],1,"Up",[]],[[2431.85,10740.3,3.34895],1,"Up",[]],[[2424.02,10731.8,3.30415],187,"Up",[]],[[2427.27,10731.4,0.64258],354,"Up",[]],[[2430.75,10735.2,0.847853],278,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

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
		   6 - gunner Split - [How many teams,Procent of gunner] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};

