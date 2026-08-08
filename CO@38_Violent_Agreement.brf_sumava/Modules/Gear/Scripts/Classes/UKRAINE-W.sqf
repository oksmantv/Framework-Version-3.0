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
_goggles = [
	"rhs_balaclava1_olive","rhs_balaclava","","","rhsusf_shemagh_od","rhsusf_shemagh2_od","UK3CB_G_KLR_Oli","G_Headband_ligblu_alt_F"
];
_helmet = ["rhsgref_ssh68_ttsko_mountain"];
_OfficerHelmet = "UK3CB_ANA_B_H_OFF_Beret_GRN";
_uniform = ["rhsgref_uniform_ttsko_mountain"];
_vest = ["rhs_6b5","rhs_6b5_rifleman","rhs_6b5_sniper"];
_backpack = "UK3CB_B_Alice_K";
_backpackRadio = _backpack;

if (true) then {
	_backpackRadio = "UK3CB_B_B_Alice_Radio_Backpack";
};

if(_role in ["ag","ammg"]) then {
	_backpack = "UK3CB_B_Alice_Bedroll_K";
	_vest = "rhs_6b5_medic";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = ["UK3CB_TKA_O_H_zsh7a_mike_Des","UK3CB_TKA_O_H_zsh7a_mike_Des_alt"];
	_vest = "rhsgref_6b23_ttsko_forest";
	_backpack = "UK3CB_B_B_Alice_Radio_Backpack";
};

if(_role isEqualTo "crew") then {
	_goggles = "";
	_helmet = "rhs_tsh4";
	_vest = "rhs_6b5_officer";
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


_silencer = "rhs_acc_dtk1983";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = [["rhs_weap_aks74n","rhs_weap_aks74","rhs_weap_ak74n_2","rhs_weap_ak74n","rhs_weap_ak74m_fullplum"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74un", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["rhs_weap_ak74n_2_gp25","rhs_weap_ak74n_gp25","rhs_weap_aks74_gp25","rhs_weap_aks74n_gp25","rhs_weap_ak74_gp25"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_SVD_OLD", "", "", "rhs_acc_pso1m21", ""];
_rifle_mag = "UK3CB_AK12_30rnd_Magazine_RT";
_rifle_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleC_mag = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleC_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleGL_mag = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleGL_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleL_mag = "UK3CB_SVD_10rnd_762x54_R";
_rifleL_mag_tr = "UK3CB_SVD_10rnd_762x54_RT";

_LMG = ["GOL_weap_pkp", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "GOL_100Rnd_762x54mmR_red";

_MMG = ["GOL_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "GOL_100Rnd_762x54mmR_red";

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

_pistol = ["rhs_weap_6p53", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_18rnd_9x21mm_7N29";

_pdw = ["SMG_05_F", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svds", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_SVD_10rnd_762x54_GT";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";