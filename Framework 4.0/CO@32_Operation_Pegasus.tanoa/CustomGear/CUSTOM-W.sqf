_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["GOL_G_B_Diving"];
_helmet = ["H_HelmetSpecB_blk"];
_OfficerHelmet = "rhs_8point_marpatwd";
_uniform = ["GOL_U_B_Wetsuit"];
_vest = ["GOL_V_RebreatherB"];
_backpack = ["B_AssaultPack_blk"];

if (true) then {
	_backpackRadio = "FRXA_tf_rt1523g_big_Black";
};
if(_role in ["sm"]) then {
	_backpack = "UK3CB_APD_B_B_RIF_MED_EKAM_BLK";
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_ION_B_B_RIF_MED_BLK";
};
if (_role in ["ar","mmg"]) then {
	_backpack = "UK3CB_ION_B_B_RIF_BLK_01";
};
if (_role isEqualTo "crew") then {
	_helmet = "rhsusf_cvc_green_helmet";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p";
	_vest = "rhsusf_spc_crewman";
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

_silencer = "muzzle_snds_L";
_pointer = "GOL_OX3000";
_sight = "optic_Aco_smg";
_bipod = "";

_rifle = ["SMG_05_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["SMG_05_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["SMG_05_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["JCA_arifle_SR10_AFG_black_F", "JCA_muzzle_snds_762_tactical_black", _pointer, "optic_MRCO", "JCA_bipod_04_black"];
_rifle_mag = "30Rnd_9x21_Mag_SMG_02";
_rifle_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";
_rifleGL_mag = "30Rnd_9x21_Mag_SMG_02";
_rifleGL_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";
_rifleC_mag = "30Rnd_9x21_Mag_SMG_02";
_rifleC_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";
_rifleL_mag = "JCA_20Rnd_762x51_SMAG";
_rifleL_mag_tr = "JCA_20Rnd_762x51_Tracer_IR_SMAG";

_LMG = ["rhs_weap_m27iar_grip", "JCA_muzzle_snds_556_advanced_black", _pointer, "optic_MRCO", "JCA_bipod_04_black"];
_LMG_mag = "GOL_30Rnd_556x45_AP45_Tracer_Red";

_MMG = ["rhs_weap_m249_light_S", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhsusf_200Rnd_556x45_box";

_LAT = ["JCA_launch_M72_black_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["launch_MRAWS_sand_rail_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "MRAWS_HEAT_F";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

if(_role in ["sl","fac","pl","ftl","g","amat"]) then {
	_pistol = ["rhs_weap_M320", "", "", "", ""];
	_pistol_mag = "rhs_mag_M433_HEDP";
} else {
	_pistol = ["hgun_P07_blk_F", "muzzle_snds_L", "", _sight, _bipod];
	_pistol_mag = "16Rnd_9x21_Mag";
};

_pdw = ["JCA_smg_UMP_black_F", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "JCA_25Rnd_45ACP_UMP_Red_Mag";
_pdw_mag_tr = "JCA_25Rnd_45ACP_UMP_Tracer_Red_Mag";

_silencer = "";
_pointer = "";
_rifleMarksman = ["UK3CB_M21_Bipod_Railed", _silencer, _pointer, "rhsusf_acc_ACOG2_USMC", ""];
_rifleMarksman_mag = "UK3CB_M14_20rnd_762x51_RT";
_rifleMarksman_mag_tr = "UK3CB_M14_20rnd_762x51_RT";