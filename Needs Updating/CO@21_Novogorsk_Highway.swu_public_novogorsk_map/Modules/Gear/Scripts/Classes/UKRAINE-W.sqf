_useMineDetector = false;
_allowedNightStuff = false;

_glHE = "rhs_VOG25";
_glHEDP = "rhs_VOG25";
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
_goggles = [
	"G_Balaclava_blk"
];
_helmet = ["H_HelmetSpecB"];
_OfficerHelmet = "UK3CB_ANA_B_H_OFF_Beret_GRN";
_uniform = ["UK3CB_GAF_B_U_SF_CombatSmock_02_MULTICAM","UK3CB_GAF_B_U_SF_CombatSmock_06_MULTICAM","UK3CB_GAF_B_U_SF_CombatSmock_06_MULTICAM"];
_vest = ["rhsusf_iotv_ocp_Rifleman"];
_backpack = "B_Kitbag_mcamo";
_backpackRadio = _backpack;

if (true) then {
	_backpackRadio = "TFAR_mr3000_multicam";
};

if(_role in ["ag","ammg"]) then {
	_backpack = "UK3CB_GAF_B_B_ENG_MULTICAM_01";
	_vest = "rhsusf_iotv_ocp_Medic";
};
if(_role in ["ar","mmg"]) then {
	_vest = "rhsusf_iotv_ocp_SAW";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = ["UK3CB_TKA_O_H_zsh7a_mike_Des","UK3CB_TKA_O_H_zsh7a_mike_Des_alt"];
	_uniform = "UK3CB_GAF_B_U_SF_CombatUniform_02_MULTICAM";
	_vest = "rhsusf_iotv_ocp";
	_backpack = "tfw_ilbe_dd_coy";
};

if(_role isEqualTo "crew") then {
	_goggles = "";
	_helmet = "rhs_tsh4";
	_uniform = "UK3CB_GAF_B_U_SF_CombatUniform_02_MULTICAM";
	_vest = "rhsusf_iotv_ocp_Repair";
};
if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "rhs_zsh7a";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};


_silencer = "rhs_acc_dtk1983";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = [["rhs_weap_aks74n","rhs_weap_ak74n_2","rhs_weap_ak74n","rhs_weap_ak74m_fullplum","rhs_weap_ak74m"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74un", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["rhs_weap_ak74n_2_gp25","rhs_weap_ak74n_gp25","rhs_weap_aks74n_gp25","rhs_weap_ak74m_gp25","rhs_weap_ak74_gp25"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["srifle_DMR_07_blk_F", "muzzle_snds_65_TI_blk_F", _pointer, "rhsusf_acc_LEUPOLDMK4_2", ""];
_rifle_mag = selectRandom ["UK3CB_RPK74_60rnd_545x39_RM"];
_rifle_mag_tr = "UK3CB_RPK74_60rnd_545x39_RT";
_rifleC_mag = selectRandom ["UK3CB_RPK74_60rnd_545x39_RM"];
_rifleC_mag_tr = "UK3CB_RPK74_60rnd_545x39_RT";
_rifleGL_mag = selectRandom ["UK3CB_RPK74_60rnd_545x39_RM"];
_rifleGL_mag_tr = "UK3CB_RPK74_60rnd_545x39_RT";
_rifleL_mag = "ACE_20Rnd_65_Creedmor_mag";
_rifleL_mag_tr = "ACE_20Rnd_65_Creedmor_mag";

_LMG = ["rhs_weap_m249_pip", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhsusf_200rnd_556x45_mixed_box";

_MMG = ["rhs_weap_pkm", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_LAT = ["rhs_weap_rshg2", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_olive_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["UK3CB_USP", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "UK3CB_USP_9_15Rnd";

_pdw = ["SMG_05_F", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svds", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";