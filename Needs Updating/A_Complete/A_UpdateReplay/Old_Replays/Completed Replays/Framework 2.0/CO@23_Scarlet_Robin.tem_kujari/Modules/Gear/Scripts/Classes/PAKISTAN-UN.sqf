
_useMineDetector = false;
_allowedNightStuff = false;

_insignia = "";
_goggles = ["UK3CB_G_KLR_TAN","UK3CB_G_KL_TAN","UK3CB_G_KR_TAN","UK3CB_G_Neck_Shemag_Tan","UK3CB_G_Neck_Shemag_KLR_tan"];
_OfficerHelmet = "UK3CB_UN_B_H_Beret_Off";
_helmet =  ["rhsgref_ssh68_un"];
_uniform =  ["rhsgref_uniform_altis_lizard","UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_GRN","UK3CB_AAF_B_U_JumperUniform_DIGI_GRN"];
_vest =  ["UK3CB_MD99_VEST_Net_KHK","UK3CB_MD99_VEST_Net_Radio_KHK","UK3CB_MD99_VEST_Net_Rifleman_KHK","UK3CB_MD99_VEST_Net_Rifleman_Radio_KHK"];
_backpack = ["UK3CB_B_Largepack"];
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = ["UK3CB_B_O_Radio_Backpack"];
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_LSM_B_B_CARRYALL_OLI";
};
if (_role isEqualTo "crew") then {
	_helmet = "rhsgref_ssh68_un";
};
if (_role isEqualTo "p") then {
	_helmet = "UK3CB_UN_B_H_Patrolcap";
	_uniform = "U_I_HeliPilotCoveralls";
};
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";
};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "UK3CB_UN_B_H_Patrolcap";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["hlc_rifle_g3a3vris", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_rifle_g3a3vris", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_rifle_g3a3vris", _silencer, _pointer, _sight, _bipod];
_rifleL = ["hlc_rifle_g3a3ris", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_20rnd_762x51_b_G3";
_rifle_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
_rifleGL_mag = "hlc_20rnd_762x51_b_G3";
_rifleGL_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
_rifleL_mag = "hlc_20rnd_762x51_b_G3";
_rifleL_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";

_LMG = ["hlc_lmg_MG3", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "hlc_100Rnd_762x51_T_M60E4";

_MMG = ["hlc_lmg_MG3", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "hlc_200Rnd_762x51_T_M60E4";

_LAT = ["rhs_weap_rpg26", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg26_mag";
_LAT_ReUsable = false;

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";
_MAT_mag_HE = "rhs_rpg7_OG7V_mag";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_I_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["rhsusf_weap_glock17g4", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_17Rnd_9x19_FMJ";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_bipod = "rhsusf_acc_harris_bipod";
_rifleMarksman = ["hlc_rifle_psg1", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "hlc_20rnd_762x51_barrier_G3";
_rifleMarksman_mag_tr = "hlc_20rnd_762x51_T_G3";
