
/*
	[thisTrigger,6] execVM "Scripts\OKS_Ambience\OKS_MortarZone.sqf";
*/

	Params["_Trigger","_DelayPerRound"];

	waitUntil {sleep 0.5; triggerActivated _Trigger};
	systemChat "Mortar Zone activated..";
	while {triggerActivated _Trigger} do {

		_AllVehicles = [];
		{_AllVehicles pushBackUnique (vehicle _X)} foreach (list _Trigger);
		
		_Target = selectRandom _AllVehicles;
		_StrikePosition = getPos _Target;
		SystemChat str ["Target Selected:",_Target];

		while {
			{_StrikePosition distance _X < 30} count allplayers > 0
		} do {
			_RandomDirectionRight = [30, 40] call BIS_fnc_randomInt;
			_RandomDirectionLeft = [320, 330] call BIS_fnc_randomInt;
			_RandomDirection = selectRandom [_RandomDirectionRight,_RandomDirectionLeft];
			_RandomDistance = [55, 65] call BIS_fnc_randomInt;
			_StrikePosition = _Target getPos [_RandomDistance,_RandomDirection];
		};

		_Round = "Sh_82mm_AMOS" createvehicle [_StrikePosition select 0,_StrikePosition select 1,(125+(random 25))]; 
		_Round setVelocity [0,0,-75];
		systemChat "Mortar Round Spawned..";
		sleep _DelayPerRound;		
	};

