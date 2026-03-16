_useMineDetector = true;
_allowedNightStuff = true;

_insignia = "";
_goggles = "UK3CB_ANPVS7";
_helmet = "rhsgref_ssh68_vsr";
_OfficerHelmet = "UK3CB_TKP_O_H_Beret";
_uniform = "UK3CB_KDF_I_U_CombatUniform_01_VSR";
_vest = "rhs_6sh92_vsr";
_backpack = "UK3CB_KDF_I_B_Sidor_RIF_OLI";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "TFAR_rt1523g_bwmod";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_KDF_B_B_Sidor_MD_OLI";
};

if(_role isEqualTo "crew") then {
	_uniform = "UK3CB_KDF_I_U_CombatUniform_01_VSR";
	_vest = "rhs_6sh92_vsr";
};

if (_role isEqualTo "p") then {
	_helmet = "rhsgref_ssh68_vsr";
	_uniform = "UK3CB_KDF_I_U_CombatUniform_01_VSR";
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

_rifle = ["hlc_smg_mp5a2", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_smg_mp5a2", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_smg_mp5a2", _silencer, _pointer, _sight, _bipod];
_rifleL = ["hlc_smg_mp5a2", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_9x21_Mag_SMG_02";
_rifle_mag_tr = "30Rnd_9x21_Mag_SMG_02";
_rifleC_mag = "30Rnd_9x21_Mag_SMG_02";
_rifleC_mag_tr = "30Rnd_9x21_Mag_SMG_02";
_rifleGL_mag = "30Rnd_9x21_Mag_SMG_02";
_rifleGL_mag_tr = "30Rnd_9x21_Mag_SMG_02";
_rifleL_mag = "30Rnd_9x21_Mag_SMG_02";
_rifleL_mag_tr = "30Rnd_9x21_Mag_SMG_02";


_LMG = ["hlc_smg_mp5a2", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "30Rnd_9x21_Mag_SMG_02";

_MMG = ["hlc_smg_mp5a2", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "30Rnd_9x21_Mag_SMG_02";

_sight = "";

_LAT = ["", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "";

_AA = ["", _silencer, _pointer, _sight, _bipod];
_AA_mag = "";

_pistol = ["rhsusf_weap_m1911a1", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "9Rnd_45ACP_Mag";

_pdw = ["", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "";
_pdw_mag_tr = "";

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifleMarksman = ["", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "";
