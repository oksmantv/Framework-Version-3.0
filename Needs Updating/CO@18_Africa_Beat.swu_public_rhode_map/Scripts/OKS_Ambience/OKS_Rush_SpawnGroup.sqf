/*
	OKS_Rush_SpawnGroup
	_Group = [SpawnPos,UnitsPerBase,Side,Range] call OKS_Rush_SpawnGroup;
	[SpawnPos,UnitsPerBase,Side,Range] spawn OKS_Rush_SpawnGroup;
	[SpawnPos,UnitsPerBase,Side,Range] execVM "Scripts\OKS_Dynamic\OKS_Rush_SpawnGroup.sqf";
*/

 	if(!isServer) exitWith {};

	Params [
		["_SpawnPos",objNull,[[],objNull]],
		["_NumberInfantry",5,[0]],
		["_Side",east,[sideUnknown]],
		["_Range",1000,[0]],
		["_HuntInsteadOfRush",false,[true]]	
	];
	private ["_RandomPos","_Center"];

	_Settings = [_Side] call OKS_Dynamic_Setting;
	_Settings Params ["_UnitArray","_SideMarker","_SideColor","_Vehicles","_Civilian","_Trigger"];
	_UnitArray Params ["_Leaders","_Units","_Officer"];
	_Group = CreateGroup _Side;
	for "_i" from 1 to (_NumberInfantry) do
	{
		Private "_Unit";
		if ( (count (units _Group)) == 0 ) then
		{
			_Unit = _Group CreateUnit [(_Leaders call BIS_FNC_selectRandom), _SpawnPos getPos [(5+(random 5)),(random 360)], [], 0, "NONE"];
			_Unit setRank "SERGEANT";
		} else {
			_Unit = _Group CreateUnit [(_Units call BIS_FNC_selectRandom), _SpawnPos getPos [(5+(random 5)),(random 360)], [], 0, "NONE"];
			_Unit setRank "PRIVATE";
		};
	};
	{[_x] remoteExec ["GW_SetDifficulty_fnc_setSkill",0]} foreach units _Group;

	/* 
		Arguments:
		0: Group performing action, either unit <OBJECT> or group <GROUP>
		1: Range of tracking, default is 500 meters <NUMBER>
		2: Delay of cycle, default 15 seconds <NUMBER>
		3: Area the AI Camps in, default [] <ARRAY>
		4: Center Position, if no position or Empty Array is given it uses the Group as Center and updates the position every Cycle, default [] <ARRAY>
		5: Only Players, default true <BOOL>
 	*/
	_RushOrHuntCode = [_Group,_Range,_HuntInsteadOfRush] spawn {
		Params["_Group","_Range","_HuntInsteadOfRush"];
		if(_HuntInsteadOfRush) then {
			waitUntil {sleep 1; !isNil "lambs_wp_fnc_taskHunt"};
			[_Group,_Range,30,[],[],true] remoteExec ["lambs_wp_fnc_taskHunt",0];
		} else {
			waitUntil {sleep 1; !isNil "lambs_wp_fnc_moduleRush"};
			[_Group,_Range,30,[],[],true] remoteExec ["lambs_wp_fnc_taskRush",0];
		};
	};

	_Group;


