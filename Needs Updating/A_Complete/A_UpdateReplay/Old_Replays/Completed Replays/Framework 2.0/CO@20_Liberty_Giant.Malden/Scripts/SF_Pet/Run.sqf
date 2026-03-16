//	["Oksman","Dog"] Spawn SF_Pet_Run;
//	
//	
//	
//	

Params ["_PlayerName","_Animal"];

// Exits
if !(HasInterface) exitWith {};
WaitUntil {Sleep 1; Time > 0 && !isNull Player};

_Name = ToLower (Name Player);
if ((_Name find (toLower _PlayerName)) == -1) exitWith {};

// Execute Script
[Player, _Animal] call SF_petFollow;