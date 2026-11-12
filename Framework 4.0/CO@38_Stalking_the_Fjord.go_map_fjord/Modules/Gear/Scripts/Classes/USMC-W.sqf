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

_silencer = "uk3cb_muzzle_snds_mp5";
_pointer = "GOL_OX3000";
_sight = "JCA_optic_ARS_black";
_bipod = "";

_rifle = ["UK3CB_MP5N", _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_MP5K_PDW", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["UK3CB_MP5N_UGL", _silencer, _pointer, _sight, _bipod];
_rifleL = ["JCA_arifle_SR10_AFG_black_F", "rhsusf_acc_aac_m14dcqd_silencer", _pointer, "optic_MRCO", "rhsusf_acc_m14_bipod"];
_rifle_mag = "UK3CB_MP5_30Rnd_9x19_Magazine";
_rifle_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";
_rifleGL_mag = "UK3CB_MP5_30Rnd_9x19_Magazine";
_rifleGL_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";
_rifleC_mag = "UK3CB_MP5_30Rnd_9x19_Magazine";
_rifleC_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";
_rifleL_mag = "ACE_20Rnd_762x51_Mag_SD";
_rifleL_mag_tr = "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";

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

_pistol = ["JCA_hgun_G17_black_F", "JCA_muzzle_snds_9MM_enhanced_black", "JCA_acc_LightModule_Pistol_black", _sight, _bipod];
_pistol_mag = "JCA_17Rnd_9x19_G17_IR_Mag";

_pdw = ["JCA_smg_UMP_black_F", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "JCA_25Rnd_45ACP_UMP_Red_Mag";
_pdw_mag_tr = "JCA_25Rnd_45ACP_UMP_Tracer_Red_Mag";

_silencer = "";
_pointer = "";
_rifleMarksman = ["UK3CB_M21_Bipod_Railed", _silencer, _pointer, "rhsusf_acc_ACOG2_USMC", ""];
_rifleMarksman_mag = "UK3CB_M14_20rnd_762x51_RT";
_rifleMarksman_mag_tr = "UK3CB_M14_20rnd_762x51_RT";