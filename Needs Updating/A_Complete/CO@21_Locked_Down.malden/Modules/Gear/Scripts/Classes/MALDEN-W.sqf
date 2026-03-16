_useMineDetector = true;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["G_Balaclava_TI_blk_F"];
_helmet = ["rhssaf_helmet_m97_black_nocamo","rhssaf_helmet_m97_black_nocamo_black_ess","rhssaf_helmet_m97_black_nocamo_black_ess_bare"];
_OfficerHelmet = "UK3CB_MDF_B_H_Off_Beret";
_uniform = [
	"UK3CB_LSM_B_U_Crew_CombatSmock_01"
];
_vest = [
	"UK3CB_V_MBAV_MEDIC_BLK","UK3CB_V_MBAV_MG_BLK","UK3CB_V_MBAV_GRENADIER_BLK","UK3CB_V_MBAV_RIFLEMAN_BLK"
];
_backpack = ["UK3CB_TKP_O_B_ASS_BLK"];
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_ION_B_B_RadioBag_BLK";
};
if (_role in ["ag","ammg","sm"]) then {
	_backpack = "UK3CB_TKP_O_B_ASS_MED_BLK";
};

if (_role in ["lr","ab"]) then {
	_backpack = "UK3CB_TKP_O_B_ASS_MED_BLK";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_TacVest_blk";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

// Attachments
_silencer = "rhsgref_sdn6_suppressor";
_pointer = "ACE_DBAL_A3_Red";
_sight = "JCA_optic_ARO_black";
_bipod = "JCA_bipod_04_black";

// Primary Weapon
_rifle = [["UK3CB_FNFAL_OSW"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_FNFAL_OSW", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["UK3CB_FNFAL_OSW_GL"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_FNFAL_OSW", _silencer, _pointer, _sight, _bipod];

_rifle_mag = "UK3CB_FNFAL_30rnd_762x51_R";
_rifle_mag_tr = "UK3CB_Bren_30Rnd_762x51_Magazine_RT";
_rifleGL_mag = "UK3CB_FNFAL_30rnd_762x51_R";
_rifleGL_mag_tr = "UK3CB_Bren_30Rnd_762x51_Magazine_RT";
_rifleC_mag = "UK3CB_FNFAL_30rnd_762x51_R";
_rifleC_mag_tr = "UK3CB_Bren_30Rnd_762x51_Magazine_RT";
_rifleL_mag = "UK3CB_FNFAL_30rnd_762x51_R";
_rifleL_mag_tr = "UK3CB_Bren_30Rnd_762x51_Magazine_RT";

_LMG = ["UK3CB_BAF_L110_762", "UK3CB_BAF_Silencer_L110", _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_762_200Rnd_T";

_MMG = ["UK3CB_M60", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhsusf_100Rnd_762x51_m62_tracer";

_sight = "";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_fim92_mag";

_pistol = ["UK3CB_CZ75", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "UK3CB_CZ75_9_20Rnd";

_pdw = ["rhs_weap_m92", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhssaf_30Rnd_762x39_M82_api";
_pdw_mag_tr = "rhssaf_30Rnd_762x39_M82_api";

_silencer = "";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["srifle_DMR_06_hunter_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_762x51_Mag";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
