_useMineDetector = false;
_allowedNightStuff = true;

_glHEDP = "rhs_VOG25";
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
_goggles = "";
_helmet = "rhsgref_ssh68_ttsko_mountain";
_OfficerHelmet = "rhs_beret_mvd";
_uniform = "rhsgref_uniform_para_ttsko_mountain";
_vest = ["rhsgref_6b23_ttsko_mountain","rhsgref_6b23_ttsko_mountain_sniper"];
_backpack =  ["UK3CB_ION_B_B_RIF_OLI_01"];
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_TKA_O_B_RIF_Khk_Radio";
};

if (_role in ["sl","tl","fac"]) then {
	_vest = "rhsgref_6b23_ttsko_mountain_nco";
};

if (_role in ["r"]) then {
	_backpack = "B_Carryall_oli";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "B_Carryall_oli";
	_vest = "rhsgref_6b23_ttsko_mountain_medic";
};
if (_role isEqualTo "crew") then {
	_helmet = "rhs_tsh4";
};
if (_role isEqualTo "p") then {
	_helmet = "rhs_zsh7a_mike_green_alt";
	_uniform = "rhsgref_uniform_para_ttsko_mountain";
	_vest = "V_TacVest_oli";
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

_silencer = "";
_pointer = "gvl_x2000_wide";
_sight = "optic_aco_grn_smg";
_bipod = "";

_rifle = ["rhs_weap_ak74m_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_ak105_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74mr_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_ak74mr", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_30Rnd_545x39_EP_ak_Black";
_rifle_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";
_rifleGL_mag = "hlc_30Rnd_545x39_EP_ak_Black";
_rifleGL_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";
_rifleL_mag = "hlc_30Rnd_545x39_EP_ak_Black";
_rifleL_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";

_LMG = ["rhs_weap_pkp", _silencer, _pointer, "rhs_acc_pkas_pkp", _bipod];
_LMG_mag = "rhs_100Rnd_762x54mmR_green";

_MMG = ["rhs_weap_pkp", _silencer, _pointer, "rhs_acc_pkas_pkp", _bipod];
_MMG_mag = "150Rnd_762x54_Box_Tracer";

_sight = "";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_rpg7", _silencer, _pointer, "rhs_acc_pgo7v3", _bipod];
_MAT_mag = "rhs_rpg7_PG7VS_mag";
_MAT_mag_HE = "rhs_rpg7_OG7V_mag";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_O_Titan_ghex_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["rhs_weap_pp2000_folded", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_mag_9x19mm_7n31_44";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "acc_pointer_IR";
_sight = "optic_LRPS";
_bipod = "bipod_02_F_blk";

_rifleMarksman = ["srifle_DMR_07_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "ACE_20Rnd_65_Creedmor_mag";
_rifleMarksman_mag_tr = "ACE_20Rnd_65x47_Scenar_mag";
