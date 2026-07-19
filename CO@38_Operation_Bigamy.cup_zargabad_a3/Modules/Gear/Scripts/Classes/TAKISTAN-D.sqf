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
_goggles = "";
_helmet = ["UK3CB_TKA_O_H_6b27m_ADPM","UK3CB_TKA_O_H_6b27m_ESS_ADPM"];
_OfficerHelmet = "H_Beret_blk";
_uniform = ["UK3CB_TKA_O_U_CombatUniform_01_ADPM","UK3CB_TKA_O_U_CombatUniform_02_ADPM"];
_vest = ["UK3CB_TKA_O_V_6b23_ml_Oli_TKA_Brush","UK3CB_TKA_O_V_6b23_ML_6sh92_radio_Oli_TKA_Brush","UK3CB_TKA_O_V_6b23_ml_6sh92_vog_Oli_TKA_Brush"];
_backpack = "UK3CB_B_Alice_K";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_B_O_Alice_Radio_Backpack";
};

if(_role in ["r","lr"]) then {
	_backpack = "rhs_rpg_2";
};

if (_role in ["ag","ammg","ab"]) then {
	_backpack = "UK3CB_B_Alice_Med_K";
};
if (_role isEqualTo "p") then {
	_helmet = "H_Booniehat_khk_hs";
	_uniform = "UK3CB_TKA_B_U_H_Pilot_DES";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "rhs_acc_pgs64_74u";
_pointer = "";
_sight = "";
_bipod = "";


_silencer = "";
_pointer = "UK3CB_BAF_LLM_Flashlight_Black";
_sight = "optic_ACO_grn";
_bipod = "";

_rifle = ["rhs_weap_ak103_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_AK12U_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["arifle_AK12_GL_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m14_ris", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_30Rnd_762x39mm";
_rifle_mag_tr = "rhs_30Rnd_762x39mm_tracer";
_rifleC_mag = "rhs_30Rnd_762x39mm";
_rifleC_mag_tr = "rhs_30Rnd_762x39mm_tracer";
_rifleGL_mag = "rhs_30Rnd_762x39mm";
_rifleGL_mag_tr = "rhs_30Rnd_762x39mm_tracer";
_rifleL_mag = "UK3CB_DMR_20rnd_762x51_G";
_rifleL_mag_tr = "UK3CB_M14_20rnd_762x51_GT";

_LMG = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_RPK74_60rnd_545x39_GT";

_MMG = ["rhs_weap_pkm", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_LAT = ["rhs_weap_rpg18", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg18_mag";
_LAT_ReUsable = false;

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";
_MAT_mag_HE = "rhs_rpg7_TBG7V_mag";

_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
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
_rifleMarksman_mag = "UK3CB_SVD_10rnd_762x54_GT";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";