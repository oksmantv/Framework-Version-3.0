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

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
/*
	Set AI Faces & Voices for Factions / Units

	Options:
	african
	asian
	english
	american
	middleeast
	russian
	french

	!! OKS_Ambience must be turned to 1 in MissionSettings.sqf !!
*/
if(isServer && GOL_OKS_AMBIENCE isEqualTo 1) then {
	waitUntil {sleep 1; !(isNil "OKS_FaceSwap")};
	[east,"russian"] spawn OKS_FaceSwap;
};


params [
	"_case"
];

switch (_case) do {

	case 1: {
		
		[Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

		// Vehicles
		[[],[
			["UK3CB_B_G_Hilux_PKM",[12447.7,14225.8,2],67,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Red",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]],
			["B_G_Offroad_01_armed_F",[12326.2,14307.9,2],68,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Guerilla_07",1]],[7,["Hide_Shield",1,"Hide_Rail",1,"HideDoor1",0,"HideDoor2",0,"HideDoor3",0,"HideBackpacks",1,"HideBumper1",0,"HideBumper2",1,"HideConstruction",1]]]],
			["UK3CB_B_G_Pickup_M2",[12522.8,14467.6,2],160,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["WHITE_STRIPE",1]],[7,["Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1]]]],
			["UK3CB_B_G_UAZ_Dshkm",[12639.4,14270.7,2],67,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Blue",1]],[7,["light_hide",1,"spare_hide",0]
		]]]],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[12761.6,14270.1,0],344,[]],[[12762.5,14268.6,0],344,[]],[[12759.5,14270.1,0],344,[]],[[12759.7,14268.1,0],344,[]]],[],[[[12684.3,14226.3,0],[[0,"Move"],[1,"AWARE"],[4,"FILE"]]],[[12636.3,14296,0.00012207],[[0,"Move"]]],[[12671.2,14343.7,-7.05719e-005],[[0,"Move"]]],[[12729.1,14330.6,-4.57764e-005],[[0,"Move"]]],[[12755.9,14277.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[12705.7,14387.5,0],344,[]],[[12706.7,14385.9,0],344,[]],[[12703.6,14387.5,0],344,[]],[[12703.9,14385.5,0],344,[]]],[],[[[12626.1,14318.1,0],[[0,"Move"],[1,"AWARE"],[4,"FILE"]]],[[12574.7,14363.4,7.71887],[[0,"Move"]]],[[12611.4,14431.8,0],[[0,"Move"]]],[[12674.2,14458.6,1.90735e-006],[[0,"Move"]]],[[12700.1,14394.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[12668.9,14227.3,0.0369012],344,[]],[[12669.8,14225.7,0.13233],344,[]],[[12666.8,14227.2,2.38419e-007],344,[]],[[12667,14225.2,2.38419e-007],344,[]]],[],[[[12581.3,14185.2,0],[[0,"Move"],[1,"AWARE"],[4,"FILE"]]],[[12514.8,14234.1,0.571413],[[0,"Move"]]],[[12560.8,14295.3,0],[[0,"Move"]]],[[12645,14279.3,0],[[0,"Move"]]],[[12663.2,14234.3,0.704094],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[12549.2,14415.3,0],344,[]],[[12550.1,14413.7,0],344,[]],[[12547.1,14415.2,0],344,[]],[[12547.3,14413.2,0],344,[]]],[],[[[12474,14391.8,3.9533],[[0,"Move"],[1,"AWARE"],[4,"FILE"]]],[[12441,14453.3,0],[[0,"Move"]]],[[12476.1,14495.9,1.90735e-006],[[0,"Move"]]],[[12522.3,14471.6,1.90735e-006],[[0,"Move"]]],[[12543.5,14422.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[12449.8,14179.9,0],344,[]],[[12450.7,14178.3,0],344,[]],[[12447.7,14179.8,0],344,[]],[[12447.9,14177.8,0],344,[]]],[],[[[12373.4,14145.6,0],[[0,"Move"],[1,"AWARE"],[4,"FILE"]]],[[12369.2,14193.2,4.21574],[[0,"Move"]]],[[12343.5,14251.4,0],[[0,"Move"]]],[[12414.8,14265,0],[[0,"Move"]]],[[12444.1,14187,0.606989],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[12481.9,14318.8,0],344,[]],[[12482.8,14317.3,0],344,[]],[[12479.8,14318.8,0.442232],344,[]],[[12480,14316.8,0],344,[]]],[],[[[12405.1,14287.5,0],[[0,"Move"],[1,"AWARE"],[4,"FILE"]]],[[12365.3,14372.2,0],[[0,"Move"]]],[[12378.8,14441.6,4.77113],[[0,"Move"]]],[[12424.1,14423.2,0],[[0,"Move"]]],[[12476.2,14325.9,1.21687],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[12564.6,14300.1,0],344,[]],[[12565.6,14298.5,0],344,[]],[[12562.5,14300,0],344,[]],[[12562.7,14298,0],344,[]]],[],[[[12709.6,14305.5,4.76837e-007],[[0,"Move"],[1,"AWARE"],[4,"FILE"]]],[[12558.7,14206.8,0.682936],[[0,"Move"]]],[[12461.8,14480,0],[[0,"Move"]]],[[12560,14347.6,0],[[0,"Move"]]],[[12558.9,14307.2,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[aa_1,east,false,1500,true] spawn GW_Ambient_AAA;
		[aa_2,east,false,1500,true] spawn GW_Ambient_AAA;
		[aa_3,east,false,1500,true] spawn GW_Ambient_AAA;

		// Strongpoint 1
		[[[[12668.6,14273.6,0.523946],142,"Up",[]],[[12664.1,14274.7,0.402565],151,"Up",[]],[[12657,14271.6,0.484016],142,"Up",[]],[[12659.7,14266.1,0.990006],142,"Up",[]],[[12657.2,14272.3,3.84939],142,"Up",[]],[[12666.7,14275.7,3.75187],336,"Up",[]],[[12667.8,14269.2,4.29426],167,"Up",[]],[[12661.5,14287.8,0.848092],150,"Up",[]],[[12662.2,14287.8,4.26694],165,"Up",[]],[[12630.7,14286.4,4.07093],81,"Up",[]],[[12634.5,14278.1,5.02987],89,"Up",[]],[[12645,14296.9,4.76614],158,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12664.4,14293.1,0.587992],343,"Up",[]],[[12668.8,14298.3,0.36105],150,"Up",[]],[[12670.9,14292.4,4.0849],135,"Up",[]],[[12668.8,14297.8,3.80583],336,"Up",[]],[[12664.6,14295.8,3.86298],150,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12644.9,14320.5,4.3068],111,"Up",[]],[[12691.9,14283.2,3.5121],261,"Up",[]],[[12692,14301.3,0.545372],154,"Up",[]],[[12654.5,14303,4.62036],74,"Up",[]],[[12653.3,14300.5,4.78271],77,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Strongpoint 2
		[[[[12626.6,14388.3,0.473675],135,"Middle",[]],[[12620.6,14402.6,1.47795],135,"Middle",[]],[[12615.5,14387.5,4.30962],51,"Up",[]],[[12611.4,14390.3,0.769533],213,"Up",[]],[[12617,14386.2,0.947479],149,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12619.2,14409,1.16696],109,"Middle",[]],[[12617.5,14420,0.126146],170,"Middle",[]],[[12609.1,14402.9,0.265509],343,"Middle",[]],[[12605.6,14398.4,0.419436],77,"Middle",[]],[[12610.4,14413.7,4.15121],157,"Up",[]],[[12612.7,14414.8,4.16397],157,"Up",[]],[[12613.5,14397.6,3.8301],51,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;


		// Strongpoint 3
		[[[[12537.9,14242.4,0.733771],352,"Up",[]],[[12543.6,14245.2,0],352,"Up",[]],[[12543.4,14245,3.70638],349,"Up",[]],[[12536.9,14234.6,4.2264],148,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12548.8,14262.1,1.65259],113,"Up",[]],[[12549.1,14265.9,1.27375],68,"Up",[]],[[12558.7,14287.4,0.223213],235,"Up",[]],[[12562.8,14283,0.506552],102,"Up",[]],[[12553.3,14279.5,-9.53674e-007],139,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12525.4,14284.8,3.773],126,"Up",[]],[[12522,14283,4.0083],142,"Up",[]],[[12555.4,14301.8,4.48226],68,"Up",[]],[[12548.9,14298.8,4.58646],216,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12571.3,14238.6,3.54736],61,"Up",[]],[[12559.3,14252,3.80193],318,"Up",[]],[[12566.9,14255.2,3.82702],335,"Up",[]],[[12566.7,14254.9,0.414496],337,"Up",[]],[[12571.9,14236.8,0.310271],10,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		[mortar_1,[getPos target_1,getPos target_2,getPos target_3,getPos target_4,getPos target_5,getPos target_6],east,1,10,true,true,200,false] execVM "Scripts\OKS_Spawn\OKS_ArtySupression.sqf"; sleep 20;
		[mortar_2,[getPos target_1,getPos target_2,getPos target_3,getPos target_4,getPos target_5,getPos target_6],east,1,10,true,true,200,false] execVM "Scripts\OKS_Spawn\OKS_ArtySupression.sqf"; sleep 20;
		[mortar_3,[getPos target_1,getPos target_2,getPos target_3,getPos target_4,getPos target_5,getPos target_6],east,1,10,true,true,200,false] execVM "Scripts\OKS_Spawn\OKS_ArtySupression.sqf"; sleep 20;
		[mortar_4,[getPos target_1,getPos target_2,getPos target_3,getPos target_4,getPos target_5,getPos target_6],east,1,10,true,true,200,false] execVM "Scripts\OKS_Spawn\OKS_ArtySupression.sqf"; sleep 20;
		[mortar_5,[getPos target_1,getPos target_2,getPos target_3,getPos target_4,getPos target_5,getPos target_6],east,1,10,true,true,200,false] execVM "Scripts\OKS_Spawn\OKS_ArtySupression.sqf"; sleep 20;
	};

	case 2: {
		// Hunt Start
		[[
			Flare_1,Flare_2,Flare_3,Flare_4,Flare_5,Flare_6,Flare_7,Flare_8,Flare_9,
			Flare_10,Flare_11,Flare_12,Flare_13,Flare_14,Flare_15,Flare_16,Flare_17,
			Flare_18,Flare_19,Flare_20,Flare_21, Flare_22,Flare_23,Flare_24,Flare_25
		],75,3,-1] execVM "Scripts\FlareCoverage.sqf";

		["hq","side","1-1 be advised illumination rounds will continously light up the village of Neochori for the duration of your operations. Good luck, out."] remoteExec ["OKS_Chat",0];

		_Vehicles = [
			"UK3CB_FIA_B_Datsun_Pkm", 
			"UK3CB_FIA_B_Hilux_M2", 
			"UK3CB_FIA_B_Hilux_Open", 
			"UK3CB_FIA_B_Hilux_Pkm", 
			"UK3CB_FIA_B_MB4WD_Unarmed", 
			"UK3CB_FIA_B_MB4WD_LMG", 
			"UK3CB_FIA_B_LR_Closed", 
			"UK3CB_FIA_B_LR_Open", 
			"UK3CB_FIA_B_Offroad", 
			"UK3CB_FIA_B_Pickup", 
			"UK3CB_FIA_B_Van_Transport"
		];
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 3,900,east,selectRandom _Vehicles,200] spawn NEKY_Hunt_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 3,900,east,selectRandom _Vehicles,200] spawn NEKY_Hunt_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_2, 3,900,east,selectRandom _Vehicles,200] spawn NEKY_Hunt_HuntBase;
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_2, 3,900,east,selectRandom _Vehicles,200] spawn NEKY_Hunt_HuntBase;

		{
			[getPos _X,2,east,2000,[],objNull] spawn OKS_Rush_Spawner;
			sleep 60;
		} foreach [hunter_1,hunter_2,hunter_3,hunter_4,hunter_5,hunter_6];

	};

	case 3: {

		// Strongpoint 4
		[[[[12496.6,14487.8,1.21657],167,"Up",[]],[[12502.9,14488.5,0.573868],54,"Up",[]],[[12499.9,14477.9,1.43515],250,"Up",[]],[[12504.6,14473.7,1.33934],215,"Up",[]],[[12499.8,14477.8,4.88122],270,"Up",[]],[[12510.7,14471.7,4.3408],60,"Up",[]],[[12498,14481.2,1.57491],261,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12475.2,14471.4,0],59,"Up",[]],[[12484.7,14478.5,1.16377],132,"Up",[]],[[12487.4,14497.2,0],162,"Middle",[]],[[12483.8,14512.3,4.94005],234,"Up",[]],[[12492,14496.4,4.88973],213,"Up",[]],[[12470,14505.5,0.444508],256,"Middle",[]],[[12473.9,14475.6,0.250277],96,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 5
		[[[[12431.5,14328.9,1.90735e-006],74,"Middle",[]],[[12431,14332.3,1.90735e-006],74,"Middle",[]],[[12426.2,14330.1,9.53674e-007],125,"Middle",[]],[[12424.2,14334.8,0],163,"Middle",[]],[[12416.8,14327,0],250,"Middle",[]],[[12416.4,14339.7,0.0379782],283,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12402.6,14337.3,-9.53674e-007],161,"Middle",[]],[[12391.3,14361.5,0],74,"Middle",[]],[[12409.8,14359.4,0],89,"Up",[]],[[12410.1,14362.9,0],89,"Up",[]],[[12408,14356.3,0],300,"Middle",[]],[[12412.3,14348.4,4.76837e-007],131,"Up",[]],[[12417,14343,0],72,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Strongpoint 6
		[[[[12420,14227.8,0.207901],165,"Up",[]],[[12413.1,14233.1,0.109038],347,"Up",[]],[[12418.4,14232.3,0.0974512],94,"Up",[]],[[12402.1,14225.8,0.121416],161,"Up",[]],[[12380,14207.5,4.33691],109,"Up",[]],[[12378.1,14211.9,4.02175],83,"Up",[]],[[12376.6,14215.6,3.8721],96,"Up",[]],[[12382,14203.9,6.0714],85,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12411.8,14206.8,1.04493],314,"Up",[]],[[12414,14199.8,1.15854],133,"Up",[]],[[12422.2,14205.1,0.796751],341,"Up",[]],[[12417.2,14201.2,1.08651],18,"Up",[]],[[12424.9,14211.9,0.57027],333,"Up",[]],[[12427.2,14206.1,4.13578],141,"Up",[]],[[12425,14211.9,3.98824],328,"Up",[]],[[12416.4,14205.8,4.44003],56,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12425.1,14182.4,3.70421],40,"Up",[]],[[12422.2,14184.1,3.73952],40,"Up",[]],[[12387.2,14191.3,0.234131],78,"Up",[]],[[12395.9,14199.3,2.38419e-007],78,"Middle",[]],[[12402,14190.4,0.360029],20,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
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
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_CreateZone")};

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
			] spawn OKS_CreateZone;
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

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn NEKY_Hunt_HuntBase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Hunt_HuntBase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn NEKY_Hunt_HuntBase;
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

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
