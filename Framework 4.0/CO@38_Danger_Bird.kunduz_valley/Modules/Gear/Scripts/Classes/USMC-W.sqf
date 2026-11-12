_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["JCA_G_balaclava_01_sand_F"];
_helmet = ["rhsusf_opscore_fg_pelt_nsw","rhsusf_opscore_fg_pelt_cam","rhsusf_opscore_fg_pelt","rhsusf_opscore_fg"];
_OfficerHelmet = "rhs_8point_marpatwd";
_uniform = ["UK3CB_ADM_B_U_CombatUniform_01_MAR","UK3CB_ADM_B_U_CombatUniform_Shortsleeve_01_MAR"];
_vest = ["rhsusf_spc_light","rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_mg","rhsusf_spc_marksman","rhsusf_spc_patchless_radio","rhsusf_spc_rifleman","rhsusf_spc_sniper","rhsusf_spc_squadleader","rhsusf_spc"];
_backpack = ["UK3CB_ION_B_B_ASS_DES_01","UK3CB_ION_B_B_ASS_DES_01"];
if (true) then {
	_backpackRadio = "FRXA_tf_rt1523g_big_MARPAT_Woodlaand";
};

if (_role in ["ftl","sl"]) then {
	_vest = "rhsusf_spc_teamleader";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_vest = "rhsusf_spc_corpsman";
	_backpack = "rhsusf_assault_eagleaiii_coy_medic";
};
if (_role in ["ar","mmg"]) then {
	_vest = "rhsusf_spc_mg";
	_backpack = "rhsusf_assault_eagleaiii_coy_mg";
};

if (_role isEqualTo "crew") then {
	_helmet = "rhsusf_cvc_green_helmet";
	_vest = "rhsusf_spc_crewman";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p";
	_vest = "rhsusf_spc_crewman";
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

_silencer = "JCA_muzzle_snds_556_advanced_black";
_pointer = "";
_sight = "RKSL_optic_EOT552";
_bipod = "rhsusf_acc_grip2_tan";

_rifle = ["rhs_weap_mk18", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_mk18_KAC", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_mk18_m320", _silencer, _pointer, _sight, _bipod];
_rifleL = ["JCA_arifle_SR10_AFG_black_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifle_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleGL_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleGL_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleC_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleC_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleL_mag = "JCA_20Rnd_762x51_Red_PMAG";
_rifleL_mag_tr = "JCA_20Rnd_762x51_Tracer_Red_PMAG";

_LMG = ["GOL_LMG_Mk200_F", "muzzle_snds_65_TI_blk_F", _pointer, "RKSL_optic_EOT552X", "JCA_bipod_04_black"];
_LMG_mag = "GOL_200Rnd_65x39_cased_Box_Tracer_Red";

_MMG = ["GOL_MMG_02_black_F", _silencer, _pointer, "RKSL_optic_EOT552X", _bipod];
_MMG_mag = "GOL_130Rnd_338_Mag_red";

_LAT = ["UK3CB_BAF_AT4_CS_AP_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AP_Mag";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["JCA_hgun_Mk23_olive_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "JCA_12Rnd_45ACP_Mk23_Tracer_Red_Mag";

_pdw = ["JCA_smg_UMP_black_F", _silencer, _pointer, "JCA_optic_ARO_black", _bipod];
_pdw_mag = "JCA_25Rnd_45ACP_UMP_Red_Mag";
_pdw_mag_tr = "JCA_25Rnd_45ACP_UMP_Tracer_Red_Mag";

_silencer = "";
_pointer = "";
_rifleMarksman = ["JCA_arifle_SR25_black_F", "JCA_muzzle_snds_762_tactical_black", _pointer, "JCA_optic_CRBS_black", "JCA_bipod_04_black"];
_rifleMarksman_mag = "JCA_20Rnd_762x51_Red_SMAG";
_rifleMarksman_mag_tr = "JCA_20Rnd_762x51_Tracer_Red_SMAG";