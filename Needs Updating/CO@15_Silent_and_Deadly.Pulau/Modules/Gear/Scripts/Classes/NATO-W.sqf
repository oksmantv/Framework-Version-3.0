_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "111thID";
_goggles = "G_Balaclava_TI_blk_F";
_helmet = "rhsusf_opscore_fg_pelt";
_OfficerHelmet = "rhs_beret_vdv3";
_uniform = "U_B_T_Soldier_F";
_vest = "V_PlateCarrier1_tna_F";
_backpack = "B_AssaultPack_tna_F";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_LDF_B_B_RadioBag_OLI";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_KDF_B_B_Sidor_RIF_OLI";
};
if (_role isEqualTo "crew") then {
	_uniform = "U_B_T_Soldier_SL_F";
	_vest = "V_BandollierB_oli";
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

_silencer = "muzzle_snds_65_ti_blk_f";
_pointer = "rhsusf_acc_wmx_bk";
_sight = "optic_hamr_khk_f";
_bipod = "";

_rifle = ["arifle_MX_khk_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_MXC_khk_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["arifle_MX_GL_khk_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["arifle_MXM_khk_F", _silencer, _pointer, "rksl_optic_lds_pip", "bipod_01_f_khk"];
_rifle_mag = "30Rnd_65x39_caseless_khaki_mag";
_rifle_mag_tr = "30Rnd_65x39_caseless_khaki_mag_Tracer";
_rifleGL_mag = "30Rnd_65x39_caseless_khaki_mag";
_rifleGL_mag_tr = "30Rnd_65x39_caseless_khaki_mag_Tracer";
_rifleL_mag = "ACE_30Rnd_65_Creedmor_khaki_mag";

_LMG = ["arifle_MX_SW_khk_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "100Rnd_65x39_caseless_khaki_mag_Tracer";

_MMG = ["hlc_lmg_M60E4", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "hlc_200Rnd_762x51_T_M60E4";

_sight = "";

_LAT = ["rhs_weap_M136_hp", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";

_HAT = ["launch_I_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["launch_B_Titan_olive_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hlc_pistol_P229R_40Elite", "muzzle_snds_acp", "acc_flashlight_pistol", "hlc_optic228_docter_cadex", _bipod];
_pistol_mag = "hlc_12Rnd_40sw_JHP_P226";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_rifleMarksman = ["hlc_rifle_FN3011Tactical_green", "rhsusf_acc_aac_762sdn6_silencer", "", "rksl_optic_lds_pip", ""];
_rifleMarksman_mag = "rhs_mag_20Rnd_762x51_m61_fnfal";
