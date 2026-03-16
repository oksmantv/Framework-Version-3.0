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
_goggles = ["G_Bandanna_oli","G_Balaclava_oli","","G_Armband_red_F","G_Armband_chdkz_F","G_Headband_darred_F","G_Headband_red_F","rhs_facewear_6m2","rhs_facewear_6m2_1","rhs_balaclava1_olive","UK3CB_G_KLR_GRN"];
_helmet = ["rhs_6b26_ess_green","rhs_ssh68_2","rhs_6b26_ess_green","rhs_6b26_green","rhs_6b26","rhs_6b28_green","rhs_6b28_green_ess","rhs_6b47_bare","rhs_6b7_1m"];
_OfficerHelmet = "UK3CB_H_Beret_Officer_Red_Star";
_uniform = ["UK3CB_CHD_B_U_H_Pilot_Uniform_03","UK3CB_CHD_B_U_CombatUniform_07","UK3CB_CHD_B_U_CombatUniform_01","UK3CB_CHD_B_U_CombatUniform_02","UK3CB_CHD_B_U_H_Pilot_Uniform_01","UK3CB_CHD_B_U_CombatSmock_04","UK3CB_CHD_B_U_CombatUniform_03"];
_vest = ["rhs_6b23_digi_rifleman","rhs_6b23_digi_medic","rhs_6b23_digi_engineer","rhs_6b3_AK","rhs_6b3_AK_2","rhs_6b3_RPK","rhs_6b5_rifleman","rhs_6b5_rifleman_vsr"];
_backpack = ["rhs_sidor","rhs_assault_umbts_engineer_empty","rhs_rk_sht_30_olive_engineer_empty","rhs_tortila_olive","rhs_rd54_vest_flora2"];
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "tfar_mr3000_rhs";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "rhs_sidor";
};

if(_role in ["r"]) then {
	_backpack = "rhs_rpg_6b3";
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


_silencer = "rhs_acc_dtk";
_pointer = "";
_sight = "optic_Arco_blk_F";
_bipod = "rhs_acc_grip_ffg2";

_rifle = ["rhs_weap_ak74m_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74mr_gp25", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_545x39_Mag_Green_F";
_rifle_mag_tr = "30Rnd_545x39_Mag_Tracer_Green_F";
_rifleGL_mag = "30Rnd_545x39_Mag_Green_F";
_rifleGL_mag_tr = "30Rnd_545x39_Mag_Tracer_Green_F";

_silencer = "rhs_acc_dtkakm";
_pointer = "";
_sight = "";
_bipod = "";

_rifleL = ["rhs_weap_ak103_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleL_mag = "rhs_30Rnd_762x39mm_polymer_tracer";

_silencer = "rhs_acc_pgs64_74u";
_pointer = "";
_sight = "";
_bipod = "";

_rifleC = ["rhs_weap_aks74u", _silencer, _pointer, _sight, _bipod];


_LMG = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_RPK74_60rnd_545x39_GT";

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