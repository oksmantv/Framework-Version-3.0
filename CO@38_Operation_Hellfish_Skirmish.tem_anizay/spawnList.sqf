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



#include "\OKS_GOL_Misc\script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};

params [
	"_case"
];

private _spawnMultiplier = ["MissionIntensity", 0.6] call BIS_fnc_getParamValue;
private _firstVehicles = [
	"UK3CB_TKM_O_MTLB_BMP", 
	"UK3CB_TKM_O_MTLB_BMP", 
	"UK3CB_TKM_O_MTLB_BMP", 
	"UK3CB_TKM_O_MTLB_BMP", 
	"UK3CB_TKM_O_BTR40_ZU23", 
	"UK3CB_TKM_O_Hilux_Spg9", 
	"UK3CB_TKM_O_LandRover_Opentop_SPG9", 
	"UK3CB_TKM_O_UAZ_SPG9", 
	"UK3CB_TKM_O_UAZ_Dshkm", 
	"UK3CB_TKM_O_LandRover_Opentop_M2"
];
private _secondVehicles = [
	"UK3CB_TKA_O_BTR40_ZU23", 
	"UK3CB_TKA_O_BMP1", 
	"UK3CB_TKA_O_BMP1", 
	"UK3CB_TKA_O_BMP1", 
	"UK3CB_TKA_O_BMP1", 
	"UK3CB_TKA_O_BMP1", 
	"UK3CB_TKA_O_BMP1", 
	"UK3CB_TKA_O_BMP2", 
	"UK3CB_TKA_O_BTR90", 
	"UK3CB_TKA_O_MTLB_BMP", 
	"UK3CB_TKA_O_T34", 
	"UK3CB_TKA_O_GAZ_Vodnik_Cannon"
];

