_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "111thID";
_goggles = ["G_Balaclava_TI_blk_F"];
_helmet = ["rhssaf_helmet_m97_black_nocamo","rhssaf_helmet_m97_black_nocamo_black_ess","rhssaf_helmet_m97_black_nocamo_black_ess_bare"];
_OfficerHelmet = "H_Beret_02";
_uniform = ["UK3CB_ION_B_U_CombatSmock_01_URB"];
_vest = ["V_PlateCarrier1_blk"];
_backpack = "UK3CB_TKP_O_B_ASS_BLK";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_CSAT_U_O_B_UMBTS_RADIO";
};

_silencer = "uk3cb_muzzle_snds_mp5";
_pointer = "rhsusf_acc_wmx_bk";
_sight = "JCA_optic_ARO_black";
_bipod = "";

_rifle = ["UK3CB_MP5N", _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_MP5N", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["UK3CB_MP5N_UGL", _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_BAF_L128A1", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_rifle_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";
_rifleGL_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_rifleGL_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";
_rifleL_mag = "UK3CB_BAF_12G_Slugs";
_rifleL_mag_tr = "UK3CB_BAF_12G_Pellets";

_LMG = ["rhs_weap_hk416d145", "JCA_muzzle_snds_556_advanced_black", _pointer, "JCA_optic_AHO_black", "rhsusf_acc_grip1"];
_LMG_mag = "rhs_mag_100Rnd_556x45_M855A1_cmag_mixed";

_MMG = ["rhs_weap_hk416d145", "JCA_muzzle_snds_556_advanced_black", _pointer, "JCA_optic_AHO_black", "rhsusf_acc_grip1"];
_MMG_mag = "rhs_mag_100Rnd_556x45_M855A1_cmag_mixed";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";

_HAT = ["launch_B_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["launch_B_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";


_pistol = ["hgun_P18_blk_F", "rhsusf_acc_omega9k", _pointer, "", _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

if(_role in ["r"]) then {
	_pistol = ["rhsusf_weap_MP7A2_folded", "rhsusf_acc_rotex_mp7", _pointer, "JCA_optic_ARO_black", _bipod];
	_pistol_mag = "rhsusf_mag_40Rnd_46x30_AP";
};

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["srifle_DMR_06_hunter_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_762x51_Mag";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
