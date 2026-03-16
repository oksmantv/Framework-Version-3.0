_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = "rhsusf_oakley_goggles_clr";
_helmet = ["rhsusf_opscore_mc_cover_pelt_cam","rhsusf_opscore_mc_cover_pelt_nsw","rhsusf_opscore_mc_cover_pelt","rhsusf_opscore_mc_cover"];
_OfficerHelmet = "rhs_8point_marpatd";
_uniform = "rhs_uniform_g3_mc";
_vest = ["rhsusf_iotv_ocp_Rifleman","rhsusf_iotv_ocp"];
_backpack = "UK3CB_GAF_B_B_ASS_MULTICAM_01";
if (true) then {
	_backpackRadio = "TFAR_rt1523g_big_rhs";
};

if(_role isEqualTo "sl") then {
	_vest = "rhsusf_iotv_ocp_Squadleader";
};
if(_role isEqualTo "ftl") then {
	_vest = "rhsusf_iotv_ocp_Teamleader";
};
if(_role isEqualTo "g") then {
	_vest = "rhsusf_iotv_ocp_Grenadier";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_vest = "rhsusf_iotv_ocp_Medic";
	_backpack = "UK3CB_GAF_B_B_ENG_MULTICAM_01";
};
if (_role in ["ar","mmg"]) then {
	_vest = "rhsusf_iotv_ocp_SAW";
};
if (_role isEqualTo "crew") then {
	_vest = "rhsusf_iotv_ocp_Repair";
	_helmet = "rhsusf_cvc_helmet";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_cvc_helmet";
	_vest = "rhsusf_spc_light";
};

if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "UK3CB_CW_US_B_LATE_U_J_Pilot_Uniform_01_NATO";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
_sight = "rhsusf_acc_eotech_552_d";
_bipod = "rhsusf_acc_kac_grip";

_rifle = ["rhs_weap_m4a1_blockII_d", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_m4a1_blockII_d", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_m4a1_blockII_M203_d", _silencer, _pointer, _sight, "rhsusf_acc_grip_m203_blk"];
_rifleL = ["JCA_arifle_SR10_AFG_black_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleC_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleC_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleL_mag = "JCA_20Rnd_762x51_Red_PMAG";
_rifleL_mag_tr = "JCA_20Rnd_762x51_Tracer_Red_PMAG";

_LMG = ["rhs_weap_m249_light_S", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhsusf_200rnd_556x45_mixed_box";

_MMG = ["rhs_weap_m240B", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhsusf_100Rnd_762x51_m62_tracer";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_sand_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["JCA_hgun_P226_black_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "JCA_15Rnd_9x21_P226_Red_Mag";

_pdw = ["JCA_smg_UMP_black_F", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "JCA_25Rnd_45ACP_UMP_Red_Mag";
_pdw_mag_tr = "JCA_25Rnd_45ACP_UMP_Tracer_Red_Mag";

_silencer = "";
_pointer = "";
_rifleMarksman = ["JCA_srifle_AWM_black_F", _silencer, _pointer, "JCA_optic_HPPO_black", "JCA_bipod_AWM_black"];
_rifleMarksman_mag = "JCA_5Rnd_338LM_AWM_Mag";
_rifleMarksman_mag_tr = "JCA_5Rnd_338LM_AWM_Tracer_Red_Mag";