_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["G_Balaclava_TI_G_blk_F","G_Balaclava_TI_blk_F","UK3CB_G_KLR_TAN","rhsusf_shemagh_tan","UK3CB_G_Tactical_Clear_Shemagh_Tan","UK3CB_G_Balaclava2_DES","UK3CB_G_Balaclava_DES"];
_helmet = ["H_HelmetB_desert"];
_OfficerHelmet = "UK3CB_ANA_B_H_Beret_MAR";
_uniform = ["UK3CB_ADM_B_U_CombatUniform_Shortsleeve_01_DDPM"];
_vest = ["rhsusf_spc_iar","rhsusf_spc_light","rhsusf_spc_mg","rhsusf_spc_marksman","rhsusf_spc_patchless","rhsusf_spc_patchless_radio","rhsusf_spc_rifleman"];
_backpack = "B_Kitbag_cbr";
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tfw_ilbe_blade_coy";
};

if (_role isEqualTo "sl") then {
	_vest = "rhsusf_spc_squadleader";
};

if(_role isEqualTo "ftl") then {
	_vest = "rhsusf_spc_teamleader";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_KRG_B_B_FieldPack_SF_MED";
	_vest = "rhsusf_spc_corpsman";
};
if (_role in ["ar","mmg"]) then {
	_vest = "rhsusf_spc_mg";
};

if (_role isEqualTo "crew") then {
	_helmet = "UK3CB_ARD_B_H_Crew_Cap";
	_vest = "rhsusf_spc_crewman";
	_goggles = "";
};
if (_role isEqualTo "p") then {
	_helmet = "H_CrewHelmetHeli_B";
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

_silencer = "rhsusf_acc_sfmb556";
_pointer = "uk3cb_baf_llm_ir_black";
_sight = "optic_erco_snd_f";
_bipod = "rhsusf_acc_harris_bipod";

_rifle = [["arifle_SPAR_01_snd_F","arifle_SPAR_02_snd_F"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["SMG_03C_khaki", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["arifle_SPAR_01_GL_snd_F"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["arifle_SPAR_03_snd_F", _silencer, _pointer, _sight, "bipod_01_f_snd"];
_rifle_mag = "30Rnd_556x45_Stanag_Sand_red";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Sand_Tracer_Red";
_rifleGL_mag = "30Rnd_556x45_Stanag_Sand_red";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Sand_Tracer_Red";
_rifleC_mag = "50Rnd_570x28_SMG_03";
_rifleL_mag = "ACE_20Rnd_762x51_M993_AP_Mag";
_rifleL_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";


_LMG = ["UK3CB_BAF_L110A3", _silencer, _pointer, _sight, ""];
_LMG_mag = "UK3CB_BAF_556_200Rnd_T";

_MMG = ["UK3CB_BAF_L7A2", _silencer, _pointer, _sight, ""];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hlc_pistol_Mk25TR", _silencer, "hlc_acc_dbalpl_fl", "hlc_optic_romeo1_rx", _bipod];
_pistol_mag = "hlc_15Rnd_9x19_B_P226";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "uk3cb_baf_silencer_l115a3";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "uk3cb_underbarrel_acc_bipod";

_rifleMarksman = ["UK3CB_BAF_L118A1_Covert_BL", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_BAF_338_5Rnd";
_rifleMarksman_mag_tr = "UK3CB_BAF_762_L42A1_10Rnd_T";
