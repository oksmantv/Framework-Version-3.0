_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = "G_O_Diving";
_helmet = "acp_CN_Type_07_Universal_H_HelmetAggressor_cover_F_CN_Type_07_Universal";
_OfficerHelmet = "H_Beret_CSAT_01_F";
_uniform = "U_O_Wetsuit";
_vest = "V_RebreatherIR";
_backpack = "B_ViperLightHarness_blk_F";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "TFAR_rt1523g_black";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "B_ViperHarness_blk_F";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_O_PilotCoveralls";
	_vest = "V_TacVest_blk";
};
if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "hlc_muzzle_545sup_ak";
_pointer = "rhs_acc_2dpzenit_ris";
_sight = "hlc_optic_docterr";
_bipod = "rhs_acc_grip_rk2";

_rifle = ["rhs_weap_ak105_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_ak105_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak105_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_vss_grip", _silencer, _pointer, "rhs_acc_pso1m21", _bipod];
_rifle_mag = "rhs_60Rnd_545X39_7N22_AK";
_rifle_mag_tr = "rhs_60Rnd_545X39_AK_Green";
_rifleC_mag = "rhs_60Rnd_545X39_7N22_AK";
_rifleC_mag_tr = "rhs_60Rnd_545X39_AK_Green";
_rifleGL_mag = "rhs_60Rnd_545X39_7N22_AK";
_rifleGL_mag_tr = "rhs_60Rnd_545X39_AK_Green";
_rifleL_mag = "rhs_20rnd_9x39mm_SP6";

_LMG = ["rhs_weap_rpk74m", "rhs_acc_dtk4short", _pointer, _sight, _bipod];
_LMG_mag = "rhs_60Rnd_545X39_AK_Green";

_MMG = ["LMG_Zafir_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "150Rnd_762x51_Box_Tracer";

_sight = "";

_LAT = ["rhs_weap_rshg2", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "rhs_rpg7_OG7V_mag";
_MAT_mag_HE = "";

_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_O_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hlc_pistol_P229R_40Combat", "hlc_muzzle_octane45", "acc_flashlight_pistol", "hlc_optic228_siglite", _bipod];
_pistol_mag = "hlc_12Rnd_357SIG_JHP_P226";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "rhs_acc_tgpv2";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svds", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N14";
_rifleMarksman_mag_tr = "ACE_10Rnd_762x54_Tracer_mag";
