_useMineDetector = true;
_allowedNightStuff = true;

_glHE = "rhs_VOG25P";
_glsmokeW = "rhs_GRD40_White";
_glsmokeB = "";
_glsmokeG = "rhs_GRD40_Green";
_glsmokeO = "";
_glsmokeP = "";
_glsmokeR = "rhs_GRD40_Red";
_glsmokeY = "";

_glflareG = "rhs_VG40OP_green";
_glflareR = "rhs_VG40OP_red";
_glflareW = "rhs_VG40OP_white";

_insignia = "";
_goggles = "G_Balaclava_TI_blk_F";
_helmet = "UK3CB_H_Ballistic_Mask_CSAT_G";
_OfficerHelmet = "H_Beret_CSAT_01_F";
_uniform = "U_O_V_Soldier_Viper_F";
_vest = ["V_Chestrig_oli"];
_backpack =  ["B_ViperLightHarness_oli_F"];
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_ION_O_B_RadioBag_OLI";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "rhs_tortila_olive";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_O_ghex_F";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_O";
	_uniform = "U_I_pilotCoveralls";
	_vest = "V_TacVest_oli";
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

_silencer = "rhs_acc_tgpa";
_pointer = "rhs_acc_perst3";
_sight = "optic_arco_blk_f";
_bipod = "rhs_acc_grip_rk2";

_rifle = [["rhs_weap_ak74mr","hlc_rifle_ak12"], _silencer, _pointer, _sight, _bipod];
_rifleC = [["rhs_weap_ak105_zenitco01_b33","hlc_rifle_aku12"], _silencer, _pointer, _sight, _bipod];
_rifleGL = [["rhs_weap_ak74mr_gp25","hlc_rifle_ak12GL"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["hlc_rifle_ak12", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_30Rnd_545x39_7N22_AK";
_rifle_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";
_rifleGL_mag = "rhs_30Rnd_545x39_7N22_AK";
_rifleGL_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";
_rifleL_mag = "rhs_30Rnd_545x39_7N22_AK";
_rifleL_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";

_LMG = ["hlc_rifle_RPK12", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhs_60Rnd_545X39_AK_Green";

_MMG = ["rhs_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_sight = "";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_O_Titan_ghex_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["rhs_weap_pp2000_folded", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_mag_9x19mm_7n31_44";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "acc_pointer_IR";
_sight = "optic_LRPS";
_bipod = "bipod_02_F_blk";

_rifleMarksman = ["srifle_DMR_07_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "ACE_20Rnd_65_Creedmor_mag";
_rifleMarksman_mag_tr = "ACE_20Rnd_65x47_Scenar_mag";
