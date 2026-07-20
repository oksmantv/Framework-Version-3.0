/*

 	[player] spawn ShowTarget;
	[player] spawn ShowTarget;
	[player] execVM "Training\ShowTarget.sqf";

*/

_CameraRotation = {
	Params ["_Camera","_Target"];
	_StartDir = (_Target getDir _Camera);
	_Count = 1;

	For "_i" from 0 to 8 do {		
		_Position = _Target getPos [75,(_StartDir + (45*_Count))];
		_PositionWithAltitude = [_Position select 0,_Position select 1,75];
		_Camera camSetPos _PositionWithAltitude;
		_Camera camCommit 5;
		_Count = _Count + 1;
		waitUntil {camCommitted _Camera};
	}
};


Params [
	["_User",objNull,[objNull]]
];
_PlayerGroup = group _User;
Private _Target = (_PlayerGroup getVariable ['CurrentMortarTarget',false]);
_TargetGroup = group _Target;
if(typeName _Target != "OBJECT") exitWith {
	systemChat "Failed to create camera on target."
};

cameraEffectEnableHUD true;
_Position = _Target getPos [75,(_Target getDir _User)];
_Camera = "camera" camCreate [_Position select 0,_Position select 1,75];
_Camera camSetTarget (getPos _Target);
_Camera camSetFov 0.4;
_Camera cameraEffect ["EXTERNAL", "back"];
_Camera camCommit 0;
[_Camera,_Target] spawn _CameraRotation;
_User setVariable ["CameraObject",_Camera,true];
(findDisplay 46) displayAddEventHandler ["MouseButtonDown", {
	_Camera = player getVariable ["CameraObject",nil];
	if(!isNil "_Camera") then {
		_Camera camSetFov 1;
		_Camera cameraEffect ["terminate","back"];
		camDestroy _Camera;	
	}
}];

_Timer = 0;
waitUntil {sleep 1; _Timer = _Timer + 1; ({Alive _X || [_X] call ace_common_fnc_isAwake} count units _TargetGroup == 0) OR (_Timer == 30)};
sleep 10;
_Camera cameraEffect ["terminate","back"];
camDestroy _Camera;