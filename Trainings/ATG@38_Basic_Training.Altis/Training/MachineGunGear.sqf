// [_this] remoteExec ["MachineGunGear",0];

GetPrimaryWeaponReset = {
	params ["_Player","_Weapon",["_Magazine","",[[],""]]];

	// Remove previously issued MG magazines
	{ _Player removeMagazines _X } forEach (_Player getVariable ["MG_CurrentMags",[]]);

	// Normalise to array
	private _newMags = if (_Magazine isEqualType "") then { [_Magazine] } else { _Magazine };

	// Calculate how many mags per type to reach ~800 total rounds
	private _targetRounds = 800;
	private _magData = [];
	{
		private _cls    = _X;
		private _rndPer = (getNumber (configFile >> "CfgMagazines" >> _cls >> "count")) max 1;
		private _cnt    = ceil ((_targetRounds / (count _newMags)) / _rndPer);
		private _dname  = getText (configFile >> "CfgMagazines" >> _cls >> "displayName");
		_magData pushBack [_cls, _cnt, _dname, _rndPer];
	} forEach _newMags;

	// Swap weapon
	private _PrimaryItems = primaryWeaponItems _Player;
	_Player removeWeapon (primaryWeapon _Player);
	{ _Player addMagazines [(_X select 0), (_X select 1)] } forEach _magData;
	_Player addWeapon _Weapon;
	{ if (_X != "") then { _Player addPrimaryWeaponItem _X } } forEach _PrimaryItems;
	_Player selectWeapon _Weapon;

	// Track issued mag types
	_Player setVariable ["MG_CurrentMags", _newMags];

	// Build and show hint
	private _totalRds = 0;
	private _lines    = "";
	{
		_totalRds = _totalRds + ((_X select 1) * (_X select 3));
		_lines    = _lines + format ["<br/><t size='0.85'>%1x %2</t>", (_X select 1), (_X select 2)];
	} forEach _magData;
	private _wName = getText (configFile >> "CfgWeapons" >> _Weapon >> "displayName");
	hintSilent parseText format [
		"<t size='1.1' color='#1afdfa'>%1</t><br/><t size='0.9' color='#aaffee'>%2 rounds issued</t>%3",
		_wName, _totalRds, _lines
	];
};

Params ["_Box"];

// Save and Switch — visible only before kit is saved
_Box addAction [
	"<t color='#1afdfa' size='1.25'>Save and Switch Vest &amp; Backpack</t>",
	{
		private _Player = _this select 1;

		// Save original primary weapon
		_Player setVariable ["MG_SavedPrimary",      primaryWeapon _Player];
		_Player setVariable ["MG_SavedPrimaryItems", primaryWeaponItems _Player];

		// Save vest and backpack
		_Player setVariable ["MG_SavedVestItems",     vestItems _Player];
		_Player setVariable ["MG_SavedBackpack",      backpack _Player];
		_Player setVariable ["MG_SavedBackpackItems", backpackItems _Player];

		// Clear vest item slots
		{ _Player removeItemFromVest _X } forEach (vestItems _Player);

		// Swap to empty training bergen
		removeBackpack _Player;
		_Player addBackpack "B_Bergen_tna_F";

		// Mark player captive so range AI ignores them
		_Player setCaptive true;

		_Player setVariable ["MG_KitSaved", true];
		hintSilent parseText "<t size='1.1' color='#1afdfa'>Kit Saved</t><br/><t size='0.9' color='#aaffee'>Vest cleared — training bergen equipped</t><br/><t size='0.85'>Select a machinegun from the menu to begin</t>";
	},
	[], 1.5, true, false, "",
	"!(_this getVariable ['MG_KitSaved',false])"
];

// Restore — visible only after kit has been saved
_Box addAction [
	"<t color='#1afdfa' size='1.25'>Restore Vest &amp; Backpack</t>",
	{
		private _Player = _this select 1;

		// Remove current MG and all its magazines
		_Player removeWeapon (primaryWeapon _Player);
		{ _Player removeMagazines _X } forEach (_Player getVariable ["MG_CurrentMags",[]]);
		_Player setVariable ["MG_CurrentMags", []];

		// Restore vest items
		{ _Player removeItemFromVest _X } forEach (vestItems _Player);
		{ _Player addItemToVest _X }      forEach (_Player getVariable ["MG_SavedVestItems",[]]);

		// Restore backpack
		removeBackpack _Player;
		private _bp = _Player getVariable ["MG_SavedBackpack",""];
		if (_bp != "") then {
			_Player addBackpack _bp;
			{ _Player addItemToBackpack _X } forEach (_Player getVariable ["MG_SavedBackpackItems",[]]);
		};

		// Restore original primary weapon
		private _savedPrimary = _Player getVariable ["MG_SavedPrimary",""];
		if (_savedPrimary != "") then {
			_Player addWeapon _savedPrimary;
			{ if (_X != "") then { _Player addPrimaryWeaponItem _X } } forEach (_Player getVariable ["MG_SavedPrimaryItems",[]]);
			_Player selectWeapon _savedPrimary;
		};

		// Restore normal hostile status
		_Player setCaptive false;

		_Player setVariable ["MG_KitSaved", false];
		hintSilent parseText "<t size='1.1' color='#1afdfa'>Kit Restored</t><br/><t size='0.9'>Your original loadout has been returned</t>";
	},
	[], 1.5, true, false, "",
	"_this getVariable ['MG_KitSaved',false]"
];

