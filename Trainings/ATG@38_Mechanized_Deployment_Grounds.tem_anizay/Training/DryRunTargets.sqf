// [] spawn DryRunTargets;
// Server only. Running it again resets the course (all targets shown, lowered, and re-armed).

if (!isServer) exitWith {};

// Wait for all target compounds to exist.
waitUntil {!isNil "Dry_Array_1" && !isNil "Dry_Array_2" && !isNil "Dry_Array_3"};

// Stop anything left over from a previous run (main loop + fade-outs).
{terminate _x} forEach (missionNamespace getVariable ["DRT_Handles", []]);
DRT_Handles = [];

nopop = true;
publicVariable "nopop";

private _Compounds = [Dry_Array_1, Dry_Array_2, Dry_Array_3];
private _PopRangeMin = 50;    // Each target gets its own random pop range between min and max.
private _PopRangeMax = 150;
private _FaceOffset = 180;    // Models are inverted: target front = model back. Set to 0 if they end up facing away.
private _TurnInterval = 0.1;  // Seconds between updates.
private _MinTurn = 2;         // Ignore direction changes smaller than this (degrees).
private _DeathDelay = 2;      // Seconds between being downed and starting the fade-out.

// Reset: show every target, lower it, clear its state and give it its own pop range.
private _Live = [];
{
	{
		_x hideObjectGlobal false;
		_x animateSource ["terc", 1];
		_x setVariable ["DRT_Hit", false];
		_x setVariable ["DRT_Active", false];
		_x setVariable ["DRT_Popped", false];
		_x setVariable ["DRT_Range", _PopRangeMin + random (_PopRangeMax - _PopRangeMin)];

		// Register hits once per target (the handler survives resets).
		if (isNil {_x getVariable "DRT_EH"}) then {
			_x setVariable ["DRT_EH", _x addEventHandler ["Hit", {
				(_this select 0) setVariable ["DRT_Hit", true];
			}]];
		};

		_Live pushBack _x;
	} forEach _x;
} forEach _Compounds;

// Flicker out (inspired by AI_Death.sqf) and finish fully hidden. Reset brings it back.
private _FadeOut = {
	params ["_Target", "_DeathDelay"];

	sleep _DeathDelay;
	{
		_x params ["_Count", "_Time"];
		for "_i" from 1 to _Count do {
			_Target hideObjectGlobal true;  sleep _Time;
			_Target hideObjectGlobal false; sleep _Time;
		};
	} forEach [[3, 0.15], [3, 0.10], [4, 0.05]];
	_Target hideObjectGlobal true;
};

// One loop for every target. Each target:
//  - stays down until a player comes within its own range, then pops up on its own,
//  - turns to face the nearest player while it is up,
//  - once shot, stops turning, waits, then fades out.
private _Run = {
	params ["_Live", "_FaceOffset", "_TurnInterval", "_MinTurn", "_DeathDelay", "_FadeOut"];

	while {_Live isNotEqualTo []} do {
		private _Players = allPlayers select {alive _x};

		{
			private _Target = _x;
			private _Pairs = _Players apply {[_Target distance2D _x, _x]};
			_Pairs sort true;
			private _Nearest = if (_Pairs isEqualTo []) then {[1e10, objNull]} else {_Pairs select 0};

			if !(_Target getVariable "DRT_Active") then {
				if ((_Nearest select 0) < (_Target getVariable "DRT_Range")) then {
					_Target setVariable ["DRT_Active", true];
					_Target animateSource ["terc", 0];
				};
			} else {
				private _Phase = _Target animationSourcePhase "terc";
				if (_Phase < 0.5) then {_Target setVariable ["DRT_Popped", true]};

				if (_Target getVariable "DRT_Hit" || {_Target getVariable "DRT_Popped" && {_Phase > 0.9}}) then {
					// Downed: stop turning, keep it down, then fade it out.
					_Live deleteAt (_Live find _Target);
					_Target animateSource ["terc", 1];
					DRT_Handles pushBack ([_Target, _DeathDelay] spawn _FadeOut);
				} else {
					if (!isNull (_Nearest select 1)) then {
						private _Dir = (_Target getDir (_Nearest select 1)) + _FaceOffset;
						if (abs (((_Dir - (getDir _Target)) + 540) % 360 - 180) > _MinTurn) then {
							_Target setDir _Dir;
						};
					};
				};
			};
		} forEach +_Live;

		sleep _TurnInterval;
	};
};

// Short pause after the reset, then tell everyone the course is live.
sleep 0.4;
["INSTRUCTOR", "side", "Dry run course started"] spawn OKS_fnc_ChatGlobal;

DRT_Handles pushBack ([_Live, _FaceOffset, _TurnInterval, _MinTurn, _DeathDelay, _FadeOut] spawn _Run);
