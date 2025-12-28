/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

[intel_0,(units group hostage_1),"Task_Intel","HOSTAGE INTEL\nYou have found intel regarding enemy hostages.\n\n%1\n\n%2","Hostage Intel #1","Located on the second floor of a large building with a small pier."] spawn OKS_fnc_SetupIntel;
[intel_1,destroy_9,"Task_Intel",nil,nil] spawn OKS_fnc_SetupIntel;
[intel_2,[destroy_7,destroy_8],"Task_Intel",nil,nil] spawn OKS_fnc_SetupIntel;
[intel_3,(units group hostage_2),"Task_Intel","HOSTAGE INTEL\nYou have found intel regarding enemy hostages.\n\n%1\n\n%2","Hostage Intel #2","Located in a market building, which is located near a watertower."] spawn OKS_fnc_SetupIntel;
[intel_4,[destroy_5,destroy_6],"Task_Intel",nil,nil] spawn OKS_fnc_SetupIntel;
[
	intel_5,
	[
		destroyObject_1,
		destroyObject_2,
		destroyObject_3,
		destroyObject_4,
		destroyObject_5,
		destroyObject_6,
		destroyObject_7,
		destroyObject_8,
		destroyObject_9,
		destroyObject_10
	],
	"Task_Intel",
	nil,
	"Major Stockpile Intel"
] spawn OKS_fnc_SetupIntel;
[intel_6,[destroy_10,destroy_11],"Task_Intel",nil,nil] spawn OKS_fnc_SetupIntel;
[intel_7,(units group hostage_3),"Task_Intel","HOSTAGE INTEL\nYou have found intel regarding enemy hostages.\n\n%1\n\n%2","Hostage Intel #3","Located in a large warehouse building."] spawn OKS_fnc_SetupIntel;


OKS_Fire = {
	Params ["_Position"];

	_fire = createVehicle ["test_EmptyObjectForFireBig", [_Position#0,_Position#1,(_Position#2 - 2)], [], -1, "CAN_COLLIDE"];
	createVehicle ["test_EmptyObjectForSmoke", _Position, [], -1, "CAN_COLLIDE"];
	createVehicle ["ace_fire_logic", _Position, [], -1, "CAN_COLLIDE"];

	_light = createVehicle ["#lightpoint", [_Position#0,_Position#1,(_Position#2 + 8)], [], -1, "CAN_COLLIDE"];
	_light setLightColor [1, 0.5, 0.3];	  // Warm, not too orange ([R,G,B])
	_light setLightBrightness 3.0;		   // Strong, intense brightness
	_light setLightAttenuation [0.1, 0, 0, 2, 60, 1200]; // Much wider effective range
	_light attachTo [_fire, [0,0,8]];	   // Position light slightly above the flame

	[_fire,_Position] spawn {
		params ["_fire","_Position"];

		while {alive _fire} do {
			_fireSoundArray = selectRandom [
				["A3\Sounds_F\sfx\fire1_loop.wss",8.5],
				["A3\Sounds_F\sfx\fire2_loop.wss",12.55],
				["A3\Sounds_F\sfx\fire3_loop.wss",6.75]
			];
			_fireSoundArray params ["_SfxPath","_Delay"];
			playSound3D [_SfxPath, _fire, false, _Position, 5, 1, 100];
			sleep _Delay;
		};
	};
};
