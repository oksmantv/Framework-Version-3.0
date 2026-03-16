/*
	OKS_Enemy_Sentry
	[this, true, 1000, 500, Hunt_1] spawn OKS_Enemy_Sentry;
	[Unit, ShouldStartHunt, RangeFromUnitFindHunters, HuntersRange, VariableToSetToTrue] execVM "Scripts\OKS_Ambience\OKS_Enemy_Sentry.sqf";
*/

 	if(!isServer) exitWith {};

	Params ["_Unit","_ShouldSetNearbyToHunt","_NearbyHunterRange","_HuntRange","_Variable"];
	group _Unit setVariable ["GOL_IsStatic",true,true];
	group _Unit setVariable ["acex_headless_blacklist",true,true];

	if(count waypoints _Unit <= 1) then {
		_Unit disableAI "PATH";
	};	
	_Unit setUnitPos "UP";

	waitUntil {sleep 2; {_Unit knowsAbout _X > 3.99} count AllPlayers > 0};
	systemChat "Detected player..";
	sleep 5;
	systemChat str _Variable;	
	if(Alive _Unit && [_Unit] call ace_common_fnc_isAwake) then {
		systemChat "Player confirmed. Calling hunt";	
		if(!isNil "_Variable") then {
			SystemChat format ["%1 set to true",_Variable];
			Call Compile Format ["%1 = True; PublicVariable '%1'",_Variable];
		};

		if (!(isNil "lambs_wp_fnc_taskHunt") && _ShouldSetNearbyToHunt) then {
			
			_EnemyGroups = [];
			{ if (side _X == [_Unit] call GW_Common_Fnc_getSide && leader _X distance2d _Unit < _NearbyHunterRange) then {_EnemyGroups pushBackUnique _X}} foreach AllGroups;
			/* 
				* Arguments:
				* 0: Group performing action, either unit <OBJECT> or group <GROUP>
				* 1: Range of tracking, default is 500 meters <NUMBER>
				* 2: Delay of cycle, default 15 seconds <NUMBER>
				* 3: Area the AI Camps in, default [] <ARRAY>
				* 4: Center Position, if no position or Empty Array is given it uses the Group as Center and updates the position every Cycle, default [] <ARRAY>
				* 5: Only Players, default true <BOOL>
				* 6: enable dynamic reinforcement <BOOL>
				* 7: Enable Flare <BOOL> or <NUMBER> where 0 disabled, 1 enabled (if Units cant fire it them self a flare is created via createVehicle), 2 Only if Units can Fire UGL them self
			*/	
			{
				if(!(_X getVariable ["LAMBS_HUNTING",false]) && !(_X getVariable ["GOL_IsStatic",false]) ) then {
					_X setVariable ["LAMBS_HUNTING",true,true];
					_X setBehaviour "AWARE";
					_X setSpeedMode "FULL";
					{[_X,"FSM"] remoteExec ["disableAI",0]} foreach units _X;
					[_X, _HuntRange, 15, [], getPos _Unit, true,false,true] remoteExec ["lambs_wp_fnc_taskHunt",0];
				};		
			} foreach _EnemyGroups;
		}

	};