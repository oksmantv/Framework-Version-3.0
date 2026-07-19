_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles =  ["UK3CB_G_Balaclava2_BLK","UK3CB_G_KLR_BLK","rhsusf_oakley_goggles_blk","rhs_googles_black"];
_helmet = ["rhsusf_opscore_bk_pelt","rhsusf_opscore_bk"];
_OfficerHelmet = "UK3CB_ANA_B_H_Beret_GRN";
_uniform =  ["UK3CB_MEE_O_U_07","UK3CB_MEE_O_U_07_B"];
_vest = ["V_PlateCarrier1_blk","V_PlateCarrier2_blk","UK3CB_V_MBAV_LIGHT_BLK"];
_backpack = ["B_AssaultPack_blk"];
_backpackRadio = _backpack;

if (true) then {
	_backpackRadio = ["UK3CB_ION_B_B_RadioBag_BLK"];
};

if (_role in ["ag","ammg","lr","ab","atab"]) then {
	_backpack = "B_Carryall_blk";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
	_vest = "UK3CB_V_MBAV_LIGHT_BLK";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p_visor_black";
	_uniform = "acp_gol_GB_DDPM_U_I_E_Uniform_sweater_GB_DDPM_01_F_insignia";
	_vest = "UK3CB_V_MBAV_LIGHT_BLK";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";
};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "Uniform_Coveralls_MTP";
	_vest = "V_Rangemaster_belt";
	_backpack = _backpackRadio;
};

// Attachments
_silencer = "JCA_muzzle_snds_9MM_enhanced_black";
_pointer = "GOL_OX3000";
_sight = "optic_Aco_smg";
_bipod = "";

_rifle = [["JCA_smg_MP5_VFG_black_F","JCA_smg_MP5_VFG_black_F"], _silencer, _pointer, _sight, _bipod];
_rifleC = [["JCA_smg_MP5_VFG_black_F","JCA_smg_MP5_VFG_black_F"], _silencer, _pointer, _sight, _bipod];
_rifleGL = [["JCA_smg_MP5_VFG_black_F","JCA_smg_MP5_VFG_black_F"], _silencer, _pointer, _sight, _bipod];
_rifleL = [["JCA_smg_MP5_VFG_black_F","JCA_smg_MP5_VFG_black_F"], _silencer, _pointer, _sight, _bipod];
_rifle_mag = "JCA_30Rnd_9x19_MP5_Tracer_IR_Mag";
_rifle_mag_tr = "JCA_30Rnd_9x19_MP5_Tracer_Red_Mag";
_rifleGL_mag = "JCA_30Rnd_9x19_MP5_Tracer_IR_Mag";
_rifleGL_mag_tr = "JCA_30Rnd_9x19_MP5_Tracer_Red_Mag";
_rifleC_mag = "JCA_30Rnd_9x19_MP5_Tracer_IR_Mag";
_rifleC_mag_tr = "JCA_30Rnd_9x19_MP5_Tracer_Red_Mag";
_rifleL_mag = "JCA_30Rnd_9x19_MP5_Tracer_IR_Mag";
_rifleL_mag_tr = "JCA_30Rnd_9x19_MP5_Tracer_Red_Mag";

_LMG = ["UK3CB_BAF_L7A2", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_762_200Rnd_T";

_MMG = ["UK3CB_BAF_L7A2", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_LAT = ["JCA_launch_M72_black_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

if(_role in ["pl","fac","sl","ftl","g","amat"]) then {
	_pistol = ["rhs_weap_M320", "", "", "",""];
	_pistol_mag = "";
} else {
	_pistol = ["JCA_hgun_P320_black_F", "JCA_muzzle_snds_9MM_enhanced_black", "", "JCA_optic_PRO_black", _bipod];
	_pistol_mag = "JCA_17Rnd_9x19_P320_IR_Mag";
};
_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "rhsusf_acc_ACOG_RMR";
_bipod = "";

_rifleMarksman = ["UK3CB_BAF_L129A1", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_BAF_762_L42A1_20Rnd_T";
_rifleMarksman_mag_tr = "UK3CB_BAF_762_L42A1_20Rnd_T";
