_useMineDetector = false;
_allowedNightStuff = false;

_glsmokeW = "";
_glsmokeB = "";
_glsmokeG = "";
_glsmokeO = "";
_glsmokeP = "";
_glsmokeR = "";
_glsmokeY = "";

_glflareG = "";
_glflareR = "";
_glflareW = "";

_insignia = "";
_goggles = ["UK3CB_G_Gloves_Green"];
_helmet = ["rhsgref_helmet_m1942","rhsgref_helmet_m1942_alt1"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army_Off";
_uniform = ["UK3CB_LSM_B_U_CombatSmock_07"];
_vest = ["UK3CB_MD98_VEST_OLI"];
_backpack = "UK3CB_TKP_O_B_ASS_BLK";
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "FRXA_tf_rt1523g_big_Ranger_Green";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "UK3CB_TKP_O_B_ASS_BLK";
};

if (_role isEqualTo "p") then {
	_helmet = "UK3CB_H_Pilot_Helmet";
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

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = [["UK3CB_G3A3","UK3CB_G3A3V"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_G3A3", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["UK3CB_G3A3V", _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_G3A3V", _silencer, _pointer, "uk3cb_optic_ZFSG1", _bipod];
_rifle_mag = "hlc_20rnd_762x51_b_G3";
_rifle_mag_tr = "hlc_20rnd_762x51_T_G3";
_rifleGL_mag = "hlc_20rnd_762x51_b_G3";
_rifleGL_mag_tr = "hlc_20rnd_762x51_T_G3";
_rifleL_mag = "hlc_20rnd_762x51_b_G3";
_rifleL_mag_tr = "hlc_20rnd_762x51_T_G3";
_rifleC_mag = "hlc_20rnd_762x51_b_G3";
_rifleC_mag_tr = "hlc_20rnd_762x51_T_G3";

_LMG = ["hlc_lmg_MG3", _silencer, _pointer, _sight, ""];
_LMG_mag = "hlc_200Rnd_762x51_T_M60E4";

_MMG = ["hlc_lmg_MG3", _silencer, _pointer, _sight, ""];
_MMG_mag = "hlc_250Rnd_762x51_T_MG3";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_m72a7_mag";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_maaws", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";
_HAT_mag_HE = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["UK3CB_BAF_L107A1", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "UK3CB_BAF_9_13Rnd";

_pdw = ["rhs_weap_m3a1", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhsgref_30rnd_1143x23_M1911B_SMG";
_pdw_mag_tr = "rhsgref_30rnd_1143x23_M1T_SMG";

_rifleMarksman = ["UK3CB_G3A3", _silencer, _pointer, "hlc_optic_accupoint_g3", _bipod];
_rifleMarksman_mag = "hlc_20rnd_762x51_b_G3";
_rifleMarksman_mag_tr = "hlc_20rnd_762x51_T_G3";
