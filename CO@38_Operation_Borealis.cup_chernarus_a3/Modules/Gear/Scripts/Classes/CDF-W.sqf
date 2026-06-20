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
_goggles = "G_Armband_blu_F";
_helmet = ["rhsgref_6b27m_ttsko_mountain"];
_OfficerHelmet = "UK3CB_ANA_B_H_OFF_Beret_GRN";
_uniform = ["rhsgref_uniform_ttsko_mountain"];
_vest = ["rhs_6b5_rifleman_ttsko","rhs_6b5_sniper_ttsko"];
_backpack = "UK3CB_TNM_B_B_RIF_01";
_backpackRadio = _backpack;

if (true) then {
	_backpackRadio = "FRXA_tf_rt1523g_big_Ranger_Green";
};

if(_role in ["ag","atab","ammg"]) then {
	_backpack = "B_Carryall_oli";
	_vest = "rhs_6b5_medic_ttsko";
};

if(_role in ["sl","tl","fac","pl"]) then {
	_vest = "rhs_6b5_officer_ttsko";
};

if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "rhs_zsh7a_mike_green_alt";
	_uniform = "rhsgref_uniform_ttsko_mountain";
	_vest = "UK3CB_TKA_O_V_6b23_ML_6sh92_radio_Oli";
};

if(_role isEqualTo "crew") then {
	_goggles = "";
	_vest = "UK3CB_TKA_O_V_6b23_ML_6sh92_radio_Oli";
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


_silencer = "rhs_acc_ak5";
_pointer = "";
_sight = "rhs_acc_rakursPM";
_bipod = "rhs_acc_grip_rk6";

_rifle = ["UK3CB_AK12", _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_AK12", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["UK3CB_AK12_GL", _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_AK12", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "UK3CB_AK12_30rnd_Magazine_R";
_rifle_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleGL_mag = "UK3CB_AK12_30rnd_Magazine_R";
_rifleGL_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleL_mag = "UK3CB_AK12_30rnd_Magazine_R";
_rifleL_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";

_LMG = ["GOL_weap_m249_pip", _silencer, _pointer, "rhs_acc_1p87", _bipod];
_LMG_mag = "GOL_rhsusf_200rnd_556x45_AP45_tracer_red";

_MMG = ["GOL_MG3_KWS_B", _silencer, _pointer, "rhs_acc_1p87", _bipod];
_MMG_mag = "GOL_MG3_250Rnd_762x51_M993_Tracer_Red";

_LAT = ["JCA_launch_M72_olive_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["GOL_weap_PSRL1", _silencer, _pointer, "rhs_acc_pgo7v3", _bipod];
_MAT_mag = "GOL_mag_rpg7_Modern";
_MAT_mag_HE = "GOL_mag_rpg7_OG7V";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["JCA_hgun_G17_olive_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "JCA_17Rnd_9x19_G17_Red_Mag";

_pdw = ["JCA_smg_MP5_VFG_black_F", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "JCA_30Rnd_9x19_MP5_Tracer_Red_Mag";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svds", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_SVD_10rnd_762x54_RT";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_RT";