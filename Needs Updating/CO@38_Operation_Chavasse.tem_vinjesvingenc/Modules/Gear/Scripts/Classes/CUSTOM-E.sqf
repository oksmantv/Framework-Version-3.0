/*
	Best way to get classnames of things you want is using the ACE Arsenal.
	If you select anything in the ACE Arsenal you will get the classname string which can be pasted into the code below.
	If you don't get a simple string and a huge list of things, the copy did not work, so give it another select and copy again.
	Any questions ask #Editing on Discord!
*/

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

_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = "G_Armband_red_alt_F";
_helmet = ["UK3CB_CW_SOV_O_EARLY_H_SSh68","UK3CB_TKA_I_H_SSh68_Khk","UK3CB_H_SSH60_Helmet_Covered_TAN"];
_OfficerHelmet = "UK3CB_CW_SOV_O_EARLY_H_Officer_Cap";
_uniform = ["UK3CB_CW_SOV_O_Early_U_CombatUniform_03_KHK","UK3CB_CW_SOV_O_Early_U_CombatUniform_02_KHK","UK3CB_CW_SOV_O_Early_U_CombatUniform_01_KHK"];
_vest = ["rhs_suspender_ak"];
_backpack = ["UK3CB_CW_SOV_O_EARLY_B_RIF"];
if (true) then {
	_backpackRadio = "UK3CB_CW_SOV_O_EARLY_B_Radio";
};

if (_role isEqualTo "sl") then {
	_helmet = "UK3CB_CW_SOV_O_EARLY_H_Officer_Cap";
	_uniform = "UK3CB_CW_SOV_O_Early_U_OFFICER_Uniform_01_KHK";
	_vest = "rhs_gear_OFF";
};

if(_role in ["ftl", "gl"]) then {
	_vest = "rhs_lifchik_vog";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_CW_SOV_O_EARLY_B_RIF";
};
if (_role in ["ar","mmg"]) then {
	_vest = "rhs_suspender_AK8_chestrig";
};

if (_role isEqualTo "mat") then {
	_backpack = "rhs_rpg_empty";
};

if (_role isEqualTo "crew") then {
	_goggles = "";
	_helmet = "rhs_tsh4_ess_bala";
	_uniform = "UK3CB_CW_SOV_O_Early_U_Tank_Crew_Uniform_01_BLK";
	_vest = "rhs_belt_ak";
	_backpack = "";
};
if (_role isEqualTo "p") then {
	_helmet = "rhs_zsh7a_mike_alt";
};
if (_role isEqualTo "uav") then {
	_backpack = "";
	_gps = "";
};
if (_role isEqualTo "jetp") then {
	_goggles = "";
	_helmet = "";
	_uniform = "";
	_vest = "";
	_backpack = "";
};

_silencer = "rhs_acc_dtk1983";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = [["rhs_weap_ak74"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74u", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["rhs_weap_ak74_gp25"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_ak74", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_30Rnd_545x39_7N6_AK";
_rifle_mag_tr = "rhs_30Rnd_545x39_AK_green";
_rifleGL_mag = "rhs_30Rnd_545x39_7N6_AK";
_rifleGL_mag_tr = "rhs_30Rnd_545x39_AK_green";
_rifleC_mag = "rhs_30Rnd_545x39_7N6_AK";
_rifleC_mag_tr = "rhs_30Rnd_545x39_AK_green";
_rifleL_mag = "rhs_30Rnd_545x39_7N6_AK";
_rifleL_mag_tr = "rhs_30Rnd_545x39_AK_green";


_LMG = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhs_45Rnd_545X39_AK_Green";

_MMG = ["rhs_weap_pkm", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_LAT = ["rhs_weap_rpg26", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_rpg7", _silencer, _pointer, "rhs_acc_pgo7v3", _bipod];
_MAT_mag = "rhs_rpg7_PG7VL_mag";
_MAT_mag_HE = "rhs_rpg7_OG7V_mag";

_HAT = ["", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "";

_AA = ["", _silencer, _pointer, _sight, _bipod];
_AA_mag = "";

_pistol = ["rhs_weap_makarov_pm", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_mag_9x18_8_57N181S";

_pdw = ["rhs_weap_aks74u", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_30Rnd_545x39_7N6_AK";
_pdw_mag_tr = "rhs_30Rnd_545x39_AK_green";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m2";
_bipod = "";

_rifleMarksman = ["UK3CB_SVD_OLD", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_SVD_10rnd_762x54";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";
