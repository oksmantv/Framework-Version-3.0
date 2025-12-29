
/*
	[this,20,40,true] execVM "Scripts\OKS_Ambience\OKS_Flare_Spawn.sqf";
*/

	Params["_Position","_FlareCount","_DelayPerFlare","_RandomPosition"];

	for "_i" from 0 to _FlareCount do {
		if(_RandomPosition) then {
			_Position = _Position getPos [random 35,random 360];
			_Position select 2 
		};	
		_Flare = "F_40mm_White" createvehicle [_Position select 0,_Position select 1,(175+(random 25))]; 
		_Flare setVelocity [0,0,-10];
		sleep _DelayPerFlare;		
	};

