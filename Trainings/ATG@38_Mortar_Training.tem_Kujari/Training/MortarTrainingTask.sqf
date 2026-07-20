/*

 	[Mortar_1,[MortarTarget_1,MortarTarget_2,MortarTarget_3,MortarTarget_4,MortarTarget_5,MortarTarget_6]] spawn MortarTrainingTask;
	[vehicle player,[MortarTarget_1,MortarTarget_2,MortarTarget_3,MortarTarget_4,MortarTarget_5,MortarTarget_6]] spawn MortarTrainingTask;
	[vehicle player,[MortarTarget_1,MortarTarget_2,MortarTarget_3,MortarTarget_4,MortarTarget_5,MortarTarget_6]] execVM "Training\MortarTrainingTask.sqf";

*/

Params [
	["_Player",objNull,[objNull]],
	["_Mortar",objNull,[objNull]],
	["_TargetArray",[],[[]]],
	["_EnemySide",east,[sideUnknown]],
	["_Snapfiring",true,[true]]
];

Private ["_TaskText"];

if(_Snapfiring) then {
	_TaskText = "(Snapfiring)."
} else {
	_TaskText = "(Marker Guided)."
};

_MortarSelectTarget = {

	Params ["_TargetArray"];
	Private ["_SelectedTarget"];

	_InactiveArray = _TargetArray select {!(_X getVariable ["IsActiveTarget",false])};	
	_SelectedTarget = selectRandom _InactiveArray;
	_SelectedTarget setVariable ["IsActiveTarget",true,true];

	_SelectedTarget;
};

_CreateEnemyTarget = {
	Params ["_Position","_Side"];

	_Settings = [_Side] call OKS_fnc_Dynamic_Settings;
	_Settings Params ["_UnitArray","_SideMarker","_SideColor","_Vehicles","_Civilian","_Trigger"];
	_UnitArray Params ["_Leaders","_Units","_Officer"];

	_Group = CreateGroup _Side;
	_Group setVariable ["acex_headless_blacklist",true,true];

	for "_i" from 1 to 5 do
	{
		Private "_Unit";
		if ( (count (units _Group)) == 0 ) then
		{
			_Unit = _Group CreateUnit [(_Leaders call BIS_FNC_selectRandom), [_Position select 0,_Position select 1,0], [], 12, "NONE"];
			_Unit setRank "SERGEANT";
		} else {
			if(count (units _Group) == 1) then {
				_Unit = _Group CreateUnit [(_Units select 0), [_Position select 0,_Position select 1,0], [], 12, "NONE"];
			} else {
				_Unit = _Group CreateUnit [(_Units call BIS_FNC_selectRandom), [_Position select 0,_Position select 1,0], [], 12, "NONE"];	
			}				
		};
	};
	{_X setUnitPos "Middle"; _X disableAI "PATH";} foreach units _Group;

	if(!isNil "FriendlySquad") then {
		_Group setCombatMode "RED";
		{
			_Unit = _X;
			{_X reveal [_Unit,4]; _X doTarget _Unit;} foreach units _Group;
		} foreach units (group FriendlySquad);
	} else {
		_Group setCombatMode "BLUE";
	};
	
	_Group;
};

_MortarTarget = [_TargetArray] call _MortarSelectTarget;
_Group = [getPos _MortarTarget,_EnemySide] call _CreateEnemyTarget;

_PlayerGroup = group _Player;
_PlayerGroup setVariable ['ActiveMortarTask',true,true];
_PlayerGroup setVariable ['CurrentMortarTarget',Leader _Group,true];

if(_Snapfiring) then {
	[Leader _PlayerGroup,format["Target Acquired: Direction: %1 - Range: %2",round(_Mortar getDir _MortarTarget),round(_Mortar distance _MortarTarget)]] remoteExec ["groupChat",0];
} else {
	[Leader _PlayerGroup,format["Target Acquired: Grids %1",mapGridPosition _MortarTarget]] remoteExec ["groupChat",0];
};

_RandomId = format ["%1_Task_%2",groupId _PlayerGroup,random 9999];
[
	_PlayerGroup,
	_RandomId,
	[
		format ["You have been assigned an enemy target. Use the map or the following information to destroy the target. Direction: %1 - Range: %2",round(_Mortar getDir _MortarTarget),round(_Mortar distance _MortarTarget)],
		"Barrage Target",
		"Barrage"
	],
	leader _Group,
	"ASSIGNED",
	-1,
	true,
	"destroy",
	false
] call BIS_fnc_taskCreate;

// Start Timer
[_PlayerGroup,_Group] spawn {
	params ["_PlayerGroup","_Group"];
	private ["_Time"];
	_Time = 0;

	while {{Alive _X && [_X] call ace_common_fnc_isAwake} count units _Group <= 1} do {
		sleep 1;
		_Time = _Time + 1;
		_PlayerGroup setVariable ["OKS_Timer",_Time,true];
		//SystemChat format ["Time: %1",_Time];
	};

	//systemChat "Timer Ended.";	
};


waitUntil {sleep 1; {Alive _X && [_X] call ace_common_fnc_isAwake} count units _Group <= 1};
[_RandomId, "SUCCEEDED", true] call BIS_fnc_taskSetState;
_MortarTarget setVariable ["IsActiveTarget",false,true];		
_PlayerGroup setVariable ['ActiveMortarTask',false,true];
_PlayerGroup setVariable ['CurrentMortarTarget',false,true];

{
	_X setDamage 1;
} foreach units _Group;

_Time = _PlayerGroup getVariable ["OKS_Timer",0];

_Players = units _PlayerGroup;
_Names = "T: ";
{
	_Names = _Names + format["%1, ", name _X];
} forEach _Players;
["hq","side",format["%1. Time of %2 seconds %3",_Names,_Time,_TaskText]] remoteExec ["OKS_fnc_Chat",0];

_TimeArray = _PlayerGroup getVariable ["OKS_TimeArray",[]];
_TimeArray pushBackUnique _Time;
_PlayerGroup setVariable ["OKS_TimeArray",_TimeArray,true];

