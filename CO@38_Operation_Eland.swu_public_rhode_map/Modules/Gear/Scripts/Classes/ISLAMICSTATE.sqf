_useMineDetector = false;
_allowedNightStuff = false;

_insignia = "";
_goggles = "G_Armband_tura_alt_F";
_helmet = ["rhs_pilotka","UK3CB_TKM_O_H_Turban_04_1","UK3CB_TKM_I_H_Turban_04_1","UK3CB_TKA_B_H_Beret","UK3CB_ARD_B_H_Crew_Cap","UK3CB_LSM_B_H_Field_Cap_OLI","rhs_fieldcap_early","UK3CB_PLM_B_H_Headband_Red","UK3CB_TKP_B_H_Patrolcap_TAN"];
_uniform = ["UK3CB_TKA_I_U_CrewUniform_03_KHK"];
_vest = ["UK3CB_TKP_I_V_6Sh92_Radio_Khk","UK3CB_TKA_I_V_6Sh92_Khk","UK3CB_TKP_I_V_6Sh92_Khk","UK3CB_TKP_I_V_6Sh92_Radio_Khk","rhs_belt_AK4","rhs_belt_RPK","rhs_belt_AK_GL","rhs_belt_AK_back","rhs_lifchik_NCO","rhs_suspender_ak"];
_backpack = "UK3CB_CW_SOV_O_EARLY_B_Sidor_RIF";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_B_O_Alice_Radio_Backpack";
};

if(_role in ["sl","officer","ftl"]) then {
	_vest = "rhs_gear_OFF";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "UK3CB_CW_SOV_O_LATE_B_Sidor_RIF";
};
if (_role isEqualTo "p") then {
	_helmet = "UK3CB_TKC_H_Pilot_Turban_01_1";
	_uniform = "UK3CB_TKC_C_U_Pilot_B";
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
_sight = "";
_bipod = "";

_rifle = ["rhs_weap_m38", _silencer, _pointer, _sight, _bipod];
_rifleC = ["uk3cb_mat49m", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["uk3cb_sks_01_sling", _silencer, _pointer, _sight, _bipod];
_rifleL = ["uk3cb_ppsh41", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhsgref_5Rnd_762x54_m38";
_rifle_mag_tr = "rhsgref_5Rnd_762x54_m38";
_rifleGL_mag = "uk3cb_10rnd_magazine_sks_GT";
_rifleGL_mag_tr = "uk3cb_10rnd_magazine_sks_GT";
_rifleC_mag = "UK3CB_MAT49_35Rnd_762x25_Magazine_G";
_rifleC_mag_tr = "UK3CB_MAT49_35Rnd_762x25_Magazine_G";
_rifleL_mag = "uk3cb_PPSH_71rnd_magazine_GT";
_rifleL_mag_tr = "uk3cb_PPSH_71rnd_magazine_GT";


_LMG = ["UK3CB_UK59", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_UK59_100Rnd_762x54mmR_Magazine_G";

_MMG = ["rhs_weap_pkm", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

if(random 1 > 0.5) then {
	_LAT = ["rhs_weap_rpg75", _silencer, _pointer, _sight, _bipod];
	_LAT_mag = "rhs_rpg75_mag";
	_LAT_ReUsable = false;
} else {
	_LAT = ["rhs_weap_panzerfaust60", _silencer, _pointer, _sight, _bipod];
	_LAT_mag = "rhs_panzerfaust60_mag";
	_LAT_ReUsable = false;
};

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";

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
_sight = "optic_LRPS";
_bipod = "bipod_03_F_oli";

_rifleMarksman = ["srifle_DMR_06_hunter_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_762x51_Mag";
_rifleMarksman_mag_tr = "20Rnd_762x51_Mag";
