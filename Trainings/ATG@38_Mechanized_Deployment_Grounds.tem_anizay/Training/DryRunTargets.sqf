
// [] spawn DryRunTargets;

// Reset All Targets.
waitUntil {!isNil "Dry_Array_1" && !isNil "Dry_Array_2" && !isNil "Dry_Array_3" };
nopop = true;
publicVariable "nopop";
{
	_TargetArray = _X;
	{
		_X animateSource ["terc", 1]
	} forEach _TargetArray;
} foreach [Dry_Array_1,Dry_Array_2,Dry_Array_3];

// Select Array Randomly
private _SelectRandomArray = {
	Params [
		["_RandomSelect",nil,[0]]
	];

	if(isNil "_RandomSelect") then {
		_RandomSelect = ceil(random 3);
	};

	_TargetArray = [];
	switch (_RandomSelect) do {
		case 1: { 
			_TargetArray = Dry_Array_1;
		};

		case 2: { 
			_TargetArray = Dry_Array_2;		
		};

		case 3: { 
			_TargetArray = Dry_Array_3;	
		};

		default { systemChat format["No selection found. Value: %1",_RandomSelect]}
	};
	[_TargetArray,_RandomSelect]
};

private _ActivateCompound = {
	Params ["_TargetArray"];
	// Wait Until Players in Range
	waitUntil{
		sleep 0.25;
		{_X distance2d (selectRandom _TargetArray) < 110} count AllPlayers > 0
	};

	// Animate Targets to Pop-up
	{
		_X animateSource ["terc", 0]
	} foreach _TargetArray;
};

// Compound
_Array = [] call _SelectRandomArray;
_Array Params ["_TargetArray","_RandomSelected"];
SystemChat format ["Compound %1 Selected",_RandomSelected];
[_TargetArray] spawn _ActivateCompound;

_AllRandomNumbers = [1,2,3];
_AllRandomNumbers deleteAt (_RandomSelected - 1);
_RandomSelect = selectRandom _AllRandomNumbers;
_Array = [_RandomSelect] call _SelectRandomArray;
[_TargetArray] spawn _ActivateCompound;
SystemChat format ["Compound %1 Selected",_RandomSelect];
