
_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "insignia_block35";
_goggles = "rhsusf_shemagh_grn";
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army_Off";
_helmet = selectRandom ["UK3CB_AAF_I_H_MKVI_Helmet_B_GRN","UK3CB_AAF_I_H_MKVI_Helmet_A_GRN"];
_uniform = selectRandom ["UK3CB_AAF_B_U_CombatUniform_DIGI_GRN","UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_GRN","UK3CB_AAF_B_U_JumperUniform_DIGI_GRN"];
_vest = selectRandom ["V_PlateCarrierIAGL_dgtl"];
_backpack = "UK3CB_AAF_B_B_FIELDPACK_DIGI_GRN";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "TFAR_anprc155";
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_AAF_B_B_CARRYALL_DIGI_GRN";
	_vest = "UK3CB_V_Falcon_9";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
	_vest = "UK3CB_AAF_I_V_Falcon_1_DIGI_GRN";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_I";
	_uniform = "U_I_HeliPilotCoveralls";
	_vest = "UK3CB_AAF_I_V_Falcon_1_DIGI_GRN";

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

_silencer = "hlc_muzzle_gunfighter_comp";
_pointer = "rhs_acc_2dpzenit_ris";
_sight = "optic_mrco";
_bipod = "hlc_grip_pmvfg_black";

_rifle = ["hlc_rifle_hk33a2RIS", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_rifle_hk33ka3", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_rifle_hk33a2RIS_GL", _silencer, _pointer, _sight, _bipod];
_rifleL = ["hlc_rifle_g3a3ris", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_30rnd_556x45_M_HK33";
_rifle_mag_tr = "hlc_30rnd_556x45_t_HK33";
_rifleGL_mag = "hlc_30rnd_556x45_M_HK33";
_rifleGL_mag_tr = "hlc_30rnd_556x45_t_HK33";
_rifleL_mag = "hlc_20rnd_762x51_b_G3";
_rifleL_mag_tr = "hlc_20rnd_762x51_T_G3";

_LMG = ["rhs_weap_m249_pip_ris", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote";

_MMG = ["hlc_lmg_MG3KWS_b", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "hlc_200Rnd_762x51_T_M60E4";

_LAT = ["rhs_weap_M136_hedp", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_olive_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT55_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_I_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hlc_pistol_Mk25", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "hlc_15Rnd_9x19_B_P226";

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
