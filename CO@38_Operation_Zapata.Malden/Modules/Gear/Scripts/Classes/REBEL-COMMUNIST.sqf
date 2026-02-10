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

_allowedNightStuff = false;

_insignia = "";
_goggles = ["G_Bandanna_oli","G_Balaclava_oli",""];
_helmet = ["","UK3CB_CSAT_M_O_H_M1_Covered","UK3CB_H_M1_Helmet_Net_OLI","UK3CB_H_HSAT_MKIII","UK3CB_H_HSAT_PTYPE"];
_OfficerHelmet = "H_Beret_blk";
_uniform = ["UK3CB_CSAT_M_O_U_CombatUniform_Shortsleeve","UK3CB_CSAT_M_O_U_CombatUniform","UK3CB_CSAT_M_O_U_JumperUniform","UK3CB_CSAT_M_O_U_CombatUniform_Shortsleeve_02","UK3CB_CSAT_M_O_U_CombatUniform_02"];
_vest = ["rhs_6b2_chicom","rhs_6b2_lifchik","rhs_6b2_RPK","UK3CB_V_Belt_Rig_KHK","rhsgref_chicom","V_SmershVest_01_F","UK3CB_V_Chestrig_TKA_OLI","UK3CB_TKA_I_V_6Sh92_Oli","UK3CB_TKA_I_V_6Sh92_vog_Oli"];
_backpack = "rhs_sidor";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "tfar_mr3000_rhs";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "rhs_sidor";
};

_silencer = "rhs_acc_dtk1983";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["rhs_weap_aks74", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74u", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_aks74_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["uk3cb_ppsh41", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_545x39_Mag_F";
_rifle_mag_tr = "30Rnd_545x39_Mag_Tracer_F";
_rifleGL_mag = "30Rnd_545x39_Mag_F";
_rifleGL_mag_tr = "30Rnd_545x39_Mag_Tracer_F";
_rifleL_mag = "uk3cb_PPSH_35rnd_magazine_GM";

_LMG = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_RPK74_60rnd_545x39_GT";

_MMG = ["UK3CB_RPD", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_RPD_100rnd_762x39_GM";

_LAT = ["rhs_weap_rpg26", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg26_mag";
_LAT_ReUsable = false;

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";
_MAT_mag_HE = "rhs_rpg7_TBG7V_mag";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["hgun_Pistol_01_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "10Rnd_9x21_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svdp_wd", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_SVD_10rnd_762x54_GT";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";