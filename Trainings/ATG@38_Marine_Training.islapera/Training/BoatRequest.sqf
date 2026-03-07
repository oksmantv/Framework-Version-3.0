//	[BoatRack] execVM "Training\BoatRequest.sqf";
//
//	1. BoatRack
//	  a) The object which holds boats via setVehicleCargo.
//	  b) Actions are added to this object for requesting and deleting boats.
//
//	Boats are spawned nearby and loaded onto the rack using setVehicleCargo.

Params
[
	["_BoatRack", ObjNull, [ObjNull]]
];

// Exits
if (isNull _BoatRack) exitWith {};

// Available boats
_Boats = [
	"RHICC_GREEN",
	"B_Boat_Transport_01_F",
	"UK3CB_AAF_B_RHIB_Gunboat",
	"UK3CB_AAF_B_Skiff",
	"UK3CB_AAF_B_RHIB",
	"B_Boat_Armed_01_minigun_F"
];

// Sort alphabetically by display name
_Boats = [_Boats, [], {getText (configFile >> "CfgVehicles" >> _x >> "DisplayName")}, "ASCEND"] call BIS_fnc_sortBy;

// AddActions for each boat
{
	_Veh = _x;
	_Name = getText (configFile >> "CfgVehicles" >> _Veh >> "DisplayName");
	_NameC = Format ["Request <t color='#0099FF'>%1</t>", _Name];

	_BoatRack addAction [_NameC,
	{
		Params ["_BoatRack","","","_Args"];
		_Args Params ["_Veh","_Name"];

		// Prevent double requests
		if (_BoatRack getVariable ["NEKY_BoatRequest_Spawning", False]) exitWith {
			SystemChat "Boat request already in progress, please wait.";
		};
		_BoatRack setVariable ["NEKY_BoatRequest_Spawning", True, True];

		// Check if the rack already has a boat loaded
		_CurrentCargo = getVehicleCargo _BoatRack;
		if (count _CurrentCargo > 0) exitWith {
			SystemChat "Boat rack already has a boat loaded. Delete it first.";
			_BoatRack setVariable ["NEKY_BoatRequest_Spawning", False, True];
		};

		// Spawn the boat at a temporary position nearby
		_SpawnPos = (getPosASL _BoatRack) vectorAdd [0, 0, 50];
		_Boat = CreateVehicle [_Veh, [0,0,0], [], 0, "CAN_COLLIDE"];
		_Boat setPosASL _SpawnPos;
		_Boat enableSimulation False;

		sleep 0.5;

		// Load onto rack
		_Loaded = _BoatRack setVehicleCargo _Boat;
		_Boat enableSimulation True;

		if (_Loaded) then {
			SystemChat Format ["%1 has been loaded onto the rack.", _Name];
		} else {
			deleteVehicle _Boat;
			SystemChat Format ["Failed to load %1 onto the rack.", _Name];
		};

		_BoatRack setVariable ["NEKY_BoatRequest_Spawning", False, True];
	}, [_Veh, _Name], 0, false, true, "", "", 4];
} forEach _Boats;

// Delete racked boat action
_BoatRack addAction ["<t color='#FF0000'>Delete Racked Boat</t>",
{
	Params ["_BoatRack"];

	_CurrentCargo = getVehicleCargo _BoatRack;
	if (count _CurrentCargo == 0) exitWith {
		SystemChat "No boat loaded on the rack.";
	};

	{
		deleteVehicle _x;
	} forEach _CurrentCargo;

	SystemChat "Racked boat has been deleted.";
}, [], 1, false, true, "", "", 4];
