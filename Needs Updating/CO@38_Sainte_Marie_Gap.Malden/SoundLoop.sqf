//Object - the object emitting the sound. If sound position is specified this param is ignored
_AsoundSource = soundOrigin; 

//Sound Pitch (Number) - 1: Normal, 0.5: Darth Vader, 2: Chipmunks, etc. Default: 1
_AsoundPitch = 1;

//Volume (Number) Default: 1
_Avolume = 5;

//Number : How far is sound audible (0 = no max distance) Default: 0.
_Adistance =  0;

//Target object (varible name) you want the sound to emmit from Default: player
_ATarget = soundOrigin;

//Maxiumu random distance (Number) you wish the sound to eminate from
_AMaxDistance = 1000;

//Minimum random distance (Number) you wish the sound to eminate from
_AMinDistance = 500;

//Avrage or Medium random distance (Number) you wish the sound to eminate from
_AMedDistance = 750;

//Minimum time between sounds played (Number)
_AMinWait = 5;

//Avrage or Medium time between sounds played (Number)
_AMedWait = 10;

//Maximum time between sounds played (Number)
_AMaxWait = 15;

_soundsArray = [
"A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions1.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions2.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions3.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions4.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions5.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight1.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight2.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight3.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight4.wss"
//"A3\Sounds_F\environment\ambient\battlefield\battlefield_heli1.wss",
//"A3\Sounds_F\environment\ambient\battlefield\battlefield_heli2.wss",
//"A3\Sounds_F\environment\ambient\battlefield\battlefield_heli3.wss",
//"A3\Sounds_F\environment\ambient\battlefield\battlefield_jet1.wss",
//"A3\Sounds_F\environment\ambient\battlefield\battlefield_jet2.wss",
//"A3\Sounds_F\environment\ambient\battlefield\battlefield_jet3.wss"
];

while {true} do
{
_dir = (138+(random 20)); 
 
_dis = round random [_AMinDistance,_AMedDistance,_AMaxDistance];
_AsoundPosition = _ATarget getRelPos [_dis, _dir];
_ASound = selectRandom _soundsArray;
playSound3D [_ASound, _AsoundSource, false, _AsoundPosition, _Avolume, _AsoundPitch, _Adistance];
_Waitfor = round random [_AMinWait,_AMedWait,_AMaxWait];
sleep _Waitfor
};