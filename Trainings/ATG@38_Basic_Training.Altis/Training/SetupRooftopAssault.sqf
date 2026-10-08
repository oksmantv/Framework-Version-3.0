//	[0] remoteExec ["OKS_fnc_SetupRooftopAssault", 2];
//
//	This initializes the Rooftop Assault Training.
//

params [
	["_difficulty", 0, [0]]
];

["ROOFTOP ASSAULT","side",format["1st Platoon, the roof top exercise has been initiated. You have selected difficulty level: %1. Good luck.",_difficulty], "ROOFTOP ASSAULT", sideUnknown, "\A3\ui_f\data\IGUI\Cfg\simpleTasks\types\radio_ca.paa"] spawn OKS_fnc_ChatGlobal;

private _MainBuilding = MainBuilding;
_Units = (_MainBuilding nearEntities ["Man",100] select { !isPlayer _X }) + (alldeadmen select { _X distance2d _MainBuilding < 150});
{
	deleteVehicle _X
} forEach _Units;
private _ForceStrength = 100;
private _EnemyPositions = [
	[[12456.9,14270,7.11558],83.276,"MIDDLE","ar"],
	[[12458.8,14264.7,7.15112],38.1136,"MIDDLE","ar"],
	[[12456.2,14266.3,7.16228],24.3292,"MIDDLE","ab"],
	[[12456.4,14266.4,4.15889],148.797,"MIDDLE","ab"],
	[[12450.1,14267.1,7.2323],0,"UP","ab"],
	[[12449.3,14270.8,7.18575],60.8477,"UP","ab"],
	[[12449.1,14267.6,4.24114],112.501,"UP","ar"],
	[[12448.3,14270.7,4.20569],50.6698,"UP","crew"],
	[[12456.9,14269.9,4.11573],82.0173,"MIDDLE","ar"],
	[[12459.9,14268.8,4.06118],216.389,"MIDDLE","crew"],
	[[12459.2,14264.9,4.16427],40.7305,"MIDDLE","ar"],
	[[12460,14268.3,7.0662],236.91,"MIDDLE","ab"],
	[[12462.3,14268.2,8.87662],317.213,"MIDDLE","ab"],
	[[12457.9,14256.2,10.3182],165.864,"UP","crew"],
	[[12453.9,14257.7,7.33714],56.0035,"UP","ar"],
	[[12458.5,14256.2,7.30739],152.384,"UP","crew"],
	[[12452.6,14262.1,7.28252],65.6063,"UP","lr"],
	[[12458.6,14255.8,4.31365],2.20913,"UP","ab"],
	[[12453.6,14258.3,4.33151],67.3046,"UP","crew"],
	[[12452.9,14260.7,4.30064],55.4442,"UP","g"],
	[[12459.7,14279.1,9.94147],336.045,"UP","crew"],
	[[12470.1,14277.4,3.65684],81.4773,"UP","crew"],
	[[12470.4,14261.7,7.02679],337.845,"UP","crew"],
	[[12467.5,14273.1,6.82692],205.303,"UP","crew"],
	[[12455.4,14276.7,7.04525],98.2632,"UP","crew"],
	[[12465.5,14280.9,6.72728],98.858,"UP","crew"],
	[[12447.9,14273,1.19587],331.618,"UP","crew"],
	[[12447.7,14274,7.14643],293.412,"UP","crew"],
	[[12455.8,14262.4,1.26074],301.96,"UP","crew"],
	[[12459.4,14272.9,1.01816],213.45,"UP","crew"],
	[[12456.2,14277,1.03113],213.45,"UP","crew"],
	[[12462.1,14280.4,0.854399],85.1111,"UP","crew"],
	[[12467.7,14270.1,0.893993],20.0322,"UP","crew"],
	[[12465.1,14268.4,0.988276],331.812,"UP","crew"],
	[[12459.9,14267.7,1.10372],237.021,"MIDDLE","mmg"],
	[[12459.7,14268.3,1.09678],237.021,"MIDDLE","mmg"],
	[[12450.5,14274.2,1.14459],162.01,"UP","crew"],
	[[12452.5,14276.3,4.06496],218.667,"UP","crew"],
	[[12451.9,14269.3,1.19837],151.339,"UP","ab"],
	[[12472.9,14263,0.936452],302.643,"UP","ab"],
	[[12471.2,14268.2,0.852495],227.249,"UP","ab"],
	[[12465.2,14266.1,1.03296],250.509,"UP","ab"]
];
private _SelectedEnemyPositions = [];

