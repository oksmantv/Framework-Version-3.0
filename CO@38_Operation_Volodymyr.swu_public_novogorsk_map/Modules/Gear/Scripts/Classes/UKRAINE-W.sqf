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
	"rhs_balaclava1_olive","rhs_balaclava","rhsusf_shemagh_od",
	"rhsusf_shemagh2_od","rhsusf_shemagh2_gogg_od",
	"rhsusf_shemagh_gogg_od","UK3CB_G_Gloves_Green_Shemagh_Green",
	"UK3CB_G_Gloves_Green_Shemagh_Green_Headset",
	"UK3CB_G_Tactical_Clear_Shemagh_Green_Tactical_Gloves_Green",
	"UK3CB_G_Tactical_Clear_Tactical_Gloves_Green",
	"UK3CB_G_Tactical_Gloves_Green_Shemagh_Green_Headset",
	"UK3CB_G_Tactical_Gloves_Green","rhs_facewear_6m2_1"
];
_helmet = ["UK3CB_GAF_B_H_Opscore_Mar_OLI_01","UK3CB_GAF_B_H_Opscore_Mar_OLI_02","UK3CB_GAF_B_H_6b27m_ESS_GRN","UK3CB_GAF_B_H_6b27m_GRN"];
_OfficerHelmet = "UK3CB_ANA_B_H_OFF_Beret_GRN";
_uniform = ["UK3CB_GAF_B_U_SF_CombatSmock_02_MULTICAM","UK3CB_GAF_B_U_SF_CombatSmock_06_MULTICAM","UK3CB_GAF_B_U_SF_CombatSmock_06_MULTICAM","UK3CB_GAF_B_U_SF_CombatSmock_08_MULTICAM_TAN","UK3CB_GAF_B_U_SF_CombatSmock_08_MULTICAM","UK3CB_GAF_B_U_SF_CombatSmock_03_MULTICAM_OLIVE","UK3CB_GAF_B_U_SF_CombatSmock_04_MULTICAM_OLIVE","UK3CB_GAF_B_U_SF_CombatSmock_04_MULTICAM"];
_vest = ["rhsusf_iotv_ocp_Teamleader","rhsusf_iotv_ocp_Squadleader","rhsusf_iotv_ocp_Rifleman","rhsusf_iotv_ocp_Grenadier"];
_backpack = ["UK3CB_GAF_B_B_ASS_MULTICAM_01","B_AssaultPack_khk","B_AssaultPack_rgr","UK3CB_ANA_B_B_ASS"];
_backpackRadio = _backpack;

if (true) then {
	_backpackRadio = "UK3CB_ION_B_B_RadioBag_OLI";
};

if(_role in ["ag","ammg"]) then {
	_backpack = "UK3CB_GAF_B_B_ENG_MULTICAM_01";
	_vest = "rhsusf_iotv_ocp_Medic";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = ["UK3CB_TKA_O_H_zsh7a_mike_Des","UK3CB_TKA_O_H_zsh7a_mike_Des_alt"];
	_uniform = "UK3CB_GAF_B_U_SF_CombatUniform_02_MULTICAM";
	_vest = "UK3CB_V_MBAV_LIGHT_OLI";
	_backpack = "tfw_ilbe_dd_coy";
};

if(_role isEqualTo "crew") then {
	_goggles = "";
	_helmet = "rhs_tsh4";
	_uniform = "UK3CB_GAF_B_U_SF_CombatUniform_02_MULTICAM";
	_vest = "UK3CB_V_MBAV_LIGHT_OLI";
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


_silencer = "rhs_acc_uuk";
_pointer = "";
_sight = "optic_Hamr";
_bipod = "rhs_acc_grip_rk6";

_rifle = ["rhs_weap_ak105_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_AEK971_Railed", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74mr_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["JCA_arifle_SR10_VFG_black_F", "rhsusf_acc_aac_762sdn6_silencer", "JCA_acc_DualMount_black_Pointer", "rhsusf_acc_LEUPOLDMK4_2", "JCA_bipod_04_black"];
_rifle_mag = "rhs_60Rnd_545X39_7N22_AK";
_rifle_mag_tr = "UK3CB_AK12_60rnd_Magazine_RT";
_rifleC_mag = "rhs_60Rnd_545X39_7N22_AK";
_rifleC_mag_tr = "UK3CB_AK12_60rnd_Magazine_RT";
_rifleGL_mag = "rhs_60Rnd_545X39_7N22_AK";
_rifleGL_mag_tr = "UK3CB_AK12_60rnd_Magazine_RT";
_rifleL_mag = "ACE_20Rnd_65_Creedmor_mag";
_rifleL_mag_tr = "ACE_20Rnd_65_Creedmor_mag";

_LMG = ["UK3CB_BAF_L110_762", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_762_200Rnd_T";

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

_pistol = ["UK3CB_USP", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "UK3CB_USP_9_15Rnd";

_pdw = ["SMG_05_F", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svds", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_SVD_10rnd_762x54_GT";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";