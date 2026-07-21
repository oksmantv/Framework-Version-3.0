/*

    [_vehicle] call OKS_fnc_isMortarVehicle;

    Returns true if the vehicle matches any entry in OKS_MortarWhitelist and
    does not match any entry in OKS_MortarBlacklist.

    Both lists may contain exact class names or parent classes.

*/

params [
    ["_Vehicle", objNull, [objNull]]
];

if (isNull _Vehicle) exitWith {false};

private _Whitelist = missionNamespace getVariable ["OKS_MortarWhitelist", ["StaticMortar"]];
private _Blacklist = missionNamespace getVariable ["OKS_MortarBlacklist", []];
private _Type = typeOf _Vehicle;

if (_Type isEqualTo "") exitWith {false};

private _IsBlacklisted = _Blacklist findIf {
    (_Type isEqualTo _x) || (_Vehicle isKindOf _x)
} >= 0;

if (_IsBlacklisted) exitWith {false};

_Whitelist findIf {
    (_Type isEqualTo _x) || (_Vehicle isKindOf _x)
} >= 0;
