/* Adds local held terminal actions. [terminal] execVM this file. */
params ["_terminal"];
if (!hasInterface) exitWith {};
if (_terminal getVariable ["MED_Team_ActionsAdded", false]) exitWith {};
_terminal setVariable ["MED_Team_ActionsAdded", true];

{
    _x params ["_label", "_mode"];
    _terminal addAction [
        _label,
        {
            params ["_target", "_caller", "_actionId", "_arguments"];
            _arguments params ["_mode"];
            [
                format ["Starting Team Medical Course: %1", _mode],
                2,
                {player distance ((_this select 0) select 0) < 3},
                {
                    _this params ["_terminal", "_mode", "_caller"];
                    [_terminal, _mode, _caller] remoteExec ["MED_Team_Start", 2];
                },
                {},
                [_target, _mode, _caller]
            ] call CBA_fnc_progressBar;
        },
        [_mode],
        1,
        true,
        true,
        "",
        "_target distance _this < 3",
        5,
        false,
        "",
        "\a3\ui_f\data\igui\cfg\simpletasks\types\use_ca.paa"
    ];
} forEach [
    ["Start Team Medical Course — Dry Run", "Dry Run"],
    ["Start Team Medical Course — Level 1", "Level 1"],
    ["Start Team Medical Course — Level 2", "Level 2"],
    ["Start Team Medical Course — Level 3", "Level 3"]
];
