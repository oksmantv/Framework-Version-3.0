_useMineDetector = false;
_allowedNightStuff = false;

_insignia = "";
_goggles = ["rhs_balaclava1_olive","rhs_balaclava","rhsusf_shemagh_od","rhsusf_shemagh2_od"];
_helmet = ["rhsusf_opscore_rg_cover_pelt","rhsusf_opscore_rg_cover"] call BIS_fnc_selectRandom;
_OfficerHelmet = "UK3CB_ANA_B_H_OFF_Beret_GRN";
_uniform = ["UK3CB_GAF_B_U_SF_CombatSmock_02_MULTICAM","UK3CB_GAF_B_U_SF_CombatSmock_06_MULTICAM","UK3CB_GAF_B_U_SF_CombatSmock_06_MULTICAM"];
_vest = ["UK3CB_GAF_B_MBAV_MEDIC_OLI_03","UK3CB_GAF_B_MBAV_MG_OLI_02"];
_backpack = "B_Kitbag_mcamo";
_backpackRadio = _backpack;

if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_ION_O_B_RadioBag_BRN";
};

if(_role in ["ag","ammg"]) then {
	_backpack = "UK3CB_GAF_B_B_ENG_MULTICAM_01";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "rhs_zsh7a_mike_green_alt";
	_uniform = "rhsgref_uniform_ttsko_mountain";
	_vest = "rhs_6b2_holster";
};

if(_role isEqualTo "crew") then {
	_goggles = "";
	_vest = "rhs_6b2_holster";
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


_silencer = "hlc_muzzle_556nato_rotexiiic_grey";
_pointer = "";
_sight = "optic_aco";
_bipod = "";

_rifle = [["hlc_rifle_RU5562","hlc_rifle_ACR_SBR_black","hlc_rifle_ACR_carb_black"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_rifle_RU5562", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_rifle_ACR_GL_SBR_black", _silencer, _pointer, _sight, _bipod];
_rifleL = ["srifle_DMR_07_blk_F", "hlc_muzzle_aac_762sdn6", _pointer, "hlc_optic_hensoldtzo_hi_docter", ""];
_rifle_mag = "hlc_30rnd_556x45_M";
_rifle_mag_tr = "hlc_30rnd_556x45_t";
_rifleGL_mag = "hlc_30rnd_556x45_M";
_rifleGL_mag_tr = "hlc_30rnd_556x45_t";
_rifleL_mag = "ACE_20Rnd_65_Creedmor_mag";
_rifleL_mag_tr = "ACE_20Rnd_65_Creedmor_mag";

_LMG = ["rhs_weap_m249_pip_S_para", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhsusf_200rnd_556x45_mixed_box";

_MMG = ["rhs_weap_pkm", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["rhs_weap_6p53", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_18rnd_9x21mm_7N28";

_pdw = ["SMG_05_F", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "hlc_30Rnd_9x19_B_MP5";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svds", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";