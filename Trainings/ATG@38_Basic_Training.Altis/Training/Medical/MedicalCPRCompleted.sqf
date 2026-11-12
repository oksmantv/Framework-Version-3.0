params ["_Patient", "_Medic"];

if (!isServer || {isNull _Patient} || {isNull _Medic} || {!alive _Patient}) exitWith {};
if !(_Patient getVariable ["MED_CPRRequired", false]) exitWith {};

_Patient setVariable ["MED_CPRCompleted", true, true];
