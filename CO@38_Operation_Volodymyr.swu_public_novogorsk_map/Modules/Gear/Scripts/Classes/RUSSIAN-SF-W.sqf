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

_insignia = "";
_goggles = ["rhs_facewear_6m2","rhs_facewear_6m2_1"];
_helmet = ["rhs_6b28","rhs_6b28_bala","rhs_6b28_ess","rhs_6b28_ess_bala"];
_OfficerHelmet = "rhs_beret_vdv3";
_uniform = "rhs_uniform_vdv_emr";
_vest = "rhs_6b23_digi_6sh92";
_backpack = "rhs_rk_sht_30_emr";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "rhs_tortila_emr";
};

if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";
};

if(_role isEqualTo "p") then {
	_helmet = "UK3CB_ARD_B_H_zsh7a_mike";
	_backpackRadio = _backpack;
};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

// Attachments
_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["rhs_weap_ak74mr", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74un", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74mr_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_svdp", _silencer, _pointer, _sight, _bipod];

_rifle_mag = "rhs_30Rnd_545x39_7N22_camo_AK";
_rifle_mag_tr = "rhs_30Rnd_545x39_AK_green";
_rifleGL_mag = "rhs_30Rnd_545x39_7N22_camo_AK";
_rifleGL_mag_tr = "rhs_30Rnd_545x39_AK_green";
_rifleL_mag = "ACE_10Rnd_762x54_Tracer_mag";

_LMG = ["rhs_weap_rpk74m_npz", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhs_60Rnd_545X39_AK_Green";

_MMG = ["rhs_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "150Rnd_762x54_Box_Tracer";

_LAT = ["rhs_weap_rpg26", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg26_mag";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_rpg7", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "rhs_rpg7_PG7V_mag";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";


_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["rhs_weap_tt33", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_mag_762x25_8";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svdp_wd", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_SVD_10rnd_762x54_GT";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";
