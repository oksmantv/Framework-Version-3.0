// [this, BermTrigger_1] execVM "Training\AddTargetToTrigger.sqf";

if(!isServer) exitWith {};

Params ["_Target","_SpawnTrigger"];

_OldValue = _SpawnTrigger getVariable ["VehicleTargets",[]];
_OldValue pushBackUnique _Target;
_SpawnTrigger setVariable ["VehicleTargets",_OldValue,true];
_SpawnTrigger setVariable ["OriginalVehicleTargets",_OldValue,true];