private _kitCond = "_this getVariable ['MG_KitSaved',false]";

_Box addAction ["<t color='#7df2d5' size='1.25'>Request Rangefinder</t>", {
	private _Player = _this select 1;
	_Player removeWeapon (binocular _Player);
	_Player addWeapon "ace_vector";
	hintSilent parseText "<t size='1.1' color='#7df2d5'>ACE Vector</t><br/><t size='0.9' color='#aaffee'>Rangefinder equipped</t>";
}, [], 1.5, true, false, "", _kitCond];

_Box addAction ["<t color='#8ec8ff' size='1.25'>Machineguns (GOL Pack)</t>", { systemChat "This is a category dummy :)"}, [], 1, true, false, "", _kitCond];
// --- Light tier (5.56mm / 5.45mm) ---
_Box addAction ["<t color='#a8d8ff'>Request M249 PIP</t>", {
	[(_this select 1),"GOL_weap_m249_pip","GOL_rhsusf_200rnd_556x45_AP45_tracer_red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#a8d8ff'>Request M249</t>", {
	[(_this select 1),"GOL_weap_m249","GOL_rhsusf_200rnd_556x45_AP45_tracer_red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#a8d8ff'>Request RPK-74M</t>", {
	[(_this select 1),"GOL_weap_rpk74m","GOL_45Rnd_545x39_7N22_Tracer_Red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#a8d8ff'>Request RPK-74M (NPZ)</t>", {
	[(_this select 1),"GOL_weap_rpk74m_npz","GOL_45Rnd_545x39_7N22_Tracer_Red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
// --- Medium tier (7.62x39mm) ---
_Box addAction ["<t color='#a8d8ff'>Request RPK-12</t>", {
	[(_this select 1),"GOL_weap_RPK12","GOL_75Rnd_762x39_Tracer_Red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#a8d8ff'>Request RPD</t>", {
	[(_this select 1),"GOL_weap_RPD","GOL_RPD_100Rnd_762x39_Tracer_Red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
// --- Medium tier (6.5mm) ---
_Box addAction ["<t color='#a8d8ff'>Request MX SW</t>", {
	[(_this select 1),"GOL_arifle_MX_SW_F","GOL_100Rnd_65x39_caseless_Tracer_Red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#a8d8ff'>Request LMG Mk200</t>", {
	[(_this select 1),"GOL_LMG_Mk200_F","GOL_200Rnd_65x39_cased_Box_Tracer_Red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
// --- Medium tier (7.62x54mmR) ---
_Box addAction ["<t color='#a8d8ff'>Request PKM</t>", {
	[(_this select 1),"GOL_weap_pkm","GOL_100Rnd_762x54mmR_red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#a8d8ff'>Request PKP</t>", {
	[(_this select 1),"GOL_weap_pkp","GOL_100Rnd_762x54mmR_red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
// --- Medium tier (7.62x51mm NATO) ---
_Box addAction ["<t color='#a8d8ff'>Request FN MAG</t>", {
	[(_this select 1),"GOL_weap_fnmag",["GOL_FNMAG_200Rnd_762x51_M993_Tracer_Red","GOL_FNMAG_200Rnd_762x51_M993_SLAP_Tracer_Red"]] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#a8d8ff'>Request Zafir</t>", {
	[(_this select 1),"GOL_LMG_Zafir_F",["GOL_200Rnd_762x51_M993_SLAP_Tracer_Red","GOL_200Rnd_762x51_M993_Tracer_Red"]] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#a8d8ff'>Request UK59N</t>", {
	[(_this select 1),"GOL_weap_UK59N","GOL_UK59_200Rnd_762x51_M993_Tracer_Red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#a8d8ff'>Request MG3 KWS</t>", {
	[(_this select 1),"GOL_MG3_KWS_B",["GOL_MG3_250Rnd_762x51_M993_SLAP_Tracer_Red","GOL_MG3_250Rnd_762x51_M993_Tracer_Red"]] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
// --- Heavy tier (9.3mm / .338) ---
_Box addAction ["<t color='#a8d8ff'>Request Navid (Tan)</t>", {
	[(_this select 1),"GOL_MMG_01_tan_F","GOL_150Rnd_93x64_Mag_Tracer_Red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#a8d8ff'>Request SPMG (Black)</t>", {
	[(_this select 1),"GOL_MMG_02_black_F","GOL_200Rnd_338_AP_Tracer_Red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];

_Box addAction ["<t color='#6a9fe8' size='1.25'>Machineguns (Additional)</t>", { systemChat "This is a category dummy :)"}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#88b0e8'>Request L110A3</t>", {
	[(_this select 1),"UK3CB_BAF_L110A3","GOL_UK3CB_BAF_556_200Rnd_AP45_T_Red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#88b0e8'>Request L110 (7.62)</t>", {
	[(_this select 1),"UK3CB_BAF_L110_762","UK3CB_BAF_762_200Rnd_T"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#88b0e8'>Request M240B</t>", {
	[(_this select 1),"rhs_weap_m240B","rhsusf_100Rnd_762x51_m80a1epr"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];
_Box addAction ["<t color='#88b0e8'>Request LIM-85</t>", {
	[(_this select 1),"LMG_03_F","GOL_200Rnd_556x45_AP45_Box_Tracer_Red"] call GetPrimaryWeaponReset;
}, [], 1, true, false, "", _kitCond];