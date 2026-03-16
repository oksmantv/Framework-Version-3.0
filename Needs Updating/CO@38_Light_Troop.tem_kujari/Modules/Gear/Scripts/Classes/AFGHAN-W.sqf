_useMineDetector = false;
_allowedNightStuff = false;

_goggles = "G_Balaclava_TI_blk_F";
_helmet = "UK3CB_TKA_O_H_6b27m_Tan";
_OfficerHelmet = "UK3CB_TKA_B_H_Beret";
_uniform = selectRandom ["UK3CB_TKA_B_U_CombatUniform_01_WDL","UK3CB_TKA_B_U_CombatUniform_Shortsleeve_01_WDL","UK3CB_TKA_B_U_CombatUniform_02_WDL","UK3CB_TKA_B_U_CombatUniform_Shortsleeve_02_WDL"];
_vest = selectRandom ["UK3CB_TKA_O_V_6b23_ML_6sh92_radio_Oli","UK3CB_TKA_O_V_6b23_ml_Oli_02","UK3CB_TKA_O_V_6b23_ml_6sh92_vog_Oli"];
_backpack = "UK3CB_TKA_O_B_RIF_Khk";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_B_I_Alice_Radio_Backpack";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_TKA_O_B_RIF_Khk";
};

if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "UK3CB_TKA_O_H_zsh7a_mike_Des_alt";
	_uniform = "UK3CB_TKA_O_U_J_Pilot_Digi";
	_vest = "UK3CB_V_Pilot_Vest_UCP";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "";
	_helmet = "UK3CB_TKA_O_H_zsh7a_Des_alt";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "rhs_acc_dtk1983";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["rhs_weap_aks74", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74u", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_aks74_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_akms", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_30Rnd_545x39_7N22_camo_AK";
_rifle_mag_tr = "rhs_30Rnd_545x39_AK_green";
_rifleGL_mag = "rhs_30Rnd_545x39_7N22_camo_AK";
_rifleGL_mag_tr = "rhs_30Rnd_545x39_AK_green";
_rifleL_mag = "rhs_30Rnd_762x39mm_bakelite_tracer";

_LMG = ["hlc_rifle_rpk", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhs_75Rnd_762x39mm_tracer";

_MMG = ["rhs_weap_m84", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "150Rnd_762x54_Box_Tracer";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";

_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["UK3CB_CZ75", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "UK3CB_CZ75_9_20Rnd";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svdp_wd", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";