/* Creates three protected Tier 2 casualties around one randomly selected anchor. Server only. */
params ["_anchors"];
if (!isServer) exitWith {[]};

private _anchor = selectRandom (_anchors select {!isNull _x});
private _positions = [];
private _anchorPosition = getPosATL _anchor;
private _flareData = [objNull, grpNull];
private _crater = objNull;

private _groundPosition = [_anchorPosition # 0, _anchorPosition # 1, 0];
if (!surfaceIsWater _groundPosition) then {
    _crater = createVehicle ["Crater", _groundPosition, [], 0, "CAN_COLLIDE"];
    _crater setDir (random 360);
    _crater setPosATL _groundPosition;
};

if (isClass (configFile >> "CfgVehicles" >> "JCA_ModuleSignalFlare_Green_F")) then {
    private _flareGroup = createGroup sideLogic;
    private _flareModule = _flareGroup createUnit [
        "JCA_ModuleSignalFlare_Green_F",
        _anchorPosition,
        [],
        0,
        "CAN_COLLIDE"
    ];
    _flareModule setVariable ["BIS_fnc_initModules_disableAutoActivation", false, true];
    _flareData set [0, _flareModule];
    _flareData set [1, _flareGroup];
};

for "_i" from 1 to 3 do {
    private _position = [];
    for "_attempt" from 1 to 12 do {
        private _distance = random [3, 6, 10];
        private _direction = random 360;
        private _candidate = [
            (_anchorPosition # 0) + (sin _direction * _distance),
            (_anchorPosition # 1) + (cos _direction * _distance),
            _anchorPosition # 2
        ];
        if (!surfaceIsWater _candidate && {{_candidate distance2D _x < 2.5} count _positions isEqualTo 0}) exitWith {
            _position = _candidate;
        };
    };
    if (_position isEqualTo []) then {
        private _direction = (getDir _anchor) + (_i * 120);
        private _distance = 2 + (_i * 2);
        _position = [
            (_anchorPosition # 0) + (sin _direction * _distance),
            (_anchorPosition # 1) + (cos _direction * _distance),
            _anchorPosition # 2
        ];
    };
    _positions pushBack _position;
};

private _group = createGroup west;
_group setVariable ["GW_Gear_BlackList", true, true];
_group setVariable ["acex_headless_blacklist", true, true];

private _casualties = [];
{
    private _unit = _group createUnit ["B_Soldier_F", _x, [], 0, "CAN_COLLIDE"];
    _unit setPosATL _x;
    _unit setVariable ["GW_Gear_BlackList", true, true];
    _unit setCaptive true;
    _unit disableAI "AUTOTARGET";
    _unit disableAI "TARGET";
    _unit disableAI "MOVE";
    _unit hideObjectGlobal true;
    [_unit, "lot"] spawn MedicalDamage;
    _casualties pushBack _unit;
} forEach _positions;

[_casualties, _group] spawn {
    params ["_casualties", "_group"];
    {
        waitUntil {sleep 0.1; isNull _x || {_x getVariable ["MED_PatientReady", false]}};
        if (!isNull _x) then {_x hideObjectGlobal false};
    } forEach _casualties;
};

[_casualties, _flareData # 0, _flareData # 1, _anchorPosition, _crater]
