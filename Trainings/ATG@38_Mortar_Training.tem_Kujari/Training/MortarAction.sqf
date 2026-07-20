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
        [_player,_target,_TargetArray,_Side,true] remoteExec ["MortarTrainingTask",2];
    },
    {!((group _player) getVariable ['ActiveMortarTask',false])}, // Condition: always available (customize as needed)
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
		_params params ["_TargetArray","_Side"];
        [_player,_target,_TargetArray,_Side, false] remoteExec ["MortarTrainingTask",2];
    },
    {!((group _player) getVariable ['ActiveMortarTask',false])}, // Condition: always available (customize as needed)
    {},
    [_TargetArray, _Side]
] call ace_interact_menu_fnc_createAction;

// --- Mortar Training parent action
private _mortarTrainingAction = [
    "MortarTraining",
    "Mortar Training",
    "",
    {},
    {true},
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
        // Condition: Only show if group variable 'CurrentMortarTarget' is an OBJECT
        typeName ((group player) getVariable ['CurrentMortarTarget', false]) == 'OBJECT'
    },
    {},
    []
] call ace_interact_menu_fnc_createAction;

// Rearm action for vehicles
private _rearmAction = [
    "Rearm", // Action title
    "Rearm Weapon",
    "\A3\ui_f\data\map\vehicleicons\iconCrateAmmo_ca.paa", // Icon
    {
        params ["_target", "_player", "_params"];

        if(typeof vehicle _player == "UK3CB_BAF_Static_M6") exitWith {
            systemChat "You cannot rearm this weapon. Unpack or get more packed ammunition from the gear box";
        };
        vehicle _player setVehicleAmmo 1;
        systemChat format ["%1 have rearmed the %2", name _player, [configFile >> "CfgVehicles" >> typeOf vehicle _player] call BIS_fnc_displayName];
    },
    {
        // Condition: Should be in vehicle
        vehicle player isKindOf "LandVehicle" && vehicle player != player
    }, 
    {},
    []
] call ace_interact_menu_fnc_createAction;

// --- Add actions to ACE menu
[player, 1, ["ACE_SelfActions"], _mortarTrainingAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "MortarTraining"], _snapfireAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "MortarTraining"], _markerGuidedAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "MortarTraining"], _targetCameraAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "MortarTraining"], _rearmAction] call ace_interact_menu_fnc_addActionToObject;

