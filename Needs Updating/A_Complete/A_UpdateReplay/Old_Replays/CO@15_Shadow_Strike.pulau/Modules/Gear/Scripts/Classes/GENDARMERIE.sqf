_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "CombatPatrol";
_goggles = "G_Balaclava_TI_blk_F";
_helmet = selectRandom ["rhsusf_opscore_bk","rhsusf_opscore_bk_pelt"];
_OfficerHelmet = "H_Beret_gen_F";
_uniform = selectRandom ["UK3CB_MEE_O_U_07","UK3CB_MEE_O_U_07_B"];
_vest = "UK3CB_TKP_B_V_TacVest_Blk";
_backpack = "B_ViperLightHarness_blk_F";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "TFAR_rt1523g_black";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "B_ViperHarness_blk_F";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_HeliPilotCoveralls";
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

_silencer = "rhsusf_acc_rotex5_grey";
_pointer = "rhsusf_acc_anpeq15_bk";
_sight = "optic_hamr";
_bipod = "rhsusf_acc_kac_grip";

_rifle = ["rhs_weap_mk18_bk", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_rifle_mk18mod0", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_m4a1_blockII_M203_bk", _silencer, "rhsusf_acc_anpeq15side_bk", _sight, "rhsusf_acc_grip_m203_blk"];
_rifleL = ["rhs_weap_m27iar", _silencer, _pointer, "rhsusf_acc_acog_rmr", "bipod_01_f_blk"];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk318_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk318_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleL_mag = "ACE_30Rnd_556x45_Stanag_Mk318_mag";
_rifleL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_LMG = ["LMG_03_F", "muzzle_snds_m", _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["hlc_lmg_M60E4", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "hlc_200Rnd_762x51_T_M60E4";

_sight = "";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";

_HAT = ["launch_I_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["launch_B_Titan_olive_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hlc_pistol_P229R_40Elite", "muzzle_snds_acp", "hlc_acc_dbalpl", "hlc_optic228_romeo1_rx", _bipod];
_pistol_mag = "hlc_12Rnd_40sw_SD_P226";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "muzzle_snds_b";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "";

_rifleMarksman = ["srifle_DMR_06_hunter_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "hlc_20Rnd_762x51_barrier_M14";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
