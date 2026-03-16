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

	case 1: 
	{
		
		//arty
		[Camp_2,"artillery",300,EAST,false] spawn OKS_fnc_CreateObjectives;
		[Camp_5,"artillery",300,EAST,false] spawn OKS_fnc_CreateObjectives;
		[Camp_6,"artillery",300,EAST,false] spawn OKS_fnc_CreateObjectives;

		//RT
		[Camp_1,"radiotower",300,EAST,true] spawn OKS_fnc_CreateObjectives;
		[Camp_4,"cache",300,EAST,true] spawn OKS_fnc_CreateObjectives;
		[Camp_7,"motorpool",300,EAST,true] spawn OKS_fnc_CreateObjectives;
		
		//AA params
		[sam_1,radar_1] spawn OKS_fnc_SAM;
		[sam_2,radar_1] spawn OKS_fnc_SAM;
		[radar_1,["UK3CB_CSAT_W_O_Gaz66_ZU23"]] spawn OKS_fnc_Radar;
		//Bridge
		[["UK3CB_CSAT_W_O_Offroad_Unarmed",[4175.05,11355.8,2.9415],[[0,0,309.833],[0,0,309.833]],[[6,["CSAT_W",1]],[7,["HideDoor1",0,"HideDoor2",0,"HideDoor3",0,"HideBackpacks",1,"HideBumper1",0,"HideBumper2",1,"HideConstruction",1,"hidePolice",1,"HideServices",1,"BeaconsStart",0,"BeaconsServicesStart",0]]],false]] call GW_Common_fnc_spawnObjects;
		[[],[["UK3CB_CSAT_W_O_PKM_nest",[4175.12,11343.3,-0.00322986],256,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_W_O_BTR60",[4178.25,11286.6,12.6104],275,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_W_O_ZU23",[4194.85,11061.8,-1.21593e-05],280,[["gunner",-1,[0]],["cargo",0,[1]]],[[7,["Unfold",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[["UK3CB_CSAT_W_O_Ural_Recovery",[4219.68,11068,3.46586],[[0,0,69.5425],[-0,0,69.5425]],[[6,["CSAT_W",1]],[7,["Lightcovers_Hide",0,"Spare_hide",0,"ClanLogo_Hide",1]]],false]] call GW_Common_fnc_spawnObjects;
		//Tasks
		[[barricade_1,barricade_2]] spawn OKS_fnc_Destroy_Barricade;
		[gas_1,"Destroy Fuel Dump","Fuel pumps","Deny the enemy their support assets","destroy","obj1",true,true] spawn OKS_fnc_Destroy_Task;
		[aa_1,"Destroy Anti-Air","Vehicles","Deny the enemy their support assets","destroy","obj1",true,true] spawn OKS_fnc_Destroy_Task;
		[plane_1,"Destroy Airframes","Vehicles","Prevent these assets from being used against us","destroy","airfield",true,true] spawn OKS_fnc_Destroy_Task;
		[radar_1,"Destroy SA-10 Radar","Site","Taking out the radar will render the launchers useless","destroy","airfield",false,true] spawn OKS_fnc_Destroy_Task;
		//Units moving
		[[],[["UK3CB_CSAT_W_O_Armed_Boat_HMG_Minigun",[4747.85,10506.5,22.5],207,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["CSAT_F",1]]]]],[[[4515.62,10080.2,53.2729],[[0,"Move"]]],[[4158.96,10348,22.5],[[0,"Move"]]],[[4059.25,11031.3,60],[[0,"Move"]]],[[3832.84,10034.3,56.9562],[[0,"Move"]]],[[4129.11,9804.13,55.7156],[[0,"Move"]]],[[4646.59,10417.3,22.5],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4758.47,10847.9,0],0,[]],[[4763.47,10842.9,0],0,[]],[[4753.47,10842.9,0],0,[]],[[4768.47,10837.9,0],0,[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4836.69,10818.4,0],0,[]],[[4841.69,10816.4,0],0,[]]],[],[[[4979.73,10812.1,0],[[0,"Move"],[1,"SAFE"],[5,"LIMITED"]]],[[5004.26,10754.4,-5.00679e-06],[[0,"Move"]]],[[4890.83,10688.8,-1.19209e-07],[[0,"Move"]]],[[4833.71,10596.1,-5.55515e-05],[[0,"Move"]]],[[4868.03,10668.7,-1.19209e-07],[[0,"Move"]]],[[4809.37,10802.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4766.28,10672.9,0],0,[]],[[4771.28,10670.9,0],0,[]]],[],[[[4630.67,10784.7,0],[[0,"Move"],[1,"SAFE"],[5,"LIMITED"]]],[[4623.51,10912,1.90735e-06],[[0,"Move"]]],[[4762.32,10939.6,2.38419e-07],[[0,"Move"]]],[[4833.05,10876.2,-2.90871e-05],[[0,"Move"]]],[[4701.68,10717,-1.19209e-05],[[0,"Move"]]],[[4771.11,10675.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		
		//Units Static
		[[[[4826.35,10748.5,20.2783],14,"Up",[]],[[4840.78,10794.9,0.28676],131,"Up",[]],[[4879.75,10754.6,0.479301],108,"Up",[]],[[4839.71,10798.7,0.265439],6,"Up",[]],[[4848.62,10799.5,0.283857],59,"Up",[]],[[4840.74,10801.3,0.228987],193,"Up",[]],[[4858.13,10800.4,0.290789],14,"Up",[]],[[4862.7,10799.2,0.292825],44,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4827.23,10709.3,14.1006],154,"Up",[]],[[4850.88,10678.3,0.878492],29,"Up",[]],[[4853.67,10678.1,0.0515512],259,"Up",[]],[[4855.38,10677.7,3.71474],229,"Up",[]],[[4822.78,10705,14.0525],170,"Up",[]],[[4853.77,10675.5,3.71474],295,"Up",[]],[[4849.24,10675.3,3.71474],176,"Up",[]],[[4845.9,10672.4,0.87861],165,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4769.42,10750.3,0.0813063],352,"Up",[]],[[4780.6,10746.6,4.74515],22,"Up",[]],[[4776.49,10742.2,4.74515],118,"Up",[]],[[4780.22,10741.9,0.53562],178,"Up",[]],[[4775.3,10739.4,4.74515],357,"Up",[]],[[4786.32,10743.4,4.74515],27,"Up",[]],[[4783.17,10740.3,4.74515],144,"Up",[]],[[4775.23,10735.1,4.74212],336,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {
		[[],[["UK3CB_CSAT_W_O_BMP1",[5151.84,11177,5.72205e-06],180,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["CSAT_W",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[[[4268.5,11279.5,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_W_O_BTR80",[5151.42,11138.8,-1.28746e-05],171,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CSAT_W",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[[[4259.75,11280.5,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_W_O_BRDM2",[5138.99,11090.1,1.81198e-05],241,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["CSAT_W",1]]]]],[[[4247.52,11280.6,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_W_O_PKM_nest",[4871.17,10922.5,1.19209e-07],326,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {
		[SpawnPos,"rush",20,east,400,["UK3CB_CSAT_W_O_LAT", "UK3CB_CSAT_W_O_LMG", "UK3CB_CSAT_W_O_MG", "UK3CB_CSAT_W_O_RIF_1", "UK3CB_CSAT_W_O_TL", "UK3CB_CSAT_W_O_MD"]] spawn OKS_fnc_Lambs_SpawnGroup;
		[[[[5111.46,12046.7,0],0,[]],[[5116.46,12041.7,0],0,[]],[[5106.46,12041.7,0],0,[]],[[5121.46,12036.7,0],0,[]],[[5101.46,12036.7,0],0,[]],[[5126.46,12031.7,0],0,[]],[[5096.46,12031.7,2.38419e-07],0,[]],[[5131.46,12026.7,0],0,[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[["UK3CB_CSAT_W_O_Ural",[5152.29,11999.2,4.09283],[[2.69155,3.29899,93.1176],[356.852,2.86245,92.9615]],[[6,["CSAT_W",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]],false]] call GW_Common_fnc_spawnObjects;
		[["UK3CB_CSAT_W_O_Ural",[5126.62,12026.5,3.43092],[[0.777361,2.76174,160.48],[359.809,2.86239,160.457]],[[6,["CSAT_W",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]],false]] call GW_Common_fnc_spawnObjects;
		[["UK3CB_CSAT_W_O_GAZ_Vodnik_MedEvac",[5115.05,12020,3.62655],[[0,0,42.5553],[-0,0,42.5553]],[[6,["CSAT_W",1]],[7,["Beacons_Hide",0]]],false]] call GW_Common_fnc_spawnObjects;
		[[[[5087.93,12087.4,0],0,[]],[[5092.93,12082.4,0],0,[]],[[5082.93,12082.4,0],0,[]],[[5097.93,12077.4,0],0,[]]],[],[[[5049.76,11947.7,0],[[0,"Move"],[1,"SAFE"],[5,"LIMITED"]]],[[5144.12,11954.9,8.34465e-07],[[0,"Move"]]],[[5155.67,12064,1.19209e-07],[[0,"Move"]]],[[5096.23,12088.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 4: {
		//officer building
		[["UK3CB_CSAT_W_O_GAZ_Vodnik_Cannon",[6084.28,11323.4,33.0337],[[-2.00911,3.37386,236.686],[1.71828,3.52875,236.798]],[[6,["CSAT_W",1]],[7,["Beacons_Hide",0]]],false]] call GW_Common_fnc_spawnObjects;
		[["UK3CB_CSAT_W_O_BRDM2",[6060.2,11315.7,31.8829],[[1.83602,-2.09192,63.4335],[1.05034,2.57656,63.4906]],[[6,["CSAT_W",1]]],false]] call GW_Common_fnc_spawnObjects;
		[[[[6100.81,11290.1,0],0,[]],[[6105.81,11285.1,0],0,[]],[[6095.81,11285.1,0],0,[]],[[6110.81,11280.1,0],0,[]]],[],[[[6128.78,11333.1,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[6140.85,11284.1,0],[[0,"Move"],[6,[0,3,6]]]],[[6106.15,11253.6,0],[[0,"Move"],[6,[0,3,6]]]],[[6051.26,11245.5,0],[[0,"Move"],[6,[0,3,6]]]],[[6026.52,11291.6,1.90735e-06],[[0,"Move"],[6,[0,3,6]]]],[[6030.36,11330.6,0],[[0,"Move"],[6,[0,3,6]]]],[[6095.85,11351.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//static choppers
		[["UK3CB_CSAT_W_O_Mi_24V",[5924.93,11304.5,32.1947],[[0,0,18.4867],[-0,0,18.4867]],[[6,["CSAT_W",1]],[7,["exhaust_hide",1]],[8,["rhs_mag_b8v20a_s8kom","rhs_mag_b8v20a_s8kom","rhs_mag_b8v20a_s8df","rhs_mag_b8v20a_s8df","rhs_mag_9M120M_Mi24_2x[0]","rhs_mag_9M120M_Mi24_2x[0]","rhs_ASO2_CMFlare_Chaff_Magazine_x4",""]]],false]] call GW_Common_fnc_spawnObjects;
		[["UK3CB_CSAT_W_O_Mi8AMTSh",[5960.19,11326,32.2844],[[0.0773211,0.10965,279.81],[0.0948728,359.905,279.81]],[[6,["CSAT_W",1]],[7,["intake_hide",1,"exhaust_hide",1,"HIDE_weapon_holders",0,"bench_hide",0,"HIDE_winch",0,"HIDE_front_armor",0]],[8,["rhs_mag_b8v20a_s8kom","rhs_mag_b8v20a_s8kom","rhs_mag_b8v20a_s8df","rhs_mag_b8v20a_s8df","rhs_mag_b8v20a_s8kom","rhs_mag_b8v20a_s8kom","rhs_ASO2_CMFlare_Chaff_Magazine_x4",""]]],false]] call GW_Common_fnc_spawnObjects;
		[["UK3CB_CSAT_W_O_Bell412_Utility",[5962.57,11355.7,31.5308],[[0,0,275.372],[-0,0,275.372]],[[6,["CSAT_W",1]],[7,["AddWinch",0,"AddCargohook",0,"AddCargoHook_cover",1,"AddFlareLauncher",0,"AddNoseradar",1,"DoorL2_Hide",0,"DoorR2_Hide",0,"RotorCover_Hide",0]]],false]] call GW_Common_fnc_spawnObjects;
		[["UK3CB_CSAT_W_O_Bell412_Utility",[5965.26,11376.8,31.5308],[[0,0,282.778],[-0,0,282.778]],[[6,["CSAT_W",1]],[7,["AddWinch",0,"AddCargohook",0,"AddCargoHook_cover",1,"AddFlareLauncher",0,"AddNoseradar",1,"DoorL2_Hide",0,"DoorR2_Hide",0,"RotorCover_Hide",0]]],false]] call GW_Common_fnc_spawnObjects;
		//attack chopper
		[[],[["UK3CB_CSAT_W_O_Bell412_Armed",[5936.19,11347.9,0],289,[["driver",-1,[]],["turret",-1,[0]],["turret",-1,[1]],["turret",-1,[2]],["commander",-1,[3]]],[[6,["CSAT_W",1]],[7,["AddCargohook",0,"AddCargoHook_cover",1,"AddFlareLauncher",0,"AddNoseradar",1,"AddWinch",0,"AddRocketLaunchers",0,"AddGuns",0,"DoorL2_Hide",0,"DoorR2_Hide",0,"RotorCover_Hide",0]]]]],[[[5402.99,11804.8,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		//inf
		[[[[5960.12,11617.6,0],0,[]],[[5965.12,11612.6,0],0,[]],[[5955.12,11612.6,0],0,[]],[[5970.12,11607.6,0],0,[]]],[],[[[6077.4,11711.2,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[6106.36,11584.3,0],[[0,"Move"],[6,[0,3,6]]]],[[6025.21,11482.5,0],[[0,"Move"],[6,[0,3,6]]]],[[5895.04,11482.5,0],[[0,"Move"],[6,[0,3,6]]]],[[5813.88,11584.3,0],[[0,"Move"],[6,[0,3,6]]]],[[5842.85,11711.2,0],[[0,"Move"],[6,[0,3,6]]]],[[5960.12,11767.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6010.91,11476.6,0.266438],41,[]],[[6001.71,11473.6,0.266438],0,[]],[[6015.91,11471.6,0.266438],0,[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6032.98,11549.1,0.732494],47,"Up",[]],[[6029.23,11551,0.718634],271,"Up",[]],[[6046.51,11545.3,0.871107],143,"Up",[]],[[6043.04,11550.4,0.868198],49,"Up",[]],[[6050.5,11545.1,0.936745],283,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		//bunkers
		[[],[["UK3CB_CSAT_W_O_PKM_nest",[5773.23,11264.2,-2.28882e-05],8,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_W_O_PKM_nest",[5848.07,11621.5,-0.000799179],258,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_W_O_PKM_nest",[5858.8,11636.5,0],33,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {
		[[],[["UK3CB_CSAT_W_O_T72A",[8662.77,12050.4,0],258,[["driver",-1,[]],["cargo",-1,[0]],["commander",-1,[0,0]]],[[6,["CSAT_W",1]],[7,["Tanks_Hide",0]]]]],[[[5948.9,11464,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_W_O_T72A",[8641.44,12047.9,0],254,[["driver",-1,[]],["cargo",-1,[0]],["commander",-1,[0,0]]],[[6,["CSAT_W",1]],[7,["Tanks_Hide",0]]]]],[[[5955.18,11480,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_W_O_T72B",[8609.71,12041.1,0],256,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[7,["kshield_unhide",0,"kdeck_unhide",0,"sideskirt_unhide",0,"fbskirt_unhide",0,"ftskirt_unhide",0,"log_unhide",0,"snorkel_unhide",0]]]]],[[[5955.18,11496.5,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_W_O_BMP1",[7183.92,10642.2,0],334,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["CSAT_W",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		["HQ","sidechat","ISTAR reports an armoured column on now on the move from Eldshult. Current heading west along the MSR."] remoteExec ["OKS_fnc_sidechat",0];
	};

	case 6: {
		if(isServer) then {
		waitUntil{sleep 5; !(isNil "OKS_fnc_CreateZone")};

		//// START OF ZONE /////
		[	Trigger_1,  // Name of Trigger used as Spawn Area
			false, 		// DO NOT EDIT
			[
				8,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
				15,		// Number of Patrolling Infantry
				false,  // Create Sector Objective on Garrison?
				false   // Should have dedicated patrols near static positions
			],
			east, // Side of Enemy
			2,    // Number of Wheeled on Patrol
			2,    // Number of APCs on Patrol
			2,    // Number of Tanks on Patrol
			[
				3,     // Number of Roadblocks - Preferred Game Logic Location 'FOB'"
				true,  // Should be on tarmac.
				false, // Should have dedicated patrol.
				0 	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
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
		
	if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Huntbase")};
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,300+(random 300),east,["UK3CB_CSAT_W_O_Ural_Open", "UK3CB_CSAT_W_O_Ural", "UK3CB_CSAT_W_O_Typhoon_transport_covered", "UK3CB_CSAT_W_O_Typhoon_transport"],30] spawn OKS_fnc_Huntbase;
		};
		
	if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Huntbase")};
			[Base_3, Spawn_3, NEKY_Hunt_Trigger_1, 5,300+(random 300),east,["UK3CB_CSAT_W_O_Ural_Open", "UK3CB_CSAT_W_O_Ural", "UK3CB_CSAT_W_O_Typhoon_transport_covered", "UK3CB_CSAT_W_O_Typhoon_transport"],30] spawn OKS_fnc_Huntbase;
		};
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_1, NEKY_Hunt_Trigger_1,east,"UK3CB_CSAT_W_O_Mi8AMTSh","Unload",[2,1]] spawn OKS_fnc_Airbase;
		};
	};
	
	case 7: {
		[[[[7252.96,10516.2,9.53674e-07],37,[]],[[7253.89,10509.2,9.53674e-07],37,[]],[[7245.95,10515.3,9.53674e-07],37,[]],[[7254.83,10502.2,9.53674e-07],37,[]],[[7238.94,10514.4,9.53674e-07],37,[]],[[7255.76,10495.2,9.53674e-07],37,[]],[[7231.93,10513.4,9.53674e-07],37,[]],[[7256.69,10488.2,0],37,[]]],[],[[[7270.69,10537.1,0],[[0,"Move"],[2,"RED"],[4,"LINE"],[5,"FULL"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7296.95,10558.7,0],307,"Down",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_W_O_DSHkM_Mini_TriPod",[7295.51,10554,0],310,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	};
	
	case 8: {
		[[[[6073.56,11299.5,2.56906],63,"Up",[]],[[6074.71,11297.2,4.26767],238,"Up",[]],[[6067.95,11300.9,1.7383],274,"Up",[]],[[6078.24,11303.5,0.779989],310,"Up",[]],[[6068.96,11297.8,4.56061],106,"Up",[]],[[6068.58,11302.8,4.64053],139,"Up",[]],[[6078.96,11302.8,4.08243],83,"Up",[]],[[6073.24,11306.3,4.43309],91,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		["HQ","sidechat","ISTAR Has picked up comms suggesting there are holding cells near the airfield. Secure the building and extract any POWs."] remoteExec ["OKS_fnc_sidechat",0];
		[Camp_8,"hostage",300,EAST,false] spawn OKS_fnc_CreateObjectives;
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*
	GOL SCRIPT EXAMPLES

	=======================================

	Creates a defuse explosive objective with 600 (10 minutes) seconds to complete on the "SatchelCharge" object with the name bomb_1.
	This can be replaced with a position to create an explosive on the position using getPos bomb_1.

	Code:
	[bomb_1,600] spawn OKS_fnc_Defuse_Explosive;

	Params:
	[bomb_1,600,bombtarget_1,"BombDetonated","BombDefused"] spawn OKS_fnc_Defuse_Explosive;
	Bomb Object or Position, Time Delay (Seconds), Target Object (Destroyed upon detonation), VariableName to set to true if failed, VariableName to set to true if succeeded.

	=======================================

	Sets up a generator to be disabled by action to turn off light sources in the area around it. 

	Code:
	[Generator_1,true,true,1000] spawn OKS_fnc_PowerGenerator;

	Params:
	Generator Object, Should Add Action to disable, Turn Off Lights when disabled, Range of disabled lights from Generator

    =======================================

	Setup a scripted AAA that fires randomly into the air until it finds a target and locks on. It has less accuracy than standard AAA positions for balance.

	Code:
	[aaa_1,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;

	Params:
	AAA Object, side of crew, Is an HMG, Range of AAA, Should be assisted by nearby radar

    =======================================

	Setup an artillery to fire into the sky until destroyed. Take note that it is supposed to delete the rounds from landing to save performance.
	This might fail, so make sure the target is not near friendly positions or bases.

	Code:
	[east,arty_1,getpos ArtyTarget_1,7,300,180,false] spawn OKS_fnc_ArtyFire;

	Params:
	Side of Crew, Artillery Object, Artillery Target, Rounds per Salvo, Rearm Delay, Reload Delay, Should give full crew.

    =======================================

	Setup an active artillery barrage on specified targets until destroyed.

	Code:
	[livearty_1,[getPos ArtySuppress_1,getPos ArtySuppress_2,getPos ArtySuppress_3],east,1,1,true,true,300,true] spawn OKS_fnc_ArtySuppression;

	Params:
	Artillery Object, Array with Target positions, Side of Crew, Rounds per target, Delay per target, Unlimited Ammo, Should Loop until Destroyed, Delay per Salvo, Mark with Red Smoke on Target.

	=======================================

	Setup a destroy/kill objective on a target.

	Code:
	[officer_1,"Kill the Officer","Enemy Officer","You need to kill this %1 because it needs to happen","kill",nil,true,true] spawn OKS_fnc_Destroy_Task;

	Params:
	Target Object, Task Title, Target Type, Task Description, Task Icon, Task Parent, Should Mark Position on Map, Should Show Popup when created/completed

	=======================================

	Setup a HVT Capture Objective. The last variable sets true/false if they target should be set to captive (tied hands). False for enemy officers, true for friendly captives.

	Code:
	[Group HVT_1,getMarkerPos "respawn_west",west,false,nil,true] spawn OKS_fnc_Evacuate_HVT;

	Params:
	Group of HVT, Exfil Position (Either pickup (Extract On) or dropoff (Extract off)), Side of Extract Helicopter, Should Send AI Helicopter Evac, Parent Task, Is Captive

	=======================================

	Setup Barricade Objective. Objective to destroy objects lined up as a blockade on a road. Make sure the object is destructible by testing it.

	Code:
	[[barricade_1,barricade_2]] spawn OKS_fnc_Destroy_Barricade;

	Params:
	Array with Barricade Objects

	=======================================

	Spawn a convoy that moves until engaged, they will dismount, armed vehicles will hunt and dismounts will rush.

	Code:
	[spawn_1,waypoint_1,end_1,west,[4,["rhs_btr60_msv"], 6, 25],[true,6],[], false, false] spawn OKS_fnc_Convoy_Spawn;

	Params:
	Spawn Position, First Waypoint, End Waypoint (Scattered formation), Side of Convoy, Convoy Array [](Number, [TypeArray]), Speed meters/second, dispersion]
	Dismount Array (Should have dismount, how many), ConvoyArray to populate variable, forced careless (ignore everything), delete on arrival.

	=======================================

	Spawns a team that either creep/rush/hunt based on LAMBS. Used for quick and intense counter-attacks by enemy infantry.

	Code:
	[SpawnPos,"rush",UnitsPerBase,Side,Range,[]] spawn OKS_fnc_Lambs_SpawnGroup;

	Params:
	Position, Type of Waypoint (rush,creep,hunt), Units to spawn, Side of units, Range of waypoint (around the spawn), unit array that gets populated with the units.

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
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};

