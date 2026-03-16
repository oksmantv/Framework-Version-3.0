_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["UK3CB_G_Tactical_Clear_Shemagh_Tan","UK3CB_G_Tactical_Black_Shemagh_Tan_Gloves_Tan","rhsusf_shemagh2_tan","rhsusf_shemagh_tan","UK3CB_G_Neck_Shemag_Tan","UK3CB_G_KLR_TAN","UK3CB_G_Gloves_Tan_Shemagh_Tan"];
_helmet = "rhsgref_helmet_pasgt_3color_desert";
_OfficerHelmet = "rhs_8point_marpatd";
_uniform = "rhsgref_uniform_3color_desert";
_vest = "rhsusf_spc_patchless";
_backpack = "B_Kitbag_tan";
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tfw_ilbe_dd_coy";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_vest = "rhsusf_spc_corpsman";
};
if (_role in ["ar","mmg"]) then {
	_vest = "rhsusf_spc_mg";
};
if (_role isEqualTo "crew") then {
	_vest = "rhsufs_spc_crewman";
	_helmet = "rhsusf_cvc_helmet";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_cvc_helmet";
	_vest = "rhsusf_spc_light";
};

if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "UK3CB_CW_US_B_LATE_U_J_Pilot_Uniform_01_NATO";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "rhsusf_acc_SFMB556";
_pointer = "acc_flashlight";
_sight = "rhsusf_acc_eotech_552";
_bipod = "rhsusf_acc_kac_grip";

_rifle = ["rhs_weap_m16a4_imod", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_m4", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_m16a4_imod_M203", _silencer, _pointer, _sight, "rhsusf_acc_grip_m203_blk"];
_rifleL = ["rhs_weap_m16a4_imod", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_30rnd_556x45_SPR";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleGL_mag = "hlc_30rnd_556x45_SPR";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleC_mag = "hlc_30rnd_556x45_SPR";
_rifleC_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_LMG = ["LMG_03_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["rhs_weap_m240B", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhsusf_100Rnd_762x51_m62_tracer";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
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

_silencer = "";
_pointer = "";
_rifleMarksman = ["rhs_weap_sr25", _silencer, _pointer, "optic_dms", "bipod_01_f_blk"];
_rifleMarksman_mag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
_rifleMarksman_mag_tr = "rhsusf_20Rnd_762x51_SR25_m62_Mag";
