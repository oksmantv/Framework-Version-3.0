#include "script_Component.hpp"

["AllVehicles", "init", {
	params [
		"_unit"
	];
	if ((_unit isKindOf "CAManBase") && !(isPlayer _unit)) then {
		if (isNil {((group _unit) getVariable QGVAR(Loadout_Type))}) then {
			(group _unit) setVariable [QGVAR(Loadout_Type), false, true];
//			(group _unit) setVariable [QGVAR(Loadout_Type), (selectRandom [true, false]), true];
		};
	};

	_this call FUNC(Init);
}, true, [], true] call CBA_fnc_addClassEventHandler;

[QGVAR(setPlayerStamina), {
	if (GVAR(Stamina)) then {
		player setUnitTrait ["loadCoef", GVAR(StaminaCoef)];
		player setFatigue 0;
	};
}] call CBA_fnc_addEventHandler;

[QGVARMAIN(playerReady), {
	[QGVAR(setPlayerStamina), []] call CBA_fnc_localEvent;

	["CAManBase", "Killed", {
		params [["_unit", objNull, [objNull]]];
		if (isPlayer _unit) then {
			_unit setVariable [QGVAR(unitGear), (getUnitLoadout _unit)];
		};
	}, true, [], true] call CBA_fnc_addClassEventHandler;

	["CAManBase", "Respawn", {
		params [["_unit", objNull, [objNull]]];
		[{
			params [["_unit", objNull, [objNull]]];
			if !(local _unit) exitWith {false};

			_currentLoadout = (_unit getVariable QGVAR(unitGear));
			if !((_unit getVariable [QEGVAR(Menu,getUnitLoadout), nil]) isEqualTo nil) then {
				_currentLoadout set [5, (_unit getVariable QEGVAR(Menu,getUnitLoadout))];
				_unit setVariable [QEGVAR(Menu,getUnitLoadout), nil];
			};

			_unit setUnitLoadout (_unit getVariable QGVAR(unitGear));
			_unit selectWeapon (primaryWeapon _unit);
			[_unit, true] call ace_hearing_fnc_putInEarplugs;

			// Set soldier's group colour after respawn - Disabled
			// [{
			// 	[] call EFUNC(Common,setGroupColor);
			// }, [_unit, (_unit getVariable QGVAR(Loadout))], 0.3] call CBA_fnc_waitAndExecute;

			[QGVAR(setPlayerStamina), []] call CBA_fnc_localEvent;
		}, _this, 0.1] call CBA_fnc_waitAndExecute;
	}, true, [], true] call CBA_fnc_addClassEventHandler;
}] call CBA_fnc_addEventHandler;

