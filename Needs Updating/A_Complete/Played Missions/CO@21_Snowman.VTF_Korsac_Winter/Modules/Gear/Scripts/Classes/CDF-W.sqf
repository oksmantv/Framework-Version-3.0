_useMineDetector = false;
_allowedNightStuff = false;

_insignia = "";
_goggles = "UK3CB_G_Balaclava_WIN_ALT";
_helmet = ["UK3CB_CSAT_S_O_H_6b47_bala_WIN","UK3CB_CSAT_S_O_H_6b47_ess_bala_WIN"];
_OfficerHelmet = "UK3CB_ANA_B_H_OFF_Beret_GRN";
_uniform = ["UK3CB_ION_B_U_CombatSmock_01_WIN"];
_vest = ["UK3CB_V_MBAV_RIFLEMAN_WIN","UK3CB_V_MBAV_GRENADIER_WIN","UK3CB_V_MBAV_MG_WIN"];
_backpack = "UK3CB_ION_B_B_RIF_WIN_01";
_backpackRadio = _backpack;

if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_ION_B_B_RadioBag_WIN";
};

if(_role in ["ag","ammg"]) then {
	_vest = "UK3CB_V_MBAV_MEDIC_WIN";
	_backpack = "UK3CB_ION_B_B_RIF_MED_WIN";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "rhs_zsh7a_mike_green_alt";
};

if(_role isEqualTo "crew") then {
	_goggles = "G_Balaclava_Skull1";
	_helmet = "H_Tank_black_F";
	_vest = "UK3CB_V_MBAV_LIGHT_WIN";
};
if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "rhs_zsh7a";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};


_silencer = "";
_pointer = "";
_sight = "JCA_optic_ACOG_black";
_bipod = "rhsusf_acc_grip1";

_rifle = [["rhs_weap_m4a1_blockII_KAC","rhs_weap_mk18_KAC_bk"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_mk18_KAC_bk", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["rhs_weap_mk18_m320","rhs_weap_m4a1_blockII_M203"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m4a1_blockII_KAC", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_30rnd_556x45_SPR_PMAG";
_rifle_mag_tr = "hlc_30rnd_556x45_t_PMAG";
_rifleGL_mag = "hlc_30rnd_556x45_SPR_PMAG";
_rifleGL_mag_tr = "hlc_30rnd_556x45_t_PMAG";
_rifleL_mag = "hlc_30rnd_556x45_SPR_PMAG";
_rifleL_mag_tr = "hlc_30rnd_556x45_t_PMAG";

_LMG = ["LMG_03_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["rhs_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["rhsusf_weap_glock17g4", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_17Rnd_9x19_JHP";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svds", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";