Params ["_Object","_Player","_Target","_Positions","_Count","_Heavy"];
playSound3D [MISSION_ROOT + "activated.wav", _Object];
// [[Arrow_1,Arrow_2,Arrow_3]] execVM "3DReportSpawner.sqf";

_Units = [
	"O_HeavyGunner_F"
];

_Statics = [
	"UK3CB_ADA_O_Datsun_Pickup_PKM",
	"UK3CB_ADA_O_BTR40_MG",
	"UK3CB_ADA_O_M113_M2",
	"UK3CB_ADA_O_BTR40_MG",
	"UK3CB_ADA_O_Datsun_Pickup_PKM"
];

private ["_SelectedPosition","_Unit","_Static"];
private _spawnedUnits = [];
private _spawnedStatics = [];

For "_i" from 0 to (_Count - 1) do {

	while {true} do {
		_SelectedPosition = selectRandom _Positions;
		if(typeName _SelectedPosition isEqualTo "OBJECT") then {
			_SelectedPosition = getPosATL _SelectedPosition;
		};
		if(_SelectedPosition NearEntities [["Man","Car","Tank","StaticWeapon"], 8] isEqualTo []) exitWith {};
	};

	private _unitGroup = createGroup EAST;
	_unitGroup setVariable ["hc_blacklist", true];
	_unitGroup setVariable ["lambs_danger_disableAI", true];
	_Unit = _unitGroup createUnit [(_Units call BIS_FNC_selectRandom), [0,0,0], [], -1, "NONE"];
	_spawnedUnits pushBack _Unit;
	_Unit setCombatMode "RED";
	_Unit setUnitPos "UP";
	_Unit disableAI "PATH";
	_Unit setPosATL _SelectedPosition;
	_Unit setDir (_Unit getDir _Target);

	_Unit addPrimaryWeaponItem "RKSL_optic_LDS";
	_Unit addPrimaryWeaponItem "rhs_acc_pso1m2";
	_Unit selectWeapon (primaryWeapon _Unit);

	if(_Heavy && (_SelectedPosition select 2 < 1)) then {
		_Static = createVehicle [selectRandom _Statics, _SelectedPosition, [], 0, "NONE"];
		_spawnedStatics pushBack _Static;
		_Static setDir (_Static getDir _Target);
		_Unit moveInGunner _Static;
		if (vehicle _Unit != _Static) then { _Unit moveInTurret [_Static, [0]] };
		if (vehicle _Unit != _Static) then { _Unit moveInCommander _Static };
		_Unit setBehaviour "COMBAT";
		_Unit setSkill ["aimingAccuracy",1];
		_Unit setSkill ["aimingShake",1];
		_Unit setSkill ["aimingSpeed",1];
		_Unit setSkill ["spotDistance",1];
		_Unit setSkill ["spotTime",1];
		[_Static, _Unit, _Target] spawn {
			params ["_Vehicle","_Gunner","_Target"];
			while {alive _Vehicle && alive _Gunner && ([_Gunner] call ace_common_fnc_isAwake)} do {
				_Gunner doSuppressiveFire _Target;
				sleep 5;
			};
			sleep 3;
			deleteVehicle _Vehicle;
		};
	} else {
		_Unit setBehaviour "COMBAT";
		_Unit setSkill ["aimingAccuracy",1];
		_Unit setSkill ["aimingShake",1];
		_Unit setSkill ["aimingSpeed",1];
		_Unit setSkill ["spotDistance",1];
		_Unit setSkill ["spotTime",1];

		if (_SelectedPosition distance (getPosATL _Target) > 450) then {
			_Static = createVehicle ["UK3CB_ADE_O_KORD_high", _SelectedPosition, [], 0, "NONE"];
			_spawnedStatics pushBack _Static;
			_Static setDir (_Static getDir _Target);
			_Unit moveInGunner _Static;
			if (vehicle _Unit != _Static) then { _Unit moveInTurret [_Static, [0]] };
			if (vehicle _Unit != _Static) then { _Unit moveInCommander _Static };
			[_Static, _Unit, _Target] spawn {
				params ["_Vehicle","_Gunner","_Target"];
				while {alive _Vehicle && alive _Gunner && ([_Gunner] call ace_common_fnc_isAwake)} do {
					_Gunner doSuppressiveFire _Target;
					sleep 5;
				};
				sleep 3;
				deleteVehicle _Vehicle;
			};
		} else {
			[_Unit, _Target] spawn {
				params ["_Unit","_Target"];
				while {alive _Unit} do {
					_Unit doWatch _Target;
					_Unit doSuppressiveFire _Target;
					sleep 5;
				};
			};
		};
	};
	_Unit  addEventHandler ["Reloaded", {
		params ["_unit", "_weapon", "_muzzle", "_newMagazine", "_oldMagazine"];

		systemChat format ["%1 reloaded %2 with %3", name _unit, _weapon, _newMagazine];
		_unit addMagazine _newMagazine;
	}];
	
	sleep 5;

};


waitUntil {
	sleep 1;
	{(Alive _X || [_X] call ace_common_fnc_isAwake)} count _spawnedUnits == 0
};
private _Names = "";
private _i = 1;
private _CourseNumber = str _Target select [((count (str _Target)) - 1)];
{
	if(_i != (count units group _player)) then {
		_Names = _Names + name _X;
		if(count units group _Player > 2) then {
			_Names = _Names + ", ";	
		}
	} else {
		_Names = _Names + " and " + name _X;
	};
	_i = _i + 1;
} foreach units group _Player;
true remoteExec ["showChat",0];
format["%1 has completed MG course number %2.",_Names,_CourseNumber] remoteExec ["systemChat",0];

{ deleteVehicle _X; } foreach _spawnedStatics;
{
	deleteVehicle vehicle _X;
	deleteVehicle _X;
} foreach _spawnedUnits;


