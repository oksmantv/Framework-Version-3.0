// Example
// [getpos Plane_1,getPos PlaneTarget_1,getpos PlaneExit_1,selectRandom ["UK3CB_AAF_B_L39_AA","UK3CB_AAF_B_C130J_CARGO","UK3CB_AAF_B_Gripen"],"BombCluster_01_Ammo_F",west,250] spawn OKS_AirStrike;    
// [getpos Plane_1,getPos PlaneTarget_1,getpos PlaneExit_1,selectRandom ["UK3CB_AAF_B_L39_AA","UK3CB_AAF_B_C130J_CARGO","UK3CB_AAF_B_Gripen"],"BombCluster_01_Ammo_F",west,250] execVM "Scripts\OKS_Spawn\OKS_AirStrike.sqf";

Params [
	"_SpawnPos",
	"_StrikePos",
	"_EndPos",
	["_AircraftClassname","UK3CB_AAF_B_L39_AA",[""]],
	["_ArmamentClassname","BombCluster_01_Ammo_F",[""]],
	["_Side",west,[sideUnknown]],
	["_Height",250,[0]]
];
_Direction = getDir _StrikePos;
_StrikePos = getPosATL _StrikePos;
//_StrikePos = _StrikePos getPos [350,(getDir _StrikePos - 180)];

// [_plane,_AircraftClassname,_"_ArmamentClassname",StrikePos] spawn _CreateBombAndSendItTowardsTarget;
private _CreateBombAndSendItTowardsTarget = {

	Params ["_aircraft","_armament","_targetPos"];

	private _startPosition = [getPosASL _aircraft select 0, getPosASL _aircraft select 1, ((getPosASL _aircraft select 2) - 1)]; // Example start position [x, y, z] (1000m altitude)
	private _ordinance = createVehicle [_armament, _startPosition, [], 0, "NONE"];
	_ordinance attachTo [_aircraft,[0,-15,-3]];
	_ordinance setDir (_ordinance getDir _targetPos);
	detach _ordinance;
	
	while {alive _ordinance} do {
		private _currentPos = getPosASL _ordinance; // Get the current position of the object

		private _deltaX = (_targetPos select 0) - (_currentPos select 0);
		private _deltaY = (_targetPos select 1) - (_currentPos select 1);
		private _deltaZ = (_targetPos select 2) - (_currentPos select 2);

		// Calculate yaw (direction in horizontal plane)
		private _yaw = _deltaY atan2 _deltaX; // Yaw angle in radians

		// Calculate pitch (angle of elevation)
		private _distanceXY = sqrt(_deltaX^2 + _deltaY^2);
		private _pitch = _deltaZ atan2 _distanceXY; // Pitch angle in radians

		private _bank = 0; // No bank for direct movement

		private _pitchDeg = _pitch * 180 / pi; // Convert pitch to degrees
		private _yawDeg = _yaw * 180 / pi; // Convert yaw to degrees

		[_ordinance, _pitchDeg, _bank, _yawDeg] spawn BIS_fnc_setPitchBank;

		private _speed = 500; // Desired speed

		private _velocityX = _speed * cos _pitch * cos _yaw;
		private _velocityY = _speed * cos _pitch * sin _yaw;
		private _velocityZ = _speed * sin _pitch;

		_ordinance setVelocity [_velocityX, _velocityY, _velocityZ];
		sleep 0.5;
	}

};

_SpawnPos = [_SpawnPos#0,_SpawnPos#1,_Height];
_aircraft = CreateVehicle [_AircraftClassname,_SpawnPos, [], -1, "FLY"];
_aircraft setPosATL _SpawnPos;
_aircraft setDir (_aircraft getDir _StrikePos);
_aircraft setVelocityModelSpace [0, 500, 0];
_crew = [_aircraft,_Side] call OKS_AddVehicleCrew;
_aircraft flyInHeight _Height;

{ _X disableAI "AUTOCOMBAT"; _X disableAI "TARGET"; _X disableAI "AUTOTARGET"; _X disableAI "LIGHTS"} foreach units _crew;
_crew setBehaviour "CARELESS";
_crew setCombatMode "BLUE";

_MoveWP = _crew addWaypoint [_StrikePos,0];
_MoveWP setWaypointType "MOVE";

_ExitWP = _crew addWaypoint [_EndPos,0];
_ExitWP setWaypointType "MOVE";
_ExitWP setWaypointCompletionRadius 1000;
_ExitWP setWaypointStatements ["true", "deleteVehicle (vehicle this); {deleteVehicle _X} foreach thisList"];

waitUntil {sleep 0.2; _aircraft distance2d _strikePos < 900};
systemChat "Bombs away.";

[_aircraft,_ArmamentClassname,_StrikePos] call _CreateBombAndSendItTowardsTarget;
// _bomb = createVehicle ["BombCluster_01_Ammo_F", [_StrikePos select 0,_StrikePos select 1,60], [], 0, "NONE"];
// _bomb setDir _Direction;
// _bomb setVelocityModelSpace [0, 50, -150];

sleep 15;
_ClusterRemains = _StrikePos nearObjects 1500 select {typeOf _X == "BombCluster_01_UXO3_Ammo_F"};
{
	if(typeOf _X == "BombCluster_01_UXO3_Ammo_F") then {
		deleteVehicle _X;
		systemChat format["%1 munition deleted.",typeof _X];
		sleep 0.2;
	};
} foreach _ClusterRemains;

