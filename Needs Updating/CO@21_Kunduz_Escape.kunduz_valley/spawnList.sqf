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

private _Vehicles = ["UK3CB_MEI_O_Datsun_Civ_Open", 
"UK3CB_MEI_O_Datsun_Open", 
"UK3CB_MEI_O_Hilux_Open", 
"UK3CB_MEI_O_Hilux_Pkm", 
"UK3CB_MEI_O_LR_Closed", 
"UK3CB_MEI_O_LR_Open", 
"UK3CB_MEI_O_Offroad", 
"UK3CB_MEI_O_Offroad_M2", 
"UK3CB_MEI_O_Pickup", 
"UK3CB_MEI_O_V3S_Closed", 
"UK3CB_MEI_O_V3S_Open", 
"UK3CB_MEI_O_Van_Transport"];

switch (_case) do {

	case 1: {

		// Area 1
		[[[[4638.7,8619.75,3.69648],0,"Up",[]],[[4634.69,8619.27,3.62311],0,"Up",[]],[[4737.52,8717.49,4.16766],0,"Up",[]],[[4819.97,8730.11,4.17],0,"Up",[]],[[4801.27,8793.09,4.08366],0,"Up",[]],[[4804.88,8792.04,4.15124],0,"Up",[]],[[4976.49,9205.53,3.6835],0,"Up",[]],[[4970.13,9199.33,3.31],310,"Up",[]],[[4972.12,9203.4,3.64],310,"Up",[]],[[4937.26,9265.92,3.79676],275,"Up",[]],[[4512.05,9031.92,3.70948],26,"Up",[]],[[4508.16,9031.43,3.65531],341,"Up",[]],[[4505.31,9025.23,3.31107],341,"Up",[]],[[5296.19,8756.06,6.60994],275,"Up",[]],[[5322.55,8725.38,6.57059],286,"Up",[]],[[5359.17,8712.33,6.57808],349,"Up",[]],[[4824.87,8614.18,4.27139],85,"Up",[]],[[4814.12,8611.51,3.91717],295,"Up",[]],[[5040.61,8541.14,3.91717],295,"Up",[]],[[5050.01,8543.33,4.25964],26,"Up",[]]],[["UK3CB_ARD_O_DSHKM",[5046.74,8541.82,3.64364],0,[["gunner",-1,[0]]],[]],["UK3CB_ARD_O_DSHKM",[4843.25,8710.96,3.0503],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		{
			[_X,["RHS_ZU23_VMF"],5000,1800,100] spawn OKS_Radar;
		} foreach [radar_1,radar_2,radar_3,radar_4,radar_5];

		{
			[_X,east,0] call OKS_AddVehicleCrew;
			[_X,"Neutralize AAA","ZU-23","You need to neutralize this %1 to allow free-reign for your air assets.","destroy","taskmain",true,true] spawn OKS_Destroy_Task;
			_X spawn {
				_aaa = _this;
				waitUntil {sleep 5; getDammage _aaa > 0.5 || !Alive _aaa || !Alive (gunner _aaa)};
				_aaaString = (vehicleVarname _aaa);
				_aaaString setMarkerAlpha 0;
				_aaaAreaString = _aaaString + "_area";
				_aaaAreaString setMarkerAlpha 0;
			};
		} foreach [aaa_1,aaa_2];

		{
			[_X, _X, NEKY_Hunt_Trigger_1, 4,600,east,4,90] spawn NEKY_Hunt_HuntBase;
		} foreach [infantry_1_1,infantry_1_2,infantry_1_3,infantry_1_4,infantry_1_5,infantry_1_6];

		{
			[_X, _X, NEKY_Hunt_Trigger_1, 4,600,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;
		} foreach [vehicle_1_1,vehicle_1_2,vehicle_1_3];	

		[Trigger_1,false,[0,20,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
	};

	case 2: {

		// Area 2
		[[[[4867.21,8148.09,6.27095],0,"Up",[]],[[4870.86,8147.18,3.31284],32,"Middle",[]],[[5175.81,8359.92,6.56242],313,"Up",[]],[[5177.14,8361.14,3.66361],322,"Up",[]],[[5267.34,8361.44,6.58045],1,"Up",[]],[[5297.25,8250.8,6.58363],265,"Up",[]],[[5369.37,8281.43,8.16294],21,"Up",[]],[[5424.74,8232.67,6.27095],265,"Middle",[]],[[5416.94,8180.65,3.8284],215,"Up",[]],[[5415.63,8189.31,3.83154],341,"Up",[]],[[5491.24,8168.17,14.278],306,"Up",[]],[[5489.63,8091.1,6.27095],292,"Up",[]],[[5401.52,8016.69,3.31],250,"Up",[]],[[5402.89,8015.46,3.31],250,"Up",[]],[[5112.99,7913.67,6.27095],280,"Up",[]],[[5163,8068.62,6.56126],341,"Middle",[]],[[5159.24,8058.52,6.60073],233,"Up",[]],[[5055.92,7677.61,7.92093],357,"Up",[]],[[5194.01,7848.03,3.31],250,"Up",[]],[[5187.92,7856.54,3.67942],324,"Up",[]],[[5565.09,7730.81,6.57349],340,"Up",[]],[[5467.8,7575.72,6.59089],338,"Up",[]],[[5439.06,7540.24,19.4186],340,"Up",[]],[[5404.28,7546.58,8.08091],277,"Up",[]],[[5394.76,7604.81,7.66052],348,"Up",[]],[[4996.94,7442.87,6.27095],20,"Up",[]],[[5255.05,7461.73,3.31],34,"Up",[]],[[5257.66,7453.39,3.64],61,"Up",[]],[[4794.01,8129.19,4.15902],0,"Up",[]]],[["UK3CB_ARD_O_DSHKM",[4996.22,7443.29,6.27096],0,[["gunner",-1,[0]]],[]],["UK3CB_ARD_O_DSHKM",[5496.6,7563.42,3.83343],0,[["gunner",-1,[0]]],[]],["UK3CB_ARD_O_DSHKM",[5333.83,8173.98,2.97],0,[["gunner",-1,[0]]],[]],["UK3CB_ARD_O_DSHKM",[4791.34,8129.4,3.63674],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
	
		{
			[_X, _X, NEKY_Hunt_Trigger_2, 4,600,east,4,90] spawn NEKY_Hunt_HuntBase;
		} foreach [infantry_2_1,infantry_2_2,infantry_2_3,infantry_2_4,infantry_2_5];

		{
			[_X, _X, NEKY_Hunt_Trigger_2, 4,600,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;
		} foreach [vehicle_2_1,vehicle_2_2,vehicle_2_3];		

		[Trigger_2,false,[0,20,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
	};

	case 3: {

		// Area 3
		[[[[5539.38,7362.67,3.65251],224,"Up",[]],[[5550.68,7366.77,3.31136],31,"Up",[]],[[5726.61,7377.17,3.58767],260,"Up",[]],[[5737.68,7378.15,3.27037],50,"Up",[]],[[5739.93,7400.36,4.17],332,"Up",[]],[[5679.69,7058.71,6.58171],251,"Up",[]],[[5678.77,7057.95,3.66776],260,"Up",[]],[[5681.58,7060.66,3.66449],16,"Up",[]],[[5630.51,7217.4,6.56976],67,"Up",[]],[[5365.73,7064.23,0],358,"Up",[]],[[5343.82,7071.1,0],353,"Up",[]],[[5328.08,7077.62,9.53674e-07],12,"Up",[]],[[5851.16,6843.95,4.21122],276,"Up",[]],[[5897.94,6833.57,3.79676],216,"Up",[]],[[5900.56,6842.24,3.71614],312,"Up",[]],[[5943.33,6802.1,16.811],276,"Up",[]],[[5946.47,6804.24,16.811],340,"Up",[]],[[6002.55,6758.82,19.4151],253,"Up",[]],[[6005.1,6761.18,19.4186],338,"Up",[]],[[5985.95,6732.08,3.64],275,"Up",[]],[[5983.75,6686.92,6.67044],12,"Up",[]],[[5959.87,6661.71,6.63396],275,"Up",[]],[[5591.22,6802.93,0],348,"Up",[]],[[5611.11,6805.07,0],6,"Up",[]],[[5633.45,6805.23,0],2,"Up",[]],[[5339.4,6639.68,0],348,"Up",[]],[[5352.42,6634.47,0],350,"Up",[]],[[5356.85,6639.21,-9.53674e-07],14,"Up",[]],[[5294.86,6630.33,0],348,"Up",[]],[[5303.79,6631.24,0],348,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		{
			[_X, _X, NEKY_Hunt_Trigger_3, 4,600,east,4,90] spawn NEKY_Hunt_HuntBase;
		} foreach [infantry_3_1,infantry_3_2,infantry_3_3];

		{
			[_X, _X, NEKY_Hunt_Trigger_3, 4,600,east,_Vehicles,90] spawn NEKY_Hunt_HuntBase;
		} foreach [vehicle_3_1,vehicle_3_2,vehicle_3_3,vehicle_3_4];		
	};

	case 4: {

		// Area 4
		[[[[5467.77,6446.95,0],31,"Up",[]],[[5447.04,6448.76,0],9,"Up",[]],[[6037.31,6490.36,0],287,"Up",[]],[[6053.98,6501.44,0.562386],338,"Up",[]],[[6076.45,6504.48,0.183733],14,"Up",[]],[[6080.54,6504.09,0.212403],74,"Up",[]],[[5630.61,5966.83,0],7,"Up",[]],[[5635.81,5964.44,0],25,"Up",[]],[[5645.41,5960.06,0],41,"Up",[]],[[5618.67,5954.26,0],305,"Up",[]],[[5977.23,6331.98,5.05668],333,"Up",[]],[[6003.74,6322.77,5.05689],30,"Up",[]],[[6006.87,6334.24,0],0,"Up",[]],[[5961.79,6280.02,5.05689],283,"Up",[]],[[6031.37,6311.54,5.05744],52,"Up",[]],[[6039.85,6287.4,5.05684],52,"Up",[]],[[6048.5,6235.59,5.05683],103,"Up",[]],[[6024.73,6229.83,5.05628],176,"Up",[]],[[6027.61,6210.96,0],99,"Up",[]],[[5926.03,6223.74,5.05689],303,"Up",[]],[[5883.81,6152.69,5.05673],254,"Up",[]],[[5894.62,6135.12,5.05978],267,"Up",[]],[[5917.96,6181.37,5.05689],325,"Up",[]],[[6146.83,6550.64,3.61788],310,"Up",[]],[[6150.21,6552.65,3.68896],337,"Up",[]],[[6493.77,5992.88,6.52925],213,"Up",[]],[[6382.99,6066.14,3.03804],114,"Up",[]],[[6362.13,6125.42,2.96575],201,"Up",[]],[[6375.62,6160.91,2.97],26,"Up",[]],[[6349.44,6186.09,3.33079],272,"Up",[]],[[6355.49,6191.41,3.41042],15,"Up",[]],[[6395.96,6289.42,3.62006],5,"Up",[]],[[6388.45,6282.58,3.31],294,"Up",[]],[[6393.32,6286.84,3.64],294,"Up",[]],[[6449.53,6048.76,6.27095],292,"Middle",[]],[[6554.93,5907.55,2.81556],292,"Middle",[]],[[6419.55,5947.31,2.6061],269,"Middle",[]],[[6482.06,6187.71,3.30153],287,"Middle",[]],[[6488,6190.95,3.65282],287,"Up",[]],[[6559.67,6237.25,6.20423],287,"Middle",[]],[[6561.63,6254.46,6.20872],287,"Middle",[]],[[6556.98,6290.38,3.79293],287,"Up",[]],[[6547.66,6283.35,3.29985],240,"Up",[]],[[6282.57,5731.96,3.59547],327,"Up",[]],[[6248.09,5722.82,3.31],15,"Up",[]],[[6239.47,5724.25,3.31],15,"Up",[]],[[6129.16,5776.22,4.16626],33,"Up",[]]],[["UK3CB_ARD_O_DSHKM",[5643.12,5946.73,9.53674e-07],0,[["gunner",-1,[0]]],[]],["UK3CB_ARD_O_DSHKM",[5959.52,6240.35,9.53674e-07],0,[["gunner",-1,[0]]],[]],["UK3CB_ARD_O_DSHKM",[6033.14,6253.59,9.53674e-07],127,[["gunner",-1,[0]]],[]],["UK3CB_ARD_O_DSHKM",[5985.75,6317.56,9.53674e-07],249,[["gunner",-1,[0]]],[]],["UK3CB_ARD_O_DSHKM",[6353.47,6188.51,3.39225],0,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

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
	GOL SCRIPT EXAMPLES

	=======================================

	Creates a defuse explosive objective with 600 (10 minutes) seconds to complete on the "SatchelCharge" object with the name bomb_1.
	This can be replaced with a position to create an explosive on the position using getPos bomb_1.

	Code:
	[bomb_1,600] spawn OKS_Defuse_Explosive;

	Params:
	[bomb_1,600,bombtarget_1,"BombDetonated","BombDefused"] spawn OKS_Defuse_Explosive;
	Bomb Object or Position, Time Delay (Seconds), Target Object (Destroyed upon detonation), VariableName to set to true if failed, VariableName to set to true if succeeded.

	=======================================

	Sets up a generator to be disabled by action to turn off light sources in the area around it. 

	Code:
	[Generator_1,true,true,1000] spawn OKS_PowerGenerator;

	Params:
	Generator Object, Should Add Action to disable, Turn Off Lights when disabled, Range of disabled lights from Generator

    =======================================

	Setup a scripted AAA that fires randomly into the air until it finds a target and locks on. It has less accuracy than standard AAA positions for balance.

	Code:
	[aaa_1,east,false,1500,true] spawn GW_Ambient_AAA;

	Params:
	AAA Object, side of crew, Is an HMG, Range of AAA, Should be assisted by nearby radar

    =======================================

	Setup an artillery to fire into the sky until destroyed. Take note that it is supposed to delete the rounds from landing to save performance.
	This might fail, so make sure the target is not near friendly positions or bases.

	Code:
	[east,arty_1,getpos ArtyTarget_1,7,300,180,false] spawn OKS_ArtyFire;

	Params:
	Side of Crew, Artillery Object, Artillery Target, Rounds per Salvo, Rearm Delay, Reload Delay, Should give full crew.

    =======================================

	Setup an active artillery barrage on specified targets until destroyed.

	Code:
	[livearty_1,[getPos ArtySuppress_1,getPos ArtySuppress_2,getPos ArtySuppress_3],east,1,1,true,true,300,true] spawn OKS_ArtySupression;

	Params:
	Artillery Object, Array with Target positions, Side of Crew, Rounds per target, Delay per target, Unlimited Ammo, Should Loop until Destroyed, Delay per Salvo, Mark with Red Smoke on Target.

	=======================================

	Setup a destroy/kill objective on a target.

	Code:
	[officer_1,"Kill the Officer","Enemy Officer","You need to kill this %1 because it needs to happen","kill",nil,true,true] spawn OKS_Destroy_Task;

	Params:
	Target Object, Task Title, Target Type, Task Description, Task Icon, Task Parent, Should Mark Position on Map, Should Show Popup when created/completed

	=======================================

	Setup a HVT Capture Objective. The last variable sets true/false if they target should be set to captive (tied hands). False for enemy officers, true for friendly captives.

	Code:
	[Group HVT_1,getMarkerPos "respawn_west",west,false,nil,true] spawn OKS_Evacuate_HVT;

	Params:
	Group of HVT, Exfil Position (Either pickup (Extract On) or dropoff (Extract off)), Side of Extract Helicopter, Should Send AI Helicopter Evac, Parent Task, Is Captive

	=======================================

	Setup Barricade Objective. Objective to destroy objects lined up as a blockade on a road. Make sure the object is destructible by testing it.

	Code:
	[[barricade_1,barricade_2]] spawn OKS_Destroy_Barricade;

	Params:
	Array with Barricade Objects

	=======================================

	Spawn a convoy that moves until engaged, they will dismount, armed vehicles will hunt and dismounts will rush.

	Code:
	[spawn_1,waypoint_1,end_1,west,[4,["rhs_btr60_msv"], 6, 25],[true,6],[], false, false] spawn OKS_Convoy_Spawn;

	Params:
	Spawn Position, First Waypoint, End Waypoint (Scattered formation), Side of Convoy, Convoy Array [](Number, [TypeArray]), Speed meters/second, dispersion]
	Dismount Array (Should have dismount, how many), ConvoyArray to populate variable, forced careless (ignore everything), delete on arrival.

	=======================================

	Spawns a team that either creep/rush/hunt based on LAMBS. Used for quick and intense counter-attacks by enemy infantry.

	Code:
	[SpawnPos,"rush",UnitsPerBase,Side,Range,[]] spawn OKS_Lambs_SpawnGroup;

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
