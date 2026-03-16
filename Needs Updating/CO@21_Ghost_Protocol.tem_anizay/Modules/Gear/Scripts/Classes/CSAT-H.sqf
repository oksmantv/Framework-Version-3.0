_useMineDetector = false;
_allowedNightStuff = true;

_glHE = "rhs_VOG25P";
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
_goggles = "G_CBRN_B_black";
_helmet = ["rhs_altyn_visordown","rhs_altyn","rhs_altyn_novisor_ess","rhs_altyn_novisor"];
_OfficerHelmet = "H_Beret_CSAT_01_F";
_uniform = "U_O_V_Soldier_Viper_hex_F";
_vest = ["rhs_6b23_ML_6sh92","rhs_6b23_ML_rifleman","rhs_6b23_ML_sniper","rhs_6b23_ML_6sh92_radio","rhs_6b23_ML_engineer"];
_backpack = "B_FieldPack_ocamo";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tfar_mr3000";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "B_Carryall_ocamo";
	_vest = "rhs_6b23_ML_medic";
};
if (_role isEqualTo "crew") then {
	_goggles = "";
	_helmet = "H_HelmetCrew_B";
	_vest = "rhs_6b23_ML_6sh92_headset";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_O_PilotCoveralls";
	_vest = "V_TacVest_blk";
};
if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "ace_muzzle_mzls_l";
_pointer = "rhs_acc_2dpzenit";
_sight = "optic_arco_blk_f";
_bipod = "";

_rifle = ["rhs_weap_m21a_pr", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_m21s_pr", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_m21a_pr_pbg40", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m21a_pr", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhsgref_30rnd_556x45_m21";
_rifle_mag_tr = "rhsgref_30rnd_556x45_m21_t";
_rifleGL_mag = "rhsgref_30rnd_556x45_m21";
_rifleGL_mag_tr = "rhsgref_30rnd_556x45_m21_t";

_LMG = ["UK3CB_BAF_L110A2", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_556_200Rnd_T";

_MMG = ["LMG_Zafir_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "150Rnd_762x51_Box_Tracer";

_sight = "";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = true;

_MAT = ["launch_RPG32_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG32_F";
_MAT_mag_HE = "RPG32_HE_F";

_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_O_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_Rook40_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "bipod_02_F_hex";

_rifleMarksman = ["srifle_DMR_05_hex_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "10Rnd_93x64_DMR_05_Mag";
_rifleMarksman_mag_tr = "10Rnd_93x64_DMR_05_Mag";
