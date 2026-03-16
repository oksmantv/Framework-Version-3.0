_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "111thID";
_goggles = ["G_CBRN_B_black"];
_helmet = ["UK3CB_ION_B_H_OPSCORE_PELT_WIN","UK3CB_ION_B_H_OPSCORE_WIN"];
_OfficerHelmet = "H_Beret_02";
_uniform = ["UK3CB_CHD_W_B_U_CombatSmock_20"];
_vest = ["UK3CB_V_MBAV_LIGHT_WIN","UK3CB_V_MBAV_MG_WIN","UK3CB_V_MBAV_MEDIC_WIN","UK3CB_V_MBAV_RIFLEMAN_WIN"];
_backpack = "UK3CB_ION_B_B_ENG_WIN";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_ION_B_B_RadioBag_WIN";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_ION_B_B_ENG_WIN";
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
_pointer = "uk3cb_baf_llm_flashlight_black";
_sight = "rhsusf_acc_compm4";
_bipod = "bipod_01_f_blk";

_rifle = ["hlc_rifle_hk33a2RIS", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_rifle_hk53RAS", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_rifle_hk33a2RIS_GL", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_sr25_ec", "hlc_muzzle_aac_762sdn6", _pointer, "hlc_optic_hensoldtzo_hi_docter", "rhsusf_acc_harris_bipod"];
_rifle_mag = "hlc_30rnd_556x45_M_HK33";
_rifle_mag_tr = "hlc_30rnd_556x45_t_HK33";
_rifleGL_mag = "hlc_30rnd_556x45_M_HK33";
_rifleGL_mag_tr = "hlc_30rnd_556x45_t_HK33";
_rifleL_mag = "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag";
_rifleL_mag_tr = "rhsusf_20Rnd_762x51_SR25_m62_Mag";

_LMG = ["LMG_03_F", "muzzle_snds_m", _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["hlc_lmg_M60E4", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "hlc_200Rnd_762x51_T_M60E4";

_sight = "";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";

_HAT = ["launch_B_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["launch_B_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_Pistol_heavy_01_F", _silencer, _pointer, "optic_MRD", _bipod];
_pistol_mag = "11Rnd_45ACP_Mag";

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
