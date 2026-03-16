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
_goggles = ["G_Armband_red_alt_F","","","rhs_scarf","rhs_scarf","G_Squares","UK3CB_G_Gloves_Tan","G_Squares_Tinted","G_Armband_red_alt_F","G_Squares"];
_helmet = ["UK3CB_H_SSH60_Helmet_Covered_TAN_GOL","rhs_ssh6_GOL"];
_OfficerHelmet = "rhs_beret_vdv1_GOL";
_uniform = ["rhs_uniform_afghanka_para"];
_vest = ["rhs_6b2_GOL","rhs_6b2_lifchik_GOL","rhs_6b2_SVD_GOL","rhs_6b2_chicom_GOL"];
_backpack = ["UK3CB_UN_B_B_ASS"];
_backpackRadio = "UK3CB_B_O_Alice_Radio_Backpack";

if(_role in ["sl","ftl","pl"]) then {
   _helmet = ["rhs_beret_vdv1_GOL","rhs_beret_vdv2_GOL","rhs_beret_vdv3_GOL","UK3CB_H_SSH60_Helmet_Covered_TAN","rhs_ssh60"];
	_vest = "rhs_6b2_holster_GOL";
};

if(_role in ["r","g"]) then {
	_backpack = "rhs_rpg_2";
	_vest = "rhs_6b2_AK_GOL";
};
if (_role in ["pm","sm"]) then {
   _backpack = "UK3CB_KDF_B_B_Sidor_MD_OLI";
};

if (_role in ['ag','ammg','lr','ab','ar','mmg','ab','atab']) then {
   _backpack = "rhs_rd54_vest";
   _vest = "rhs_6b2_RPK_GOL";
};
if (_role isEqualTo 'crew') then {
   _helmet = "rhs_tsh4";
   _vest = "rhs_6b2_holster_GOL";
};
if (_role isEqualTo 'p') then {
   _helmet = "rhs_zsh7a_mike";
   _vest = "rhs_6b2_holster_GOL";
   _uniform = "rhs_uniform_afghanka";
};

_silencer = "rhs_acc_dtk1983";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = [["rhs_weap_ak74","rhs_weap_aks74","rhs_weap_aks74_2","rhs_weap_ak74_2","rhs_weap_aks74n_2"], _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_30Rnd_545x39_7N22_plum_AK";
_rifle_mag_tr = "rhs_30Rnd_545x39_AK_plum_green";

_rifleC = [["rhs_weap_aks74un","rhs_weap_aks74u"], _silencer, _pointer, _sight, _bipod];
_rifleC_mag = "rhs_30Rnd_545x39_7N22_plum_AK";
_rifleC_mag_tr = "rhs_30Rnd_545x39_AK_plum_green";

_rifleGL = [["rhs_weap_ak74_gp25","rhs_weap_ak74n_2_gp25","rhs_weap_aks74_gp25","rhs_weap_aks74n_gp25"], _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "rhs_30Rnd_545x39_7N22_plum_AK";
_rifleGL_mag_tr = "rhs_30Rnd_545x39_AK_plum_green";

_rifleL = ["rhs_weap_vss_grip", _silencer, _pointer, "rhs_acc_pso1m2", _bipod];
_rifleL_mag = "rhs_20rnd_9x39mm_SP6";
_rifleL_mag_tr = "rhs_20rnd_9x39mm_SP6";

_LMG = ["UK3CB_RPD", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_RPD_100rnd_762x39_GT";

_MMG = ["rhs_weap_pkm", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_LAT = ["rhs_weap_rpg26", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg26_mag";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_rpg7", _silencer, _pointer, "rhs_acc_pgo7v3", _bipod];
_MAT_mag = "rhs_rpg7_PG7VL_mag";
_MAT_mag_HE = "rhs_rpg7_OG7V_mag";

_HAT = ["rhs_weap_rpg7", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_rpg7_PG7VL_mag";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["rhs_weap_makarov_pm", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_mag_9x18_8_57N181S";

_pdw = ["rhs_weap_aks74un", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_30Rnd_545x39_7N22_plum_AK";
_pdw_mag_tr = "rhs_30Rnd_545x39_AK_plum_green";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m2";
_bipod = "";

_rifleMarksman = ["UK3CB_SVD_OLD", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_SVD_10rnd_762x54_G";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";
