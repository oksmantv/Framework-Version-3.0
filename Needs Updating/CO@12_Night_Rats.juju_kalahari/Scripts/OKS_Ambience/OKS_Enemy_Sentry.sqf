/*
	OKS_Enemy_Sentry
	[this, east, 0.3,true,true, 1000, 500, Hunt_1] spawn OKS_Enemy_Sentry;
	[Unit or Position, Side, ChanceForRadioGear, RequiresRadioToCallHunt, ShouldStartHunt, RangeFromUnitFindHunters, HuntersRange, VariableToSetToTrue] execVM "Scripts\OKS_Ambience\OKS_Enemy_Sentry.sqf";
*/

 	if(!isServer) exitWith {};

	Params ["_Unit","_Side","_ChanceForRadioEquipment","_RequiresRadioToCallHunt","_ShouldSetNearbyToHunt","_NearbyHunterRange","_HuntRange","_Variable"];
	Private ["_Units","_Dice","_Leader","_NearFriendlies","_RadioNearby"];
	Switch (_Side) do
	{
		case blufor:	// BLUFOR settings
		{
			_Leader = ["B_soldier_SL_F","B_Soldier_TL_F"];
			_Units = [
				"B_Soldier_A_F",
				"B_Soldier_AR_F",
				"B_Soldier_AR_F",
				"B_medic_F",
				"B_medic_F",
				"B_Soldier_GL_F",
				"B_HeavyGunner_F",
				"B_soldier_M_F",
				"B_Soldier_F",
				"B_Soldier_F",
				"B_Soldier_F",
				"B_Soldier_LAT_F"
			];
		};
		case opfor:	// OPFOR settings
		{
			_Leader = ["O_soldier_SL_F","O_Soldier_TL_F"];
			_Units = [
				"O_Soldier_A_F",
				"O_Soldier_AR_F",
				"O_Soldier_AR_F",
				"O_medic_F",
				"O_medic_F",
				"O_Soldier_GL_F",
				"O_HeavyGunner_F",
				"O_soldier_M_F",
				"O_Soldier_F",
				"O_Soldier_F",
				"O_Soldier_F",
				"O_Soldier_LAT_F"
			];
		};
		case independent:	// INDEPENDENT settings
		{
			_Leader = ["I_soldier_SL_F","I_Soldier_TL_F"];
			_Units = [
				"I_Soldier_A_F",
				"I_Soldier_AR_F",
				"I_Soldier_AR_F",
				"I_medic_F",
				"I_medic_F",
				"I_Soldier_GL_F",
				"I_HeavyGunner_F",
				"I_soldier_M_F",
				"I_Soldier_F",
				"I_Soldier_F",
				"I_Soldier_F",
				"I_Soldier_LAT_F"
			];
		};
		// DO NOT EDIT ANYTHING BELOW \\
		default
		{
			_Units = "";
		};
	};

	if(typeName _Unit isEqualTo "ARRAY") then {
		_Pos = _Unit;
		_UnitClass = selectRandom _Units;
		_Group = CreateGroup _Side;

		_Dice = random 1;
		if(_Dice < _ChanceForRadioEquipment && _RequiresRadioToCallHunt) then {
			_Unit = _Group CreateUnit [_Leader select 0, _Pos, [], -1, "CAN_COLLIDE"];
			_Unit setVariable ["GOL_HasRadio",true,true];
		} else {
			_Unit = _Group CreateUnit [_UnitClass, _Pos, [], -1, "CAN_COLLIDE"];	
		};	
        _Unit setRank "PRIVATE";
		_Dir = (random 360);
		_Unit setDir _Dir;
		_Watch = _Unit getPos [50,_Dir];
		_Unit doWatch _Watch;
	} else {
		if(_Unit isKindOf "MAN") then {
			if(typeOf _Unit in [_Leader]) then {
				_Unit setVariable ["GOL_HasRadio",true,true];
				removeBackpack _Unit;
				_Unit addBackpack "UK3CB_B_O_Radio_Backpack";
				SystemChat "Is Squad Leader giving Radio Variable.";
			};	
		} else {
			
			_Pos = getPosATL _Unit;
			_Dir = getDir _Unit;
			//deleteVehicle _Unit;
			_UnitClass = selectRandom _Units;
			_Group = CreateGroup _Side;

			_Dice = random 1;
			if(_Dice < _ChanceForRadioEquipment && _RequiresRadioToCallHunt) then {
				_Unit = _Group CreateUnit [_Leader select 0, _Pos, [], -1, "CAN_COLLIDE"];
				_Unit setVariable ["GOL_HasRadio",true,true];
			} else {
				_Unit = _Group CreateUnit [_UnitClass, _Pos, [], -1, "CAN_COLLIDE"];	
			};
			_Unit setPosATL _Pos;		
			_Unit setRank "PRIVATE";
			_Unit setDir _Dir;
			_Watch = _Unit getPos [50,_Dir];
			_Unit doWatch _Watch;
		};
	};

	group _Unit setVariable ["GOL_IsStatic",true,true];
	group _Unit setVariable ["acex_headless_blacklist",true,true];

	if(count waypoints _Unit <= 1) then {
		_Unit disableAI "PATH";
		Group _Unit setVariable ["GOL_Sentry",true,true];
	};	
	_Unit setUnitPos "UP";

	[_Unit,0.8] spawn {
	
		Params ["_Unit","_Chance"];
		Private ["_SoundFileName"];

		while {Alive _Unit && [_Unit] call ace_common_fnc_isAwake} do {
			_Dice = random 1;
			if(_Dice < _Chance && {_X distance _Unit < 40} count AllPlayers > 0) then {
				//SystemChat format ["Dice %1 lower than chance %2. Successful trigger...",_Dice,_Chance];
					
				if(behaviour _Unit != "COMBAT") then {
					_SoundFileName = selectRandom ["vn-talks-n-01","vn-talks-n-02","vn-talks-n-03","vn-talks-n-04","vn-talks-n-05","vn-talks-n-06","vn-talks-n-07","vn-talks-n-08","vn-talks-n-09","vn-talks-n-10","vn-talks-n-11","vn-talks-n-12","vn-talks-n-13","vn-talks-n-14","vn-talks-n-15","vn-talks-n-16","vn-talks-n-17","vn-talks-n-18","vn-talks-n-19","vn-talks-n-20","vn-talks-n-21","vn-talks-n-22","vn-talks-n-23","vn-talks-n-24","vn-talks-n-25","vn-talks-n-26","vn-talks-n-27","vn-talks-n-28","vn-talks-n-29","vn-talks-n-30"];
				} else {
					_SoundFileName = selectRandom ["vn-talks-y-07","vn-talks-y-08","vn-talks-y-09","vn-talks-y-20","vn-talks-y-26","vn-talks-y-17"];	
				};					
				SystemChat format["Selected SoundFile: %1.ogg",_SoundFileName];
				playSound3D [MISSION_ROOT + format["Scripts\OKS_Ambience\Talk\%1.ogg",_SoundFileName], _Unit, false, getPosASL _Unit, 5, 1, 75];		
			};
			sleep 10 + (random 20);
		};
	};

	waitUntil {sleep 2; {_Unit knowsAbout _X > 3.99} count AllPlayers > 0 || !Alive _Unit};

	if(Alive _Unit && [_Unit] call ace_common_fnc_isAwake) then {
		systemChat "Detected player..";
		_SoundFileName = selectRandom ["vn-talks-y-07","vn-talks-y-08","vn-talks-y-09","vn-talks-y-20","vn-talks-y-26","vn-talks-y-17"];
		playSound3D [MISSION_ROOT + format["Scripts\OKS_Ambience\Talk\%1.ogg",_SoundFileName], _Unit, false, getPosASL _Unit, 5, 1, 150];	
	};
	sleep 5;
	if(Alive _Unit && [_Unit] call ace_common_fnc_isAwake) then {
		_RadioNearby = false;	
		if(_RequiresRadioToCallHunt && !(_Unit getVariable ["GOL_HasRadio",false])) then {
			_NearFriendliesWithRadio = (_Unit nearEntities ["Man",300]) select {!isPlayer _X && side _X == _Side && (_X getVariable ["GOL_HasRadio",false] isEqualTo true) && Alive _X && [_X] call ace_common_fnc_isAwake};
			_RadioNearby = count _NearFriendliesWithRadio > 0;
		};
		if(_RequiresRadioToCallHunt && !(_Unit getVariable ["GOL_HasRadio",false]) && !(_RadioNearby)) exitWith { SystemChat "Requires Radio In vicinity to request reinforcements. Exiting.."};
		systemChat "Radio Nearby or In-hand. Calling hunt.";	
		_SoundFileName = selectRandom ["vn-radio-y-17","vn-radio-y-18","vn-radio-y-19","vn-radio-y-09","vn-radio-y-05"];
		playSound3D [MISSION_ROOT + format["Scripts\OKS_Ambience\Talk\%1.ogg",_SoundFileName], _Unit, false, getPosASL _Unit, 5, 1, 150];	
		if(!isNil "_Variable") then {
			SystemChat format ["%1 set to true",_Variable];
			Call Compile Format ["%1 = True; PublicVariable '%1'",_Variable];
		};

		if(_ShouldSetNearbyToHunt isEqualType _Side) exitWith { SystemChat format["Broken variables for unit: %1. Exiting..",_Unit] };

		if(_ShouldSetNearbyToHunt && !(isNil "lambs_wp_fnc_taskRush")) then {
				{	
					_RandomDice = random 1;
					_Group = _X;
					if (
						side _X == [_Unit] call GW_Common_Fnc_getSide &&
						leader _X distance2d _Unit < _NearbyHunterRange &&
						_X getVariable ["GOL_Sentry",false] &&
						!(_X getVariable ["GOL_SentryCalled",false]) &&
						_RandomDice < 0.25
					) then {
						_PlayersDetected = AllPlayers select {_Group knowsAbout _X > 3};
						if(_PlayersDetected isNotEqualTo []) then
						{
							_Hunt = _X addWaypoint [getPos (selectRandom _PlayersDetected),20];
							_Hunt setWaypointType "SAD";
							{[_X,"PATH"] remoteExec ["EnableAI",0]} foreach units _X;
						}
					};
					_X setVariable ["GOL_SentryCalled",true,true];
				} foreach AllGroups;	
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
			_Random = random 1;
			if(_Random < 0.5) then {
				{
					if(!(_X getVariable ["LAMBS_HUNTING",false]) && !(_X getVariable ["GOL_IsStatic",false]) ) then {
						_X setVariable ["LAMBS_HUNTING",true,true];
						_X setBehaviour "AWARE";
						_X setSpeedMode "FULL";
						_randomFlare = random 100;
						Private ["_flareValue"];
						if(_randomFlare > 50) then {
							_flareValue = true;
						} else {
							_flareValue = false;
						};
						{[_X,"FSM"] remoteExec ["disableAI",0]} foreach units _X;
						[_X, _HuntRange, 15, [], getPos _Unit, true,false,_flareValue] remoteExec ["lambs_wp_fnc_taskHunt",0];
					};		
				} foreach _EnemyGroups;
				SystemChat "Requested Hunt Support.";
			} else {
				{
					if(!(_X getVariable ["LAMBS_HUNTING",false]) && !(_X getVariable ["GOL_IsStatic",false]) ) then {
						_X setVariable ["LAMBS_HUNTING",true,true];
						_X setBehaviour "AWARE";
						_X setSpeedMode "FULL";
						{[_X,"FSM"] remoteExec ["disableAI",0]} foreach units _X;
						[_X, _HuntRange, 15, [], getPos _Unit, true] remoteExec ["lambs_wp_fnc_taskRush",0];
					};		
				} foreach _EnemyGroups;
				SystemChat "Requested Rush Support.";
			};
		};
	};