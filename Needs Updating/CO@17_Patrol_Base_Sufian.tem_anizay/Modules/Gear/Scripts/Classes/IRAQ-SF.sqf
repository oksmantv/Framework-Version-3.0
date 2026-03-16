_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = "UK3CB_G_Balaclava2_BLK";
_helmet = "H_PASGT_basic_black_F";
_OfficerHelmet = "UK3CB_TKP_O_H_Patrolcap_Off_Blk";
_uniform = "UK3CB_CW_US_B_LATE_U_SF_CombatUniform_02_BLK";
_vest = ["UK3CB_V_MBAV_LIGHT_BLK","UK3CB_V_MBAV_MG_BLK","UK3CB_V_MBAV_RIFLEMAN_BLK"];
_backpack = "B_ViperLightHarness_blk_F";
_backpackRadio = _backpack;

if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "B_RadioBag_01_black_F";
};

if (_role in ["ag","ammg","lr"]) then {
	_backpack = "B_ViperHarness_blk_F";
	_vest = "UK3CB_V_MBAV_MEDIC_BLK";
};

if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_HeliPilotCoveralls";
	_vest = "UK3CB_V_MBAV_BLK";
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

_silencer = "rhsusf_acc_SFMB556";
_pointer = "";
_sight = "rhsusf_acc_compm4";
_bipod = "rhsusf_acc_grip3";

_rifle = ["rhs_weap_m16a4_imod", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_wp_mod733", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_m16a4_imod_M203", _silencer, _pointer, _sight, "rhsusf_acc_grip_m203_blk"];
_rifleL = ["hlc_rifle_M14dmr_Rail", _silencer, _pointer, _sight, _bipod];
_rifleC_mag = "hlc_30rnd_556x45_SPR";
_rifleC_mag_tr = "hlc_30rnd_556x45_t";
_rifle_mag = "hlc_30rnd_556x45_SPR";
_rifle_mag_tr = "hlc_30rnd_556x45_t";
_rifleGL_mag = "hlc_30rnd_556x45_SPR";
_rifleGL_mag_tr = "hlc_30rnd_556x45_t";
_rifleL_mag = "hlc_20Rnd_762x51_barrier_M14";
_rifleL_mag_tr = "hlc_20Rnd_762x51_T_M14";

_LMG = ["LMG_03_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["rhs_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_sight = "";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_m72a7_mag";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_rpg7", _silencer, _pointer, "rhs_acc_pgo7v3", _bipod];
_MAT_mag = "rhs_rpg7_PG7VM_mag";
_MAT_mag_HE = "rhs_rpg7_OG7V_mag";

_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_MAT = ["rhs_weap_rpg7", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "rhs_rpg7_PG7VL_mag";
_MAT_mag_HE = "rhs_rpg7_PG7VL_mag";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["hgun_P07_blk_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "16Rnd_9x21_red_Mag";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svdp_wd", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";