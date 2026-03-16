_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = selectRandom ["acp_gol_TUR_TLF_G_Balaclava_TI_G_TUR_TLF_F","acp_gol_TUR_TLF_G_Balaclava_TI_TUR_TLF_F"];
_helmet = "acp_gol_TUR_TLF_H_HelmetSpecter_cover_TUR_TLF_F";
_OfficerHelmet = "H_Beret_CSAT_01_F";
_uniform = "acp_gol_TUR_TLF_U_O_CombatUniform_TUR_TLF";
_vest = selectRandom ["acp_gol_TUR_TLF_V_PlateCarrierIAGL_TUR_TLF","acp_gol_TUR_TLF_V_PlateCarrierIA2_TUR_TLF"];
_backpack = "acp_gol_TUR_TLF_B_Kitbag_rgr_TUR_TLF";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "acp_gol_TUR_TLF_B_RadioBag_01_TUR_TLF_F";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "acp_gol_TUR_TLF_B_Carryall_TUR_TLF";
};
if (_role isEqualTo "crew") then {
	_helmet = "acp_gol_TUR_TLF_H_PASGT_basic_TUR_TLF_F";
};
if (_role isEqualTo "p") then {
	_helmet = "acp_gol_TUR_TLF_H_HelmetSpecO_TUR_TLF";
	_uniform = "acp_gol_TUR_TLF_U_O_PilotCoveralls_TUR_TLF";
	_vest = "acp_gol_TUR_TLF_V_PlateCarrierIA1_TUR_TLF";
};
if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "rhsusf_acc_sfmb556";
_pointer = "";
_sight = "optic_erco_blk_f";
_bipod = "";

_rifle = ["hlc_wp_SCARL_CQC_Blk", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_wp_SCAR_PDW_Blk", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_wp_SCARL_CQC_EGLM_Blk", _silencer, _pointer, _sight, _bipod];
_rifleL = ["hlc_wp_SCARL_STD_SRX_Blk", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_30rnd_556x45_EPR_PMAG";
_rifle_mag_tr = "hlc_30rnd_556x45_t_PMAG";
_rifleGL_mag = "hlc_30rnd_556x45_EPR_PMAG";
_rifleGL_mag_tr = "hlc_30rnd_556x45_t_PMAG";
_rifleC_mag = "hlc_30rnd_556x45_EPR_PMAG";
_rifleC_mag_tr = "hlc_30rnd_556x45_t_PMAG";
_rifleL_mag = "hlc_30rnd_556x45_EPR_PMAG";
_rifleL_mag_tr = "hlc_30rnd_556x45_t_PMAG";

_LMG = ["LMG_03_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "hlc_200rnd_556x45_M_SAW";

_MMG = ["hlc_lmg_M60E4", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "hlc_100Rnd_762x51_T_M60E4";

_sight = "";

_LAT = ["rhs_weap_M136_hedp", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_O_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_Rook40_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "bipod_02_F_hex";

_rifleMarksman = ["srifle_DMR_05_hex_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "10Rnd_93x64_DMR_05_Mag";
_rifleMarksman_mag_tr = "10Rnd_93x64_DMR_05_Mag";
