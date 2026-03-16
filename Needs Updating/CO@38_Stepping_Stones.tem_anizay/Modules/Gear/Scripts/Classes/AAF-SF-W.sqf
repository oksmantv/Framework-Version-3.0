_useMineDetector = false;
_allowedNightStuff = true;
_insignia = "GOL_Insignia_Hellfish";
_goggles = ["G_Armband_aaf_F","G_Headband_grn_F","UK3CB_G_KLR_TAN","UK3CB_G_Neck_Shemag_KLR_tan","rhsusf_shemagh_tan","rhsusf_shemagh2_tan","rhsusf_shemagh_gogg_tan","rhsusf_shemagh2_gogg_tan","rhsusf_oakley_goggles_blk","UK3CB_G_Tactical_Black","G_Squares","UK3CB_G_Neck_Shemag_Tan","UK3CB_G_Neck_Shemag","UK3CB_G_Bandanna_sport_brown_check","UK3CB_G_Bandanna_brown_check"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army_Off";
_helmet =  ["H_HelmetSpecB_blk"];
_uniform =  ["UK3CB_AAF_B_U_CombatUniform_DIGI_BRN","UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_BRN"];
_vest =  ["UK3CB_AAF_I_V_Falcon_6_DIGI_BRN","UK3CB_AAF_I_V_Falcon_7_DIGI_BRN","UK3CB_AAF_I_V_Falcon_5_DIGI_BRN"];
_backpack = ["B_Kitbag_cbr"];
_backpackRadio = ["UK3CB_ION_B_B_RadioBag_BRN"];

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_AAF_B_B_CARRYALL_DIGI_BRN";
	_vest = "UK3CB_AAF_I_V_Falcon_9_DIGI_BRN";	
};

if (_role in ["pm","sm"]) then {
	_goggles = "G_Armband_Cross_F";
	_vest = "UK3CB_AAF_I_V_Falcon_9_DIGI_BRN";	
	_backpack = "UK3CB_ION_B_B_RIF_MED_BRN";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
	_vest = "UK3CB_AAF_I_V_Falcon_1_DIGI_BRN";
	_goggles = "Armband_Yellow_large";	
	_backpack = "UK3CB_LFR_B_B_Tacticalpack_Eng_Tan";
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
_sight = "rhsusf_acc_ACOG3_USMC";
_bipod = "JCA_bipod_04_black";

_rifle = ["arifle_MXM_Black_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_MX_Black_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["arifle_MX_GL_Black_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["arifle_MXM_Black_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "100Rnd_65x39_caseless_black_mag";
_rifle_mag_tr = "100Rnd_65x39_caseless_black_mag_tracer";
_rifleGL_mag = "30Rnd_65x39_caseless_black_mag";
_rifleGL_mag_tr = "30Rnd_65x39_caseless_black_mag_Tracer";
_rifleC_mag = "30Rnd_65x39_caseless_black_mag";
_rifleC_mag_tr = "30Rnd_65x39_caseless_black_mag_Tracer";
_rifleL_mag = "ACE_30Rnd_65_Creedmor_black_mag";
_rifleL_mag_tr = "30Rnd_65x39_caseless_black_mag_Tracer";

_LMG = ["LMG_03_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["MMG_02_black_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "130Rnd_338_Mag";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["JCA_launch_Mk153_PWS_sand_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "JCA_MK153_HEAT_F";
_MAT_mag_HE = "JCA_MK153_HE_F";

_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
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