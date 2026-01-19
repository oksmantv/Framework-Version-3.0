// [DriverTrigger_1,1,DriverEndTrigger_1] execVM "Training\DrivingCourse.sqf";

if(!isServer) exitWith {};

Params ["_StartingTrigger","_CourseIndex","_EndTrigger","_thisList"];

_PlayerVehicle = vehicle (_thisList select 0);
private _String = "";
{
	_String = _String + (name _X + ", ");
} foreach crew _PlayerVehicle;
_String = _String + format["started driving course %1.",_CourseIndex];
["hq","side",_String] remoteExec ["OKS_Chat",0];

_StartingTrigger setVariable ["IsActiveDriverCourse",true,true];
_Level1 = _StartingTrigger getVariable [format["Minefield_%1_%2",_CourseIndex,1],[]];
_Level2 = _StartingTrigger getVariable [format["Minefield_%1_%2",_CourseIndex,2],[]];
_Level3 = _StartingTrigger getVariable [format["Minefield_%1_%2",_CourseIndex,3],[]];

// Create copied arrays
_Level1Copy = [];
{
	_Level1Copy pushBackUnique _X
} forEach _Level1;

_Level2Copy = [];
{
	_Level2Copy pushBackUnique _X
} forEach _Level2;

_Level3Copy = [];
{
	_Level3Copy pushBackUnique _X
} forEach _Level3;

// Clear Current Mines
{
	_LevelArray = _X;
	{
		_MineObject = _X;
		_Mines = allMines select {_X distance _MineObject < 20};
		{
			_Mine = _X;
			deleteVehicle _Mine;
		} forEach _Mines;
		_Signs = _MineObject nearObjects ["Land_Sign_MinesTall_Greek_F",25];
		{
			_Sign = _X;
			deleteVehicle _Sign;
		} forEach _Signs;
	} forEach _LevelArray;
} foreach [_Level1Copy,_Level2Copy,_Level3Copy];

// Delete one random path
_Level1Copy deleteAt (floor(random (count _Level1Copy)));
_Level2Copy deleteAt (floor(random (count _Level2Copy)));
_Level3Copy deleteAt (floor(random (count _Level3Copy)));

// Code for Adding Mines
private _AddMines = {
	Params ["_MineObject"];
	_debug = false;
	_Dir = getDir _MineObject;
	
	if(_debug isEqualTo true) then {
		_debugObject = createVehicle ["Sign_Arrow_Green_F", [getPos _MineObject#0,getPos _MineObject#1,1], [], 0, "CAN_COLLIDE"];
	};
	_sign = createVehicle ["Land_Sign_MinesTall_Greek_F", getPos _MineObject, [], 0, "CAN_COLLIDE"];
	_sign setDir (_Dir - 180);

	_Code = {
		Params ["_MineObject","_Dir","_Count"];
		For "_i" from 0 to _Count do {
			private _Pos = _MineObject getPos [_i * 1.25,_Dir];

			if(_i == (_Count / 2)) then {
				_sign = createVehicle ["Land_Sign_MinesTall_Greek_F", _Pos, [], 0, "CAN_COLLIDE"];
				_sign setDir (getDir _MineObject - 180);
			};

			if(_i % 2 == 0) then {
				_Pos = _Pos getPos [0.75,getDir _MineObject];
			};
			if(_i % 3 == 0) then {
				_Pos = _Pos getPos [0.75,getDir _MineObject - 180];
			};
			_Mine = createMine ["ATMine", _Pos, [], 0];
		};	
	};

	[_MineObject,(getDir _MineObject + 90),8] spawn _Code;
	[_MineObject,(getDir _MineObject - 90),8] spawn _Code;
};

// Place New Mines
{
	_LevelArray = _X;
	{
		_MineObject = _X;
		_MineObject spawn _AddMines;
	} forEach _LevelArray;
} foreach [_Level1Copy,_Level2Copy,_Level3Copy];

// Set course to inactive once completed
waitUntil {sleep 0.5; triggerActivated _EndTrigger};
_StartingTrigger setVariable ["IsActiveDriverCourse",false,true];
private _String = "";
{
	_String = _String + (name _X + ", ");
} foreach crew _PlayerVehicle;
_String = _String + format["completed driving course %1.",_CourseIndex];
["hq","side",_String] remoteExec ["OKS_Chat",0];

