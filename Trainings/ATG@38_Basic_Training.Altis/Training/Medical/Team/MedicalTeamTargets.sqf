/* [targets, mode, percentage] call MED_Team_SetupTargets; returns static enemy groups. */
params ["_targets", "_mode", ["_percentage", 0]];
if (!isServer) exitWith {[]};

private _groups = [];
{
    private _oldHandler = _x getVariable ["MED_Team_HitHandler", -1];
    if (_oldHandler >= 0) then {_x removeEventHandler ["Hit", _oldHandler]};
    _x setVariable ["MED_Team_HitHandler", -1];
    _x setVariable ["MED_Team_TargetDown", false, true];

    if (_mode isEqualTo "DRY") then {
        _x enableSimulationGlobal true;
        _x hideObjectGlobal false;
        _x animateSource ["terc", 0, true];
        private _handler = _x addEventHandler ["Hit", {
            params ["_target"];
            _target setVariable ["MED_Team_TargetDown", true, true];
            _target removeEventHandler ["Hit", _thisEventHandler];
            _target setVariable ["MED_Team_HitHandler", -1];
        }];
        _x setVariable ["MED_Team_HitHandler", _handler];
    } else {
        _x enableSimulationGlobal false;
        _x hideObjectGlobal true;
    };
} forEach _targets;

if !(_mode isEqualTo "DRY") then {
    private _available = +_targets;
    private _count = (ceil ((count _targets) * _percentage)) min (count _targets);
    private _leaders = ["I_Soldier_SL_F", "I_Soldier_TL_F"];
    private _units = ["I_Soldier_A_F", "I_Soldier_AR_F", "I_medic_F", "I_Soldier_GL_F", "I_soldier_M_F", "I_Soldier_F", "I_Soldier_LAT_F"];

    for "_i" from 1 to _count do {
        private _target = selectRandom _available;
        _available deleteAt (_available find _target);
        private _group = createGroup independent;
        _group setVariable ["acex_headless_blacklist", true, true];
        private _class = if (_i isEqualTo 1) then {selectRandom _leaders} else {selectRandom _units};
        private _unit = _group createUnit [_class, getPosATL _target, [], 0, "CAN_COLLIDE"];
        _unit setRank (if (_i isEqualTo 1) then {"SERGEANT"} else {"PRIVATE"});
        _unit disableAI "PATH";
        _unit setUnitPos (selectRandom ["UP", "MIDDLE"]);
        _unit setBehaviour "COMBAT";
        _unit setDir ((getDir _target) - 180);
        _groups pushBack _group;
    };
};

_groups
