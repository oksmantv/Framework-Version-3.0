// [pos] execVM "RoarEffect.sqf";

Params ["_Position"];
OKS_CamShake = {
  addCamShake [1, 2, 55]
};

if(!isServer) exitWith {false};

private _rootDirectory = "\WBK_Zombies\Smasher\sounds\";

_SelectedRoarAudio = selectRandom [
	[_rootDirectory + "Smasher_Roar.ogg",6],
	[_rootDirectory + "Smasher_scream_1.ogg",3],
	[_rootDirectory + "Smasher_scream_2.ogg",3]
];
_SelectedIdleAudio = selectRandom [
	[_rootDirectory + "Smasher_idle_1.ogg",5],
	[_rootDirectory + "Smasher_idle_2.ogg",9],
	[_rootDirectory + "Smasher_idle_3.ogg",9],
	[_rootDirectory + "Smasher_idle_4.ogg",10],
	[_rootDirectory + "Smasher_idle_5.ogg",9]
];

_SelectedRoarAudio Params ["_SelectedRoarPath","_DelayRoar"];
_SelectedIdleAudio Params ["_SelectedIdlePath","_DelayIdle"];

playSound3D [_SelectedRoarPath, _Position, false, _Position, 5, 1, 2000];
sleep _DelayRoar;
playSound3D [_rootDirectory + "hit.ogg", _Position, false, _Position, 5, 1, 2000];
[1, 2, 55] remoteExec ["OKS_CamShake",AllPlayers];
sleep 1.5;
playSound3D [_rootDirectory + "hit.ogg", _Position, false, _Position, 5, 1, 2000];
[1, 2, 55] remoteExec ["OKS_CamShake",AllPlayers];
sleep 1.5;
playSound3D [_rootDirectory + "hit.ogg", _Position, false, _Position, 5, 1, 2000];
[1, 2, 55] remoteExec ["OKS_CamShake",AllPlayers];
sleep 1;
playSound3D [_SelectedIdlePath, _Position, false, _Position, 5, 1, 2000];
sleep _DelayIdle;
_SelectedRoarAudio = selectRandom [
	[_rootDirectory + "Smasher_Roar.ogg",6],
	[_rootDirectory + "Smasher_scream_1.ogg",3],
	[_rootDirectory + "Smasher_scream_2.ogg",3]
];
playSound3D [_SelectedRoarPath, _Position, false, _Position, 5, 1, 2000];