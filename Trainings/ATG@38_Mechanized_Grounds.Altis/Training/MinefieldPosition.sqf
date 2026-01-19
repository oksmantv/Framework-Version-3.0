// [this,DriverTrigger_1,1,1] execVM "Training\MinefieldPosition.sqf";

if(!isServer) exitWith {};

Params ["_MinefieldObject","_StartingTrigger","_CourseIndex","_LevelIndex"];

_OldValue = _StartingTrigger getVariable [format["Minefield_%1_%2",_CourseIndex,_LevelIndex],[]];
_OldValue pushBackUnique _MinefieldObject;
_StartingTrigger setVariable [format["Minefield_%1_%2",_CourseIndex,_LevelIndex],_OldValue,true];



