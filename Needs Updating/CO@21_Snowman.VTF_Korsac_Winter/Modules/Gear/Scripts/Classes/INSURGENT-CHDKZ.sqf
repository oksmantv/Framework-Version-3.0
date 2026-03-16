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
_helmet = ["","UK3CB_CSAT_S_O_H_SSh68_Covered","UK3CB_H_Beanie_02_Win_Float_Alt","UK3CB_CSAT_S_O_H_Bandanna","UK3CB_H_Bandanna_Win_Flora_Alt","UK3CB_CSAT_S_O_H_M1_Covered","UK3CB_CSAT_S_O_H_M1_Covered_Band"];
_OfficerHelmet = "UK3CB_CSAT_S_O_H_Patrolcap";
_uniform = ["UK3CB_CHD_B_U_CombatSmock_11","UK3CB_CHD_W_B_U_CombatSmock_14","UK3CB_CHD_W_B_U_CombatSmock_06","UK3CB_CHD_W_B_U_CombatSmock_20","UK3CB_CHD_W_B_U_CombatSmock_19","UK3CB_CHD_B_U_CombatUniform_06","UK3CB_CHD_B_U_CombatUniform_09","UK3CB_CHD_W_B_U_CombatSmock_04","UK3CB_CHD_W_B_U_CombatSmock_08"];
_vest = ["UK3CB_CSAT_S_O_V_TacVest"];
_backpack = "UK3CB_CSAT_S_O_B_UMBTS";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_CSAT_S_O_B_UMBTS";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_helmet = "UK3CB_CSAT_S_O_H_SSh68_Covered_Medic";
	_backpack = "UK3CB_CSAT_S_O_B_UMBTS_ENG";
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

_rifle = ["rhs_weap_aks74", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_aks74_gp25", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_545x39_Mag_F";
_rifle_mag_tr = "30Rnd_545x39_Mag_Tracer_F";
_rifleGL_mag = "30Rnd_545x39_Mag_F";
_rifleGL_mag_tr = "30Rnd_545x39_Mag_Tracer_F";

_silencer = "rhs_acc_dtkakm";
_pointer = "";
_sight = "";
_bipod = "";

_rifleL = ["rhs_weap_akms", _silencer, _pointer, _sight, _bipod];
_rifleL_mag = "rhs_30Rnd_762x39mm_bakelite_tracer";

_silencer = "rhs_acc_pgs64_74u";
_pointer = "";
_sight = "";
_bipod = "";

_rifleC = ["rhs_weap_aks74u", _silencer, _pointer, _sight, _bipod];


_LMG = ["hlc_rifle_rpk", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhs_75Rnd_762x39mm_tracer";

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