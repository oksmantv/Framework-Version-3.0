_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["UK3CB_G_Balaclava2_WIN","UK3CB_G_Balaclava_WIN_ALT"];
_helmet = ["UK3CB_ION_B_H_OPSCORE_PELT_WIN","UK3CB_ION_B_H_OPSCORE_WIN"];
_OfficerHelmet = "rhsusf_patrolcap_ucp";
_uniform = "UK3CB_CSAT_S_O_U_SF_CombatSmock_03_WIN";
_vest = "UK3CB_V_PlateCarrier2_win";
_backpack = "UK3CB_ION_B_B_RIF_WIN_01";
if (true) then {
	_backpackRadio = "UK3CB_ION_B_B_RadioBag_WIN";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_ION_B_B_RIF_MED_WIN";
};

if (_role isEqualTo "p") then {
	_helmet = "FIR_HGU56P_Skull";
	_vest = "UK3CB_V_Pilot_Vest_WIN";
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
_silencer = "JCA_muzzle_snds_556_advanced_black";
_pointer = "rhsusf_acc_anpeq15side_bk";
_sight = "JCA_optic_ACOG_black";
_bipod = "JCA_bipod_04_black";

_rifle = ["JCA_arifle_M4A1_black_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_M4A1_short_black_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["JCA_arifle_M4A1_GL_black_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m14ebrri", "JCA_muzzle_snds_762_tactical_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ACOG2_USMC", "JCA_bipod_04_black"];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleC_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleC_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleL_mag = "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
_rifleL_mag_tr = "UK3CB_DMR_20rnd_762x51_RT";


_LMG = ["LMG_03_F", "muzzle_snds_H_MG_blk_F", _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["UK3CB_BAF_L110_762", _silencer, _pointer, _sight, ""];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["JCA_hgun_Mk23_black_F", "JCA_muzzle_snds_45_tactical_black", _pointer, _sight, _bipod];
_pistol_mag = "JCA_12Rnd_45ACP_Mk23_Tracer_Red_Mag";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "rhsusf_acc_ACOG_USMC";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["srifle_DMR_06_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_M14_20rnd_762x51_RT";
_rifleMarksman_mag_tr = "UK3CB_M14_20rnd_762x51_RT";
