// [DriverTrigger_1,DriverEndTrigger_1] execVM "Training\GunnnerCourseStart.sqf";

if(!isServer) exitWith {};

Params ["_SpawnTrigger"];
Private ["_EnemyVehicle"];

_SpawnTrigger setVariable ["SpawnActivated",true,true];
_Targets = _SpawnTrigger getVariable ["VehicleTargets",[]];
_Crew = _SpawnTrigger getVariable ["CurrentActiveCrew",[]];
_StartingTrigger = _SpawnTrigger getVariable ["StartingTrigger",objNull];
_Target = selectRandom _Targets;
_SpawnTime = time;

_VehicleClasses = [
	"UK3CB_KDF_I_BMD1", 
	"UK3CB_KDF_I_BMD1", 
	"UK3CB_AAF_O_MTLB_BMP", 
	"UK3CB_AAF_O_BMP2K", 
	"UK3CB_KDF_I_BMD1", 
	"UK3CB_ARD_O_BTR80", 
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
	"O_HeavyGunner_F", 
	"O_soldier_AT_F"
];

_Classname = selectRandom _VehicleClasses;
_Group = grpNull;
diag_log format["[SpawnTrigger] Spawn activated | Type: %1 | Target: %2", _Classname, typeOf _Target];
if(_Classname == "infantry") then {
	// Spawn infantry group
	_Group = createGroup [EAST, true];
	for "_i" from 0 to 3 do {
		_unitClass = selectRandom _InfantryClasses;
		_unit = _Group createUnit [_unitClass, getPos _Target, [], 5, "FORM"];
		_unit allowFleeing 0;
	};	diag_log format["[SpawnTrigger] Infantry spawned | Count: %1 | Position: %2", count units _Group, getPos _Target];	{
		_X addMPEventHandler ["MPKilled", {
			params ["_unit", "_killer"];
			[_unit] execVM "Training\AI_Death.sqf"
		}];
		
	} foreach units _Group;
	
	// Track spawned group
	if (!isNull _StartingTrigger) then {
		_SpawnedEntities = _StartingTrigger getVariable ["SpawnedEntities",[]];
		_SpawnedEntities pushBack _Group;
		_StartingTrigger setVariable ["SpawnedEntities",_SpawnedEntities,true];
	};

	_PlayerVehicle = vehicle (leader _Crew);
	_InvisibleTarget = (attachedObjects _PlayerVehicle select {typeOf _X == "CBA_B_InvisibleTarget"}) select 0;	
	_Group reveal [_InvisibleTarget,4];

	systemChat str _InvisibleTarget;
	{
		_X doFire _InvisibleTarget;
	} foreach units _Group;

	// _Logic = createVehicle ["Land_HelipadEmpty_F", getPos (leader _Group), [], 0, "CAN_COLLIDE"];
	// _Logic attachTo [(leader _Group)];
	// [_Logic, _Crew, true] call ace_zeus_fnc_moduleSuppressiveFire;

} else {
	_EnemyVehicle = createVehicle [_Classname, getPos _Target, [], 0, "NONE"];
	_EnemyVehicle setDir (getDir _Target);
	[_EnemyVehicle,east,2] call OKS_fnc_AddVehicleCrew;
	waitUntil {sleep 0.1; count (crew _EnemyVehicle) > 0};

	_Group = group (crew _EnemyVehicle select 0);
	_Group allowFleeing 0;
	{_x disableAI "FSM"} forEach crew _EnemyVehicle;
	diag_log format["[SpawnTrigger] Vehicle spawned | Type: %1 | Crew: %2 | Position: %3", typeOf _EnemyVehicle, count crew _EnemyVehicle, getPos _EnemyVehicle];

	_EnemyVehicle addMPEventHandler ["MPKilled", {
		params ["_unit", "_killer"];
		[_unit] execVM "Training\AI_Death.sqf";
	}];
	
	// Track spawned vehicle
	if (!isNull _StartingTrigger) then {
		_SpawnedEntities = _StartingTrigger getVariable ["SpawnedEntities",[]];
		_SpawnedEntities pushBack _EnemyVehicle;
		_StartingTrigger setVariable ["SpawnedEntities",_SpawnedEntities,true];
	};

	_PlayerVehicle = vehicle (_Crew);
	_InvisibleTarget = (attachedObjects _PlayerVehicle select {typeOf _X == "CBA_B_InvisibleTarget"}) select 0;	
	_EnemyVehicle reveal [_PlayerVehicle,4];
	_EnemyVehicle reveal [_InvisibleTarget,4];
	gunner _EnemyVehicle doTarget _PlayerVehicle;
	_EnemyVehicle doFire _InvisibleTarget;

	// _Logic = createVehicle ["Land_HelipadEmpty_F", getPos (leader _Group), [], 0, "CAN_COLLIDE"];
	// _Logic attachTo [(leader _Group)];
	// [_Logic, _Crew, true] call ace_zeus_fnc_moduleSuppressiveFire;

	waitUntil { sleep 1; {Alive _X || [_X] call ace_common_fnc_isAwake} count crew _EnemyVehicle < 1};
	[_EnemyVehicle] execVM "Training\AI_Death.sqf";
};

// Wait for group death, timeout (3 min), or course end
_CourseActive = if (!isNull _StartingTrigger) then {_StartingTrigger getVariable ["IsActiveGunnerCourse",false]} else {true};
waitUntil { 
	sleep 1; 
	_CourseActive = if (!isNull _StartingTrigger) then {_StartingTrigger getVariable ["IsActiveGunnerCourse",false]} else {false};
	({Alive _X || [_X] call ace_common_fnc_isAwake} count units _Group < 1) || (time - _SpawnTime > 180) || !_CourseActive
};

// Cleanup if timeout or course ended
if ((time - _SpawnTime > 180) || !_CourseActive) then {
	diag_log format["[SpawnTrigger] Force cleanup | Timeout: %1 | CourseInactive: %2", (time - _SpawnTime > 180), !_CourseActive];
	{deleteVehicle _x} forEach units _Group;
	deleteGroup _Group;
};
