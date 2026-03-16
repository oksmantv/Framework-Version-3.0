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

		// Objective. 1
		[[[[4734.77,6346.96,4.01472],100,"Up",[]],[[4734.59,6350.63,3.67665],90,"Up",[]],[[4729.54,6342.5,3.75519],173,"Up",[]],[[4732.18,6342.26,3.86064],181,"Up",[]],[[4733.77,6343.85,3.96361],82,"Up",[]],[[4733.11,6346.63,1.08027],78,"Up",[]],[[4730.02,6350.22,1.05609],173,"Up",[]],[[4722.94,6350.38,0.134909],148,"Middle",[]],[[4721.32,6358.44,0.233012],192,"Middle",[]],[[4714.1,6359.81,0.148708],169,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4692.81,6359.15,0],190,"Up",[]],[[4703.89,6375.15,7.39837],173,"Up",[]],[[4705.31,6369.85,7.40227],104,"Up",[]],[[4698.31,6370.01,1.36291],173,"Up",[]],[[4701.08,6370.9,4.44801],99,"Up",[]],[[4691,6383.07,0.342673],112,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4677.21,6326.31,0],189,"Up",[]],[[4682.06,6339.33,0],300,"Middle",[]],[[4712.21,6338.75,4.17198],137,"Up",[]],[[4710.74,6335.48,4.30514],145,"Middle",[]],[[4705,6336.77,3.1955],161,"Middle",[]],[[4705.99,6340.38,0.370242],174,"Up",[]],[[4710.62,6342.94,0.641444],100,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4674.74,6386.39,2.88484],96,"Middle",[]],[[4668.85,6370.22,0],36,"Up",[]],[[4669.08,6385.86,0.517859],178,"Up",[]],[[4664.43,6385.09,0],187,"Up",[]],[[4653.97,6374.29,0.309707],355,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4651.84,6366.83,0],59,"Up",[]],[[4651.12,6369.56,0.531412],283,"Up",[]],[[4648.61,6370,3.91865],62,"Middle",[]],[[4635.75,6377.48,0.921947],28,"Up",[]],[[4638.67,6374.02,0.501358],48,"Up",[]],[[4642.2,6356.8,0.324008],344,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Objective 2 
		[[[[4559.34,6481.11,7.38973],156,"Up",[]],[[4560.96,6482.68,7.40324],66,"Up",[]],[[4554.68,6477.44,7.19458],80,"Up",[]],[[4554.77,6485.11,4.22352],156,"Up",[]],[[4560.88,6484.3,4.4913],97,"Up",[]],[[4557.02,6478.47,4.33451],156,"Up",[]],[[4555.6,6479.92,1.19253],156,"Up",[]],[[4574.06,6462.28,9.53674e-007],350,"Up",[]],[[4557.19,6493.63,0.112446],135,"Up",[]],[[4533.52,6473.96,2.86769],139,"Middle",[]],[[4531.67,6472.55,2.8235],150,"Middle",[]]],[["UK3CB_ADM_O_DSHKM",[4536.84,6452.65,0],198,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4510.69,6466.89,0.403231],341,"Up",[]],[[4484.36,6480.2,3.28985],118,"Middle",[]],[[4509.04,6476.56,5.15307],327,"Middle",[]],[[4506.12,6473.86,5.34606],107,"Up",[]],[[4505.47,6474.81,8.21043],119,"Middle",[]],[[4510.16,6476.16,8.10623],139,"Up",[]],[[4505.01,6448.66,0.369991],56,"Middle",[]],[[4513.22,6432.58,3.10293],55,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4525.38,6477.97,0],143,"Middle",[]],[[4513.94,6473.48,9.53674e-007],56,"Middle",[]],[[4517.02,6471.67,0.181345],321,"Up",[]],[[4511.54,6478.06,2.01766],268,"Middle",[]],[[4511.62,6477.12,8.07934],335,"Middle",[]],[[4687.62,6519.17,3.15633],185,"Middle",[]],[[4681.85,6520.07,2.57606],206,"Middle",[]],[[4679.96,6520.32,2.51283],196,"Middle",[]]],[["UK3CB_ADM_O_DSHKM",[4546.38,6546.89,0],107,[["gunner",-1,[0]]],[]],["UK3CB_ADM_O_Hilux_Pkm",[4687.71,6558.25,1.90735e-006],260,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Objective 3
		[[[[4447.96,6545,8.11855],200,"Middle",[]],[[4446.4,6549.41,8.06953],259,"Middle",[]],[[4448.15,6543.88,5.2332],148,"Middle",[]],[[4452.28,6546.39,5.18637],344,"Middle",[]],[[4451.62,6551.13,8.08192],112,"Up",[]],[[4452.25,6552.34,2.0406],170,"Middle",[]],[[4479.52,6558.73,0.902154],66,"Middle",[]],[[4481.71,6563.36,0.888844],163,"Middle",[]],[[4482.75,6569.11,0.228757],307,"Middle",[]],[[4488.45,6563.24,0.44947],299,"Middle",[]],[[4444.79,6545.53,0],189,"Middle",[]],[[4454.76,6573.11,0.714396],330,"Middle",[]],[[4444.24,6568.83,0.845645],4,"Middle",[]]],[["UK3CB_ADM_O_Hilux_Pkm",[4502.78,6567.38,0],141,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4459.65,6594.03,0.245262],144,"Middle",[]],[[4439.02,6590.91,0.115074],199,"Middle",[]],[[4429.37,6579.61,-1.90735e-006],99,"Middle",[]],[[4423.57,6566.96,0],174,"Middle",[]],[[4424,6571.02,0.116346],212,"Middle",[]],[[4429.43,6572.08,0.066371],200,"Middle",[]]],[["UK3CB_CSAT_W_O_PKM_High",[4428,6570.57,2.6009],127,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4407.21,6592.18,0.593748],33,"Middle",[]],[[4406.74,6604.46,0.798697],167,"Middle",[]],[[4406.93,6595.97,3.63936],146,"Middle",[]],[[4420.27,6608.76,8.26618],138,"Middle",[]],[[4420.94,6610.77,8.30263],98,"Middle",[]],[[4416.8,6608.82,8.29012],160,"Middle",[]],[[4417.81,6608.82,5.38007],154,"Up",[]],[[4419.09,6613.04,2.28423],355,"Middle",[]],[[4417.2,6613.34,8.31744],344,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4441.08,6613.46,0],167,"Middle",[]],[[4422.36,6621.79,0],140,"Middle",[]],[[4421.98,6610.92,5.37492],84,"Middle",[]],[[4421.93,6615.31,5.35697],265,"Middle",[]],[[4458.53,6625.33,0],199,"Middle",[]],[[4441.37,6643.16,0.480192],146,"Middle",[]],[[4447.73,6644.41,0.514496],166,"Middle",[]],[[4453.25,6643.7,0.823984],244,"Middle",[]],[[4463.7,6641.65,0.322491],149,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Objective 4
		[[[[4438.95,6685.2,0.304184],258,"Middle",[]],[[4469.79,6696.27,2.62051],181,"Middle",[]],[[4477.03,6696.58,3.0494],128,"Middle",[]],[[4463.6,6671.62,2.63866],149,"Middle",[]],[[4461.33,6675.92,0],254,"Middle",[]]],[["UK3CB_ADM_O_DSHKM",[4455.09,6688.12,0],166,[["gunner",-1,[0]]],[]],["UK3CB_CSAT_W_O_PKM_High",[4474.43,6696.65,3.05061],145,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[4418.96,6647.73,3.05622],142,"Middle",[]],[[4432.21,6663.62,7.84184],79,"Up",[]],[[4434.01,6656.98,7.85852],258,"Middle",[]],[[4427.39,6657.77,1.83717],49,"Middle",[]],[[4429.46,6665.19,4.89682],18,"Up",[]],[[4426.46,6662.92,4.90907],236,"Middle",[]],[[4434.88,6659.23,1.8247],173,"Middle",[]],[[4420.01,6692.75,0],171,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4365.91,6683.85,7.94461],158,"Up",[]],[[4366.27,6687.86,7.89256],99,"Up",[]]],[["UK3CB_ADM_O_DSHKM",[4379.4,6693.13,1.90735e-006],174,[["gunner",-1,[0]]],[]],["UK3CB_ADM_O_Pickup_DSHKM",[4400.8,6895.05,9.53674e-006],120,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],["UK3CB_ADM_O_Pickup_DSHKM",[4810.61,7257.38,9.53674e-006],133,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],["UK3CB_CSAT_W_O_PKM_High",[4804.95,7231.99,3.59432],174,[["gunner",-1,[0]]],[]],["UK3CB_ADM_O_Pickup_DSHKM",[4350.69,6476.15,9.53674e-006],68,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ADM_1",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],["UK3CB_ADM_O_DSHKM",[4560.54,6386.68,0],130,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		/// Patrols
		[[[[4632.16,6229.16,0],0,[]],[[4635.16,6226.16,0],0,[]],[[4637.16,6226.16,0],0,[]],[[4639.16,6226.16,0],0,[]]],[],[[[4560.31,6351.75,0],[[0,"Move"],[1,"SAFE"]]],[[4633.56,6414.63,-9.53674e-006],[[0,"Move"]]],[[4697.83,6401.46,-2.38419e-005],[[0,"Move"]]],[[4696.34,6303.64,6.67572e-006],[[0,"Move"]]],[[4660.25,6231.58,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4694.59,6420.58,0],0,[]],[[4697.59,6417.58,9.53674e-007],0,[]],[[4699.59,6417.58,9.53674e-007],0,[]],[[4701.59,6417.58,0],0,[]]],[],[[[4622.75,6543.17,0],[[0,"Move"],[1,"SAFE"]]],[[4695.99,6606.05,0],[[0,"Move"]]],[[4760.26,6592.89,0],[[0,"Move"]]],[[4758.77,6495.07,0.372593],[[0,"Move"]]],[[4722.68,6423,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[4548.39,6407.88,0],0,[]],[[4551.39,6404.88,0],0,[]],[[4553.39,6404.88,0],0,[]],[[4555.39,6404.88,0],0,[]]],[],[[[4476.54,6530.46,0],[[0,"Move"],[1,"SAFE"]]],[[4549.79,6593.34,0],[[0,"Move"]]],[[4614.06,6580.18,0],[[0,"Move"]]],[[4612.57,6482.36,6.67572e-006],[[0,"Move"]]],[[4576.48,6410.3,0.206772],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4438.21,6580.97,0],0,[]],[[4441.21,6577.97,0],0,[]],[[4443.21,6577.97,0],0,[]],[[4445.21,6577.97,0],0,[]]],[],[[[4375.97,6669.8,1.90735e-006],[[0,"Move"],[1,"SAFE"]]],[[4439.61,6766.43,0],[[0,"Move"]]],[[4503.88,6753.27,0],[[0,"Move"]]],[[4502.39,6655.45,5.72205e-006],[[0,"Move"]]],[[4466.3,6583.39,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[4513.63,6606.43,0],35,[]],[[4514.38,6602.26,0],35,[]],[[4516.02,6601.12,0],35,[]],[[4517.66,6599.98,9.53674e-007],35,[]]],[],[[[4524.57,6748.1,0],[[0,"Move"],[1,"SAFE"]]],[[4620.6,6757.94,0],[[0,"Move"]]],[[4665.87,6710.46,0],[[0,"Move"]]],[[4608.83,6630.98,6.67572e-006],[[0,"Move"]]],[[4538.08,6592.39,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4430.5,6214.61,0],0,[]],[[4433.5,6211.61,0],0,[]],[[4435.5,6211.61,0],0,[]],[[4437.5,6211.61,0],0,[]]],[],[[[4358.66,6337.19,9.53674e-007],[[0,"Move"],[1,"SAFE"]]],[[4431.91,6400.07,0],[[0,"Move"]]],[[4496.17,6386.91,0],[[0,"Move"]]],[[4494.69,6289.09,6.67572e-006],[[0,"Move"]]],[[4458.6,6217.03,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4849.79,6550.34,0],246,[]],[[4851.3,6554.31,0],246,[]],[[4850.47,6556.13,0],246,[]],[[4849.65,6557.96,0],246,[]]],[],[[[4767.56,6434.47,0],[[0,"Move"],[1,"SAFE"]]],[[4680.13,6475.41,0],[[0,"Move"]]],[[4665.73,6539.41,0],[[0,"Move"]]],[[4755.52,6578.25,7.62939e-006],[[0,"Move"]]],[[4836.04,6574.96,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		//[[[[4767.13,6293.93,0],304,[]],[[4771.29,6294.77,0],304,[]],[[4772.39,6296.44,0],304,[]],[[4773.5,6298.11,0],304,[]]],[],[[[4625.26,6301.82,0],[[0,"Move"],[1,"SAFE"]]],[[4613.35,6397.62,0],[[0,"Move"]]],[[4659.84,6443.9,0],[[0,"Move"]]],[[4740.54,6388.59,7.62939e-006],[[0,"Move"]]],[[4780.64,6318.68,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4550.77,6669.77,0],246,[]],[[4552.27,6673.73,0],246,[]],[[4551.45,6675.56,0],246,[]],[[4550.63,6677.38,0],246,[]]],[],[[[4530.2,6525.85,0],[[0,"Move"],[1,"SAFE"]]],[[4412.22,6565.13,0],[[0,"Move"]]],[[4418.99,6632.7,0],[[0,"Move"]]],[[4456.49,6697.67,7.62939e-006],[[0,"Move"]]],[[4537.02,6694.38,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		{
			[east,_X,getPos ArtyTarget_1,7,300,180] spawn OKS_fnc_ArtyFire; sleep 5;
		} foreach [arty_1,arty_2,arty_3,arty_4];

		{
			[east,_X,getpos ArtyTarget_1,15,300,180] spawn OKS_fnc_ArtyFire; sleep 10;
		} foreach [arty_5,arty_6,arty_7];

		[[],[["UK3CB_MEE_O_KORD_high",[4140.38,5602.68,2.69075],86,[["gunner",-1,[0]]],[]],["UK3CB_MEE_O_KORD_high",[4143.54,5814.91,0],86,[["gunner",-1,[0]]],[]],["UK3CB_MEE_O_KORD_high",[4080.82,6105.21,0],132,[["gunner",-1,[0]]],[]],["UK3CB_MEE_O_KORD_high",[4025.53,6233.78,0],98,[["gunner",-1,[0]]],[]],["UK3CB_MEE_O_KORD_high",[4815.63,6605.5,0],201,[["gunner",-1,[0]]],[]],["UK3CB_MEE_O_KORD_high",[4896.8,6240.53,0],248,[["gunner",-1,[0]]],[]],["UK3CB_MEE_O_KORD_high",[4565.51,6539.47,0],158,[["gunner",-1,[0]]],[]],["UK3CB_MEE_O_KORD_high",[4589.5,6653.33,0],175,[["gunner",-1,[0]]],[]],["UK3CB_MEE_O_KORD_high",[4259.07,6604.98,0],106,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;



	};

	case 2: {

		_Vehicles = ["UK3CB_MEE_O_BRDM2_UM", 
"UK3CB_MEE_O_Datsun_Open", 
"UK3CB_MEE_O_Datsun_Pkm", 
"UK3CB_MEE_O_Hilux_Dshkm", 
"UK3CB_MEE_O_Hilux_Open", 
"UK3CB_MEE_O_LR_Closed", 
"UK3CB_MEE_O_LR_Open", 
"UK3CB_MEE_O_M1025_Unarmed", 
"UK3CB_MEE_O_M998_2DR", 
"UK3CB_MEE_O_M998_4DR", 
"UK3CB_MEE_O_Offroad", 
"UK3CB_MEE_O_Offroad_M2", 
"UK3CB_MEE_O_Pickup", 
"UK3CB_MEE_O_Van_Transport"];
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 6,600,east,_Vehicles,300] spawn OKS_fnc_Huntbase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 6,600,east,_Vehicles,300] spawn OKS_fnc_Huntbase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 6,600,east,_Vehicles,300] spawn OKS_fnc_Huntbase;
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_1, 6,600,east,_Vehicles,300] spawn OKS_fnc_Huntbase;
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_1, 6,600,east,_Vehicles,300] spawn OKS_fnc_Huntbase;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_1, 6,600,east,_Vehicles,300] spawn OKS_fnc_Huntbase;
		[Spawn_7, Spawn_7, NEKY_Hunt_Trigger_1, 6,600,east,_Vehicles,300] spawn OKS_fnc_Huntbase;

		{
			[getPos _X,"rush",1,east,1500,[],stopspawn] spawn OKS_fnc_Lambs_Spawner; sleep 300;
		} foreach [rush_1,rush_2,rush_3,rush_4];		

	};

	case 3: {
	};

	case 4: {
	};

	case 5: {
	};

	case 6: {
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
		   6 - Cargo Split - [How many teams,Procent of Cargo] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};

