// execVM "Training\ACE_MortarAction.sqf";

if (hasInterface) then {
	_condition = {
		params ["_target", "_player", "_params"];
		[vehicle _player] call OKS_fnc_isMortarVehicle
	};
	_conditionRearm = {
		params ["_target", "_player", "_params"];
		[vehicle _player] call OKS_fnc_isMortarVehicle
	};
	// NEKY EDIT START
	_code =
	{
		params ["_target", "_player", "_params"];
		vehicle _player setVehicleAmmo 1;
		[_player,format["%1 have rearmed the %2",name _player,[configFile >> "CfgVehicles" >> typeOf vehicle _player] call BIS_fnc_displayName]] remoteExec ["systemChat",_player];
	};
    _action = ["Rearm", "Rearm","\A3\ui_f\data\map\vehicleicons\iconCrateAmmo_ca.paa", _code, _conditionRearm] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

    _action = ["MortarTraining", "Mortar Training","\A3\ui_f\data\map\vehicleicons\iconCrateAmmo_ca.paa", {}, _condition] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	_code =
	{
		params ["_target", "_player", "_params"];
		vehicle _player setVehicleAmmo 1;
		[_player,format["%1 have rearmed the %2",name _player,[configFile >> "CfgVehicles" >> typeOf vehicle _player] call BIS_fnc_displayName]] remoteExec ["systemChat",_player];
	};
	_condition = {
		params ["_target", "_player", "_params"];
		[vehicle _player] call OKS_fnc_isMortarVehicle
	};
	_action = ["Mortar_RequestTarget", "<t color='%1'>Request Target %2</t>","\A3\ui_f\data\map\vehicleicons\iconCrateAmmo_ca.paa", {}, _condition] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	

};
//_condition = {leader (group player) isEqualTo (leader player)}; for sp testing
