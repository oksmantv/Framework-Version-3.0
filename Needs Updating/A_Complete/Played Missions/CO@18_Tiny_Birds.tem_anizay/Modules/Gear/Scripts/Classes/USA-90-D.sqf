_useMineDetector = false;
_allowedNightStuff = false;

_insignia = "";
_goggles = ["rhsusf_oakley_goggles_clr","UK3CB_G_KLR_BLK","UK3CB_G_KL_BLK","UK3CB_G_Neck_Shemag_KLR_blk","rhsusf_oakley_goggles_blk","rhsusf_shemagh_tan","rhsusf_shemagh2_tan","rhsusf_shemagh_gogg_tan","rhsusf_shemagh2_gogg_tan","rhs_googles_black","rhs_ess_black"];
_helmet = ["rhsusf_protech_helmet","rhsusf_protech_helmet_ess"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army_Off";
_uniform = ["rhsgref_uniform_3color_desert"];
_vest = ["UK3CB_ADA_B_V_TacVest_BLK"];
_backpack = ["UK3CB_CW_US_B_LATE_B_RIF_04","B_AssaultPack_blk"];
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = ["B_RadioBag_01_black_F","FRXA_tf_rt1523g_big_Black"];
};

if (_role in ["ag","ammg","lr","ab","hat","ahat"]) then {
	_backpack = "B_Carryall_blk";
};

if (_role isEqualTo "crew") then {
	_helmet = "rhsusf_cvc_green_alt_helmet";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p";
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

_silencer = "hlc_muzzle_gunfighter_comp";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["hlc_rifle_Colt727", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_rifle_Colt727", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_rifle_Colt727_GL", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m14", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleL_mag = "hlc_20Rnd_762x51_barrier_M14";
_rifleL_mag_tr = "hlc_20Rnd_762x51_T_M14";
_rifleC_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleC_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_LMG = ["rhs_weap_m249", _silencer, _pointer, _sight, ""];
_LMG_mag = "rhsusf_200rnd_556x45_mixed_box";

_MMG = ["hlc_lmg_m60", _silencer, _pointer, _sight, ""];
_MMG_mag = "hlc_100Rnd_762x51_T_M60E4";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";
_HAT_mag_HE = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["rhsusf_weap_m1911a1", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_7x45acp_MHP";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "rhsusf_acc_m24_muzzlehider_black";
_pointer = "";
_sight = "rhsusf_acc_m8541_low";
_bipod = "rhsusf_acc_harris_swivel";

_rifleMarksman = ["rhs_weap_m24sws", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhsusf_5Rnd_762x51_m993_Mag";
_rifleMarksman_mag_tr = "rhsusf_5Rnd_762x51_m62_Mag";
