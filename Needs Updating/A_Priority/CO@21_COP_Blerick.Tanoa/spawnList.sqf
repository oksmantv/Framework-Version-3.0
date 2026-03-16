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
	[east,"african"] spawn OKS_FaceSwap;
};


params [
	"_case"
];

switch (_case) do {

	case 1: {

		Probe_1 = false;
		Probe_2 = false;

		// Probe Attack West
		["hq","side","Incoming attack from the West! Deploy and fend off the attackers! ETA 1 minute!"] remoteExec ["OKS_Chat",0];
		[true, ["defend_1","main_task"], ["You have been tasked with defending the friendly artillery in COP Blerick. Repel the attackers on the western flank!", "Defend West", "Defend"], nil, "ASSIGNED", 2, true,"defend"] call BIS_fnc_taskCreate;
		sleep 80;

		[[attack_1,attack_2,attack_3,attack_4,attack_5],4,1,1,east,1500,"Probe_1"] spawn OKS_Rush_Wavespawn;
		waitUntil{sleep 5; Probe_1;};

		["defend_1","SUCCEEDED",true] call BIS_fnc_taskSetState;
		sleep 10;

		[true, ["defend_2","main_task"], ["You have been tasked with defending the friendly artillery in COP Blerick. Repel the attackers on the southern flank!", "Defend South", "Defend"], nil, "ASSIGNED", 2, true,"defend"] call BIS_fnc_taskCreate;
		["hq","side","Another attack is inbound from the South. Redeploy and defend the southern flank!"] remoteExec ["OKS_Chat",0];
		sleep 120;

		_ConvoyGroups = [];
		[convoy_1,convoy_2,convoy_3,east,[5,["UK3CB_ADM_O_Datsun_Pkm", "UK3CB_ADM_O_Pickup_DSHKM", "UK3CB_ADM_O_Datsun_Open"], 6, 20],[true,6],_ConvoyGroups, false, false] spawn OKS_Convoy_Spawn;
		sleep 120;

		[[attack_12,attack_13],8,1,1,east,1500,"Probe_2"] spawn OKS_Rush_Wavespawn;
		waitUntil{sleep 5; Probe_2 && {{Alive _X || [_X] call ace_common_fnc_isAwake} count units _X == 0} count _ConvoyGroups == count _ConvoyGroups};
		
		["defend_2","SUCCEEDED",true] call BIS_fnc_taskSetState;
		PHASE_1 = true;
		publicVariable "PHASE_1";
	};

	case 2: {

		_VehicleUnits = [];
		Probe_3 = false;

		// Probe East
		["hq","side","Incoming attack from the East! Redeploy and fend them off!"] remoteExec ["OKS_Chat",0];
		[true, ["defend_3","main_task"], ["You have been tasked with defending the friendly artillery in COP Blerick. Repel the attackers on the eastern flank!", "Defend East", "Defend"], nil, "ASSIGNED", 2, true,"defend"] call BIS_fnc_taskCreate;
		sleep 80;

		[[attack_6,attack_7,attack_8,attack_9,attack_10,attack_11],3,1,1,east,1500,"Probe_3"] spawn OKS_Rush_Wavespawn;

		_Group1 = [[],[["UK3CB_ARD_O_BTR60",[11007.2,2889.04,3.43323e-005],265,[["driver",-1,[]],["gunner",-1,[0]]],[[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_l4_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",1,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",1]]]]],[[[10608,2742.38,-0.000112534],[[0,"Move"]]],[[10463.2,2746.76,-5.10216e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		{_VehicleUnits pushBackUnique _X} foreach units _Group1;

		_Group2 = [[],[["UK3CB_ARD_O_BTR40_MG",[11183.1,2874.29,0.000257492],266,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["ARD",1]],[7,["Beacons_Hide",1,"Hull_Flag_Hide",1]]]]],[[[10617,2745.08,-2.28882e-005],[[0,"Move"]]],[[10485.8,2740.14,-5.43594e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		{_VehicleUnits pushBackUnique _X} foreach units _Group2;
		waitUntil{sleep 5; Probe_3 && {Alive _X || [_X] call ace_common_fnc_isAwake} count _VehicleUnits == 0};
		["defend_3","SUCCEEDED",true] call BIS_fnc_taskSetState;

		sleep 10;
		"mortar_marker" setMarkerAlpha 1;
		["hq","side","Be advised! An enemy mortar team has deployed somewhere to the south. Find and neutralize them before they level the COP!"] remoteExec ["OKS_Chat",0];
		[true, ["defend_4","main_task"], ["An enemy mortar is shelling our positions. Hunt the mortar and destroy the tubes.", "Hunt Mortar", "Hunt"], nil, "ASSIGNED", 2, true,"attack"] call BIS_fnc_taskCreate;


		// Mortar South
		// Static
		[[[[10607.2,2287.16,2.28882e-005],353,"Auto",[]],[[10603.9,2284.13,2.28882e-005],301,"Auto",[]],[[10610.8,2288.95,2.28882e-005],329,"Auto",[]],[[10615.2,2287.75,0],31,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols
		[[[[10679.3,2245.36,3.8147e-006],0,[]],[[10684.3,2240.36,0],0,[]],[[10674.3,2240.36,0],0,[]],[[10689.3,2235.36,0],0,[]]],[],[[[10601.2,2213.39,-0.000469208],[[0,"Move"]]],[[10620.4,2174.23,-0.000263214],[[0,"Move"]]],[[10692.2,2198.34,-0.00018692],[[0,"Move"]]],[[10694.4,2232.87,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10703.7,2303.12,7.62939e-006],68,[]],[[10700.9,2296.6,0],68,[]],[[10697.1,2305.85,0],68,[]],[[10698.2,2290.07,1.09624],68,[]]],[],[[[10644.5,2363.34,0],[[0,"Move"]]],[[10615.5,2330.76,0],[[0,"Move"]]],[[10665,2273.44,0],[[0,"Move"]]],[[10697.8,2284.48,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10607.7,2354.84,7.62939e-006],51,[]],[[10607,2347.8,-7.62939e-006],51,[]],[[10600.7,2355.53,-3.8147e-006],51,[]],[[10606.3,2340.76,1.09624],51,[]]],[],[[[10533.4,2394.93,0],[[0,"Move"]]],[[10515.3,2355.26,-3.8147e-006],[[0,"Move"]]],[[10579.5,2315.08,0],[[0,"Move"]]],[[10607.6,2335.3,-3.8147e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10561.9,2248.46,0],87,[]],[[10557.2,2243.19,0],87,[]],[[10556.7,2253.17,0],87,[]],[[10552.5,2237.91,1.09623],87,[]]],[],[[[10525.6,2324.69,0],[[0,"Move"]]],[[10487.6,2303.34,0],[[0,"Move"]]],[[10515.7,2233.01,0],[[0,"Move"]]],[[10550.3,2232.76,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[10560.6,2136.82,7.62939e-006],153,[]],[[10553.9,2138.99,0],153,[]],[[10562.8,2143.55,0],153,[]],[[10547.1,2141.16,1.09624],153,[]]],[],[[[10615.6,2200.88,0],[[0,"Move"]]],[[10580.7,2227.01,0],[[0,"Move"]]],[[10527.8,2172.84,0],[[0,"Move"]]],[[10541.5,2141.09,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		[mortar_1,[getPos mortartarget_1,getPos mortartarget_2,getPos mortartarget_3,getPos mortartarget_4],east,2,5,true,true,60,true] spawn OKS_ArtySupression;
		[mortar_2,[getPos mortartarget_5,getPos mortartarget_6,getPos mortartarget_7,getPos mortartarget_8],east,2,5,true,true,60,true] spawn OKS_ArtySupression;
		waitUntil {sleep 5; {Alive _X || getDammage _X < 0.5} count [mortar_1,mortar_2] == 0};
		["defend_4","SUCCEEDED",true] call BIS_fnc_taskSetState;
		sleep 10;

		_VehicleUnits2 = [];

		["hq","side","The enemy is massing to the west, we have reports of vehicles and infantry staging for an attack. ETA 5 minutes, repel the attackers!"] remoteExec ["OKS_Chat",0];
		[true, ["defend_5","main_task"], ["A large enemy force is staging to attack the western flank. Repel the attackers!", "Defend West", "Hunt"], nil, "ASSIGNED", 2, true,"attack"] call BIS_fnc_taskCreate;
		sleep 300;
		[[attack_1,attack_2,attack_3,attack_4,attack_5],4,1,1,east,1500,"Probe_4"] spawn OKS_Rush_Wavespawn;

		_Group3 = [[],[["UK3CB_CW_SOV_O_EARLY_T80B",[9867.69,2645.72,-3.69549e-006],145,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[7,["kshield_unhide",1,"kdeck_unhide",1,"sideskirt_unhide",0,"fbskirt_unhide",1,"ftskirt_unhide",0,"log_unhide",0,"snorkel_unhide",0]]]]],[[[10124.7,2630.18,-8.4877e-005],[[0,"Move"]]],[[10197.9,2668.63,1.28746e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		{_VehicleUnits2 pushBackUnique _X} foreach units _Group3;

		_Group4 = [[],[["rhs_bmp2e_msv",[9784.13,2712.74,-7.67708e-005],105,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["konkurs_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",0,"wood_1_unhide",1]]]]],[[[10118.8,2625.47,-9.53674e-006],[[0,"Move"]]],[[10200.7,2644.02,-0.00013113],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		{_VehicleUnits2 pushBackUnique _X} foreach units _Group4;
		waitUntil{sleep 5; Probe_4 && {Alive _X || [_X] call ace_common_fnc_isAwake} count _VehicleUnits2 == 0};
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
