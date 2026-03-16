_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["G_Balaclava_TI_blk_F","G_Balaclava_TI_G_blk_F","rhsusf_shemagh_gogg_grn","rhsusf_shemagh2_gogg_grn","rhsusf_shemagh_grn","rhsusf_shemagh2_grn","UK3CB_G_KLR_Oli","G_Combat_Goggles_tna_F","G_Bandanna_oli","rhs_googles_black","UK3CB_G_Tactical_Clear","G_Spectacles_Tinted"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_SF_Off";
_helmet = ["H_HelmetB_Enh_tna_F"];
_uniform = ["UK3CB_AAF_B_U_CombatUniform_DIGI_GRN","UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_GRN","U_I_CombatUniform_tshirt"];
_vest = ["UK3CB_AAF_I_V_Falcon_3_DIGI_GRN","UK3CB_AAF_I_V_Falcon_4_DIGI_GRN","UK3CB_AAF_I_V_Falcon_5_DIGI_GRN","UK3CB_AAF_I_V_Falcon_6_DIGI_GRN","UK3CB_AAF_I_V_Falcon_7_DIGI_GRN","UK3CB_AAF_I_V_Falcon_8_DIGI_GRN","UK3CB_AAF_I_V_Falcon_9_DIGI_GRN"];
_backpack = ["UK3CB_AAF_B_B_FIELDPACK_DIGI_GRN"];
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = ["UK3CB_AAF_B_B_FIELDPACK_DIGI_GRN_Radio"];
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_AAF_B_B_CARRYALL_DIGI_GRN";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
	_vest = "UK3CB_V_Falcon_1";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_I";
	_uniform = "UK3CB_AAF_I_U_H_Pilot_DIGI_GRN";
	_vest = "V_TacVest_oli";

};
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "";
	_helmet = "RHS_jetpilot_usaf";
	_uniform = "UK3CB_AAF_I_U_J_Pilot_DIGI_GRN";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "hlc_muzzle_gunfighter_comp";
_pointer = "uk3cb_baf_llm_flashlight_black";
_sight = "optic_erco_blk_f";
_bipod = "hlc_grip_pmvfg_black";

_rifle = ["hlc_rifle_hk33a2RIS", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_rifle_hk53RAS", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_rifle_hk33a2RIS_GL", _silencer, _pointer, _sight, _bipod];
_rifleL = ["hlc_rifle_PSG1A1_RIS", _silencer, _pointer, _sight, "bipod_01_f_blk"];
_rifle_mag = "hlc_30rnd_556x45_M_HK33";
_rifle_mag_tr = "hlc_30rnd_556x45_t_HK33";
_rifleGL_mag = "hlc_30rnd_556x45_M_HK33";
_rifleGL_mag_tr = "hlc_30rnd_556x45_t_HK33";
_rifleC_mag = "hlc_30rnd_556x45_M_HK33";
_rifleC_mag_tr = "hlc_30rnd_556x45_t_HK33";
_rifleL_mag = "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
_rifleL_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";

_LMG = ["UK3CB_BAF_L110A3", "uk3cb_baf_sffh", _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_556_200Rnd_T";

_MMG = ["UK3CB_BAF_L7A2", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";


_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_olive_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_I_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_ACPC2_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "9Rnd_45ACP_Mag";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "optic_LRPS_tna_F";
_bipod = "bipod_03_F_oli";

_rifleMarksman = ["srifle_DMR_03_woodland_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_762x51_Mag";
_rifleMarksman_mag_tr = "20Rnd_762x51_Mag";
