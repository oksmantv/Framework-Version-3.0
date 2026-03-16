_useMineDetector = false;
_allowedNightStuff = true;

_glHE = "rhs_VOG25P";
_glsmokeW = "rhs_GRD40_White";
_glsmokeB = "";
_glsmokeG = "rhs_GRD40_Green";
_glsmokeO = "";
_glsmokeP = "";
_glsmokeR = "rhs_GRD40_Red";
_glsmokeY = "";

_glflareG = "rhs_VG40OP_green";
_glflareR = "rhs_VG40OP_red";
_glflareW = "rhs_VG40OP_white";

_insignia = "";
_goggles = ["G_Balaclava_TI_blk_F"];
_helmet = ["UK3CB_H_HSAT_MKIII","UK3CB_H_HSAT_PTYPE"];
_OfficerHelmet = "rhs_ushanka";
_uniform = "rhs_uniform_gorka_r_y_gloves";
_vest = ["UK3CB_TKA_O_V_6b23_ml_sniper_Oli","UK3CB_TKA_O_V_6b23_ml_engineer_Oli","UK3CB_TKA_O_V_6b23_ml_Oli_02","UK3CB_TKA_O_V_6b23_ML_6sh92_radio_Oli","UK3CB_TKA_O_V_6b23_ml_6sh92_vog_Oli"];
_backpack = "UK3CB_B_Alice_K";
_backpackRadio = _backpack;

if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_B_B_Alice_Radio_Backpack";
};

if(_role in ["ag","ammg"]) then {
	_backpack = "UK3CB_B_Alice_K";
	_vest = "UK3CB_TKA_O_V_6b23_medic_Oli";
};

if(_role isEqualTo "crew") then {
	_helmet = ["UK3CB_ARD_B_H_Crew_Cap","UK3CB_ARD_B_H_Crew_Cap_Ess"];
};
if (_role isEqualTo "p") then {
	_helmet = ["UK3CB_TKA_O_H_zsh7a_mike_Des","UK3CB_TKA_O_H_zsh7a_mike_Des_alt"];
};

if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = ["UK3CB_TKA_O_H_zsh7a_Des","UK3CB_TKA_O_H_zsh7a_Des_alt"];
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};


_silencer = "rhs_acc_dtk2";
_pointer = "";
_sight = "optic_hamr";
_bipod = "rhs_acc_grip_ffg2";

_rifle = [["rhs_weap_ak74mr","rhs_weap_ak74m_zenitco01"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_ak74m_zenitco01", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["rhs_weap_ak74mr_gp25"], _silencer, _pointer, _sight, _bipod];
_rifleL = [["rhs_weap_ak103_2_npz","rhs_weap_ak103_2"], _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_45Rnd_545x39_EP_rpkm";
_rifle_mag_tr = "hlc_45Rnd_545x39_t_rpkm";
_rifleGL_mag = "hlc_45Rnd_545x39_EP_rpkm";
_rifleGL_mag_tr = "hlc_45Rnd_545x39_t_rpkm";
_rifleC_mag = "hlc_45Rnd_545x39_EP_rpkm";
_rifleC_mag_tr = "hlc_45Rnd_545x39_t_rpkm";
_rifleL_mag = "UK3CB_RPK_75rnd_762x39_GT";

_LMG = ["UK3CB_BAF_L110A3", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_556_200Rnd_T";

_MMG = ["rhs_weap_pkm", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_olive_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["rhs_weap_makarov_pm", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_mag_9x18_8_57N181S";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svdp_wd", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";