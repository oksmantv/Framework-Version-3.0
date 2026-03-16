Params ["_Trigger"];

{ 
	_Unit = _X;
	if (Behaviour _X != "COMBAT" && !isPlayer _X && _X in (list _Trigger) && {_Unit distance2d _X < 300} count AllPlayers == 0 ) then {
		deleteVehicle _X
	};
} foreach AllUnits;