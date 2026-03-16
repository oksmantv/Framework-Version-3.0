
_talker = _this select 0;
playSound3D [getMissionPath "briefing1.wav", _talker, false, getPosASL _talker, 5, 1, 0];

if(!isServer) exitWith {};

["Officer", "Good day Gentlemen, your mission today is of grave importance. The United nations have declared a neutral zone between the two waring factions, your job is to enforce this zone and protect the civilians in the area."] remoteExec ["BIS_fnc_showSubtitle"];
sleep 11.5;
["Officer", "The U.N successfully brokered a cease-fire but because of the nature of the guerilla fighters, some of their forces may not follow suit. Any and all armed personell in the neutral zone is declared hostile!"] remoteExec ["BIS_fnc_showSubtitle"];
sleep 9.9;
["Officer", "We have reports of civilians being held hostage in the neutral zone, approach with care and avoid civilians casualties, rescue the hostages and sweep the area clear of opposing forces. Godspeed 1-1"] remoteExec ["BIS_fnc_showSubtitle"];
