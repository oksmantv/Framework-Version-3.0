_useMineDetector = false;
_allowedNightStuff = false;

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

_allowedNightStuff = false;

_insignia = "";
_goggles = "";
_helmet = selectRandom ["H_Bandanna_khk","H_Booniehat_oli","H_Beret_blk","UK3CB_LSM_B_H_M88_Field_Cap_OLI","H_Cap_oli","",""];
_OfficerHelmet = "rhs_beret_vdv3";
_uniform = selectRandom ["U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","U_I_C_Soldier_Camo_F","rhsgref_uniform_TLA_1","rhsgref_uniform_TLA_2"];
_vest = selectRandom ["rhs_suspender_AK","UK3CB_V_CW_Chestrig_2_Small","rhs_6b2_lifchik","UK3CB_V_Belt_KHK","rhs_belt_AK_back","rhs_6b2"];
_backpack = "rhs_sidor";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_B_O_Radio_Backpack";
};

if(_role isEqualTo "officer") then {
	_goggles = "G_Aviator";
	_helmet = "UK3CB_AAF_B_H_Beret_SF";
	_vest = "rhs_6b45_off";
};

if (_role in ["lr","ab"]) then {
	_backpack = "rhs_rd54";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "rhs_medic_bag";
};
if (_role isEqualTo "p") then {
	_helmet = "H_Booniehat_khk_hs";
	_uniform = "UK3CB_MDF_B_U_CombatUniform_01_LIZ";
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

_silencer = "rhs_acc_dtk1983";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["UK3CB_Sten", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_m3a1", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_aks74_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["arifle_AKS_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "UK3CB_Sten_34Rnd_Magazine_GT";
_rifleGL_mag = "30Rnd_545x39_Mag_F";
_rifleC_mag = "rhsgref_30rnd_1143x23_M1911B_SMG";
_rifleL_mag = "hlc_30Rnd_545x39_t_ak";

_LMG = ["uk3cb_ppsh41", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "uk3cb_PPSH_71rnd_magazine_GT";

_MMG = ["UK3CB_Bren", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_Bren_30Rnd_762x51_Magazine_GT";

_LAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "RPG7_F";
_LAT_ReUsable = true;

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";


_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["hgun_Pistol_01_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "10Rnd_9x21_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_rifleMarksman = ["rhs_weap_m1garand_sa43", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhsgref_8Rnd_762x63_M2B_M1rifle";
_rifleMarksman_mag_tr = "rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle";
