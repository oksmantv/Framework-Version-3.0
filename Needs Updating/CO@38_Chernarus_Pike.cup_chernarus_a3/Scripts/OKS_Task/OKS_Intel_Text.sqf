// [this, "A weapons cache is located at grids:", getpos cache_1] execVM "Scripts\OKS_Task\OKS_Intel_Text.sqf";
// [intelObject, DescriptionOfObjective, TargetPosition] execVM "Scripts\OKS_Task\OKS_Intel_Text.sqf";

Params ["_Object","_Text","_TargetPosition"];

_Grid = mapGridPosition _TargetPosition;

//[_Object, format["#(rgb,1024,1024,1)ui(RscMap ,%1)",_TargetPosition]] remoteExec ["ace_intelitems_fnc_setObjectData",0];
[_Object, _Text + format[" %1",_Grid]] remoteExec ["ace_intelitems_fnc_setObjectData",0];