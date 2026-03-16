_useMineDetector = true;
_allowedNightStuff = true;

_insignia = "";
_goggles = "UK3CB_ANPVS7";
_helmet = "";
_OfficerHelmet = "";
_uniform = "rhs_uniform_6sh122_gloves_v1";
_vest = "rhs_6b45_rifleman";
_backpack = "B_FieldPack_oli";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_B_I_Backpack_Radio_Chem_OLI";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "rhs_tortila_olive";
};

if(_role isEqualTo "crew") then {
	_uniform = "rhs_uniform_6sh122_gloves_v1";
	_vest = "rhs_6b45_rifleman";
};

if (_role isEqualTo "p") then {
	_helmet = "rhs_zsh7a_mike_green";
	_uniform = "rhs_uniform_df15";
	_vest = "UK3CB_V_Pilot_Vest";
};
if (_role isEqualTo "uav") then {
	_backpack = "";
	_gps = "";

};
if (_role isEqualTo "jetp") then {
	_goggles = "";
	_helmet = "";
	_uniform = "";
	_vest = "";
	_backpack = "";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["hlc_rifle_slr107u", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_rifle_slr107u", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_rifle_ak12GL", _silencer, _pointer, _sight, _bipod];
_rifleL = ["hlc_rifle_slr107u", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "UK3CB_AK47_30Rnd_Magazine_G";
_rifle_mag_tr = "UK3CB_AK47_30Rnd_Magazine_G";
_rifleC_mag = "UK3CB_AK47_30Rnd_Magazine_G";
_rifleC_mag_tr = "UK3CB_AK47_30Rnd_Magazine_G";
_rifleGL_mag = "hlc_45Rnd_545x39_EP_rpk";
_rifleGL_mag_tr = "hlc_45Rnd_545x39_EP_rpk";
_rifleL_mag = "UK3CB_AK47_30Rnd_Magazine_G";
_rifleL_mag_tr = "UK3CB_AK47_30Rnd_Magazine_G";


_LMG = ["UK3CB_RPK_74N_BLK", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "hlc_60Rnd_545x39_EP_rpk";

_MMG = ["hlc_rifle_slr107u", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_AK47_30Rnd_Magazine_G";

_sight = "";

_LAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg7_PG7VL_mag";
_LAT_ReUsable = false;

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "rhs_rpg7_PG7VL_mag";
_MAT_mag_HE = "RPG7_F";

_HAT = ["", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "";

_AA = ["", _silencer, _pointer, _sight, _bipod];
_AA_mag = "";

_pistol = ["rhs_weap_pp2000_folded", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_mag_9x19mm_7n21_20";

_pdw = ["rhs_weap_pp2000_folded", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n21_20";
_pdw_mag_tr = "rhs_mag_9x19mm_7n21_20";

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifleMarksman = ["", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "";
