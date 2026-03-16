_useMineDetector = false;
_allowedNightStuff = false;

_insignia = "111thID";
_goggles = "G_Bandanna_tan";
_helmet = "H_HelmetB_light_sand";
_OfficerHelmet = "H_Beret_02";
_uniform = selectRandom ["U_BG_Guerilla1_1","U_BG_Guerilla2_1","U_BG_Guerrilla_6_1","U_BG_Guerilla2_3"];
_vest = "UK3CB_ANP_B_V_GA_LITE_TAN";
_backpack = "UK3CB_B_Backpack_Pocket";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_B_I_Backpack_Radio_Chem";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "B_FieldPack_khk";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
	_vest = "V_BandollierB_khk";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_TacVest_blk";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "rhsusf_acc_rotex5_grey";
_pointer = "gw_x3000";
_sight = "optic_hamr";
_bipod = "hlc_grip_pmvfg";

_rifle = ["hlc_rifle_RU5562", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_rifle_RU5562", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_rifle_RU5562", _silencer, _pointer, _sight, _bipod];
_rifleL = ["hlc_rifle_m14sopmod", "rhsgref_sdn6_suppressor", _pointer, "rksl_optic_lds", "bipod_01_f_blk"];
_rifle_mag = "rhs_mag_30Rnd_556x45_M855A1_EPM";
_rifle_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_EPM_Tracer_Red";
_rifleGL_mag = "rhs_mag_30Rnd_556x45_M855A1_EPM";
_rifleGL_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_EPM_Tracer_Red";
_rifleL_mag = "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
_rifleL_mag_tr = "hlc_20Rnd_762x51_T_M14";

_LMG = ["hlc_lmg_mk46mod1", "hlc_muzzle_556nato_m42000", _pointer, _sight, ""];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["hlc_lmg_M60E4", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "hlc_200Rnd_762x51_T_M60E4";

_sight = "";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";

_HAT = ["launch_B_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["launch_B_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

if(_role in ["sl","tl","g"]) then {
	_pistol = ["rhs_weap_M320", _silencer, _pointer, "", _bipod];
	_pistol_mag = _glHE;
} else {
	_pistol = ["hlc_pistol_P226R_40Combat", "hlc_muzzle_tirant9s", "acc_flashlight_pistol", "hlc_optic_docter_cadex", _bipod];
	_pistol_mag = "hlc_12Rnd_40sw_JHP_P226";
};

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["srifle_DMR_06_hunter_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_762x51_Mag";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
