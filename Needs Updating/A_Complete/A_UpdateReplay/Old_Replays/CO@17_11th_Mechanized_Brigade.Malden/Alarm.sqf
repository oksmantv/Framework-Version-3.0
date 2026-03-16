
params ["_vehicle"];

if(!isServer) exitWith {};

[_vehicle] spawn {
		_vehicle = _this select 0;
		while {(alive _vehicle)} do {
			_vehicle say3d ["alarma_aeriana_scurt",3500];
			sleep 34;
		};
	};