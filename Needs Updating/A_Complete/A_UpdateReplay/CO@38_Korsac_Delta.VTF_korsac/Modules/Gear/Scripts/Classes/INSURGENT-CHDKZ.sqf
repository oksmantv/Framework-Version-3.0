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
_helmet = ["","rhs_ssh68_2","rhsgref_M56"];
_OfficerHelmet = "UK3CB_H_Beret_Officer_Red_Star";
_uniform = ["UK3CB_CHD_B_U_H_Pilot_Uniform_03","UK3CB_CHD_B_U_CombatUniform_07","UK3CB_CHD_B_U_CombatUniform_01","UK3CB_CHD_B_U_CombatUniform_02","UK3CB_CHD_B_U_H_Pilot_Uniform_01","UK3CB_CHD_B_U_CombatSmock_04","UK3CB_CHD_B_U_CombatUniform_03"];
_vest = ["rhs_6b2_chicom","rhs_6b2_lifchik","rhs_6b2_RPK"];
_backpack = "rhs_sidor";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "tfar_mr3000_rhs";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "rhs_sidor";
};

if (_role isEqualTo "p") then {
	_helmet = "UK3CB_H_Beanie_02_Camo";
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


_silencer = "rhs_acc_dtk1983";
_pointer = "";
_sight = "";
_bipod = "";

if((random 1) > 0.5) then {
	_rifle = ["rhs_weap_m38", _silencer, _pointer, _sight, _bipod];
	_rifle_mag = "rhsgref_5Rnd_762x54_m38";
} else {
	_rifle = ["rhs_weap_m76", _silencer, _pointer, _sight, _bipod];
	_rifle_mag = "rhsgref_10Rnd_792x57_m76";
};

if((random 1) > 0.5) then {
	_rifleC = ["rhs_weap_m3a1", _silencer, _pointer, _sight, _bipod];
	_rifleC_mag = "rhsgref_30rnd_1143x23_M1911B_SMG";
} else {
	_rifleC = ["uk3cb_mat49", _silencer, _pointer, _sight, _bipod];
	_rifleC_mag = "UK3CB_MAT49_32Rnd_9x19_Magazine_GT";
};

if((random 1) > 0.5) then {
	_rifleGL = ["rhs_weap_m1garand_sa43", _silencer, _pointer, _sight, _bipod];
	_rifleGL_mag = "rhsgref_8Rnd_762x63_M2B_M1rifle";
} else {
	_rifleGL = ["uk3cb_sks_01", _silencer, _pointer, _sight, _bipod];
	_rifleGL_mag = "uk3cb_10rnd_magazine_sks_GT";
};

if((random 1) > 0.5) then {
	_rifleL = ["uk3cb_ak47", _silencer, _pointer, _sight, _bipod];
	_rifleL_mag = "rhs_10Rnd_762x39mm";
} else {
	_rifleL = ["rhs_weap_kar98k", _silencer, _pointer, _sight, _bipod];
	_rifleL_mag = "rhsgref_5Rnd_792x57_kar98k";
};

_LMG = ["UK3CB_Bren_303", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_Bren_30Rnd_303_Magazine_GT";

_MMG = ["rhs_weap_pkm", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_LAT = ["rhs_weap_rpg18", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg18_mag";
_LAT_ReUsable = false;

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";

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
_sight = "rhs_acc_pso1m2";
_bipod = "";

_rifleMarksman = ["rhs_weap_svdp_wd", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";