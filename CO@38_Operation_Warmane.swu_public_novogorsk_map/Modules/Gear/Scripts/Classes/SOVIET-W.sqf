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
_goggles = ["JCA_G_FaceMask_01_olive_F","JCA_G_balaclava_01_olive_F","G_Headband_red_alt_F","","rhsusf_shemagh_grn","G_Armband_red_alt_F"];
_helmet = ["rhs_altyn_novisor","rhs_altyn_novisor_ess","rhs_altyn"];
_OfficerHelmet = "rhs_beret_vdv3_GOL";
_uniform = "rhs_uniform_afghanka_vsr_2";
_vest = ["rhs_6b5_vsr","rhs_6b5_rifleman_vsr","rhs_6b5_sniper_vsr"];
_backpack = "B_FieldPack_oli";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_B_O_Assault_camo_Radio";
};

if(_role in ["ftl","sl","pl","fac"]) then {
	_helmet = ["rhs_beret_vdv1_GOL","rhs_beret_vdv2_GOL","rhs_beret_vdv3_GOL"];
	_vest = ["rhs_6b5_officer_vsr"]
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "B_Carryall_oli";
	_vest = "rhs_6b5_medic_vsr";
};
if(_role in ["crew"]) then {
	_vest = "rhs_6b13";
	_helmet = "rhs_tsh4_ess";
};
if (_role isEqualTo "p") then {
	_helmet = "rhs_zsh7a_mike_green";
	_uniform = "rhs_uniform_df15_tan";
};
if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_helmet = "rhs_zsh7a";
	_uniform = "rhs_uniform_df15_tan";
	_backpack = "B_Parachute";
};

_silencer = "rhs_acc_dtk2";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["rhs_weap_ak74m_fullplum", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74n_2", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74m_fullplum_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_svdp_wd", "", _pointer, "rhs_acc_pso1m21", _bipod];
_rifle_mag = "rhs_30Rnd_545x39_7N22_plum_AK";
_rifle_mag_tr = "UK3CB_AK12_30rnd_Magazine_GT";
_rifleGL_mag = "rhs_30Rnd_545x39_7N22_plum_AK";
_rifleGL_mag_tr = "UK3CB_AK12_30rnd_Magazine_GT";
_rifleC_mag = "rhs_30Rnd_545x39_7N22_plum_AK";
_rifleC_mag_tr = "UK3CB_AK12_30rnd_Magazine_GT";
_rifleL_mag = "rhs_10Rnd_762x54mmR_7N14";
_rifleL_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";

_LMG = ["GOL_weap_pkp", "", _pointer, _sight, _bipod];
_LMG_mag = "GOL_100Rnd_762x54mmR_green";

_MMG = ["GOL_weap_pkp", "", _pointer, _sight, _bipod];
_MMG_mag = "GOL_100Rnd_762x54mmR_green";

_LAT = ["rhs_weap_rpg18", "", _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg18_mag";
_LAT_ReUsable = false;

_MAT = ["GOL_weap_PSRL1", _silencer, _pointer, "rhs_acc_pgo7v3", _bipod];
_MAT_mag = "GOL_mag_rpg7_Modern";
_MAT_mag_HE = "GOL_mag_rpg7_OG7V";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["rhs_weap_makarov_pm", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_mag_9x18_8_57N181S";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_dh520x56";
_bipod = "rhs_acc_harris_swivel";

_rifleMarksman = ["rhs_weap_t5000", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_5Rnd_338lapua_t5000";
_rifleMarksman_mag_tr = "rhs_5Rnd_338lapua_t5000";