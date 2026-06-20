_useMineDetector = false;
_allowedNightStuff = true;

_glHE = "rhs_VOG25";
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

_insignia = "GOL_Insignia_StygianGuard";
_goggles = [
	"G_Armband_NVG_napa_F","G_Armband_napa_alt_F"
];
_helmet = ["rhs_ssh6_GOL"];
_OfficerHelmet = "UK3CB_MDF_B_H_Off_Beret";
_uniform = [
	"UK3CB_NAP_B_U_CombatUniform_FLK","UK3CB_NAP_B_U_CombatUniform_WDL","UK3CB_NAP_B_U_Officer_Uniform_GRN"
];
_vest = [
	"rhs_6b3","rhs_6b3_AK","rhs_6b3_AK_2","rhs_6b3_AK_3"
];

_backpack = ["rhs_sidor"];
_backpackRadio = _backpack;

if (true) then {
	_backpackRadio = "FRXA_tf_rt1523g_big_Ranger_Green";
};

if (_role in ["ag","ammg","sm"]) then {
	_backpack = "rhs_medic_bag";
};

if(_role in ["sl","tl"]) then {
};

if (_role in ["lr","ab"]) then {
};

if (_role in ["mmg","ar"]) then {
};

if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_TacVest_blk";
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

// Attachments
_silencer = "rhs_acc_dtk2";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["rhs_weap_aks74n", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74un", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_aks74n_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_SVD_OLD", _silencer, _pointer, "rhs_acc_pso1m21", _bipod];
_rifle_mag = "UK3CB_AK12_30rnd_Magazine_R";
_rifle_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleGL_mag = "UK3CB_AK12_30rnd_Magazine_R";
_rifleGL_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleL_mag = "UK3CB_SVD_10rnd_762x54_Y";
_rifleL_mag_tr = "UK3CB_SVD_10rnd_762x54_YT";

_LMG = ["GOL_weap_pkp", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "GOL_100Rnd_762x54mmR_red";

_MMG = ["GOL_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "GOL_100Rnd_762x54mmR_red";

_sight = "";

_LAT = ["JCA_launch_M72_olive_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["GOL_weap_PSRL1", _silencer, _pointer, "rhs_acc_pgo7v3", _bipod];
_MAT_mag = "GOL_mag_rpg7_Modern";
_MAT_mag_HE = "GOL_mag_rpg7_OG7V";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_fim92_mag";

_pistol = ["rhs_weap_savz61_folded", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsgref_20rnd_765x17_vz61";

_pdw = ["rhs_weap_m92", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhssaf_30Rnd_762x39_M82_api";
_pdw_mag_tr = "rhssaf_30Rnd_762x39_M82_api";

_silencer = "";
_pointer = "";
_sight = "uk3cb_optic_STANAGZF2D_G3";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["UK3CB_PSG1A1", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "ACE_20Rnd_762x51_Mag_Tracer";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";

