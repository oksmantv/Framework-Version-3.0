_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["UK3CB_G_Balaclava2_BLK"];
_helmet = ["rhssaf_helmet_m97_black_nocamo","rhssaf_helmet_m97_black_nocamo_black_ess","rhssaf_helmet_m97_black_nocamo_black_ess_bare"];
_OfficerHelmet = "UK3CB_ANA_B_H_Beret_MAR";
_uniform = ["UK3CB_MEE_O_U_07","UK3CB_MEE_O_U_07_B"];
_vest = "UK3CB_V_MBAV_BLK";
_backpack = "UK3CB_ION_B_B_RIF_BLK_01";
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_ION_B_B_RIF_BLK_01";
};

if (_role isEqualTo "sl") then {

};

if(_role isEqualTo "ftl") then {

};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_ION_B_B_RIF_BLK_01";
};
if (_role in ["ar","mmg"]) then {

};

if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
};
if (_role isEqualTo "p") then {
	_helmet = "H_CrewHelmetHeli_B";
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

_silencer = "muzzle_snds_L";
_pointer = "rhsusf_acc_anpeq15side_bk";
_sight = "rhsusf_acc_mrds";
_bipod = "hlc_grip_PMVFG_Black";

_rifle = [["hlc_smg_mp5N_tac"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_smg_mp5N_tac", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["hlc_smg_mp5N_tac"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["hlc_smg_mp5N_tac", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_30Rnd_9x19_SD_MP5";
_rifle_mag_tr = "hlc_30Rnd_9x19_GD_MP5";
_rifleGL_mag = "hlc_30Rnd_9x19_SD_MP5";
_rifleGL_mag_tr = "hlc_30Rnd_9x19_GD_MP5";
_rifleC_mag = "hlc_30Rnd_9x19_SD_MP5";
_rifleC_mag_tr = "hlc_30Rnd_9x19_GD_MP5";
_rifleL_mag = "hlc_30Rnd_9x19_SD_MP5";
_rifleL_mag_tr = "hlc_30Rnd_9x19_GD_MP5";


_LMG = ["rhs_weap_m27iar_grip", "rhsusf_acc_rotex5_grey", _pointer, _sight, "HLC_bipod_UTGShooters"];
_LMG_mag = "rhs_mag_100Rnd_556x45_Mk318_cmag";

_MMG = ["UK3CB_BAF_L7A2", _silencer, _pointer, _sight, ""];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_m72a7_mag";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

if(_role in ["sl","ftl","g"]) then {
	_pistol = ["rhs_weap_M320", _silencer, _pointer, _sight, _bipod];
	_pistol_mag = _glHEDP;
} else {
	_pistol = ["hlc_pistol_P226R_Stainless", _silencer, "hlc_acc_tlr1", "hlc_optic_docter_cadex", _bipod];
	_pistol_mag = "hlc_12Rnd_357SIG_B_P226";
};

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "uk3cb_baf_silencer_l115a3";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "uk3cb_underbarrel_acc_bipod";

_rifleMarksman = ["UK3CB_BAF_L118A1_Covert_BL", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_BAF_338_5Rnd";
_rifleMarksman_mag_tr = "UK3CB_BAF_762_L42A1_10Rnd_T";
