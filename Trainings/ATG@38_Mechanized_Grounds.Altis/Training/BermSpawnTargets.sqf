// [BermTrigger_1,BermSpawn_1_Course_1] execVM "Training\BermSpawnTargets.sqf";

if(!isServer) exitWith {};

Params ["_StartingTrigger","_SpawnTrigger"];
Private ["_EnemyVehicle"];

_SpawnTrigger setVariable ["SpawnActivated",true,true];
_Targets = _StartingTrigger getVariable ["VehicleTargets",[]];
_Crew = _SpawnTrigger getVariable ["CurrentActiveCrew",[]];
_SpawnTime = time;

_Target = selectRandom _Targets;
if (isNil "_Target" || isNull _Target) exitWith {
	diag_log "[BermSpawn] ERROR: No valid target found!";
	_SpawnTrigger setVariable ["BermTargetDown",true,true];
};

if (isNil "_Crew" || isNull _Crew) exitWith {
	diag_log "[BermSpawn] ERROR: No crew vehicle found for spawn!";
	_SpawnTrigger setVariable ["BermTargetDown",true,true];
};

_Targets deleteAt (_Targets find _Target);
_StartingTrigger setVariable ["VehicleTargets",_Targets,true];

_VehicleClasses = [
	"UK3CB_KDF_I_BMD1", 
	"UK3CB_KDF_I_BMD1", 
	"UK3CB_AAF_O_MTLB_BMP", 
	"UK3CB_AAF_O_BMP2K", 
	"UK3CB_KDF_I_BMD1", 
	"UK3CB_ARD_O_BTR80a", 
	"UK3CB_AAF_O_MTLB_BMP",
	"infantry",
	"infantry",
	"infantry",
	"infantry",
	"infantry",
	"infantry"
];
_InfantryClasses = [
	"O_Soldier_AT_F",
	"O_Soldier_AT_F", 
	"O_Soldier_AT_F", 
	"O_HeavyGunner_F"
];

_Classname = selectRandom _VehicleClasses;
_Group = grpNull;
diag_log format["[BermSpawn] Spawn activated | Type: %1 | Target: %2", _Classname, typeOf _Target];
if(_Classname == "infantry") then {
	// Spawn infantry group
	_Group = createGroup [EAST, true];
	for "_i" from 0 to 4 do {
		_unitClass = selectRandom _InfantryClasses;
		_unit = _Group createUnit [_unitClass, getPos _Target, [], 5, "FORM"];
		_unit allowFleeing 0;
	};
	diag_log format["[BermSpawn] Infantry spawned | Count: %1 | Position: %2", count units _Group, getPos _Target];
	{
		[_X,"UP"] remoteExec ["setUnitPos",0];
		_X addMPEventHandler ["MPKilled", {
			params ["_unit", "_killer"];
			[_unit] execVM "Training\AI_Death.sqf"
		}];
	} foreach units _Group;
	
	// Track spawned group
	_SpawnedEntities = _StartingTrigger getVariable ["SpawnedEntities",[]];
	_SpawnedEntities pushBack _Group;
	_StartingTrigger setVariable ["SpawnedEntities",_SpawnedEntities,true];

	_PlayerVehicle = vehicle (_Crew);
	_InvisibleTarget = (attachedObjects _PlayerVehicle select {typeOf _X == "CBA_B_InvisibleTarget"}) select 0;
	
	if (isNil "_InvisibleTarget" || isNull _InvisibleTarget) then {
		diag_log format["[BermSpawn] WARNING: No invisible target on player vehicle | Vehicle: %1", typeOf _PlayerVehicle];
	} else {
		_Group reveal [_InvisibleTarget,4];
		diag_log format["[BermSpawn] Infantry engaging | Target: %1", _InvisibleTarget];
		{
			_X doFire _InvisibleTarget;
		} foreach units _Group;
	};

} else {
	_EnemyVehicle = createVehicle [_Classname, getPos _Target, [], 0, "NONE"];
	_EnemyVehicle setDir (getDir _Target);
	[_EnemyVehicle,east,2] call OKS_fnc_AddVehicleCrew;
	waitUntil {sleep 0.1; count (crew _EnemyVehicle) > 0};
	_Group = group (crew _EnemyVehicle select 0);
	_Group allowFleeing 0;
	{_x disableAI "FSM"} forEach crew _EnemyVehicle;
	diag_log format["[BermSpawn] Vehicle spawned | Type: %1 | Crew: %2 | Position: %3", typeOf _EnemyVehicle, count crew _EnemyVehicle, getPos _EnemyVehicle];
	_EnemyVehicle addMPEventHandler ["MPKilled", {
		params ["_unit", "_killer"];
		[_unit] execVM "Training\AI_Death.sqf";
	}];
	
	// Track spawned vehicle
	_SpawnedEntities = _StartingTrigger getVariable ["SpawnedEntities",[]];
	_SpawnedEntities pushBack _EnemyVehicle;
	_StartingTrigger setVariable ["SpawnedEntities",_SpawnedEntities,true];
	
	_PlayerVehicle = vehicle (_Crew);
	_InvisibleTarget = (attachedObjects _PlayerVehicle select {typeOf _X == "CBA_B_InvisibleTarget"}) select 0;
	_EnemyVehicle reveal [_PlayerVehicle,4];
	
	if (isNil "_InvisibleTarget" || isNull _InvisibleTarget) then {
		diag_log format["[BermSpawn] WARNING: No invisible target on player vehicle | Vehicle: %1", typeOf _PlayerVehicle];
		_EnemyVehicle doTarget _PlayerVehicle;
		gunner _EnemyVehicle doTarget _PlayerVehicle;
	} else {
		_EnemyVehicle reveal [_InvisibleTarget,4];
		gunner _EnemyVehicle doTarget _PlayerVehicle;
		_EnemyVehicle doFire _InvisibleTarget;
		diag_log format["[BermSpawn] Vehicle engaging | Target: %1", _InvisibleTarget];
	};


	waitUntil { sleep 1; {Alive _X || [_X] call ace_common_fnc_isAwake} count crew _EnemyVehicle < 1};
	if(!(isObjectHidden _EnemyVehicle)) then {
		[_EnemyVehicle] execVM "Training\AI_Death.sqf";
	};	
};

// Wait for group death, timeout (3 min), or course end
_CourseActive = _StartingTrigger getVariable ["IsActiveBermCourse",false];
waitUntil { 
	sleep 1; 
	_CourseActive = _StartingTrigger getVariable ["IsActiveBermCourse",false];
	({Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group < 1) || (time - _SpawnTime > 180) || !_CourseActive
};

// Cleanup if timeout or course ended
if ((time - _SpawnTime > 180) || !_CourseActive) then {
	diag_log format["[BermSpawn] Force cleanup | Timeout: %1 | CourseInactive: %2", (time - _SpawnTime > 180), !_CourseActive];
	{deleteVehicle _x} forEach units _Group;
	deleteGroup _Group;
};

_SpawnTrigger setVariable ["BermTargetDown",true,true];