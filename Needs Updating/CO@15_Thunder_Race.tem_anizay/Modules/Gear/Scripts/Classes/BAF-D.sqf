_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles =  ["rhsusf_shemagh_tan","rhsusf_shemagh2_tan","rhsusf_oakley_goggles_clr","UK3CB_G_Tactical_Clear","UK3CB_G_KLR_TAN"];
_helmet = ["acp_gol_GB_DDPM_H_MK7_GB_DDPM_F","acp_gol_GB_DDPM_H_HelmetB_GB_DDPM"];
_OfficerHelmet = "UK3CB_ANA_B_H_Beret_GRN";
_uniform =  ["acp_gol_GB_DDPM_U_I_E_Uniform_GB_DDPM_01_F_insignia","acp_gol_GB_DDPM_U_I_E_Uniform_shortsleeve_GB_DDPM_01_F_flag","acp_gol_GB_DDPM_U_I_CombatUniform_shortsleeve_GB_DDPM_insignia","acp_gol_GB_DDPM_U_I_CombatUniform_GB_DDPM_insignia"];
_vest = ["acp_gol_GB_DDPM_V_CarrierRigKBT_01_light_GB_DDPM_F","acp_gol_GB_DDPM_V_PlateCarrierIA2_GB_DDPM","acp_gol_GB_DDPM_V_CarrierRigKBT_01_GB_DDPM_F","acp_gol_GB_DDPM_V_CarrierRigKBT_01_heavy_GB_DDPM_F"];
_backpack = ["acp_gol_GB_DDPM_B_TacticalPack_GB_DDPM"];
_backpackRadio = _backpack;

if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = ["acp_gol_GB_DDPM_B_RadioBag_01_GB_DDPM_F"];
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "acp_gol_GB_DDPM_B_TacticalPack_GB_DDPM";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
	_vest = "acp_gol_GB_DDPM_V_PlateCarrier1_GB_DDPM";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p_visor_black";
	_uniform = "UK3CB_ADM_B_U_CombatUniform_01_WDL";
	_vest = "acp_gol_GB_DDPM_V_PlateCarrier1_GB_DDPM";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "Uniform_Coveralls_MTP";
	_vest = "V_Rangemaster_belt";
	_backpack = _backpackRadio;
};

_silencer = selectRandom ["uk3cb_baf_bayonet_l3a1","uk3cb_baf_sffh"];
_pointer = "";
_sight = "";
_bipod = "";

_rifle = [["UK3CB_BAF_L85A2","UK3CB_BAF_L85A2"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_BAF_L22", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["UK3CB_BAF_L85A2_UGL", _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_BAF_L86A2", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_30rnd_556x45_M";
_rifle_mag_tr = "hlc_30rnd_556x45_t";
_rifleGL_mag = "hlc_30rnd_556x45_M";
_rifleGL_mag_tr = "hlc_30rnd_556x45_t";
_rifleL_mag = "hlc_30rnd_556x45_M";
_rifleL_mag_tr = "hlc_30rnd_556x45_t";
_rifleC_mag = "hlc_30rnd_556x45_M";
_rifleC_mag_tr = "hlc_30rnd_556x45_t";

_LMG = ["UK3CB_BAF_L110A1", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_556_200Rnd_T";

_MMG = ["UK3CB_BAF_L7A2", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_BAF_762_100Rnd_T";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["UK3CB_BAF_L9A1", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "UK3CB_BAF_9_13Rnd";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "";

_rifleMarksman = ["UK3CB_BAF_L115A3", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_BAF_338_5Rnd";
_rifleMarksman_mag_tr = "UK3CB_BAF_338_5Rnd_Tracer";
