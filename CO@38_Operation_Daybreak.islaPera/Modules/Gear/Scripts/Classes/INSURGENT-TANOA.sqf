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
_goggles = ["G_Bandanna_Syndikat1","","UK3CB_G_Gloves_Green","G_Bandanna_Syndikat2","G_Armband_lensemble_alt_F"];
_helmet = ["H_Bandanna_khk","H_Booniehat_oli","UK3CB_H_MKIV_Helmet","UK3CB_H_MKIV_Helmet","rhs_tsh4","UK3CB_H_MKIV_Helmet","UK3CB_H_MKIV_Net_Helmet"];
_OfficerHelmet = "rhs_beret_vdv3";
_uniform = ["UK3CB_B_U_CombatUniform_Shortsleeve_02_WDL","UK3CB_B_U_CombatUniform_Shortsleeve_01_WDL"];
_vest = ["UK3CB_ION_B_V_TacVest_oli_02","rhs_6b2_AK","rhs_6b2_chicom","rhs_6b2_holster","rhs_6b2_lifchik","rhs_6b2_RPK","rhs_6b2_SVD","V_TacVest_oli","UK3CB_MDF_B_V_TacVest_LIZ"];
_backpack = "rhs_sidor";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_CW_SOV_O_LATE_B_ASS_BERGEN_Radio";
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
_pointer = "rhs_acc_2dpZenit";
_sight = "";
_bipod = "";

_rifle = ["rhs_weap_ak74", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_m21s", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m3a1", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_545x39_Mag_Tracer_Green_F";
_rifleGL_mag = "30Rnd_545x39_Mag_Tracer_Green_F";
_rifleC_mag = "rhsgref_30rnd_556x45_m21";
_rifleL_mag = "rhsgref_30rnd_1143x23_M1911B_SMG";

_LMG = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_RPK74_60rnd_545x39_GT";

_MMG = ["uk3cb_ppsh41", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "uk3cb_PPSH_71rnd_magazine_GT";

if(random 1 > 0.5) then {
	_LAT = ["rhs_weap_rpg75", _silencer, _pointer, _sight, _bipod];
	_LAT_mag = "rhs_rpg75_mag";
	_LAT_ReUsable = false;
} else {
	_LAT = ["rhs_weap_rpg18", _silencer, _pointer, _sight, _bipod];
	_LAT_mag = "rhs_rpg18_mag";
	_LAT_ReUsable = false;
};

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";

_HAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "RPG7_F";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["hgun_Pistol_01_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "10Rnd_9x21_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_rifleMarksman = ["rhs_weap_m1garand_sa43", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhsgref_8Rnd_762x63_M2B_M1rifle";
_rifleMarksman_mag_tr = "rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle";
