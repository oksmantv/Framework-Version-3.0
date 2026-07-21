/*

 	[Mortar_1,[MortarTarget_1,MortarTarget_2,MortarTarget_3,MortarTarget_4,MortarTarget_5,MortarTarget_6]] spawn MortarAction;
	[vehicle player,[MortarTarget_1,MortarTarget_2,MortarTarget_3,MortarTarget_4,MortarTarget_5,MortarTarget_6]] spawn MortarAction;
	[vehicle player,[MortarTarget_1,MortarTarget_2,MortarTarget_3,MortarTarget_4,MortarTarget_5,MortarTarget_6]] execVM "Training\MortarAction.sqf";

*/

Params [
	["_TargetArray",[],[[]]],
	["_GuidedArray",[],[[]]],
	["_Side",east,[sideUnknown]]
];

if (!hasInterface) exitWith {};

// --- Snapfire action
private _snapfireAction = [
    "RequestTargetSnapfire",
    "<t color='#fd640b'>Request Target (Snapfire)</t>",
    "",
    {
        params ["_target", "_player", "_params"];
		_params params ["_TargetArray","_Side"];
        [
            _player,
            vehicle _player,
            _TargetArray,
            _Side,
            true
        ] remoteExec ["MortarTrainingTask",2];
    },
    {
        params ["_target", "_player", "_params"];
        ([vehicle _player] call OKS_fnc_isMortarVehicle)
        &&
        !((group _player) getVariable ['ActiveMortarTask',false])
    },
    {},
    [_TargetArray, _Side]
] call ace_interact_menu_fnc_createAction;

// --- Marker Guided action
private _markerGuidedAction = [
    "RequestTargetMarkerGuided",
    "<t color='#fd0b0b'>Request Target (Marker Guided)</t>",
    "",
    {
        params ["_target", "_player", "_params"];
		_params params ["_GuidedArray","_Side"];
        [
            _player,
            vehicle _player,
            _GuidedArray,
            _Side,
            false
        ] remoteExec ["MortarTrainingTask",2];
    },
    {
        params ["_target", "_player", "_params"];
        ([vehicle _player] call OKS_fnc_isMortarVehicle)
        &&
        !((group _player) getVariable ['ActiveMortarTask',false])
    },
    {},
    [_GuidedArray, _Side]
] call ace_interact_menu_fnc_createAction;

// --- Mortar Training parent action
private _mortarTrainingAction = [
    "MortarTraining",
    "Mortar Training",
    "",
    {},
    {
        params ["_target", "_player", "_params"];
        [vehicle _player] call OKS_fnc_isMortarVehicle
    },
    {},
    []
] call ace_interact_menu_fnc_createAction;

// --- Target Camera ACE Action
private _targetCameraAction = [
    "TargetCameraAction", // Unique action name
    "<t color='#FDD20B'>Target Camera</t>", // Display name (with color)
    "", // Icon (optional)
    {
        params ["_target", "_player", "_params"];
        _player spawn ShowTarget;
    },
    {
        params ["_target", "_player", "_params"];
        // Any buddy in the same group can view the active target camera.
        typeName ((group _player) getVariable ['CurrentMortarTarget', false]) == 'OBJECT'
    },
    {},
    []
] call ace_interact_menu_fnc_createAction;

private _isM6Condition = {
    params ["_target", "_player", "_params"];
    vehicle _player isKindOf "UK3CB_BAF_Static_M6"
};

private _isNonM6MortarCondition = {
    params ["_target", "_player", "_params"];
    ([vehicle _player] call OKS_fnc_isMortarVehicle)
    &&
    !(vehicle _player isKindOf "UK3CB_BAF_Static_M6")
};

// Rearm action for non-M6 mortar vehicles
private _rearmAction = [
    "Rearm",
    "Rearm Weapon",
    "\A3\ui_f\data\map\vehicleicons\iconCrateAmmo_ca.paa", // Icon
    {
        params ["_target", "_player", "_params"];
        vehicle _player setVehicleAmmo 1;
        systemChat format ["%1 have rearmed the %2", name _player, [configFile >> "CfgVehicles" >> typeOf vehicle _player] call BIS_fnc_displayName];
    },
    _isNonM6MortarCondition,
    {},
    []
] call ace_interact_menu_fnc_createAction;

// Parent node for M6-specific packed rounds.
private _m6RearmParentAction = [
    "RearmM6Parent",
    "Rearm (M6 Ammunition)",
    "\A3\ui_f\data\map\vehicleicons\iconCrateAmmo_ca.paa",
    {},
    _isM6Condition,
    {},
    []
] call ace_interact_menu_fnc_createAction;

private _m6FlareAction = [
    "RearmM6Flare",
    "Get Packed Flare Round",
    "",
    {
        params ["_target", "_player", "_params"];
        _player addItem "Unpack_60mm_Flare";
        systemChat "Received: Unpack_60mm_Flare";
    },
    _isM6Condition,
    {},
    []
] call ace_interact_menu_fnc_createAction;

private _m6SmokeAction = [
    "RearmM6Smoke",
    "Get Packed Smoke Round",
    "",
    {
        params ["_target", "_player", "_params"];
        _player addItem "Unpack_60mm_Smoke";
        systemChat "Received: Unpack_60mm_Smoke";
    },
    _isM6Condition,
    {},
    []
] call ace_interact_menu_fnc_createAction;

private _m6HEABAction = [
    "RearmM6HEAB",
    "Get Packed HEAB Round",
    "",
    {
        params ["_target", "_player", "_params"];
        _player addItem "Unpack_60mm_HEAB";
        systemChat "Received: Unpack_60mm_HEAB";
    },
    _isM6Condition,
    {},
    []
] call ace_interact_menu_fnc_createAction;

private _m6HEAction = [
    "RearmM6HE",
    "Get Packed HE Round",
    "",
    {
        params ["_target", "_player", "_params"];
        _player addItem "Unpack_60mm_HE";
        systemChat "Received: Unpack_60mm_HE";
    },
    _isM6Condition,
    {},
    []
] call ace_interact_menu_fnc_createAction;

// --- Add actions to ACE menu
[player, 1, ["ACE_SelfActions"], _mortarTrainingAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "MortarTraining"], _snapfireAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "MortarTraining"], _markerGuidedAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "MortarTraining"], _targetCameraAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "MortarTraining"], _rearmAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "MortarTraining"], _m6RearmParentAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "MortarTraining", "RearmM6Parent"], _m6FlareAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "MortarTraining", "RearmM6Parent"], _m6SmokeAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "MortarTraining", "RearmM6Parent"], _m6HEABAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "MortarTraining", "RearmM6Parent"], _m6HEAction] call ace_interact_menu_fnc_addActionToObject;

