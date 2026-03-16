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
_helmet = selectRandom ["rhsgref_M56","H_Booniehat_khk","UK3CB_CW_SOV_O_EARLY_H_FieldCap_KHK","","","","rhsgref_M56","","H_Booniehat_khk"];
_OfficerHelmet = "rhs_beret_vdv3";
_uniform = selectRandom ["UK3CB_CW_SOV_O_Early_U_Spetsnaz_Uniform_02_Ghillie_KHK","UK3CB_TKA_I_U_CrewUniform_02_KHK","UK3CB_TKA_I_U_CrewUniform_01_KHK","UK3CB_TKA_I_U_CrewUniform_03_KHK"];
_vest = selectRandom ["UK3CB_V_CW_Chestrig_2_Small","UK3CB_V_Belt_Rig_KHK","UK3CB_V_Belt_KHK","UK3CB_V_Chicom_Brown","rhsgref_chicom","rhs_vest_commander"];
_backpack = "rhs_sidor";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
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


_LMG = ["UK3CB_RPK", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhs_75Rnd_762x39mm";

_MMG = ["UK3CB_RPK", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_75Rnd_762x39mm";


_LAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "RPG7_F";
_LAT_ReUsable = false;

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