switch (_case) do {

	case 1: {

		// Phase 1
		_StaticCount = round (50 * _spawnMultiplier);
		_PatrolCount = round (40 * _spawnMultiplier);
		_ApcCount = round (5 * _spawnMultiplier);
		_MortarCount = 1;
		_RespawnDelay = 400;
		if(_spawnMultiplier < 0.9) then {
			_MortarCount = 0;
			_RespawnDelay = 600;
		};
		if(_spawnMultiplier < 0.4) then {
			_RespawnDelay = 900;
		};

		[ Trigger_1, false, [_StaticCount,_PatrolCount,false,true], east, 0, _ApcCount, 0, [0,true,false,0], [0,false], [_MortarCount,true], [0,0,0,0,0], false ] spawn OKS_fnc_CreateZone;

		/// AAA MGs.
		[[],[
			["UK3CB_TKM_O_KORD_high",[2416.72,5022.54,0],288,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[2407.5,5011.22,0],22,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[2342.3,5490.06,2.97803],109,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[3024,6055.25,0],156,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[3028.83,6049.07,0],229,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[3166.68,5823.1,2.92998],170,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[3468.92,6362.68,2.93115],355,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[3463.67,6578.34,3.02403],295,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[3284.26,6848.17,3.02164],174,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[3287.23,6848.45,3.0282],149,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[3425.53,7047.56,2.64697],261,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[3422.72,7042.38,3.12366],240,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[1989.3,7034.36,2.91231],174,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[2202.58,7086.06,3.64273],174,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[2467.23,7154.95,2.66725],174,[["gunner",-1,[0]]],[[351,false]]],
			["UK3CB_TKM_O_KORD_high",[2620.88,7255.85,3.63435],276,[["gunner",-1,[0]]],[[351,false]]]
		],[],east] call GW_Common_fnc_spawnGroup;


		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, round (15 * _spawnMultiplier), _RespawnDelay, east, _firstVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, round (15 * _spawnMultiplier), _RespawnDelay, east, _firstVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_1, round (15 * _spawnMultiplier), _RespawnDelay, east, _firstVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_7, Spawn_7, NEKY_Hunt_Trigger_1, round (15 * _spawnMultiplier), _RespawnDelay, east, _firstVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_9, Spawn_9, NEKY_Hunt_Trigger_1, round (15 * _spawnMultiplier), _RespawnDelay, east, _firstVehicles, 240] spawn OKS_fnc_HuntBase;
		{
			[getpos _X, "ambushrush", round(6 * _spawnMultiplier), independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [
			LambsGroupSpawn_1, LambsGroupSpawn_2, LambsGroupSpawn_3, LambsGroupSpawn_4, LambsGroupSpawn_5, LambsGroupSpawn_6, LambsGroupSpawn_7, LambsGroupSpawn_8
		];	
	};

	case 2: {

		// Phase 2
		_StaticCount = round (60 * _spawnMultiplier);
		_PatrolCount = round (60 * _spawnMultiplier);
		_ApcCount = round (7 * _spawnMultiplier);
		_MortarCount = 1;
		_RespawnDelay = 400;
		if(_spawnMultiplier < 0.9) then {
			_MortarCount = 0;
			_RespawnDelay = 600;
		};
		if(_spawnMultiplier < 0.4) then {
			_RespawnDelay = 900;
		};

		[ Trigger_2, false, [_StaticCount,_PatrolCount,false,true], east, 0, _ApcCount, 0, [0,true,false,0], [0,false], [_MortarCount,true], [0,0,0,0,0], false ] spawn OKS_fnc_CreateZone;

		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_2, round (15 * _spawnMultiplier), _RespawnDelay, east, _secondVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_2, round (15 * _spawnMultiplier), _RespawnDelay, east, _secondVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_2, round (15 * _spawnMultiplier), _RespawnDelay, east, _secondVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_8, Spawn_8, NEKY_Hunt_Trigger_2, round (15 * _spawnMultiplier), _RespawnDelay, east, _secondVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_10, Spawn_10, NEKY_Hunt_Trigger_2, round (15 * _spawnMultiplier), _RespawnDelay, east, _secondVehicles, 240] spawn OKS_fnc_HuntBase;
		[Spawn_11, Spawn_11, NEKY_Hunt_Trigger_2, round (15 * _spawnMultiplier), _RespawnDelay, east, _secondVehicles, 240] spawn OKS_fnc_HuntBase;

		{
			[getpos _X, "ambushrush", round(6 * _spawnMultiplier), independent, 300] spawn OKS_fnc_Lambs_SpawnGroup;
		} foreach [
			LambsGroupSpawn_10, LambsGroupSpawn_11, LambsGroupSpawn_12, LambsGroupSpawn_13, LambsGroupSpawn_14, LambsGroupSpawn_9
		];	

	};

	case 3: {
		
		// Clean Up Hunt Bases
		{
			_X enableSimulation true;
			_X setCaptive false;
		} foreach units (group FriendlySquad);
		{
			deleteVehicle _X
		} foreach [Spawn_1, Spawn_2, Spawn_3, Spawn_4, Spawn_5, Spawn_6, Spawn_7, Spawn_8, Spawn_9, Spawn_10, Spawn_11];

		// Counter-Attack
		[getPos LambsGroupSpawn_15, "hunt", round(6 * _spawnMultiplier), east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 3;
		[getPos LambsGroupSpawn_16, "hunt", round(6 * _spawnMultiplier), east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 3;
		[getPos LambsGroupSpawn_17, "hunt", round(6 * _spawnMultiplier), east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 3;
		[getPos LambsGroupSpawn_18, "hunt", round(6 * _spawnMultiplier), east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 3;
		[getPos LambsGroupSpawn_19, "hunt", round(6 * _spawnMultiplier), east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 3;
		[getPos LambsGroupSpawn_20, "hunt", round(6 * _spawnMultiplier), east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup; sleep 3; 

		[ConvoySpawn_1,ConvoyWP_1,ConvoyEnd_1,east,[round(6 * _spawnMultiplier),["UK3CB_TKA_O_BMP1","UK3CB_TKA_O_BMP1","UK3CB_TKA_O_GAZ_Vodnik","UK3CB_TKA_O_GAZ_Vodnik"],35,35],[true,round(6 * _spawnMultiplier)],[],false,false,["rush"],false] spawn OKS_fnc_Convoy_Spawn; sleep 15;
		[ConvoySpawn_2,ConvoyWP_2,ConvoyEnd_2,east,[round(6 * _spawnMultiplier),["UK3CB_TKA_O_BMP1","UK3CB_TKA_O_BMP1","UK3CB_TKA_O_GAZ_Vodnik","UK3CB_TKA_O_GAZ_Vodnik"],35,35],[true,round(6 * _spawnMultiplier)],[],false,false,["rush"],false] spawn OKS_fnc_Convoy_Spawn;
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
	GOL SCRIPT EXAMPLES:
	Link to README: https://github.com/oksmantv/Guerrillas-of-Liberations-Misc-Addon?tab=readme-ov-file#readme 
*/ 
