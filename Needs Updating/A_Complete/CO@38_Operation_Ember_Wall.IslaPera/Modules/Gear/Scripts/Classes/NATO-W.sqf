_useMineDetector = false;
_allowedNightStuff = true;

_goggles = ["rhs_balaclava","rhs_balaclava1_olive","rhsusf_shemagh_gogg_grn","rhsusf_shemagh2_gogg_grn","rhsusf_shemagh2_grn","rhsusf_shemagh_grn","UK3CB_G_KR_GRN","UK3CB_G_KL_GRN","UK3CB_G_KLR_GRN","G_Headband_grn_F","G_Armband_aaf_F","rhsusf_oakley_goggles_blk","UK3CB_G_Tactical_Black","rhssaf_veil_Green"];
_helmet = "H_HelmetB_Enh_tna_F";
_OfficerHelmet = "H_Beret_02";
_uniform = ["UK3CB_AAF_B_U_CombatUniform_DIGI_GRN","UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_GRN"];
_vest = ["UK3CB_AAF_B_V_RFL_Vest_DIGI_GRN","UK3CB_AAF_B_V_MK_Vest_DIGI_GRN","UK3CB_AAF_B_V_MG_Vest_DIGI_GRN","UK3CB_AAF_B_V_MD_Vest_DIGI_GRN","UK3CB_AAF_B_V_SL_Vest_DIGI_GRN"];
_backpack = "B_Kitbag_rgr";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_ION_O_B_RadioBag_OLI";
};

if (_role in ["ag","ammg","lr","ab","mmg"]) then {
	_backpack = "UK3CB_CSAT_G_O_B_ENG_GRN";
};
if (_role isEqualTo "crew") then {
	_uniform = "U_B_T_Soldier_SL_F";
	_vest = "UK3CB_AAF_B_V_CREW_Vest_DIGI_GRN";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_HeliPilotCoveralls";
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

_silencer = "JCA_muzzle_snds_556_advanced_olive";
_pointer = "JCA_acc_DualMount_olive_Pointer";
_sight = "JCA_optic_IHO_olive";
_bipod = "JCA_bipod_04_olive";

_rifle = ["JCA_arifle_M4A4_VFG_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_M4A4_AFG_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["JCA_arifle_M4A4_GL_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["arifle_MXM_khk_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk318_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk318_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleL_mag = "ACE_30Rnd_65_Creedmor_khaki_mag";
_rifleL_mag_tr = "30Rnd_65x39_caseless_khaki_mag_Tracer";

_LMG = ["arifle_MX_SW_khk_F", "muzzle_snds_H_khk_F", "JCA_acc_LaserModule_olive_Pointer", "optic_Holosight_khk_F", "bipod_01_F_khk"];
_LMG_mag = "100Rnd_65x39_caseless_khaki_mag_tracer";

_MMG = ["UK3CB_MG3_KWS_B", _silencer, "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AHO_black", _bipod];
_MMG_mag = "UK3CB_MG3_250rnd_762x51_RT";

_sight = "";

_LAT = ["UK3CB_BAF_AT4_CS_AP_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AP_Mag";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";

_HAT = ["launch_I_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["launch_B_Titan_olive_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_P07_khk_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "rhsusf_acc_ACOG_RMR";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["srifle_DMR_06_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "ACE_20Rnd_762x51_Mag_Tracer";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