// Pick Hostage Location
private _HostageHelpers = [NWF1,NWF2,SWF1,SWF2];
{
	_X hideObjectGlobal true;
} foreach _HostageHelpers;
_SelectedHostagePosition = selectRandom _HostageHelpers;
_TaskDetail = [];
switch (_SelectedHostagePosition) do {
	case NWF1: { _TaskDetail = ["1st","north-west"]; };
	case NWF2: { _TaskDetail = ["2nd","north-west"]; };
	case SWF1: { _TaskDetail = ["1st","south-west"]; };
	case SWF2: { _TaskDetail = ["2nd","south-west"]; };

	default { 
		_TaskDetail = ["unknown","unknown"];
	};
};

// Reset Wrecks - Show all
private _WreckArray = [wrecK_1, wrecK_2, wrecK_3, wrecK_4];
{
	_X hideObjectGlobal false;
} foreach _WreckArray;

// Randomly hide a wreck.
_RandomHiddenWreck = selectRandom _WreckArray;
if(!isNil "_RandomHiddenWreck") then {
	_RandomHiddenWreck hideObjectGlobal true;
};

// Close the doors
{(_MainBuilding) animate [_X, 0]} foreach (animationNames _MainBuilding);

//// Randomly select positions of _EnemyPositions array based on strength level. We want random positioning. Level 0 is 100% of the positions, level 1 is 50%, level 2 is 100%.
switch (_difficulty) do {
	case 0: {
		//// Level 0 spawns all units but they have dummy role. Spawn the VR Entity classname in the positions with the correct stance, direction and position (roles no applicable)
		_SelectedEnemyPositions =+ _EnemyPositions;
	};

	case 1: {
		//// Level 1 spawns 50% of the units in the _EnemyPositions array. Roles are applicable.
		private _totalEnemies = count _EnemyPositions;
		private _halfEnemies = floor (_totalEnemies / 2);
		if (_halfEnemies < 1) then {
			_halfEnemies = 1;
		};
		_EnemyPositions = (_EnemyPositions call BIS_fnc_arrayShuffle) select [0, _halfEnemies];
	};

	case 2: {
		//// Level 2 spawns all units in the _EnemyPositions array. Roles are applicable.
		_EnemyPositions =+ _EnemyPositions;
	};
	default {
		"Difficulty level not recognized. Please select a valid difficulty level." remoteExec ["systemChat", 0];
	};
};

// Spawn Enemy Contacts 
private _EnemyGroup = createGroup east;
_EnemyGroup setVariable ["acex_headless_blacklist", true, true];

private _UnitClass = "O_Soldier_VR_F";
{
	private _position = _x select 0;
	private _direction = _x select 1;
	private _stance = _x select 2;
	private _role = _x select 3;

	// Spawn the unit at the position with the correct direction and stance.
	private _unit = _EnemyGroup createUnit [_UnitClass, _position, [], 0, "CAN_COLLIDE"];
	_EnemyGroup setVariable ["GOL_isStatic", true, true];
	_unit setVariable ["GOL_FaceSwap_BlacklistedUnit", true, true];
	_unit setDir _direction;
	_unit setUnitPos _stance;
	_unit disableAI "PATH";
	if(_difficulty > 0) then {
		_unit setUnitLoadout [
			["rhs_weap_aks74un", "", "", "", [], [], ""],
			[],
			["", "", "", "", ["", 0], [], ""],
			["", [["",0, 0]]],
			["UK3CB_V_Carrier_Rig_Heavy_BLK", [["UK3CB_AK12_30rnd_Magazine_GT", 15, 30]]],
			["", []],
			"H_PASGT_basic_black_F", "", [], ["UK3CB_G_KLR_BLK", "", "", "", "", ""]
		];
		sleep 0.1;
		_unit addGoggles "UK3CB_G_KLR_BLK";
	} else {
		_unit setUnitLoadout [
			["rhs_weap_aks74un", "", "", "", [], [], ""],
			[],
			["", "", "", "", ["", 0], [], ""],
			["", [["",0, 0]]],
			["UK3CB_V_Carrier_Rig_Heavy_BLK", []],
			["", []],
			"H_PASGT_basic_black_F", "", [], ["UK3CB_G_KLR_BLK", "", "", "", "", ""]
		];
		sleep 0.1;
		_unit addGoggles "UK3CB_G_KLR_BLK";
	};
} foreach _EnemyPositions;

