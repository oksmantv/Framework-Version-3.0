_useMineDetector = false;
_allowedNightStuff = false;

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
_goggles = ["UK3CB_G_Gloves_Green","UK3CB_G_Gloves_Black","UK3CB_G_KLR_Oli","rhsusf_shemagh_od","rhsusf_shemagh2_od","rhsusf_shemagh2_gogg_od","rhsusf_shemagh_gogg_od","rhsusf_oakley_goggles_blk","G_Balaclava_TI_blk_F","UK3CB_G_Tactical_Black_Gloves_Tan","UK3CB_G_Tactical_Gloves_Black","G_Lowprofile","G_Spectacles","G_Squares"];
_helmet = ["rhssaf_helmet_m97_olive_nocamo","rhssaf_helmet_m97_olive_nocamo_black_ess","rhssaf_helmet_m97_olive_nocamo_black_ess_bare"] call BIS_fnc_selectRandom;
_OfficerHelmet = "UK3CB_ANA_B_H_OFF_Beret_GRN";
_uniform = ["UK3CB_GAF_B_U_SF_CombatSmock_06_MULTICAM","UK3CB_LNM_B_U_Crew_CombatSmock_01","UK3CB_GAF_B_U_SF_CombatSmock_05_MULTICAM","UK3CB_GAF_B_U_SF_CombatSmock_02_MULTICAM","UK3CB_LNM_B_U_Crew_CombatSmock_02","UK3CB_LNM_B_U_Crew_CombatSmock_03","UK3CB_LNM_B_U_Crew_CombatSmock_04","UK3CB_LNM_B_U_Crew_CombatSmock_10","UK3CB_LNM_B_U_Crew_CombatSmock_08","UK3CB_LNM_B_U_Crew_CombatSmock_09"];
_vest = ["rhsusf_iotv_ocp_Teamleader","rhsusf_iotv_ocp_Squadleader","rhsusf_iotv_ocp_SAW","rhsusf_iotv_ocp_Rifleman","rhsusf_iotv_ocp_Grenadier","rhsusf_iotv_ocp_Medic","rhsusf_iotv_ocp_Repair"];
_backpack = "B_Kitbag_rgr";
_backpackRadio = _backpack;

if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_ION_O_B_RadioBag_OLI";
};

if(_role in ["ag","ammg"]) then {
	_backpack = "UK3CB_LSM_B_B_CARRYALL_KHK";
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
	_helmet = "H_Tank_black_F";
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
_sight = "optic_arco_blk_f";
_bipod = "rhs_acc_grip_rk2";

_rifle = ["rhs_weap_ak74mr", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_ak105_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74mr_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_ak74mr", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_30Rnd_545x39_7N22_AK";
_rifle_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";
_rifleGL_mag = "rhs_30Rnd_545x39_7N22_AK";
_rifleGL_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";
_rifleL_mag = "rhs_30Rnd_545x39_7N22_AK";
_rifleL_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";

_LMG = ["UK3CB_BAF_L110A2RIS", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_556_200Rnd_T";

_MMG = ["UK3CB_BAF_L110_762", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["rhs_weap_6p53", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_18rnd_9x21mm_7N28";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, "", _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svdo", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";