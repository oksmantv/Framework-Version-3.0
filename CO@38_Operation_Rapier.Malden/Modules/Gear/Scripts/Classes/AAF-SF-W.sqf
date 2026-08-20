_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["JCA_G_balaclava_01_black_F"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_SF_Off";
_helmet = ["UK3CB_AAF_O_H_6b27m_ESS_DIGI_GRN","UK3CB_AAF_O_H_6b27m_DIGI_GRN"];
_uniform = ["UK3CB_AAF_B_U_CombatUniform_DIGI_GRN","UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_GRN","U_I_CombatUniform_tshirt"];
_vest = ["UK3CB_AAF_I_V_Falcon_3_DIGI_GRN","UK3CB_AAF_I_V_Falcon_4_DIGI_GRN","UK3CB_AAF_I_V_Falcon_5_DIGI_GRN","UK3CB_AAF_I_V_Falcon_6_DIGI_GRN","UK3CB_AAF_I_V_Falcon_7_DIGI_GRN","UK3CB_AAF_I_V_Falcon_8_DIGI_GRN","UK3CB_AAF_I_V_Falcon_9_DIGI_GRN"];
_backpack = ["UK3CB_AAF_B_B_FIELDPACK_DIGI_GRN"];
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = ["UK3CB_AAF_B_B_FIELDPACK_DIGI_GRN_Radio"];
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_AAF_B_B_CARRYALL_DIGI_GRN";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
	_vest = "UK3CB_V_Falcon_1";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_I";
	_uniform = "UK3CB_AAF_I_U_H_Pilot_DIGI_GRN";
	_vest = "V_TacVest_oli";

};
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "";
	_helmet = "RHS_jetpilot_usaf";
	_uniform = "UK3CB_AAF_I_U_J_Pilot_DIGI_GRN";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

// Attachments
_silencer = "JCA_muzzle_snds_45_tactical_black";
_pointer = "GOL_OX3000";
_sight = "JCA_optic_ARS_black";
_bipod = "";

_rifle = [["JCA_smg_UMP_AFG_black_F","JCA_smg_UMP_VFG_black_F"], _silencer, _pointer, _sight, _bipod];
_rifleC = [["JCA_smg_UMP_AFG_black_F","JCA_smg_UMP_VFG_black_F"], _silencer, _pointer, _sight, _bipod];
_rifleGL = [["JCA_smg_UMP_AFG_black_F","JCA_smg_UMP_VFG_black_F"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["srifle_EBR_F", "rhsgref_sdn6_suppressor", _pointer, "optic_MRCO", "JCA_bipod_04_black"];
_rifle_mag = "JCA_25Rnd_45ACP_UMP_Red_Mag";
_rifle_mag_tr = "JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag";
_rifleGL_mag = "JCA_25Rnd_45ACP_UMP_Red_Mag";
_rifleGL_mag_tr = "JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag";
_rifleC_mag = "JCA_25Rnd_45ACP_UMP_Red_Mag";
_rifleC_mag_tr = "JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag";
_rifleL_mag = "ACE_20Rnd_762x51_Mag_SD";
_rifleL_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer_Dim";

_LMG = ["JCA_arifle_HK437_AFG_black_F", "JCA_muzzle_snds_300_enhanced_black", _pointer, _sight, "JCA_bipod_04_black"];
_LMG_mag = "JCA_30Rnd_300BLK_Tracer_IR_EMAG";

_MMG = ["GOL_MMG_02_black_F", "muzzle_snds_338_black", _pointer, _sight, "JCA_bipod_04_black"];
_MMG_mag = "GOL_200Rnd_338_Mag_red";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_I_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["JCA_hgun_Mk23_black_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_Mk23_black_Pointer", _sight, _bipod];
_pistol_mag = "JCA_12Rnd_45ACP_Mk23_Tracer_IR_Mag";

if(_role in ["pl","fac","sl","ftl","g","amat"]) then {
	_pistol = ["rhs_weap_M320", _silencer, _pointer, _sight, _bipod];
	_pistol_mag = "";
};

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "rhsusf_acc_ACOG_RMR";
_bipod = "bipod_03_F_oli";

_rifleMarksman = ["srifle_DMR_03_woodland_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "ACE_20Rnd_762x51_Mag_Tracer";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
