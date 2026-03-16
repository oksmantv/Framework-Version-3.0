_useMineDetector = false;
_allowedNightStuff = true;


_glHE = "rhs_VOG25P";
_glsmokeW = "rhs_GRD40_White";
_glsmokeB = "";
_glsmokeG = "rhs_GRD40_Green";
_glsmokeO = "";
_glsmokeP = "";
_glsmokeR = "rhs_GRD40_Red";
_glsmokeY = "";

_glflareG = "rhs_VG40OP_green";
_glflareR = "rhs_VG40OP_red";
_glflareW = "rhs_VG40OP_white";

_insignia = "";
_goggles = ["rhs_balaclava1_olive"];
_helmet = ["rhs_altyn","rhs_altyn_visordown","rhs_altyn_novisor","rhs_altyn_novisor_ess"];
_OfficerHelmet = "rhssaf_beret_green";
_uniform = "rhssaf_uniform_m10_digital_summer";
_vest = ["UK3CB_LDF_B_V_RIF_Vest_KKZ10_OLI","UK3CB_LDF_B_V_RIF_ALT_Vest_KKZ10_OLI"];
_backpack = "UK3CB_B_Backpack_Pocket_OLI";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_B_B_Backpack_Radio_Chem_OLI";
};
if(_role in ["tl","sl","pl"]) then {
	_vest = ["UK3CB_LDF_B_V_TL_Vest_KKZ10_OLI","UK3CB_LDF_B_V_SL_Vest_KKZ10_OLI"];
};
if(_role in ["mmg","ar"]) then {
	_vest = ["UK3CB_LDF_B_V_LMG_Vest_KKZ10_OLI","UK3CB_LDF_B_V_MG_Vest_KKZ10_OLI"];
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_B_Backpack_Med_OLI";
	_vest = "UK3CB_LDF_B_V_MD_Vest_KKZ10_OLI";
};
if (_role in ["mm","lr"]) then {
	_vest = "UK3CB_LDF_B_V_MK_Vest_KKZ10_OLI";
};
if (_role isEqualTo "crew") then {
	_uniform = "rhssaf_uniform_m10_digital_summer";
	_vest = "UK3CB_LDF_B_V_CREW_Vest_KKZ10_OLI";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_ihadss";
	_uniform = "rhssaf_uniform_m10_digital";
	_vest = "rhssaf_vest_md99_digital_radio";
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

_silencer = "rhs_acc_dtk3";
_pointer = "rhs_acc_2dpzenit";
_sight = "rhs_acc_okp7_dovetail";
_bipod = "";

_rifle = ["rhs_weap_ak74m", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_ak74m", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74m_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_ak74n", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_30Rnd_545x39_B_AK";
_rifle_mag_tr = "hlc_30Rnd_545x39_t_ak";
_rifleC_mag = "hlc_30Rnd_545x39_B_AK";
_rifleC_mag_tr = "hlc_30Rnd_545x39_t_ak";
_rifleGL_mag = "hlc_30Rnd_545x39_B_AK";
_rifleGL_mag_tr = "hlc_30Rnd_545x39_t_ak";
_rifleL_mag = "hlc_30Rnd_545x39_B_AK";
_rifleL_mag_tr = "hlc_30Rnd_545x39_t_ak";

_LMG = ["hlc_rifle_rpk", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhs_75Rnd_762x39mm_tracer";

_MMG = ["rhs_weap_pkm", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_sight = "";

_LAT = ["rhs_weap_rpg26", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg26_mag";
_LAT_ReUsable = false;

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";
_MAT_mag_HE = "";

_HAT = ["launch_I_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["launch_B_Titan_olive_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["rhs_weap_pya", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_mag_9x19_7n31_17";

_pdw = ["rhs_weap_aks74un", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_30Rnd_545x39_7N6_AK";
_pdw_mag_tr = "rhs_30Rnd_545x39_AK_green";

_silencer = "";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["srifle_DMR_06_hunter_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_762x51_Mag";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
