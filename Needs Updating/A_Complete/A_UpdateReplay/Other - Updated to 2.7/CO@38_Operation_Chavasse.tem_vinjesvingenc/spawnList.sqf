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
	//patrols because dynamic is borked
	[[[[4588.83,4270.11,0],0,[]],[[4591.83,4267.11,0],0,[]],[[4593.83,4267.11,0],0,[]],[[4595.83,4267.11,0],0,[]],[[4597.83,4267.11,0],0,[]],[[4599.83,4267.11,0],0,[]],[[4601.83,4267.11,0],0,[]],[[4603.83,4267.11,0],0,[]]],[],[[[4746.77,4381.3,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[4916.03,4342.09,0],[[0,"Move"],[6,[0,3,6]]]],[[4867.75,4218.04,0],[[0,"Move"],[6,[0,3,6]]]],[[4713.54,4242.27,0],[[0,"Move"],[6,[0,3,6]]]],[[4516.08,4291.48,0],[[0,"Move"],[6,[0,3,6]]]],[[4546.37,4423.5,0],[[0,"Move"],[6,[0,3,6]]]],[[4702.35,4389.61,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[4658.91,4329.52,-3.05176e-05],0,[]],[[4661.91,4326.52,0],0,[]],[[4663.91,4326.52,0],0,[]],[[4665.91,4326.52,0],0,[]],[[4667.91,4326.52,0],0,[]],[[4669.91,4326.52,0],0,[]],[[4671.91,4326.52,0],0,[]],[[4673.91,4326.52,3.05176e-05],0,[]]],[],[[[4548.64,4427.91,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[4510.12,4293.86,0],[[0,"Move"],[6,[0,3,6]]]],[[4678.3,4248.89,0],[[0,"Move"],[6,[0,3,6]]]],[[4870.89,4218.66,0],[[0,"Move"],[6,[0,3,6]]]],[[4911.25,4336.55,0],[[0,"Move"],[6,[0,3,6]]]],[[4696.14,4391.18,0],[[0,"Move"],[6,[0,3,6]]]],[[4612.45,4409.61,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[4806.49,4297.63,0],0,[]],[[4809.49,4294.63,0],0,[]],[[4811.49,4294.63,-3.05176e-05],0,[]],[[4813.49,4294.63,-3.05176e-05],0,[]],[[4815.49,4294.63,0],0,[]],[[4817.49,4294.63,-3.05176e-05],0,[]],[[4819.49,4294.63,3.05176e-05],0,[]],[[4821.49,4294.63,0],0,[]]],[],[[[4923.76,4391.2,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[4952.73,4264.3,0],[[0,"Move"],[6,[0,3,6]]]],[[4871.57,4162.53,0],[[0,"Move"],[6,[0,3,6]]]],[[4741.4,4162.53,0],[[0,"Move"],[6,[0,3,6]]]],[[4660.25,4264.3,0],[[0,"Move"],[6,[0,3,6]]]],[[4689.21,4391.2,0],[[0,"Move"],[6,[0,3,6]]]],[[4806.49,4447.68,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
	[[[[3632.69,4179.27,0],320,"Up",[]],[[3628.88,4176.15,0],271,"Up",[]],[[3635.53,4169.36,3.05176e-05],197,"Up",[]],[[3643.65,4184.17,3.05176e-05],320,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[3695.99,4201.36,3.05176e-05],0,[]],[[3698.99,4198.36,3.05176e-05],0,[]],[[3700.99,4198.36,3.05176e-05],0,[]],[[3702.99,4198.36,3.05176e-05],0,[]]],[],[[[3766.27,4269.17,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[3795.23,4142.27,0],[[0,"Move"],[6,[0,3,6]]]],[[3714.07,4040.5,0],[[0,"Move"],[6,[0,3,6]]]],[[3583.91,4040.5,0],[[0,"Move"],[6,[0,3,6]]]],[[3502.75,4142.27,0],[[0,"Move"],[6,[0,3,6]]]],[[3531.72,4269.17,0],[[0,"Move"],[6,[0,3,6]]]],[[3648.99,4325.65,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
				[[truck_1,truck_2,truck_3,truck_4,truck_5],"Destroy Motorpool","Utility Trucks","Destroy utility vehicles within the northen factory","destroy",nil,true,true] spawn OKS_fnc_Destroy_Task;
				[[gun_1,gun_2,gun_3],"Destroy AT guns","Guns","Destroy static gun emplacements watching over the river","destroy",nil,true,true] spawn OKS_fnc_Destroy_Task;
				
		
	[true, "02", ["Seize and Hold <marker name='marker_6'>Floten</marker>", "Gain control over Floten", ""], objNull, "AUTOASSIGNED", 1, true, "attack", false] call BIS_fnc_taskCreate;
	[true, "03", ["Eliminate all hostile forces at <marker name='marker_5'>Observation Post Moriarty</marker>", "Capture Observation Post Moriarty", ""], objNull, "AUTOASSIGNED", 1, true, "attack", false] call BIS_fnc_taskCreate;
		
		
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_CreateZone")};

			//// START OF ZONE /////
			[	Trigger_1,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					50,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					0,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					true   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				2,    // Number of Wheeled on Patrol
				1,    // Number of APCs on Patrol
				0,    // Number of Tanks on Patrol
				[
					1,     // Number of Roadblocks - Preferred Game Logic Location 'FOB'"
					true,  // Should be on tarmac.
					true, // Should have dedicated patrol.
					1  	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
				],
				[
					0,     // Number of Mortars
					false  // Should have dedicated patrols around it
				],[
					3,    // Number of Random Objectives - Preferred Game Logic Location 'Camp'"
					false // Should have dedicated patrols around it
				],
				[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Preferred Game Logic Location 'Respawn Point'"
				,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_fnc_CreateZone;
			//// END OF ZONE ////

		};
	};

	case 2: {
	//QRF for OP when players reach it
	[[[[3918.63,4040.16,0],0,[]],[[3921.63,4037.16,0],0,[]],[[3923.63,4037.16,6.10352e-05],0,[]],[[3925.63,4037.16,0],0,[]],[[3927.63,4037.16,0],0,[]],[[3929.63,4037.16,0],0,[]],[[3931.63,4037.16,-3.05176e-05],0,[]],[[3933.63,4037.16,0],0,[]]],[],[[[3653.7,4178.11,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[3695.25,3820.44,0],0,[]],[[3698.25,3817.44,-3.05176e-05],0,[]],[[3700.25,3817.44,0],0,[]],[[3702.25,3817.44,0],0,[]],[[3704.25,3817.44,0],0,[]],[[3706.25,3817.44,0],0,[]],[[3708.25,3817.44,0],0,[]],[[3710.25,3817.44,0],0,[]]],[],[[[3649.41,4179.69,-3.05176e-05],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	[[],[["UK3CB_CW_SOV_O_EARLY_Mi8AMTSh",[3782.09,1700.61,2.38419e-07],0,[["driver",-1,[]],["turret",-1,[0]],["turret",-1,[1]],["turret",-1,[2]],["turret",-1,[3]]],[[6,["SOV",1]],[7,["intake_hide",1,"exhaust_hide",1,"HIDE_weapon_holders",0,"bench_hide",0,"HIDE_winch",0,"HIDE_front_armor",0]],[8,["rhs_mag_b8v20a_s8kom","rhs_mag_b8v20a_s8kom","rhs_mag_b8v20a_s8df","rhs_mag_b8v20a_s8df","rhs_mag_b8v20a_s8kom","rhs_mag_b8v20a_s8kom","rhs_ASO2_CMFlare_Chaff_Magazine_x4",""]]]]],[[[3671.24,4129.31,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {
	//hunt base when players reach town
	[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,east,["UK3CB_CW_SOV_O_EARLY_VDV_Zil131_Covered"],30] spawn OKS_fnc_Huntbase;
	[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,east,["UK3CB_CW_SOV_O_EARLY_VDV_Zil131_Covered"],30] spawn OKS_fnc_Huntbase;
	};

	case 4: {
	//Spawns factory units
	[[[[4900.51,4475.05,-3.05176e-05],0,[]],[[4903.51,4472.05,0],0,[]],[[4905.51,4472.05,0],0,[]],[[4907.51,4472.05,3.05176e-05],0,[]],[[4909.51,4472.05,-3.05176e-05],0,[]],[[4911.51,4472.05,0],0,[]],[[4913.51,4472.05,-3.05176e-05],0,[]],[[4915.51,4472.05,-3.05176e-05],0,[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[4932.96,4453.04,12.5981],273,"Middle",[]],[[4934.27,4462.06,12.5981],273,"Middle",[]],[[4935.94,4481.72,11.2616],310,"Middle",[]],[[4938.57,4447.6,25.179],273,"Down",[]],[[4937.84,4455.31,25.8315],273,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[4935.57,4511.93,3.39102],284,"Auto",[]],[[4935.78,4514.39,3.39023],284,"Auto",[]],[[4935.65,4515.5,0.269592],284,"Auto",[]],[[4943.47,4513.13,0.269592],99,"Auto",[]],[[4939.62,4512.96,0.269592],308,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[4919.64,4516.15,0.195618],85,"Auto",[]],[[4915.06,4516.55,0.186829],85,"Auto",[]],[[4916.92,4510.76,0.180267],281,"Auto",[]],[[4914.27,4512.97,0.186829],85,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[4874.06,4501.99,0.477539],92,"Up",[]],[[4874.51,4504.39,0.477539],102,"Up",[]],[[4876.44,4508.86,0.477539],120,"Down",[]],[[4890.38,4494.3,0.486511],358,"Down",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	[[[[4850.49,4466.63,6.58017],281,"Auto",[]],[[4851.3,4462.43,6.58017],203,"Middle",[]],[[4858.72,4460.1,6.58017],166,"Down",[]],[[4861.64,4463.51,6.58017],116,"Down",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 5: {
	//Start of arty tasking for AAC. Will target team leaders until destroyed
	"marker_10" setMarkerAlpha 1;
	"marker_11" setMarkerAlpha 1;
	[true, "01", ["Prevent the guns from wiping out friendly ground call signs", "Silence Guns", ""], objNull, "CREATED", 1, false, "destroy", false] call BIS_fnc_taskCreate;
	[livearty_1,[getPos w1a1,getPos w1b1,getPos w1a],east,2,20,true,true,120,true] spawn OKS_fnc_ArtySuppression;
	};

	case 6: {
	//Convoy start
	[spawn_3,spawn_4,spawn_5,east,[4,["UK3CB_CW_SOV_O_EARLY_Gaz66_ZU23", 
"UK3CB_CW_SOV_O_EARLY_VDV_Ural", 
"UK3CB_CW_SOV_O_EARLY_BMP1"], 6, 25],[false,6],[], false, true] spawn OKS_fnc_Convoy_Spawn;
	};
	
	case 7: {
	[[[[5746.99,1264.61,0],0,[]],[[5749.99,1261.61,0],0,[]],[[5751.99,1261.61,0],0,[]],[[5753.99,1261.61,0],0,[]],[[5755.99,1261.61,0],0,[]],[[5757.99,1261.61,0],0,[]],[[5759.99,1261.61,2.38419e-07],0,[]],[[5761.99,1261.61,-2.38419e-07],0,[]]],[],[[[5864.26,1358.19,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[5893.23,1231.29,0],[[0,"Move"],[6,[0,3,6]]]],[[5805.74,1172.58,0],[[0,"Move"],[6,[0,3,6]]]],[[5681.9,1129.52,0],[[0,"Move"],[6,[0,3,6]]]],[[5600.75,1231.29,0],[[0,"Move"],[6,[0,3,6]]]],[[5629.71,1358.19,0],[[0,"Move"],[6,[0,3,6]]]],[[5746.99,1414.67,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[5614.22,1238.67,-2.38419e-07],0,[]],[[5617.22,1235.67,0],0,[]],[[5619.22,1235.67,0],0,[]],[[5621.22,1235.67,0],0,[]],[[5623.22,1235.67,0],0,[]],[[5625.22,1235.67,0],0,[]],[[5627.22,1235.67,2.38419e-07],0,[]],[[5629.22,1235.67,0],0,[]]],[],[[[5731.5,1332.24,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[5760.46,1205.34,0],[[0,"Move"],[6,[0,3,6]]]],[[5669.12,1128.78,0],[[0,"Move"],[6,[0,3,6]]]],[[5549.14,1103.58,0],[[0,"Move"],[6,[0,3,6]]]],[[5467.98,1205.34,0],[[0,"Move"],[6,[0,3,6]]]],[[5496.95,1332.24,0],[[0,"Move"],[6,[0,3,6]]]],[[5614.22,1388.72,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[[[[5588.78,1366.1,0],0,[]],[[5591.78,1363.1,0],0,[]],[[5593.78,1363.1,0],0,[]],[[5595.78,1363.1,0],0,[]],[[5597.78,1363.1,-2.38419e-07],0,[]],[[5599.78,1363.1,0],0,[]],[[5601.78,1363.1,0],0,[]],[[5603.78,1363.1,-2.38419e-07],0,[]]],[],[[[5706.06,1459.67,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[5735.02,1332.77,0],[[0,"Move"],[6,[0,3,6]]]],[[5653.86,1231,0],[[0,"Move"],[6,[0,3,6]]]],[[5523.7,1231,0],[[0,"Move"],[6,[0,3,6]]]],[[5442.54,1332.77,0],[[0,"Move"],[6,[0,3,6]]]],[[5471.51,1459.67,0],[[0,"Move"],[6,[0,3,6]]]],[[5588.78,1516.15,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	[["UK3CB_CW_SOV_O_EARLY_Mi8AMT",[5290.9,1370.32,6.57546],[[0,0,8.55944],[0,0,8.55944]],[[6,["SOV_2",1]],[7,["intake_hide",1,"reardoors_hide",0,"bench_hide",0,"RearDoors",0]],[8,["rhs_ASO2_CMFlare_Chaff_Magazine_x6",""]]],false]] call GW_Common_fnc_spawnObjects;
	[["UK3CB_CW_SOV_O_EARLY_VDV_Ural",[5597.82,1221.96,4.09882],[[-2.65903,1.20608,166.933],[357.138,0.572666,166.946]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]],false]] call GW_Common_fnc_spawnObjects;
	[["UK3CB_CW_SOV_O_EARLY_VDV_Ural",[5581.23,1230.91,4.75557],[[-0.484804,3.5965,100.683],[356.376,0.190774,100.692]],[[6,["SOV",1]],[7,["light_hide",0,"spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1]]],false]] call GW_Common_fnc_spawnObjects;
				//// START OF ZONE /////
			[	Trigger_2,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					25,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					0,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					true   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				2,    // Number of Wheeled on Patrol
				2,    // Number of APCs on Patrol
				0,    // Number of Tanks on Patrol
				[
					0,     // Number of Roadblocks - Preferred Game Logic Location 'FOB'"
					true,  // Should be on tarmac.
					true, // Should have dedicated patrol.
					1  	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
				],
				[
					0,     // Number of Mortars
					false  // Should have dedicated patrols around it
				],[
					4,    // Number of Random Objectives - Preferred Game Logic Location 'Camp'"
					true // Should have dedicated patrols around it
				],
				[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Preferred Game Logic Location 'Respawn Point'"
				,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_fnc_CreateZone;
			//// END OF ZONE ////
	};
	
	case 8: {
	[spawn_6,"rush",20,east,500,["UK3CB_CW_SOV_O_EARLY_SL", 
"UK3CB_CW_SOV_O_EARLY_TL", 
"UK3CB_CW_SOV_O_EARLY_MD", 
"UK3CB_CW_SOV_O_EARLY_RIF_1", 
"UK3CB_CW_SOV_O_EARLY_LAT", 
"UK3CB_CW_SOV_O_EARLY_ENG", 
"UK3CB_CW_SOV_O_EARLY_DEM"]] spawn OKS_fnc_Lambs_SpawnGroup;
[[],[["UK3CB_CW_SOV_O_EARLY_BRDM2",[6117.07,1593.52,0],273,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["SOV",1]]]]],[[[5390.02,1720.32,0],[[0,"Move"]]],[[5672.2,1311.34,-1.90735e-06],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
[[],[["UK3CB_CW_SOV_O_EARLY_BRDM2",[3005.88,2691.01,0],146,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["SOV",1]]]]],[[[5498.79,1108.16,-2.38419e-07],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*
	GOL SCRIPT EXAMPLES

	=======================================

	OKS_fnc_CreateObjectives - Creates an objective based on OKS_Dynamic settings with task creation/completion.

	[Object_1,"sector",300,EAST,false,false,false] execVM "Scripts\OKS_Dynamic\OKS_fnc_CreateObjectives.sqf";
	[Object_1,"sector",300,EAST,false,false,false] spawn OKS_fnc_CreateObjectives;

	Params: Position, Type, Range, Side, Patrols?, PlaceObjects?, OverrideTaskNotification?

	Types Available:
	sector (Clear an area)
	neutralize (Clear a building)
	cache (destroy weapons cache)
	motorpool (destroy supply vehicle)
	ammotruck (destroy a patrolling supply vehicle)
	radiotower (destroy a radiotower - decreases hunt response/respawn delay)
	hvttruck (destroy a patrolling vehicle with an HVT)
	artillery (destroy an active artillery piece)
	antiair (destroy an active anti-air position)
	hostage (secure a building with hostiles & two hostages)

    =======================================

	OKS_fnc_Ambient_AAA

	Setup a scripted AAA that fires randomly into the air until it finds a target and locks on. It has less accuracy than standard AAA positions for balance.

	Code:
	[aaa_1,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;

	Params:
	AAA Object, side of crew, Is an HMG, Range of AAA, Should be assisted by nearby radar

    =======================================

	OKS_fnc_ArtyFire

	Setup an artillery to fire into the sky until destroyed. Take note that it is supposed to delete the rounds from landing to save performance.
	This might fail, so make sure the target is not near friendly positions or bases.

	Code:
	[east,arty_1,getpos ArtyTarget_1,7,300,180,false] spawn OKS_fnc_ArtyFire;

	Params:
	Side of Crew, Artillery Object, Artillery Target, Rounds per Salvo, Rearm Delay, Reload Delay, Should give full crew.

    =======================================

	OKS_fnc_ArtySuppression

	Setup an active artillery barrage on specified targets until destroyed.

	Code:
	[livearty_1,[getPos ArtySuppress_1,getPos ArtySuppress_2,getPos ArtySuppress_3],east,1,1,true,true,300,true] spawn OKS_fnc_ArtySuppression;

	Params:
	Artillery Object, Array with Target positions, Side of Crew, Rounds per target, Delay per target, Unlimited Ammo, Should Loop until Destroyed, Delay per Salvo, Mark with Red Smoke on Target.

	=======================================

	OKS_fnc_Destroy_Task

	Setup a destroy/kill objective on a target.

	Code:
	[officer_1,"Kill the Officer","Enemy Officer","You need to kill this %1 because it needs to happen","kill",nil,true,true] spawn OKS_fnc_Destroy_Task;

	Params:
	Target Object, Task Title, Target Type, Task Description, Task Icon, Task Parent, Should Mark Position on Map, Should Show Popup when created/completed

	=======================================

	OKS_fnc_Evacuate_HVT

	Setup a HVT Capture Objective. The last variable sets true/false if they target should be set to captive (tied hands). False for enemy officers, true for friendly captives.

	Code:
	[Group HVT_1,getMarkerPos "respawn_west",west,false,nil,true] spawn OKS_fnc_Evacuate_HVT;

	Params:
	Group of HVT, Exfil Position (Either pickup (Extract On) or dropoff (Extract off)), Side of Extract Helicopter, Should Send AI Helicopter Evac, Parent Task, Is Captive

	=======================================

	OKS_fnc_Destroy_Barricade

	Setup Barricade Objective. Objective to destroy objects lined up as a blockade on a road. Make sure the object is destructible by testing it.

	Code:
	[[barricade_1,barricade_2]] spawn OKS_fnc_Destroy_Barricade;

	Params:
	Array with Barricade Objects

	=======================================

	OKS_fnc_Convoy_Spawn

	Spawn a convoy that moves until engaged, they will dismount, armed vehicles will hunt and dismounts will rush.

	Code:
	[spawn_1,waypoint_1,end_1,west,[4,["rhs_btr60_msv"], 6, 25],[true,6],[], false, false] spawn OKS_fnc_Convoy_Spawn;

	Params:
	Spawn Position, First Waypoint, End Waypoint (Scattered formation), Side of Convoy, Convoy Array [](Number, [TypeArray]), Speed meters/second, dispersion]
	Dismount Array (Should have dismount, how many), ConvoyArray to populate variable, forced careless (ignore everything), delete on arrival.

	=======================================

	OKS_fnc_Lambs_SpawnGroup

	Spawns a team that either creep/rush/hunt based on LAMBS. Used for quick and intense counter-attacks by enemy infantry.

	Code:
	[SpawnPos,"rush",UnitsPerBase,Side,Range,[]] spawn OKS_fnc_Lambs_SpawnGroup;

	Params:
	Position, Type of Waypoint (rush,creep,hunt), Units to spawn, Side of units, Range of waypoint (around the spawn), unit array that gets populated with the units.


	=======================================

	OKS_fnc_Defuse_Explosive

	Creates a defuse explosive objective with 600 (10 minutes) seconds to complete on the "SatchelCharge" object with the name bomb_1.
	This can be replaced with a position to create an explosive on the position using getPos bomb_1.

	Code:
	[bomb_1,600] spawn OKS_fnc_Defuse_Explosive;

	Params:
	[bomb_1,600,bombtarget_1,"BombDetonated","BombDefused"] spawn OKS_fnc_Defuse_Explosive;
	Bomb Object or Position, Time Delay (Seconds), Target Object (Destroyed upon detonation), VariableName to set to true if failed, VariableName to set to true if succeeded.

	=======================================

	OKS_fnc_PowerGenerator

	Sets up a generator to be disabled by action to turn off light sources in the area around it. 

	Code:
	[Generator_1,true,true,1000] spawn OKS_fnc_PowerGenerator;

	Params:
	Generator Object, Should Add Action to disable, Turn Off Lights when disabled, Range of disabled lights from Generator
	
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


