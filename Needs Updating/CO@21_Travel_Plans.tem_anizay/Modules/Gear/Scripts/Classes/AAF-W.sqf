
_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "insignia_block35";
_goggles = ["UK3CB_G_KLR_TAN","UK3CB_G_KL_TAN","UK3CB_G_KR_TAN","rhsusf_shemagh_tan","rhsusf_shemagh_gogg_tan","rhsusf_oakley_goggles_blk","UK3CB_G_Tactical_Clear_Shemagh_Tan","UK3CB_G_Tactical_Clear"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army_Off";
_helmet =  ["UK3CB_AAF_I_H_MKVI_Helmet_B_BRN","UK3CB_AAF_I_H_MKVI_Helmet_A_BRN"];
_uniform =  ["UK3CB_AAF_B_U_CombatUniform_DIGI_BRN","UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_BRN"];
_vest =  ["UK3CB_AAF_I_V_Falcon_6_DIGI_BRN","UK3CB_AAF_I_V_Falcon_5_DIGI_BRN","UK3CB_AAF_I_V_Falcon_7_DIGI_BRN"];
_backpack = ["UK3CB_AAF_B_B_FIELDPACK_DIGI_BRN"];
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = ["UK3CB_AAF_B_B_FIELDPACK_DIGI_BRN_Radio"];
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_ION_B_B_RIF_MED_BRN";
	_vest = "UK3CB_AAF_I_V_Falcon_9_DIGI_BRN";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
	_vest = "UK3CB_AAF_I_V_Falcon_1_DIGI_BRN";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_I";
	_uniform = "U_I_HeliPilotCoveralls";
	_vest = "UK3CB_AAF_I_V_Falcon_1_DIGI_BRN";
};
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["JCA_arifle_M4A4_AFG_sand_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_M4A4_VFG_sand_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["JCA_arifle_M4A4_GL_sand_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["JCA_arifle_M4A4_VFG_sand_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_556x45_Stanag_Sand";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Sand_Tracer_Red";
_rifleGL_mag = "30Rnd_556x45_Stanag_Sand";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Sand_Tracer_Red";
_rifleC_mag = "30Rnd_556x45_Stanag_Sand";
_rifleC_mag_tr = "30Rnd_556x45_Stanag_Sand_Tracer_Red";

_LMG = ["LMG_Mk200_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_65x39_cased_Box_Tracer";

_MMG = ["LMG_Mk200_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "200Rnd_65x39_cased_Box_Tracer";

_LAT = ["UK3CB_BAF_AT4_CS_AP_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_I_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_ACPC2_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "9Rnd_45ACP_Mag";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "muzzle_snds_B_khk_F";
_pointer = "acc_pointer_IR";
_sight = "optic_LRPS_tna_F";
_bipod = "bipod_03_F_oli";

_rifleMarksman = ["srifle_DMR_03_woodland_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_762x51_Mag";
_rifleMarksman_mag_tr = "20Rnd_762x51_Mag";
