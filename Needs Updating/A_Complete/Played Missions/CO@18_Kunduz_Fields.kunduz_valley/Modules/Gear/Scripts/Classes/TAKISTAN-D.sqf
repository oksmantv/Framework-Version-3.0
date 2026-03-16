_useMineDetector = true;
_allowedNightStuff = false;

_insignia = "";
_goggles = "UK3CB_G_Balaclava2_DES";
_helmet = ["rhsusf_ach_bare_tan","rhsusf_ach_bare_tan_ess","rhsusf_ach_bare_tan_headset","rhsusf_ach_bare_tan_headset_ess"];
_OfficerHelmet = "H_Beret_blk";
_uniform = ["UK3CB_TKA_O_U_CombatUniform_01_ADPM","UK3CB_TKA_O_U_CombatUniform_02_ADPM"];
_vest = ["rhsusf_mbav_rifleman"];
_backpack = "UK3CB_TKA_O_B_RIF_Tan";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_TKA_O_B_RIF_Tan_Radio";
};

if(_role in ["r","lr"]) then {
	_backpack = "UK3CB_TKA_O_B_ENG_Tan";
};

if (_role in ["ag","ammg","ab"]) then {
	_backpack = "B_Carryall_cbr";
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


_silencer = "";
_pointer = "";
_sight = "JCA_optic_ICO_sand";
_bipod = "";

_rifle = ["JCA_arifle_M4A1_sand_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_M4A1_short_sand_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["JCA_arifle_M4A1_GL_sand_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["JCA_arifle_M4A1_sand_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_mag_30Rnd_556x45_Mk262_PMAG_Tan";
_rifle_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red";
_rifleGL_mag = "rhs_mag_30Rnd_556x45_Mk262_PMAG_Tan";
_rifleGL_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red";

_LMG = ["LMG_03_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["rhs_weap_m240G", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "hlc_200Rnd_762x51_T_M60E4";

_LAT = ["rhs_weap_rpg18", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg18_mag";
_LAT_ReUsable = false;

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";

_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["hgun_Pistol_01_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "10Rnd_9x21_Mag";

if(_role in ["r","g"] && _useMineDetector == true) then {
	_pistol = ["ACE_VMH3", _silencer, _pointer, _sight, _bipod];
	_pistol_mag = "";
};

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m2";
_bipod = "";

_rifleMarksman = ["rhs_weap_svdp_wd", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";