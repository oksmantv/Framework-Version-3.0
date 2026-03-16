_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = [""];
_helmet =["rhs_altyn_novisor","rhs_altyn_novisor_bala","rhs_altyn_novisor_ess","rhs_altyn_novisor_ess_bala","rhs_altyn_visordown","rhs_altyn","rhs_altyn_bala"];
_OfficerHelmet = "H_Beret_CSAT_01_F";
_uniform = "UK3CB_LSM_B_U_CombatSmock_07";
_vest = ["rhs_6b45_rifleman","rhs_6b45_rifleman_2","rhs_6b45_mg","rhs_6b45","rhs_6b45_grn"];
_backpack = ["rhs_assault_umbts","rhs_assault_umbts_engineer_empty"];
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_ION_B_B_RadioBag_OLI";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_GAF_B_B_ENG_OLI";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_Tank_black_F";
};
if (_role isEqualTo "p") then {
	_helmet = "H_CrewHelmetHeli_O";
	_uniform = "U_O_PilotCoveralls";
	_vest = "UK3CB_V_Invisible";
};
if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";
};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_O";
	_uniform = "U_O_PilotCoveralls";
	_vest = "UK3CB_V_Invisible";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
_sight = "optic_arco_blk_f";
_bipod = "";

_rifle = ["arifle_CTAR_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_CTAR_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["arifle_CTAR_GL_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["srifle_DMR_07_blk_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_580x42_Mag_F";
_rifle_mag_tr = "30Rnd_580x42_Mag_Tracer_F";
_rifleC_mag = "30Rnd_580x42_Mag_F";
_rifleC_mag_tr = "30Rnd_580x42_Mag_Tracer_F";
_rifleGL_mag = "30Rnd_580x42_Mag_F";
_rifleGL_mag_tr = "30Rnd_580x42_Mag_Tracer_F";
_rifleL_mag = "ACE_20Rnd_65_Creedmor_mag";
_rifleL_mag_tr = "ACE_20Rnd_65x47_Scenar_mag";

_LMG = ["arifle_CTARS_blk_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "100Rnd_580x42_Mag_Tracer_F";

_MMG = ["rhs_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_sight = "";

_LAT = ["rhs_weap_rpg26", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "Vorona_HEAT";
_MAT_mag_HE = "Vorona_HE";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_O_Titan_ghex_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_Rook40_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "bipod_02_F_blk";

_rifleMarksman = ["srifle_DMR_05_hex_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "10Rnd_93x64_DMR_05_Mag";
_rifleMarksman_mag_tr = "10Rnd_93x64_DMR_05_Mag";
