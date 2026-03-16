MISSION_ROOT = call {
    private "_arr";
    _arr = toArray __FILE__;
    _arr resize (count _arr - 8);
    toString _arr
};
"ASCZ_Middleeast" call bis_fnc_setppeffecttemplate;
civilian setFriend [east,1];
civilian setFriend [west,0];

/* Define Player Side for Scripts */
if(HasInterface && isNil "OKS_FRIENDLY_SIDE") then {
	OKS_FRIENDLY_SIDE = [player] call GW_Common_Fnc_getSide;
	publicVariable "OKS_FRIENDLY_SIDE";
};

/* Set GOL Mission Settings */
Call Compile PreProcessFileLineNumbers "MissionSettings.sqf";
Sleep 5;

	if (GOL_BLU_AUTO_TS_CHANNEL isEqualTo 1 && isServer) then {
		execVM "Scripts\BLU_SetChannel.sqf";
	};

	if(GOL_NEKY_PARADROP isEqualTo 1 || GOL_NEKY_RESUPPLY isEqualTo 1 || GOL_NEKY_PICKUP isEqualTo 1 || GOL_OKS_SUPPORT isEqualTo 1 || GOL_NEKY_FASTROPE isEqualTo 1 || GOL_NEKY_REINSERT isEqualTo 1) then {
		if (hasInterface) then {
			_condition = {player in [wpl,wfac,w1m,w2m,epl,efac,e1m,e2m,ipl,ifac,i1m,i2m,w1a,w1a1,w1b1,wcrew1,wcrew4,e1a,e1a1,e1b1,ecrew1,ecrew4,i1a,i1a1,i1b1,icrew1,icrew4]};
     	 	_action = ["Request_Support", "Request Support","\A3\ui_f\data\map\VehicleIcons\iconCrateVeh_ca.paa", {}, _condition] call ace_interact_menu_fnc_createAction;
     		[typeOf player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;
		};
		execVM "Scripts\NEKY_Paradrop\Init.sqf";
		sleep 2;
		[] spawn NEKY_ACE_AddAction;
	};

	if(GOL_EnableHelicopterScriptToAllVehicles isEqualTo 1) then {
		[objNull,false,false] execVM "Scripts\OKS_Vehicles\OKS_Helicopter.sqf";
	};
	if(GOL_NEKY_SERVICESTATION isEqualTo 1) then {
		[] execVM "Scripts\NEKY_ServiceStation\Init.sqf";
	};
	if(GOL_NEKY_RESUPPLY isEqualTo 1) then {
		execVM "Scripts\NEKY_Supply\Ace_Resupply.sqf";
		execVM "Scripts\NEKY_Supply\Ace_Med.sqf";
	};
	if(GOL_OKS_SUPPORT isEqualTo 1) then {
		[] execVM "Scripts\OKS_Support\Init.sqf";
	};
	if(GOL_NEKY_PICKUP isEqualTo 1) then {
		execVM "Scripts\NEKY_Pickup\ACE_PickUp.sqf";
	};
	if(GOL_OKS_REINFORCEMENT isEqualTo 1) then {
		execVM "Scripts\OKS_Reinforcement\ACE_Reinforcement.sqf";
	};
	if(GOL_NEKY_FASTROPE isEqualTo 1) then {
		if(!isNil "flag_west_1" && OKS_FRIENDLY_SIDE isEqualTo west) then {
			[flag_west_1,30,NEKY_PARADROP_TRIGGER] execVM "Scripts\NEKY_PickUp\OKS_Fastrope_Insert.sqf";
		};
		if(!isNil "flag_east_1" && OKS_FRIENDLY_SIDE isEqualTo east) then {
			[flag_east_1,30,NEKY_PARADROP_TRIGGER] execVM "Scripts\NEKY_PickUp\OKS_Fastrope_Insert.sqf";
		};
		if(!isNil "flag_independent_1" && OKS_FRIENDLY_SIDE isEqualTo independent) then {
			[flag_independent_1,30,NEKY_PARADROP_TRIGGER] execVM "Scripts\NEKY_PickUp\OKS_Fastrope_Insert.sqf";
		};
	};
	if(GOL_NEKY_REINSERT isEqualTo 1) then {
		if(!isNil "flag_west_1" && OKS_FRIENDLY_SIDE isEqualTo west) then {
			[flag_west_1,30,NEKY_PARADROP_TRIGGER] execVM "Scripts\NEKY_PickUp\OKS_Reinsert.sqf";
		};
		if(!isNil "flag_east_1" && OKS_FRIENDLY_SIDE isEqualTo east) then {
			[flag_east_1,30,NEKY_PARADROP_TRIGGER] execVM "Scripts\NEKY_PickUp\OKS_Reinsert.sqf";
		};
		if(!isNil "flag_independent_1" && OKS_FRIENDLY_SIDE isEqualTo independent) then {
			[flag_independent_1,NEKY_PARADROP_TRIGGER,30] execVM "Scripts\NEKY_PickUp\OKS_Reinsert.sqf";
		};
	};
	if(GOL_NEKY_SHARE isEqualTo 1) then {
		Call Compile PreProcessFileLineNumbers "Scripts\NEKY_CombatExperience\Init.sqf";
	};
	if(GOL_NEKY_AIRDROP isEqualTo 1) then {
		[] execVM "Scripts\NEKY_AirDrop\Init.sqf";
	};
	if(GOL_NEKY_HUNT isEqualTo 1) then {
		[] execVM "Scripts\NEKY_Hunt\Init.sqf";
	};
	if(GOL_AAC_SETUP isEqualTo 1) then {
		[] execVM "Scripts\OKS_AAC\Init.sqf";
	};
	if(GOL_OKS_AMBIENCE isEqualTo 1) then {
		[] execVM "Scripts\OKS_Ambience\Init.sqf";

		/* TFAR Jammer - Object, Range & Strength Parameters
			Requires script from the folder additional scripts
			waitUntil {!isNil "TFAR_Scrambler"};
			[[JAMMER],500,50] spawn TFAR_Scrambler;
		*/
	};
	if(GOL_OKS_TANKER isEqualTo 1) then {
		[] execVM "Scripts\OKS_Vehicles\OKS_Tanker.sqf";
	};
	if(GOL_OKS_DYNAMIC isEqualTo 1) then {
		[] execVM "Scripts\OKS_Dynamic\Init.sqf";
	};
	if(GOL_NEKY_TASK isEqualTo 1) then {
		[] execVM "Scripts\NEKY_Tasks\Init.sqf";
	};
	if(isServer && GOL_NEKY_SHARE isEqualTo 1) then {
		[True,True] call NEKY_AI_ShareInfo;
	};
	if(GOL_NEKY_PARADROP isEqualTo 1) then {
		waitUntil {sleep 1; !(isNil "NEKY_ACE_AddAction") && !(isNil "OKS_FRIENDLY_SIDE")};		

		if(!isNil "flag_west_1" && OKS_FRIENDLY_SIDE isEqualTo west) then {
			[flag_west_1, "Paradrop Reinsert", " Dropsite", NEKY_PARADROP_TRIGGER, true,1400,100,false] execVM "Scripts\NEKY_Paradrop\NEKY_AddAction.sqf";
		};
		if(!isNil "flag_east_1" && OKS_FRIENDLY_SIDE isEqualTo east) then {
			[flag_east_1, "Paradrop Reinsert", " Dropsite", NEKY_PARADROP_TRIGGER, true,1400,100,false] execVM "Scripts\NEKY_Paradrop\NEKY_AddAction.sqf";
		};
		if(!isNil "flag_independent_1" && OKS_FRIENDLY_SIDE isEqualTo independent) then {
			[flag_independent_1, "Paradrop Reinsert", " Dropsite", NEKY_PARADROP_TRIGGER, true,1000,100,false] execVM "Scripts\NEKY_Paradrop\NEKY_AddAction.sqf";
		};
	};
	if(GOL_OKS_MHQ_PARADROP isEqualTo 1) then {
		OKS_MHQ_Paradrop = compile preprocessFileLineNumbers "Scripts\NEKY_Paradrop\OKS_MHQ_Paradrop.sqf";
		waitUntil {sleep 1; !(isNil "OKS_MHQ_Paradrop") && !(isNil "OKS_FRIENDLY_SIDE")};
		private _AMHQ = AMHQ_1;     /* The Air Mobile Headquarters Vehicle */
		private _Steerable = true; /* Decide if parachute should be steerable or not */
		private _Height = 200;      /* Altitude in meters where parachute is opened automatically */

		if(!isNil "flag_west_1" && OKS_FRIENDLY_SIDE isEqualTo west) then {
			[flag_west_1, _AMHQ, _Steerable, _Height] execVM "Scripts\NEKY_Paradrop\OKS_MHQ_Paradrop.sqf";
		};
		if(!isNil "flag_east_1" && OKS_FRIENDLY_SIDE isEqualTo east) then {
			[flag_east_1, _AMHQ, _Steerable, _Height] execVM "Scripts\NEKY_Paradrop\OKS_MHQ_Paradrop.sqf";
		};
		if(!isNil "flag_independent_1" && OKS_FRIENDLY_SIDE isEqualTo independent) then {
			[flag_independent_1, _AMHQ, _Steerable, _Height] execVM "Scripts\NEKY_Paradrop\OKS_MHQ_Paradrop.sqf";
		};
	};

Sleep 10;

	if(GOL_OKS_TASK isEqualTo 1) then {
		[] execVM "Scripts\OKS_TASK\Init.sqf";
		waitUntil{sleep 1; !(isNil "OKS_TASKSETUP") && !(isNil "OKS_FRIENDLY_SIDE")};
		/*	[Task_Object_1,1,GetMarkerPos "Task_1",west,O_Task] spawn OKS_TASKSETUP;	*/
	};

		/* Example of Dynamic Scripts */
		
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_CreateZone")};

			//// START OF ZONE /////
			[	Trigger_1,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					8,		// Number of Patrolling Infantry
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

			[	Trigger_2,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					0,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					25,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				0,    // Number of Wheeled on Patrol
				1,    // Number of APCs on Patrol
				1,    // Number of Tanks on Patrol
				[
					2,     // Number of Roadblocks - Preferred Game Logic Location 'FOB'"
					true,  // Should be on tarmac.
					true, // Should have dedicated patrol.
					1  	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
				],
				[
					0,     // Number of Mortars
					false  // Should have dedicated patrols around it
				],[
					0,    // Number of Random Objectives - Preferred Game Logic Location 'Camp'"
					false // Should have dedicated patrols around it
				],
				[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Preferred Game Logic Location 'Respawn Point'"
				,true      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;			
			//// END OF ZONE ////

		};


			if(isServer && GOL_OKS_AMBIENCE isEqualTo 1) then {
				waitUntil {sleep 1; !(isNil "OKS_FaceSwap")};
				[east,"middleeast"] spawn OKS_FaceSwap;
				[civilian,"middleeast"] spawn OKS_FaceSwap;
			};

			{[_X,0.5,50,true,false] spawn OKS_Surrender} forEach [officer_1,officer_2,officer_3];
		/*
		*/

/*

	direction_duststorm	- integer, from 0 to 360, direction towards the wind blows expressed in compass degrees
	duration_duststorm	- integer, life time of the duststorm expressed in seconds
	effect_on_objects	- boolean, if is true occasionally a random object near playable units will be thrown in the air
	wall_of_dust		- boolean, if true a wall of dust is created, make it false if mission is too laggy with this option
	lethal_wall			- boolean, if true the wall of dust becomes destructive, it may generate severe frame drops so use it with care !!!
	visibility			- number, as higher the number is as lower the visility and viceversa

*/
// while {true} do {
// 	//null = [120,160+(random 300),false,true,false,0.001] execvm "AL_dust_storm\al_duststorm.sqf";
// 	//sleep 1200 + (random 1200); // delay between storms, it must be longer than storm duration
// };
