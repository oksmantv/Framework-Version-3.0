//	[] execVM "Training\Init.sqf";
//
//	This initializes all the functions for Mortar Training.
//
//	Made by NeKo-ArroW
// Functions
MortarTrainingTask = compile preprocessFileLineNumbers "Training\MortarTrainingTask.sqf";
MortarAction = compile preprocessFileLineNumbers "Training\MortarAction.sqf";
ShowTarget = compile preprocessFileLineNumbers "Training\ShowTarget.sqf";
OKS_fnc_isMortarVehicle = compile preprocessFileLineNumbers "Training\IsMortarVehicle.sqf";

// Mortar class configuration.
// You can add exact classes or parent classes (isKindOf-compatible).
if (isNil "OKS_MortarWhitelist") then {
	OKS_MortarWhitelist = ["StaticMortar"];
};

if (isNil "OKS_MortarBlacklist") then {
	OKS_MortarBlacklist = [];
};

