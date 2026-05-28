// [_this] remoteExec ["LauncherGear",0];

// Launcher with magazines — removes old tracked mags, adds 4 of each new type
GetLauncherResetBackpack = {
	params ["_Player","_Weapon",["_Magazine","",[[],""]]];

	// Remove previously issued launcher magazines
	{ _Player removeMagazines _X } forEach (_Player getVariable ["LAU_CurrentMags",[]]);

	// Normalise to array
	private _newMags = if (_Magazine isEqualType "") then { [_Magazine] } else { _Magazine };

	// Swap launcher
	_Player removeWeapon (secondaryWeapon _Player);
	{ _Player addMagazines [_X, 4] } forEach _newMags;
	_Player addWeapon _Weapon;
	_Player selectWeapon _Weapon;

	// Track issued mag types
	_Player setVariable ["LAU_CurrentMags", _newMags];

	// Build and show hint
	private _lines = "";
	{
		private _dname = getText (configFile >> "CfgMagazines" >> _X >> "displayName");
		_lines = _lines + format ["<br/><t size='0.85'>4x %1</t>", _dname];
	} forEach _newMags;
	private _wName = getText (configFile >> "CfgWeapons" >> _Weapon >> "displayName");
	hintSilent parseText format [
		"<t size='1.1' color='#88b0e8'>%1</t><br/><t size='0.9' color='#aaffee'>Launcher equipped</t>%2",
		_wName, _lines
	];
};

// Disposable launcher — no magazines, clears any previously tracked rockets
GetLauncherSwapDisposable = {
	params ["_Player","_Weapon"];
	{ _Player removeMagazines _X } forEach (_Player getVariable ["LAU_CurrentMags",[]]);
	_Player setVariable ["LAU_CurrentMags", []];
	_Player removeWeapon (secondaryWeapon _Player);
	_Player addWeapon _Weapon;
	_Player selectWeapon _Weapon;
	private _wName = getText (configFile >> "CfgWeapons" >> _Weapon >> "displayName");
	hintSilent parseText format [
		"<t size='1.1' color='#A9E69A'>%1</t><br/><t size='0.9' color='#aaffee'>Disposable launcher equipped</t>",
		_wName
	];
};

Params ["_Box"];

// Save and Switch — visible only before kit is saved
_Box addAction [
	"<t color='#1afdfa' size='1.25'>Save and Switch Vest &amp; Backpack</t>",
	{
		private _Player = _this select 1;

		// Save original secondary weapon
		_Player setVariable ["LAU_SavedSecondary",      secondaryWeapon _Player];
		_Player setVariable ["LAU_SavedSecondaryItems", secondaryWeaponItems _Player];

		// Save vest and backpack
		_Player setVariable ["LAU_SavedVestItems",     vestItems _Player];
		_Player setVariable ["LAU_SavedBackpack",      backpack _Player];
		_Player setVariable ["LAU_SavedBackpackItems", backpackItems _Player];

		// Clear vest item slots
		{ _Player removeItemFromVest _X } forEach (vestItems _Player);

		// Swap to empty training bergen
		removeBackpack _Player;
		_Player addBackpack "B_Bergen_tna_F";

		// Mark player captive so range AI ignores them
		_Player setCaptive true;

		_Player setVariable ["LAU_KitSaved", true];
		hintSilent parseText "<t size='1.1' color='#1afdfa'>Kit Saved</t><br/><t size='0.9' color='#aaffee'>Vest cleared — training bergen equipped</t><br/><t size='0.85'>Select a launcher from the menu to begin</t>";
	},
	[], 1.5, true, false, "",
	"!(_this getVariable ['LAU_KitSaved',false])"
];

// Restore — visible only after kit has been saved
_Box addAction [
	"<t color='#1afdfa' size='1.25'>Restore Vest &amp; Backpack</t>",
	{
		private _Player = _this select 1;

		// Remove current launcher and all its magazines
		_Player removeWeapon (secondaryWeapon _Player);
		{ _Player removeMagazines _X } forEach (_Player getVariable ["LAU_CurrentMags",[]]);
		_Player setVariable ["LAU_CurrentMags", []];

		// Restore vest items
		{ _Player removeItemFromVest _X } forEach (vestItems _Player);
		{ _Player addItemToVest _X }      forEach (_Player getVariable ["LAU_SavedVestItems",[]]);

		// Restore backpack
		removeBackpack _Player;
		private _bp = _Player getVariable ["LAU_SavedBackpack",""];
		if (_bp != "") then {
			_Player addBackpack _bp;
			{ _Player addItemToBackpack _X } forEach (_Player getVariable ["LAU_SavedBackpackItems",[]]);
		};

		// Restore original secondary weapon
		private _savedSecondary = _Player getVariable ["LAU_SavedSecondary",""];
		if (_savedSecondary != "") then {
			_Player addWeapon _savedSecondary;
			{ if (_X != "") then { _Player addSecondaryWeaponItem _X } } forEach (_Player getVariable ["LAU_SavedSecondaryItems",[]]);
		};

		// Restore normal hostile status
		_Player setCaptive false;

		_Player setVariable ["LAU_KitSaved", false];
		hintSilent parseText "<t size='1.1' color='#1afdfa'>Kit Restored</t><br/><t size='0.9'>Your original loadout has been returned</t>";
	},
	[], 1.5, true, false, "",
	"_this getVariable ['LAU_KitSaved',false]"
];

