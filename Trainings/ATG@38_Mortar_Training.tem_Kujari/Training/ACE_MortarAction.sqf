// execVM "Training\ACE_MortarAction.sqf";

if (hasInterface) then {
    _condition = {true}; //<only works MP
	_conditionRearm = {vehicle player isKindOf "LandVehicle" && vehicle player != player};
	// NEKY EDIT START
	_code =
	{
		if(vehicle player == player) then {
			systemChat "You must be in a vehicle to rearm.";
		};
		vehicle player setVehicleAmmo 1;
		[player,format["%1 have rearmed the %2",name player,[configFile >> "CfgVehicles" >> typeOf vehicle player] call BIS_fnc_displayName]] remoteExec ["systemChat",player];
	};
    _action = ["Rearm", "Rearm","\A3\ui_f\data\map\vehicleicons\iconCrateAmmo_ca.paa", _code, _conditionRearm] call ace_interact_menu_fnc_createAction;
	[typeof player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;

    _action = ["MortarTraining", "Mortar Training","\A3\ui_f\data\map\vehicleicons\iconCrateAmmo_ca.paa", {}, _condition] call ace_interact_menu_fnc_createAction;
	[typeof player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;

	_code =
	{
		vehicle player setVehicleAmmo 1;
		[player,format["%1 have rearmed the %2",name player,[configFile >> "CfgVehicles" >> typeOf vehicle player] call BIS_fnc_displayName]] remoteExec ["systemChat",player];
	};
	_condition = { true };
	_action = ["Mortar_RequestTarget", "<t color='%1'>Request Target %2</t>","\A3\ui_f\data\map\vehicleicons\iconCrateAmmo_ca.paa", {}, _condition] call ace_interact_menu_fnc_createAction;
	[typeof player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;

	

};
//_condition = {leader (group player) isEqualTo (leader player)}; for sp testing
