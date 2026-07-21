Params ["_Object"];
// [flag_west_1] execVM "Training\Score.sqf";

_Object addAction
[
	"<t color='#3EF90C'>View Average Score</t>",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_score = (group _caller) getVariable ["OKS_TimeArray",[]];

		if(count _score > 0) then {		
			_averageScore = _score call BIS_fnc_arithmeticMean;
			_Players = units group _caller;
			_Names = "Team: ";
			{
				if(_foreachIndex == (count _Players - 1)) then {
					_Names = _Names + format["%1.", name _X];
				} else {
					_Names = _Names + format["%1, ", name _X];
				};
			} forEach _Players;
			format["%1 scored an average time of %2 seconds on %3 targets.",_Names,_averageScore,count _score] remoteExec ["sideChat",0];
		};
	},
	nil,
	1.5,
	true,
	true,
	"",
	"true", // _target, _this, _originalTarget
	5,
	false,
	"",
	""
];

_Object addAction
[
	"<t color='#F9130C'>Reset Score</t>",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_Players = units group _caller;
		_Names = "Team: ";
		{
			if(_foreachIndex == (count _Players - 1)) then {
				_Names = _Names + format["%1.", name _X];
			} else {
				_Names = _Names + format["%1, ", name _X];
			};
		} forEach _Players;
		group _caller setVariable ["OKS_TimeArray",[],true];
		format["%1 reset their score.",_Names] remoteExec ["sideChat",0];
	},
	nil,
	1.5,
	true,
	true,
	"",
	"true", // _target, _this, _originalTarget
	5,
	false,
	"",
	""
];