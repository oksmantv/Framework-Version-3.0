// execVM "ExitSoundEffects.sqf";

_player = player;
if(_player getVariable ["ExitSoundEffects",false]) exitWith {false};
_player setVariable ["ExitSoundEffects",true,true];

_player spawn {
	_player = _this;
	while {_player inArea SyrtaTrigger} do {
		//systemChat "Playing: Background Fields";	
		enableEnvironment true;
		_soundId = playSoundUI ["BackgroundFields", 0.3, 1];
		[_player, _soundId] spawn {
			Params ["_player","_soundId"];
			_Time = 0;			
			waitUntil {
				sleep 1;
				_Time = _Time + 1;
				(!(_player inArea SyrtaTrigger)) || _Time >= 322 || !Alive _player
			};
			//systemChat format["Outside Syrta Stopping Id: %1",_soundId];
			stopSound _soundId;
			enableEnvironment true;	
			sleep 5;
			if(!Alive _player) then {
				_player setVariable ["ResearchSoundEffects",false,true];
				execVM "ExitSoundEffects.sqf";
			};			
		};
		sleep 322;
		stopSound _soundId;
		enableEnvironment true;			
	};
};