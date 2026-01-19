// [BermTrigger_1,BermSpawn_1_Course_1] execVM "Training\BermSpawnTargets.sqf";

if(!isServer) exitWith {};

Params ["_StartingTrigger","_SpawnTrigger"];
Private ["_EnemyVehicle"];

_SpawnTrigger setVariable ["SpawnActivated",true,true];
_Targets = _StartingTrigger getVariable ["VehicleTargets",[]];
_Crew = _SpawnTrigger getVariable ["CurrentActiveCrew",[]];

_Target = selectRandom _Targets;
_Targets deleteAt (_Targets find _Target);
_StartingTrigger setVariable ["VehicleTargets",_Targets,true];

_VehicleClasses = [
	"UK3CB_ARD_O_BRDM2", 
	"UK3CB_ARD_O_GAZ_Vodnik_KVPT", 
	"UK3CB_ARD_O_Hilux_Dshkm", 
	"UK3CB_ARD_O_Hilux_Pkm", 
	"UK3CB_ARD_O_BTR40_MG", 
	"UK3CB_ARD_O_BTR80", 
	"UK3CB_ARD_O_MTLB_KPVT",
	"infantry",
	"infantry",
	"infantry",
	"infantry",
	"infantry",
	"infantry"
];
_InfantryClasses = [
	"O_Soldier_F",
	"O_Soldier_A_F", 
	"O_Soldier_AR_F", 
	"O_medic_F", 
	"O_Soldier_GL_F", 
	"O_HeavyGunner_F", 
	"O_soldier_M_F"
];

_Classname = selectRandom _VehicleClasses;
_Group = grpNull;
if(_Classname == "infantry") then {
	_Group = [getPos _Target,4,15,EAST,_InfantryClasses,false] call OKS_Patrol_Spawn;
	{
		[_X,"UP"] remoteExec ["setUnitPos",0];
		_X addMPEventHandler ["MPKilled", {
			params ["_unit", "_killer"];
			[_unit] execVM "Training\AI_Death.sqf"
		}];
	} foreach units _Group;

	_PlayerVehicle = vehicle (_Crew);
	_InvisibleTarget = (attachedObjects _PlayerVehicle select {typeOf _X == "CBA_B_InvisibleTarget"}) select 0;	
	_Group reveal [_InvisibleTarget,4];

	systemChat str _InvisibleTarget;
	{
		_X doFire _InvisibleTarget;
	} foreach units _Group;

} else {
	_EnemyVehicle = createVehicle [_Classname, getPos _Target, [], 0, "NONE"];
	_EnemyVehicle setDir (getDir _Target);
	[_EnemyVehicle,east,2] call OKS_AddVehicleCrew;
	waitUntil {sleep 0.1; count (crew _EnemyVehicle) > 0};
	_Group = group (crew _EnemyVehicle select 0);
	_EnemyVehicle addMPEventHandler ["MPKilled", {
		params ["_unit", "_killer"];
		[_unit] execVM "Training\AI_Death.sqf";
	}];
	_PlayerVehicle = vehicle (_Crew);
	_InvisibleTarget = (attachedObjects _PlayerVehicle select {typeOf _X == "CBA_B_InvisibleTarget"}) select 0;	
	_EnemyVehicle reveal [_InvisibleTarget,4];
	_EnemyVehicle doFire _InvisibleTarget;


	waitUntil { sleep 1; {Alive _X || [_X] call ace_common_fnc_isAwake} count crew _EnemyVehicle < 1};
	if(!(isObjectHidden _EnemyVehicle)) then {
		[_EnemyVehicle] execVM "Training\AI_Death.sqf";
	};	
};

waitUntil { sleep 1; {Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group < 1};
_SpawnTrigger setVariable ["BermTargetDown",true,true];