_useMineDetector = false;
_allowedNightStuff = false;

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
_goggles = "Armband_Green_medium";
_helmet = ["rhsgref_6b27m_ttsko_mountain"];
_OfficerHelmet = "rhsgref_fieldcap_ttsko_mountain";
_uniform = ["rhsgref_uniform_ttsko_mountain"];
_vest = ["rhs_6b5_rifleman_ttsko","rhs_6b5_sniper_ttsko","rhs_6b5_ttsko"];
_backpack = "B_Kitbag_rgr";
_backpackRadio = _backpack;

if (true) then {
	_backpackRadio = "FRXA_tf_rt1523g_big_Ranger_Green";
};

if(_role in ["pl","ftl","sl","fac"]) then {
	_vest = "rhs_6b5_officer_ttsko";
};

if(_role in ["ag","atab","ammg"]) then {
	_backpack = "rhsgref_ttsko_alicepack";
	_vest = "rhs_6b5_medic_ttsko";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "rhs_zsh7a_mike_green_alt";
	_uniform = "rhsgref_uniform_ttsko_mountain";
	_vest = "rhs_6b5_ttsko";
};

if(_role isEqualTo "crew") then {
	_goggles = "";
	_vest = "rhs_6b5_ttsko";
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


_silencer = "rhs_acc_uuk";
_pointer = "JCA_acc_flashlight_tactical_black";
_sight = "JCA_optic_AHO_black";
_bipod = "rhsusf_acc_grip2";

_rifle = ["rhs_weap_ak74mr", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_ak105_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74mr_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_ak74m_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "UK3CB_AEK971_30rnd_Magazine_R";
_rifle_mag_tr = "UK3CB_AEK971_30rnd_Magazine_RT";
_rifleGL_mag = "UK3CB_AEK971_30rnd_Magazine_R";
_rifleGL_mag_tr = "UK3CB_AEK971_30rnd_Magazine_RT";
_rifleL_mag = "UK3CB_AEK971_30rnd_Magazine_R";
_rifleL_mag_tr = "UK3CB_AEK971_30rnd_Magazine_RT";

_LMG = ["GOL_weap_pkp", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "GOL_100Rnd_762x54mmR_red";

_MMG = ["GOL_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "GOL_100Rnd_762x54mmR_red";

_LAT = ["rhs_weap_rpg26", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg26_mag";
_LAT_ReUsable = false;

_MAT = ["GOL_weap_PSRL1", _silencer, _pointer, "rhs_acc_pgo7v3", _bipod];
_MAT_mag = "GOL_mag_rpg7_Modern";
_MAT_mag_HE = "GOL_mag_rpg7_OG7V";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["rhs_weap_6p53", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_18rnd_9x21mm_7N28";

_pdw = ["rhs_weap_aks74un", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_AEK971_30rnd_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svds", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_SVD_10rnd_762x54_RT";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_RT";