private _kitCond = "_this getVariable ['LAU_KitSaved',false]";

_Box addAction ["<t color='#7df2d5' size='1.25'>Request Rangefinder</t>", {
	private _Player = _this select 1;
	_Player removeWeapon (binocular _Player);
	_Player addWeapon "ace_vector";
	hintSilent parseText "<t size='1.1' color='#7df2d5'>ACE Vector</t><br/><t size='0.9' color='#aaffee'>Rangefinder equipped</t>";
}, [], 1.5, true, false, "", _kitCond];

_Box addAction ["<t color='#9be888' size='1.25'>Light Anti-Tank</t>", { systemChat "This is a category dummy :)"}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#A9E69A'>Request NLAW</t>", {
	[(_this select 1),"launch_NLAW_F"] call GetLauncherSwapDisposable;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#A9E69A'>Request AT-4 (HP)</t>", {
	[(_this select 1),"rhs_weap_M136_hp"] call GetLauncherSwapDisposable;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#A9E69A'>Request RPG-26</t>", {
	[(_this select 1),"rhs_weap_rpg26"] call GetLauncherSwapDisposable;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#A9E69A'>Request M72 LAW</t>", {
	[(_this select 1),"rhs_weap_m72a7"] call GetLauncherSwapDisposable;
}, [], 1, true, false, "", _kitCond];

_Box addAction ["<t color='#6a9fe8' size='1.25'>Medium Anti-Tank</t>", { systemChat "This is a category dummy :)"}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#88b0e8'>Request MAAWS</t>", {
	[(_this select 1),"launch_MRAWS_green_rail_F","MRAWS_HEAT_F"] call GetLauncherResetBackpack;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#88b0e8'>Request MAAWS (RHS)</t>", {
	[(_this select 1),"rhs_weap_maaws","MRAWS_HEAT_F"] call GetLauncherResetBackpack;
	(_this select 1) addSecondaryWeaponItem "rhs_optic_maaws";
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#88b0e8'>Request SMAW</t>", {
	[(_this select 1),"rhs_weap_smaw_green",["rhs_mag_smaw_HEAA","rhs_mag_smaw_SR"]] call GetLauncherResetBackpack;
	(_this select 1) addSecondaryWeaponItem "rhs_weap_optic_smaw";
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#88b0e8'>Request RPG-32</t>", {
	[(_this select 1),"launch_RPG32_F","RPG32_F"] call GetLauncherResetBackpack;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#88b0e8'>Request RPG-7</t>", {
	[(_this select 1),"rhs_weap_rpg7",["rhs_rpg7_PG7VM_mag","rhs_rpg7_PG7VL_mag"]] call GetLauncherResetBackpack;
	(_this select 1) addSecondaryWeaponItem "rhs_acc_pgo7v3";
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#88b0e8'>Request PSRL-1</t>", {
	[(_this select 1),"GOL_weap_PSRL1",["GOL_mag_rpg7_Modern","GOL_mag_rpg7_VR","GOL_mag_rpg7_OG7V","GOL_mag_rpg7_TBG7V"]] call GetLauncherResetBackpack;
	(_this select 1) addSecondaryWeaponItem "rhs_acc_pgo7v3";
}, [], 1, true, false, "", _kitCond];

_Box addAction ["<t color='#e1ea46' size='1.25'>Heavy Anti-Tank</t>", { systemChat "This is a category dummy :)"}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#e8ef71'>Request Javelin</t>", {
	[(_this select 1),"rhs_weap_fgm148","rhs_fgm148_magazine_AT"] call GetLauncherResetBackpack;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#e8ef71'>Request Metis-M</t>", {
	[(_this select 1),"launch_O_Vorona_green_F","Vorona_HEAT"] call GetLauncherResetBackpack;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#e8ef71'>Request Titan</t>", {
	[(_this select 1),"launch_I_Titan_short_F","Titan_AT"] call GetLauncherResetBackpack;
}, [], 1, true, false, "", _kitCond];

_Box addAction ["<t color='#F33737' size='1.25'>Anti-Air</t>", { systemChat "This is a category dummy :)"}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#F96363'>Request Igla</t>", {
	[(_this select 1),"rhs_weap_igla","rhs_mag_9k38_rocket"] call GetLauncherResetBackpack;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#F96363'>Request FIM-92F Stinger</t>", {
	[(_this select 1),"rhs_weap_fim92","rhs_fim92_mag"] call GetLauncherResetBackpack;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#F96363'>Request Blowpipe</t>", {
	[(_this select 1),"UK3CB_Blowpipe","UK3CB_Blowpipe_Round"] call GetLauncherResetBackpack;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#F96363'>Request Titan MPRL</t>", {
	[(_this select 1),"launch_B_Titan_F","Titan_AA"] call GetLauncherResetBackpack;
}, [], 1, true, false, "", _kitCond];