// TFAR wireless intercom — prevent auto-connect on vehicle exit.
// Everyone is disconnected on dismount. Players can reconnect
// manually with the keybind (default: Shift+Tab).
if (!isNil "TFAR_fnc_setIntercomChannel") then {
	["AllVehicles", "GetOut", {
		params ["_vehicle", "_role", "_unit"];
		if (isPlayer _unit && {local _unit} && {_role != "cargo"}) then {
			// Remember the vehicle so the keybind can reconnect
			_unit setVariable ["GOL_lastIntercomVehicle", _vehicle];
			[{
				params ["_vehicle", "_unit"];
				if (!isNil "TFAR_external_intercom_fnc_disconnect") then {
					[_vehicle, _unit] call TFAR_external_intercom_fnc_disconnect;
				};
			}, [_vehicle, _unit], 0.1] call CBA_fnc_waitAndExecute;
		};
	}, true, [], true] call CBA_fnc_addClassEventHandler;

	// Keybind: Toggle wireless intercom to last vehicle (Shift+Tab)
	["GOL Custom Controls", "GOL_toggleWirelessIntercom",
		["Toggle Wireless Intercom", "Connect or disconnect wireless intercom to your last dismounted vehicle"],
		{
			if (isNil "TFAR_external_intercom_fnc_connect") exitWith {};

			// Currently connected → disconnect
			if !(player isNil "TFAR_ExternalIntercomVehicle") exitWith {
				private _vehicle = player getVariable "TFAR_ExternalIntercomVehicle";
				[_vehicle, player] call TFAR_external_intercom_fnc_disconnect;
				["Wireless intercom disconnected."] call ace_common_fnc_displayTextStructured;
			};

			// Not connected → try connecting to last vehicle
			private _vehicle = player getVariable ["GOL_lastIntercomVehicle", objNull];
			if (isNull _vehicle || {!alive _vehicle}) exitWith {
				["No vehicle to connect to."] call ace_common_fnc_displayTextStructured;
			};

			// Check headgear before attempting
			if !([player] call TFAR_external_intercom_fnc_hasWirelessHeadgear) exitWith {
				["Your headgear is not wireless-capable."] call ace_common_fnc_displayTextStructured;
			};

			// Check range (bounding box half-size + wireless range setting)
			private _maxRange = (((boundingBoxReal _vehicle) select 2) / 2)
				+ (_vehicle getVariable ["TFAR_externalIntercomMaxRange_Wireless",
					TFAR_externalIntercomMaxRange_Wireless]);
			if (player distance _vehicle > _maxRange) exitWith {
				[format ["Too far from vehicle (%1m / %2m).",
					round (player distance _vehicle), round _maxRange]] call ace_common_fnc_displayTextStructured;
			};

			// All good — connect
			[_vehicle, player, [true]] call TFAR_external_intercom_fnc_connect;
			["Wireless intercom connected."] call ace_common_fnc_displayTextStructured;
		}, {}, [0x0F, [true, false, false]]
	] call CBA_fnc_addKeybind;

	// ACE self-interaction: Connect / Disconnect wireless intercom (under Equipment)
	private _connectAction = [
		"GOL_IntercomConnect",
		"Connect Intercom",
		"\z\tfar\addons\external_intercom\ui\tfar_ace_interaction_external_intercom_wireless.paa",
		{
			private _vehicle = _player getVariable ["GOL_lastIntercomVehicle", objNull];
			[_vehicle, _player, [true]] call TFAR_external_intercom_fnc_connect;
			["Wireless intercom connected."] call ace_common_fnc_displayTextStructured;
		},
		{
			if (isNil "TFAR_external_intercom_fnc_connect") exitWith {false};
			private _vehicle = _player getVariable ["GOL_lastIntercomVehicle", objNull];
			if (isNull _vehicle || {!alive _vehicle}) exitWith {false};
			if !(_player isNil "TFAR_ExternalIntercomVehicle") exitWith {false};
			if !([_player] call TFAR_external_intercom_fnc_hasWirelessHeadgear) exitWith {false};
			private _maxRange = (((boundingBoxReal _vehicle) select 2) / 2)
				+ (_vehicle getVariable ["TFAR_externalIntercomMaxRange_Wireless",
					TFAR_externalIntercomMaxRange_Wireless]);
			_player distance _vehicle <= _maxRange
		}
	] call ace_interact_menu_fnc_createAction;

	private _disconnectAction = [
		"GOL_IntercomDisconnect",
		"Disconnect Intercom",
		"\z\tfar\addons\external_intercom\ui\tfar_ace_interaction_external_intercom_wireless_disconnect.paa",
		{
			private _vehicle = _player getVariable "TFAR_ExternalIntercomVehicle";
			[_vehicle, _player] call TFAR_external_intercom_fnc_disconnect;
			["Wireless intercom disconnected."] call ace_common_fnc_displayTextStructured;
		},
		{
			!isNil "TFAR_external_intercom_fnc_disconnect"
			&& {!(_player isNil "TFAR_ExternalIntercomVehicle")}
		}
	] call ace_interact_menu_fnc_createAction;

	[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _connectAction] call ace_interact_menu_fnc_addActionToClass;
	[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _disconnectAction] call ace_interact_menu_fnc_addActionToClass;
};
