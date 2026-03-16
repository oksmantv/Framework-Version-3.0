_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = "";
_helmet = "rhsusf_lwh_helmet_marpatd";
_OfficerHelmet = "rhs_8point_marpatd";
_uniform = "rhs_uniform_FROG01_d";
_vest = "rhsusf_spc_rifleman";
_backpack = "B_AssaultPack_cbr";
if (true) then {
	_backpackRadio = "tfw_ilbe_blade_d";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_vest = "rhsusf_spc_iar";
	_backpack = "rhsusf_assault_eagleaiii_coy";
};
if (_role in ["ar","mmg"]) then {
	_vest = "rhsusf_spc_mg";
	_backpack = "rhsusf_assault_eagleaiii_coy";
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

_silencer = "";
_pointer = "";
_sight = "JCA_optic_ACOG_black";
_bipod = "";

_rifle = ["JCA_arifle_M4A4_AFG_black_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_M4A4_VFG_black_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["JCA_arifle_M4A4_GL_black_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m4a1_blockII_bk", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_mag_30Rnd_556x45_Mk262_Stanag";
_rifle_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_rifleGL_mag = "rhs_mag_30Rnd_556x45_Mk262_Stanag";
_rifleGL_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_rifleC_mag = "rhs_mag_30Rnd_556x45_Mk262_Stanag";
_rifleC_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

_LMG = ["rhs_weap_m249_pip_S_para", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhsusf_200rnd_556x45_mixed_box";

_MMG = ["rhs_weap_m240B", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhsusf_100Rnd_762x51_m62_tracer";

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
