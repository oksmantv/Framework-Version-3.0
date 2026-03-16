// [units group this] spawn TurnZombie;

Params ["_Units"];

if (hasInterface && !isServer) exitWith {false};	// Ensures only server or HC runs this script

{
	_selectedZombie = selectRandom [
		[4,"Runner Calm"],
		[5,"Runner Angry"], 
		[2,"Walker"],
		[7,"Corrupted body"],
		[8,"Melee Zombie"],
		[2,"Walker"],
		[7,"Corrupted body"],
		[8,"Melee Zombie"]		
	];
	[_X,_selectedZombie select 0] call WBK_LoadAIThroughEden;
	//systemChat format["%1 turned into %2",name _X,_selectedZombie select 1];

	_X enableSimulation true;
	_X enableAI "PATH";

	_Unit = _X; 
	{_Unit reveal [_X,4]} foreach allPlayers;
} foreach _Units;