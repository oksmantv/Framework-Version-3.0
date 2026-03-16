
// [this,"This information is intel","photo.jpeg"] execVM "Scripts\OKS_TASK\OKS_Request_Intel\OKS_Request_Intel.sqf";

params ["_Giver","_IntelText",["_IntelImagePath","",[""]]];

_Giver addAction [
	"<t color='#ebe834'>Request Intel</t>",
	{
		_Giver = (_this select 0);
		_Player = (_this select 1);
		(_this select 3) params ["_IntelText","_IntelImagePath"];

		[_Player, "acex_intelitems_document", _IntelText] remoteExec ["ace_intelitems_fnc_addIntel",2];
		systemChat "You have been given a document..";
		if(_IntelImagePath != "") then {
			[_Player, "acex_intelitems_photo", _IntelImagePath] remoteExec ["ace_intelitems_fnc_addIntel",2];
			systemChat "You have been given a photograph..";
		};

		[_Giver,"local","I have given you all that I can, I hope that helps you."] remoteExec ["OKS_Chat",0];
	},
	[_IntelText,_IntelImagePath],
	1,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"_this distance _target < 8",		// condition
	15,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
