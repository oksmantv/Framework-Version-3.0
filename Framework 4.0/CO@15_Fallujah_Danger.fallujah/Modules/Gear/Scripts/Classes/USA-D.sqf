_useMineDetector = false;
_allowedNightStuff = false;

_insignia = "";
_goggles = ["rhsusf_shemagh_tan","rhsusf_shemagh2_tan","rhsusf_shemagh2_gogg_tan","rhsusf_shemagh_gogg_tan","rhsusf_oakley_goggles_blk","G_Balaclava_TI_blk_F","G_Lowprofile","UK3CB_G_Tactical_Clear",
"UK3CB_G_Tactical_Black","rhs_googles_black""UK3CB_G_Tactical_Black_Shemagh_Green_Headset","UK3CB_G_KLR_Oli","G_Spectacles_Tinted"];
_helmet = ["rhsusf_ach_helmet_headset_ess_ucp","rhsusf_ach_helmet_headset_ucp_alt","rhsusf_ach_helmet_ESS_ucp_alt","rhsusf_ach_helmet_ucp_norotos",
"rhsusf_ach_helmet_ucp_norotos","rhsusf_ach_helmet_ucp","rhsusf_ach_helmet_ucp_alt","rhsusf_ach_helmet_ESS_ucp","rhsusf_ach_helmet_headset_ucp","rhsusf_ach_helmet_headset_ess_ucp_alt"];
_OfficerHelmet = "rhsusf_patrolcap_ucp";
_uniform = "rhs_uniform_cu_ucp";
_vest = ["rhsusf_iotv_ucp_Grenadier","rhsusf_iotv_ucp_Medic","rhsusf_iotv_ucp_Repair","rhsusf_iotv_ucp_Rifleman","rhsusf_iotv_ucp_SAW","rhsusf_iotv_ucp_Squadleader","rhsusf_iotv_ucp_Teamleader","rhsusf_iotv_ucp"];
_backpack = "rhsusf_assault_eagleaiii_ucp";
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "FRXA_tf_rt1523g_big_UCP";
};

if (_role isEqualTo "sl") then {
	_vest = "rhsusf_iotv_ucp_Squadleader";
};

if(_role isEqualTo "ftl") then {
	_vest = "rhsusf_iotv_ucp_Teamleader";
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_vest = "rhsusf_iotv_ucp_Medic";
};
if (_role in ["ar","mmg"]) then {
	_vest = "rhsusf_iotv_ucp_SAW";
};

if (_role isEqualTo "crew") then {
	_helmet = "rhsusf_cvc_green_alt_helmet";
	_vest = "rhsusf_spcs_ucp_crewman";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p";
	_vest = "rhsusf_spcs_ocp_crewman";
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

_silencer = "rhsusf_acc_sfmb556";
_pointer = "";
_sight = "rhsusf_acc_t1_high";
_bipod = "hlc_grip_pmvfg_black";

_rifle = ["hlc_rifle_M4", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_rifle_CQBR", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_rifle_m4m203", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m14", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_30rnd_556x45_SOST";
_rifle_mag_tr = "hlc_30rnd_556x45_t";
_rifleGL_mag = "hlc_30rnd_556x45_SOST";
_rifleGL_mag_tr = "hlc_30rnd_556x45_t";
_rifleC_mag = "hlc_30rnd_556x45_SOST";
_rifleC_mag_tr = "hlc_30rnd_556x45_t";
_rifleL_mag = "hlc_20Rnd_762x51_B_M14";
_rifleL_mag_tr = "hlc_20Rnd_762x51_T_M14";


_LMG = ["rhs_weap_m249_light_S", _silencer, _pointer, _sight, ""];
_LMG_mag = "rhsusf_200rnd_556x45_mixed_box";

_MMG = ["hlc_lmg_mk48mod1", _silencer, _pointer, _sight, ""];
_MMG_mag = "hlc_200Rnd_762x51_T_M60E4";

_LAT = ["UK3CB_BAF_AT4_CS_AP_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["UK3CB_BAF_AT4_CS_AP_Launcher", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["rhsusf_weap_m9", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_15Rnd_9x19_FMJ";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "rhsusf_acc_m2010s_wd";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["rhs_weap_XM2010_wd", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhsusf_5Rnd_300winmag_xm2010";
_rifleMarksman_mag_tr = "";
