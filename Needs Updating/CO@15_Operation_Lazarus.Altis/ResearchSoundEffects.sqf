// execVM "ResearchSoundEffects.sqf";

_player = player;

if(_player getVariable ["ResearchSoundEffects",false]) exitWith {false};


waitUntil {_player setVariable ["ResearchSoundEffects",true,true];
	sleep 0.1;
	_player inArea Research_1 || _player inArea Research_2 || _player inArea Research_3
};

_player spawn {
	_player = _this;
	while {_player inArea Research_1 || _player inArea Research_2 || _player inArea Research_3} do {
		//systemChat "In Area Playing: Background";	
		enableEnvironment false;
		_soundId = playSoundUI ["BackgroundHorror", 0.3, 1];
		[_player, _soundId] spawn {
			Params ["_player","_soundId"];
			_Time = 0;			
			waitUntil {
				sleep 1;
				_Time = _Time + 1;
				(!(_player inArea Research_1) && !(_player inArea Research_2) && !(_player inArea Research_3)) || _Time >= 366 || !Alive _player
			};
			//systemChat format["Outside Area Stopping Id: %1",_soundId];
			stopSound _soundId;
			enableEnvironment true;
			sleep 5;
			if(!Alive _player) then {
				_player setVariable ["ResearchSoundEffects",false,true];
				execVM "ResearchSoundEffects.sqf";
			};
		};
		sleep 366;
		stopSound _soundId;
		enableEnvironment true;			
	};
};

_player spawn {
	_player = _this;
	while {_player inArea Research_1 || _player inArea Research_2 || _player inArea Research_3} do {
		//systemChat "In Area Playing: Alarm";		
		enableEnvironment false;		
		_soundId = playSoundUI ["alarmHorror", 0.5, 1];
		[_player, _soundId] spawn {
			Params ["_player","_soundId"];
			_Time = 0;
			waitUntil {
				sleep 1;
				_Time = _Time + 1;
				(!(_player inArea Research_1) && !(_player inArea Research_2) && !(_player inArea Research_3)) || _Time >= 31 || !Alive _player
			};
			//systemChat format["Outside Area Stopping Id: %1",_soundId];
			stopSound _soundId;
			enableEnvironment true;		
			sleep 5;
			if(!Alive _player) then {
				_player setVariable ["ResearchSoundEffects",false,true];
				execVM "ResearchSoundEffects.sqf";
			};
		};
		sleep 31;
		stopSound _soundId;
		enableEnvironment true;			
	};
};