// Spawn Hostage
private _HostageGroup = createGroup west;
private _HostageClass = "B_Soldier_VR_F";
_HostageGroup setVariable ["acex_headless_blacklist", true, true];
private _hostage = _HostageGroup createUnit [_HostageClass, _SelectedHostagePosition, [], 0, "CAN_COLLIDE"];
_hostage setVariable ["GOL_FaceSwap_BlacklistedUnit", true, true];
_hostage setCaptive true;
_hostage disableAI "MOVE";
_hostage disableAI "AUTOTARGET";
_hostage disableAI "AUTOCOMBAT";
_hostage disableAI "TARGET";
_hostage setBehaviour "CARELESS";
_hostage setUnitLoadout [
	["", "", "", "", [], [], ""],
	[],
	["", "", "", "", ["", 0], [], ""],
	["", [["",0, 0]]],
	["V_Press_F", []],
	["", []],
	"H_PASGT_basic_blue_press_F", "", [], ["", "", "", "", "", ""]
];


// WaitUntil players nearby to set starting time
waitUntil {sleep 0.1; {(_x distance2d _MainBuilding) < 100 && isTouchingGround _X && vehicle _X == _X} count allPlayers > 0 || !alive _hostage};
_StartingTime = time;
if(alive _hostage) then {
	_TaskDetail params ["_HostageFloor","_HostageEnd"];

	["ROOFTOP ASSAULT","side",format ["1st Platoon, the hostage is located on the %1 floor, on the %2 end of building.", _HostageFloor, _HostageEnd], "ROOFTOP ASSAULT", sideUnknown, "\A3\ui_f\data\IGUI\Cfg\simpleTasks\types\radio_ca.paa"] spawn OKS_fnc_ChatGlobal;
	{	
		[_UnitClass,getPos _X] spawn {
			
			Params ["_UnitClass","_Position"];
			_HuntGroup = createGroup east;

			{
				private _unit = _HuntGroup createUnit [_UnitClass, _Position, [], 4, "CAN_COLLIDE"];
				_unit setUnitLoadout [
					["rhs_weap_aks74un", "", "", "", [], [], ""],
					[],
					["", "", "", "", ["", 0], [], ""],
					["", [["",0, 0]]],
					["UK3CB_V_Carrier_Rig_Heavy_BLK", [["UK3CB_AK12_30rnd_Magazine_GT", 15, 30]]],
					["", []],
					"H_PASGT_basic_black_F", "", [], ["UK3CB_G_KLR_BLK", "", "", "", "", ""]
				];
				sleep 0.1;
				_unit addGoggles "UK3CB_G_KLR_BLK";	
			} foreach [1,2,3,4,5,6];
			
			[_HuntGroup, 1500, 30, [], [], true,false,false] remoteExec ["lambs_wp_fnc_taskHunt",0];
			sleep 5;
			{ _X setBehaviour "AWARE"; _X setCombatMode "RED"; } foreach units _HuntGroup;
			_HuntGroup setBehaviour "AWARE";
			_HuntGroup setCombatMode "RED";
		};
	} foreach [hunt_1, hunt_2, hunt_3, hunt_4, hunt_5, hunt_6, hunt_7, hunt_8];
	removeAllWeapons _hostage;
	_hostage action ["Surrender", _hostage];
	_hostage addGoggles "UK3CB_G_KLR_BLK";
};

// Hostage is either dead or has been rescued. Wait until one of those conditions is met before ending the mission.
waitUntil {sleep 0.1; !alive _hostage || !(_hostage inArea RooftopAssaultTrigger)};

_TimeUntilCompletion = time - _StartingTime;
private _Minutes = floor (_TimeUntilCompletion / 60);
private _Seconds = floor (_TimeUntilCompletion % 60);

_DisplayTime = format ["%1 min and %2 seconds", _Minutes, _Seconds];
if(!alive _hostage) then {
	["ROOFTOP ASSAULT","side",format ["1st Platoon, the hostage has been killed. You have failed the exercise. Time: %1", _DisplayTime], "ROOFTOP ASSAULT", sideUnknown, "\A3\ui_f\data\IGUI\Cfg\simpleTasks\types\radio_ca.paa"] spawn OKS_fnc_ChatGlobal;
} else {
	["ROOFTOP ASSAULT","side",format ["1st Platoon, the hostage has been rescued. You have completed the exercise. Time: %1", _DisplayTime], "ROOFTOP ASSAULT", sideUnknown, "\A3\ui_f\data\IGUI\Cfg\simpleTasks\types\radio_ca.paa"] spawn OKS_fnc_ChatGlobal;
};
