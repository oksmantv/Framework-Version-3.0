
/*
	[[Positions],5,2] execVM "Scripts\OKS_Ambience\OKS_Mortar_Spawn.sqf";
*/

	if(!isServer) exitWith {false};

	Params["_Positions","_Rounds","_Delay"];

	for "_i" from 0 to _Rounds do {
		Private ["_Position","_PositionOrObject"];

		_PositionOrObject = selectRandom _Positions;
		if(typeName _PositionOrObject == "ARRAY") then {
			_Position = _PositionOrObject;
			systemChat "Array Detected."
		};
		if(typeName _PositionOrObject == "OBJECT") then {
			_Position = getPos _PositionOrObject;
			systemChat "Object Detected."
		};
		_Mortar = "Sh_82mm_AMOS" createvehicle [_Position select 0,_Position select 1,(175+(random 25))]; 
		_Mortar setVelocity [0,0,-5];
		sleep _Delay;		
	};

