/* OKS Inactive VehicleSpawn

	Params:
	1 - Position - Array Position, Object or Marker
	2 - Direction - Number Degrees, nil if using marker or object
	3 - Vehicle classname
	4 - Enemy Side - Side
	5 - Delay - Delay until the crew activates
	6 - Action - "static", "hunt" or "patrol" upon activation
	7 - Range - Range of previous action

	Example:
	[position_1,nil,"UK3CB_ARD_O_T55",east,20,"hunt",500] spawn OKS_Inactive_VehicleSpawn;
	[position_1,nil,"UK3CB_ARD_O_T55",east,20,"hunt",500] execVM "Scripts\OKS_Spawn\OKS_Inactive_VehicleSpawn.sqf";
 */

Params [
	"_Position",
	["_Direction",nil,[0]],
	["_VehicleType","",[""]],
	["_Side",east,[sideUnknown]],
	["_Delay",600,[0]],
	["_Action","hunt",[""]],
	["_Range",500,[0]]
];
Private ["_DeleteObject","_Condition","_CurrentTime"];

	switch (typeName _Position) do {
		case "OBJECT": { _DeleteObject = _Position; _Direction = getDir _Position; _Position = getPosATL _Position; };
		case "STRING": { _Direction = markerDir _Position; _Position = getMarkerPos _Position; };
		default { _Position = _Position };
	};

	if(!isNil "_DeleteObject") then {
		deleteVehicle _DeleteObject
	};

	_Vehicle = createVehicle [_VehicleType, _Position, [], 0, "CAN_COLLIDE"];
	if(!isNil "_Direction") then {
		_Vehicle setDir _Direction;
	} else {
		_Vehicle setDir (random 360);
	};

	private _Group = [_Vehicle,_Side,0,0,true] call OKS_fnc_AddVehicleCrew;
	_Vehicle lock true;

	_CurrentTime = 0;
	waitUntil {sleep 1; _CurrentTime = _CurrentTime + 1; _Condition = ({_Group knowsAbout _X > 3.5} count (AllPlayers - entities "HeadlessClient_F") > 0); _CurrentTime >= _Delay || _Condition};

	if({Alive _X && [_X] call ace_common_fnc_isAwake} count units _Group > 0) then {

		if(_Condition) then {
			systemChat "Crew Activated by Enemy Presence."
		} else {
			systemChat "Crew Activated by Delay."
		};
		
		_Vehicle lock false;
		for "_i" from 0 to ([_VehicleType, false] call BIS_fnc_crewCount) do {
			if(_i == 0) then {
				_Gunner = ((units _Group) select 0);

				if(!isNil "_Gunner") then {
					_Gunner setUnitPos "UP";
					_Gunner enableAI "PATH";
					_Gunner assignAsGunner _Vehicle;
					[_Gunner] orderGetIn true;
				}				
			};
			if(_i == 1) then {
				_Driver = ((units _Group) select 1);
				if(!isNil "_Driver") then {			
					_Driver setUnitPos "UP";
					_Driver enableAI "PATH";						
					_Driver assignAsDriver _Vehicle;
					[_Driver] orderGetIn true;
				}
			};
			if(_i == 2) then {
				_Commander = ((units _Group) select 2);
				if(!isNil "_Commander") then {	
					_Commander setUnitPos "UP";
					_Commander enableAI "PATH";								
					_Commander assignAsCommander _Vehicle;
					[_Commander] orderGetIn true;
				}
			};			
		};

		waitUntil {sleep 1; {!Alive _X || _X in _Vehicle} count units _Group == count units _Group};

		// Initiate Action
		switch (_Action) do {

			case "hunt": { 
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
				waitUntil {sleep 1; !(isNil "lambs_wp_fnc_taskHunt")};
				[_Group, _Range, 30, [], [], true,false,false] remoteExec ["lambs_wp_fnc_taskHunt",0];				
			};

			case "patrol": {
				_Area = createTrigger ["EmptyDetector", getPos player];
				_Area setTriggerArea [_Range, _Range, 0, false];
				[_Area,_Group,4] spawn OKS_Vehicle_Waypoints;
			};

			default {
				_CurrentDriver = driver _Vehicle;
				if(!isNil "_CurrentDriver") then {
					[[_CurrentDriver],{ Params ["_unit"]; _unit disableAI "PATH"; doStop _unit; }] remoteExec ["BIS_FNC_CALL",0]; 
					_vehicle engineOn true;
				}
			};
		};

	};




	

	

