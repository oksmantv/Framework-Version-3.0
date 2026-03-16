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
		ReportTask = true;
		Defend1Clear = false;
		Defend2Clear = false;
		AirAssaultArray = [];
		publicVariable "AirAssaultArray";

		sleep 5;
		_TaskId = "Defend_1_Task";
		[true, _TaskId, ["The soviets will spur into action now that our artillery are shelling their position. Prepare the defences and repel their attack! Expect the possibility of a hasty retreat if the soviets zero in on firebase gretel with their artillery batteries.", "Defend Gretel", "Defend Gretel"], [3746.05,4703.16,0],"AUTOASSIGNED",-1,false] call BIS_fnc_taskCreate;
		[_TaskId,"defend"] call BIS_fnc_taskSetType;
		[_TaskId,[3746.05,4703.16,0]] call BIS_fnc_taskSetDestination;

		[arty_1,[getPos target_1],east,5,1,true,true,300,false] spawn OKS_ArtySupression; sleep 5 + (random 10);
		[arty_2,[getPos target_2],east,5,1,true,true,300,false] spawn OKS_ArtySupression; sleep 5 + (random 10);
		[arty_3,[getPos target_3],east,5,1,true,true,300,false] spawn OKS_ArtySupression; sleep 5 + (random 10);
		[arty_4,[getPos target_4],east,5,1,true,true,300,false] spawn OKS_ArtySupression; sleep 5 + (random 10);
		[arty_5,[getPos target_5],east,5,1,true,true,300,false] spawn OKS_ArtySupression; sleep 5 + (random 10);
		[arty_6,[getPos target_6],east,5,1,true,true,300,false] spawn OKS_ArtySupression; sleep 5 + (random 10);

		[[getPos defend_1_1,getPos defend_1_2,getPos defend_1_3],3,3,70,"rush",east,1000,"Defend1Clear"] spawn OKS_Lambs_Wavespawn;
		[east, "RHS_Mi8mt_vdv", False, "unload", getPos heli_1, getPos land_1, "helicopter_despawn", [2,0.6], ["marker_3"],false,false,objNull,AirAssaultArray] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 30;
		[east, "RHS_Mi8mt_vdv", False, "unload", getPos heli_3, getPos land_3, "helicopter_despawn", [2,0.6], ["marker_3"],false,false,objNull,AirAssaultArray] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf";

		sleep 30;
		[[getPos defend_1_4,getPos defend_1_5],3,3,70,"rush",independent,1000,"Defend2Clear"] spawn OKS_Lambs_Wavespawn;
		Enemy_Vehicle1 = [[],[["UK3CB_CW_SOV_O_EARLY_BTR60",[3818.17,4255.91,0],339,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[[[3722.54,4516.17,6.10352e-005],[[0,"Move"]]],[[3757.78,4594.08,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		publicVariable "Enemy_Vehicle1";
		[east, "RHS_Mi8mt_vdv", False, "unload", getPos heli_2, getPos land_2, "helicopter_despawn", [2,0.6], ["marker_3"],false,false,objNull,AirAssaultArray] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 30;
		[east, "RHS_Mi8mt_vdv", False, "unload", getPos heli_4, getPos land_4, "helicopter_despawn", [2,0.6], ["marker_3"],false,false,objNull,AirAssaultArray] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf";
		sleep 20;	
		publicVariable "AirAssaultArray";

		sleep 140;
		Enemy_Vehicle2 = [[],[["UK3CB_CW_SOV_O_EARLY_BTR60",[3813.16,4177.38,0.340149],3,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"crate_r4_unhide",0,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",1]]]]],[[[3722.54,4516.17,6.10352e-005],[[0,"Move"]]],[[3703.6,4614.51,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		publicVariable "Enemy_Vehicle2";
		_Condition1 = ({alive _X || [_X] call ace_common_fnc_isAwake} count units Enemy_Vehicle1 < 2);
		_Condition2 = ({alive _X || [_X] call ace_common_fnc_isAwake} count units Enemy_Vehicle2 < 2);
		_Condition3 = ({alive _X || [_X] call ace_common_fnc_isAwake} count AirAssaultArray < 2);
		waitUntil {sleep 5; (Defend1Clear && Defend2Clear && _Condition1 && _Condition2 && _Condition3) || (triggerActivated Defend1Fail || triggerActivated Defend1Fail_1)};

		if(triggerActivated Defend1Fail || triggerActivated Defend1Fail_1) then {
			[_TaskId,"FAILED",true] call BIS_fnc_taskSetState;
			[Artillery_1,2,4,120,60,true,60] execVM "Scripts\OKS_Ambience\OKS_Creeping_Barrage.sqf";
		} else
		{
			[_TaskId,"SUCCEEDED",true] call BIS_fnc_taskSetState;
			[Artillery_1,3,4,120,60,false,40] execVM "Scripts\OKS_Ambience\OKS_Creeping_Barrage.sqf";
		};
		
		sleep 5;
		_TaskId2 = "Retreat_1_Task";
		[true, _TaskId2, ["Firebase gretel has been targeted by Soviet artillery. Our artillery will attempt to strike them before they are destroyed, you have done what you can. Retreat before the position is hit by artillery.", "Retreat!", "Retreat"], [3550.67,5041.77,0],"AUTOASSIGNED",-1,false] call BIS_fnc_taskCreate;
		[_TaskId2,"run"] call BIS_fnc_taskSetType;
		[_TaskId2,[3550.67,5041.77,0]] call BIS_fnc_taskSetDestination;

		waitUntil {sleep 5; {_X distance [3550.67,5041.77,0] < 50} count AllPlayers > 0};

		{deleteVehicle _X} foreach list Defend1Area_OPFOR;
		{deleteVehicle _X} foreach list Defend1Area_INDEPENDENT;

		[_TaskId2,"SUCCEEDED",true] call BIS_fnc_taskSetState; sleep 5;

		_TaskId3 = "Defend_2_Task";
		[true, _TaskId3, ["An enemy column of the 267th Guard Rifle Regiment is heading in from the west. Ambush the column and stop their advance. Once again, expect a hasty retreat if zeroed in by enemy artillery.", "Defend West Flank", "West Flank"], [3521.37,5037.43,0],"AUTOASSIGNED",-1,false] call BIS_fnc_taskCreate;
		[_TaskId3,"defend"] call BIS_fnc_taskSetType;
		[_TaskId3,[3521.37,5037.43,0]] call BIS_fnc_taskSetDestination;
		sleep 30;
		["hq","side","Be advised the soviet column is inbound momentarily. Get ready, HQ out."] remoteExec ["OKS_Chat",0];
		First_ConvoyArray = [];
		[convoy_1,convoy_2,convoy_3,east,[5,["UK3CB_CW_SOV_O_EARLY_BTR60", "UK3CB_CW_SOV_O_EARLY_BTR40_MG","UK3CB_CW_SOV_O_EARLY_BTR40","UK3CB_CW_SOV_O_EARLY_BTR40","UK3CB_CW_SOV_O_EARLY_BTR40"], 6, 25],[true,6],First_ConvoyArray, false, false] spawn OKS_Convoy_Spawn;	
		sleep 25;
		waitUntil {sleep 5; ({ {Alive _X || [_X] call ace_common_fnc_isAwake} count units _X == 0} count First_ConvoyArray == count First_ConvoyArray) || triggerActivated Defend2Fail};
		if(triggerActivated Defend2Fail) then {
			[_TaskId3,"FAILED",true] call BIS_fnc_taskSetState;
			[Artillery_2,2,6,120,60,true,60] execVM "Scripts\OKS_Ambience\OKS_Creeping_Barrage.sqf";
			sleep 5;
		} else
		{
			[_TaskId3,"SUCCEEDED",true] call BIS_fnc_taskSetState;
			[Artillery_2,3,4,120,60,false,40] execVM "Scripts\OKS_Ambience\OKS_Creeping_Barrage.sqf";
			sleep 5;	
		};

		sleep 30;
		TaskId2 = "Retreat_2_Task";
		[true, TaskId2, ["The village of Cherny Shakal is being targeted by Soviet artillery. We must relocate and evacuate the village before strike lands, it will surely be followed by a soviet advance. Fallback and setup an ambush south of the radio station.", "Retreat!", "Retreat"], [4805.14,5441.53,0],"AUTOASSIGNED",-1,false] call BIS_fnc_taskCreate;
		[TaskId2,"run"] call BIS_fnc_taskSetType;
		[TaskId2,[4805.14,5441.53,0]] call BIS_fnc_taskSetDestination;
		

	};

	case 2: {

		{{DeleteVehicle _X} foreach units _X} foreach First_ConvoyArray;
		[TaskId2,"SUCCEEDED",true] call BIS_fnc_taskSetState; sleep 5;
		_TaskId4 = "Defend_3_Task";
		[true, _TaskId4, ["The village has been taken and Soviet and Czech forces are pushing through towards the east to our regiment HQ. Stop the enemy advance by ambushing the lead elements.", "Ambush Column", "Ambush Column"], [4807.97,5443.66,0],"AUTOASSIGNED",-1,false] call BIS_fnc_taskCreate;
		[_TaskId4,"defend"] call BIS_fnc_taskSetType;
		[_TaskId4,[4807.97,5443.66,0]] call BIS_fnc_taskSetDestination;
		sleep 120;
		["hq","side","Be advised the soviet advance is inbound. Get ready, HQ out."] remoteExec ["OKS_Chat",0];	
		_ConvoyArray = [];
		_ConvoyArray2 = [];
		[convoy_4,convoy_5,convoy_6,east,[3,["UK3CB_CW_SOV_O_EARLY_BTR60", "UK3CB_CW_SOV_O_EARLY_BTR40_MG","UK3CB_CW_SOV_O_EARLY_BTR40"], 6, 25],[true,4],_ConvoyArray, false, false] spawn OKS_Convoy_Spawn;	
		sleep 30;
		[convoy_4,convoy_5,convoy_6,independent,[3,["UK3CB_CW_SOV_O_EARLY_BTR40_MG", "UK3CB_CW_SOV_O_EARLY_BTR40","UK3CB_CW_SOV_O_EARLY_BTR40"], 6, 25],[true,4],_ConvoyArray2, false, false] spawn OKS_Convoy_Spawn;	
		sleep 30;
		waitUntil {sleep 5; { {Alive _X || [_X] call ace_common_fnc_isAwake} count units _X == 0} count _ConvoyArray == count _ConvoyArray &&  { {Alive _X || [_X] call ace_common_fnc_isAwake} count units _X == 0} count _ConvoyArray2 == count _ConvoyArray2};
		[_TaskId4,"SUCCEEDED",true] call BIS_fnc_taskSetState; sleep 5;

		sleep 3;
		["hq","side","The main soviet advance has been halted, prepare to counter-attack and retake the village of Cherny Shakal. We have reports of 2nd and 3rd Squad still held up in the village, relieve their positions and rescue them, good luck, HQ out."] remoteExec ["OKS_Chat",0];

		// Spawn Sentries in vilage and tasks for rescue.
		[[[[4200.25,5272.58,0.772095],78,"Up",[]],[[4190.79,5267.29,0],163,"Up",[]],[[4199.23,5280.02,0.723022],49,"Up",[]],[[4193.49,5278.39,3.9187],218,"Up",[]],[[4172.78,5259.61,0.262207],163,"Up",[]],[[4168.84,5266.13,0.231934],163,"Up",[]],[[4189.16,5297.83,0],81,"Up",[]],[[4188.75,5303.65,6.10352e-005],86,"Up",[]],[[4188.98,5311.94,0],78,"Middle",[]],[[4190.99,5321.33,0],65,"Middle",[]],[[4244.68,5285.38,0.967285],39,"Up",[]],[[4240.18,5281.27,0.875366],315,"Up",[]],[[4221.77,5293.97,0.806335],64,"Up",[]],[[4220.28,5295.28,0.763489],44,"Up",[]],[[4218.8,5296.83,0.708252],44,"Up",[]]],[["UK3CB_ADE_O_DSHKM",[4219.21,5284.94,0.5],60,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;	
		[[[[4058.7,5211.9,0],327,"Up",[]],[[4046.21,5239.25,0],224,"Up",[]],[[4021.93,5244.66,6.10352e-005],159,"Up",[]],[[4021.25,5225.77,0],52,"Up",[]],[[4024.65,5206.15,0],211,"Up",[]],[[4041.19,5200.78,0],108,"Up",[]],[[4038.33,5187.99,6.10352e-005],129,"Up",[]],[[4022.16,5235.31,0],242,"Up",[]],[[3987.42,5125.11,0],24,"Middle",[]],[[3988.88,5123.04,0],260,"Middle",[]],[[4009.97,5137.15,-6.10352e-005],24,"Middle",[]],[[4020.75,5142.91,0],279,"Middle",[]]],[["UK3CB_ADE_O_PKM_High",[3984.9,5123.72,0],39,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3845.57,5071.47,6.10352e-005],73,"Up",[]],[[3845.67,5087.17,0],99,"Up",[]],[[3847.32,5095.3,0.637939],41,"Up",[]],[[3840.04,5092.25,7.20331],92,"Middle",[]],[[3840.11,5096.28,7.08569],63,"Middle",[]],[[3907.67,5126.91,0],225,"Middle",[]],[[3902.91,5133.18,0.375],199,"Up",[]],[[3876.96,5101.75,0],220,"Middle",[]],[[3880.45,5082.4,0],301,"Middle",[]],[[3914.82,5149.63,6.10352e-005],94,"Middle",[]]],[["UK3CB_ADE_O_DSHKM",[3834.48,5097.31,0.5],70,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		
		sleep 30;
		[[3919.68,5115.32,0],"sector",400,EAST,false] execVM "Scripts\OKS_Dynamic\OKS_CreateObjectives.sqf";

		[group Squad_2] spawn OKS_Relieve_Friendly;
		[group Squad_3] spawn OKS_Relieve_Friendly;
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
