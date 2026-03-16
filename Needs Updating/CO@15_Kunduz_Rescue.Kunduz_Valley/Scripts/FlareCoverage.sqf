/*
	[arrayOfPositions,delayBetweenFlares,amountOfFlaresPerBarrage,LoopCount] execVM "Scripts\FlareCoverage.sqf";
	[[
		Flare_1,Flare_2,Flare_3,Flare_4,Flare_5,Flare_6,Flare_7,Flare_8,Flare_9,
		Flare_10,Flare_11,Flare_12,Flare_13,Flare_14,Flare_15,Flare_16,Flare_17,
		Flare_18,Flare_19,Flare_20,Flare_21, Flare_22,Flare_23,Flare_24,Flare_25
	],75,3,-1] execVM "Scripts\FlareCoverage.sqf";
*/

Params ["_Positions","_Delay","_Flares","_LoopCount"];


while {_LoopCount > 0 || _LoopCount == -1} do {

	_RandomPlayer = selectRandom (allPlayers  - entities "HeadlessClient_F");
	_NearestPositions = [_Positions, [], {_x distance _RandomPlayer}, "ASCEND"] call BIS_fnc_sortBy;
	_RandomIndex = selectRandom [0,1,2];
	_Position = _NearestPositions select _RandomIndex;

	for "_i" from 0 to (_Flares - 1) do {
		_FlarePos = _Position getPos [(random 45),(random 360)];
		_FlarePos = [_FlarePos select 0, _FlarePos select 1, 175 + (random 25)];
		//[B 1-1 Actual:1 (Oksman) (w1a),"mortar_82mm","mortar_82mm","Single1","Flare_82mm_AMOS_White","8Rnd_82mm_Mo_Flare_white",1780214: shell.p3d,w1a]
		_Flare = "F_40mm_White" createVehicle _FlarePos;
		_Flare setVelocity [0,0,-0.1];
		sleep 5;
	};
	sleep _Delay;

	if(_LoopCount > 0) then {
		_LoopCount = _LoopCount - 1;
	};

};
