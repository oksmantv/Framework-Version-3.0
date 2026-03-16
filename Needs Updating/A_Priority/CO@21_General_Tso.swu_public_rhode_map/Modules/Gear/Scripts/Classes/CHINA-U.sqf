_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["acp_gol_CN_Type_07_Universal_G_Bandanna_CN_Type_07_Universal","acp_gol_CN_Type_07_Universal_G_Balaclava_TI_CN_Type_07_Universal_F","acp_gol_CN_Type_07_Universal_G_Balaclava_TI_G_CN_Type_07_Universal_F","acp_gol_CN_Type_07_Universal_G_Balaclava_CN_Type_07_Universal","UK3CB_G_Tactical_Black","rhsusf_shemagh2_gogg_od","rhsusf_shemagh_gogg_od","rhsusf_shemagh2_od","rhsusf_shemagh_od","UK3CB_G_KLR_BLK","G_Combat"];
_helmet = ["UK3CB_UN_B_H_6b27m_Cov","UK3CB_UN_B_H_6b27m_ESS","UK3CB_UN_B_H_6b27m_ESS_Cov","UK3CB_UN_B_H_6b27m"];
_OfficerHelmet = "UK3CB_UN_B_H_Beret";
_uniform = ["acp_gol_CN_Type_07_Universal_U_I_E_Uniform_CN_Type_07_Universal_01_F_insignia","acp_gol_CN_Type_07_Universal_U_I_E_Uniform_shortsleeve_CN_Type_07_Universal_01_F","acp_gol_CN_Type_07_Universal_U_I_CombatUniform_shortsleeve_CN_Type_07_Universal_insignia","acp_gol_CN_Type_07_Universal_U_I_CombatUniform_CN_Type_07_Universal_insignia"];
_vest = ["acp_gol_CN_Type_07_Universal_V_PlateCarrier2_CN_Type_07_Universal_insignia","acp_gol_CN_Type_07_Universal_V_PlateCarrier1_CN_Type_07_Universal_insignia","acp_gol_CN_Type_07_Universal_V_PlateCarrierSpec_CN_Type_07_Universal_insignia","acp_gol_CN_Type_07_Universal_V_PlateCarrierGL_CN_Type_07_Universal_insignia"];
_backpack = ["acp_gol_CN_Type_07_Universal_B_Kitbag_rgr_CN_Type_07_Universal"];
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = ["acp_gol_CN_Type_07_Universal_B_RadioBag_01_CN_Type_07_Universal_F"];
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = ["acp_gol_CN_Type_07_Universal_B_Carryall_CN_Type_07_Universal"];
};
if (_role isEqualTo "crew") then {
	_helmet = "acp_gol_CN_Type_07_Universal_H_PASGT_basic_CN_Type_07_Universal_F";
};
if (_role isEqualTo "p") then {
	_helmet = "acp_gol_CN_Type_07_Universal_H_HelmetSpecO_CN_Type_07_Universal";
	_uniform = "acp_gol_CN_Type_07_Universal_U_O_PilotCoveralls_CN_Type_07_Universal";
	_vest = "acp_gol_CN_Type_07_Universal_V_LegStrapBag_CN_Type_07_Universal_F";
};
if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "acp_gol_CN_Type_07_Universal_H_HelmetSpecO_CN_Type_07_Universal";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
_sight = "optic_arco_blk_f";
_bipod = "";

_rifle = ["arifle_CTAR_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_CTAR_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["arifle_CTAR_GL_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["srifle_DMR_07_blk_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_580x42_Mag_F";
_rifle_mag_tr = "30Rnd_580x42_Mag_Tracer_F";
_rifleC_mag = "30Rnd_580x42_Mag_F";
_rifleC_mag_tr = "30Rnd_580x42_Mag_Tracer_F";
_rifleGL_mag = "30Rnd_580x42_Mag_F";
_rifleGL_mag_tr = "30Rnd_580x42_Mag_Tracer_F";
_rifleL_mag = "20Rnd_650x39_Cased_Mag_F";
_rifleL_mag_tr = "ACE_20Rnd_65_Creedmor_mag";

_LMG = ["arifle_CTARS_blk_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "100Rnd_580x42_Mag_Tracer_F";

_MMG = ["rhs_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_sight = "";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
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
_bipod = "";

_rifleMarksman = ["srifle_DMR_07_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_650x39_Cased_Mag_F";
_rifleMarksman_mag_tr = "ACE_20Rnd_65_Creedmor_mag";
