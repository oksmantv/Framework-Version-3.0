
_talker = _this select 0;
playSound3D [getMissionPath "idap.wav", _talker, false, getPosASL _talker, 5, 1, 0];

if(!isServer) exitWith {};

["IDAP Worker", "You shouldnt have come here! The insurgents have specifically demanded us that no soldiers may come to this camp!"] remoteExec ["BIS_fnc_showSubtitle"];
sleep 5.7;
["IDAP Worker", "We were unable to communicate this to you! They have spotters everywhere, they will come for us. Do your job, protect this camp!"] remoteExec ["BIS_fnc_showSubtitle"];
sleep 9;
IDAP_ATTACK = true;
publicVariable "IDAP_ATTACK";