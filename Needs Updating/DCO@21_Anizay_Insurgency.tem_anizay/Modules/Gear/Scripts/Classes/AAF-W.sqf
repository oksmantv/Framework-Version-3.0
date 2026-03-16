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


_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "insignia_block35";
_goggles = "UK3CB_G_Balaclava_DES";
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army_Off";
_helmet = selectRandom ["UK3CB_AAF_I_H_MKVI_Helmet_B_BRN","UK3CB_AAF_I_H_MKVI_Helmet_A_BRN"];
_uniform = selectRandom ["UK3CB_AAF_B_U_CombatUniform_DIGI_BRN","UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_BRN"];
_vest = selectRandom ["UK3CB_AAF_I_V_Falcon_6_DIGI_BRN","UK3CB_AAF_I_V_Falcon_7_DIGI_BRN","UK3CB_AAF_I_V_Falcon_5_DIGI_BRN"];
_backpack = "UK3CB_AAF_B_B_FIELDPACK_DIGI_BRN";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_AAF_B_B_FIELDPACK_DIGI_BRN_Radio";
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_AAF_B_B_CARRYALL_DIGI_BRN";
	_vest = "UK3CB_AAF_I_V_Falcon_9_DIGI_BRN";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
	_vest = "UK3CB_AAF_I_V_Falcon_1_DIGI_BRN";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_I";
	_uniform = "U_I_HeliPilotCoveralls";
	_vest = "UK3CB_AAF_I_V_Falcon_1_DIGI_BRN";

};
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "rhs_acc_uuk";
_pointer = "";
_sight = "optic_arco_blk_f";
_bipod = "rhs_acc_grip_rk6";

_rifle = ["rhs_weap_ak74mr", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74un", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74mr_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_ak74mr", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_30Rnd_545x39_7N22_AK";
_rifle_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";
_rifleGL_mag = "rhs_30Rnd_545x39_7N22_AK";
_rifleGL_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";

_LMG = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_RPK74_60rnd_545x39_R";

_MMG = ["rhs_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_sand_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_I_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_ACPC2_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "9Rnd_45ACP_Mag";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "muzzle_snds_B_khk_F";
_pointer = "acc_pointer_IR";
_sight = "optic_LRPS_tna_F";
_bipod = "bipod_03_F_oli";

_rifleMarksman = ["srifle_DMR_03_woodland_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_762x51_Mag";
_rifleMarksman_mag_tr = "20Rnd_762x51_Mag";
