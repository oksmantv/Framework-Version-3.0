
_useMineDetector = true;
_allowedNightStuff = true;

_insignia = "insignia_block35";
_goggles = ["rhs_balaclava1_olive","UK3CB_G_Ballistic_Shemagh_Green_Gloves_Tan","UK3CB_G_Ballistic_Black_Tactical_Gloves_Green_Headset","G_Bandanna_oli","UK3CB_G_Gloves_Green","UK3CB_G_Gloves_Green_Shemagh_Green",
			"UK3CB_G_Gloves_Green_Shemagh_Green_Headset","UK3CB_G_KLR_Oli","UK3CB_G_Neck_Shemag_Oli","rhsusf_shemagh2_od","rhsusf_shemagh_od","rhsusf_shemagh_gogg_od","rhsusf_shemagh2_gogg_od","rhs_ess_black",
			"G_Balaclava_TI_blk_F","UK3CB_G_Tactical_Clear_Gloves_Green","UK3CB_G_Tactical_Clear_Shemagh_Green_Gloves_Green","UK3CB_G_Tactical_Black_Shemagh_Green_Tactical_Gloves_Green","UK3CB_G_Tactical_Gloves_Green_Shemagh_Green_Headset"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army_Off";
_helmet =  ["UK3CB_AAF_I_H_MKVI_Helmet_B_GRN","UK3CB_AAF_I_H_MKVI_Helmet_A_GRN"];
_uniform =  ["UK3CB_AAF_B_U_CombatUniform_DIGI_GRN","UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_GRN","UK3CB_AAF_B_U_JumperUniform_DIGI_GRN","U_I_CombatUniform","U_I_CombatUniform_shortsleeve","UK3CB_AAF_B_U_JumperUniform_DIGI_GRN"];
_vest =  ["UK3CB_V_Falcon_6","UK3CB_AAF_I_V_Falcon_7_DIGI_GRN","UK3CB_V_Falcon_5","V_PlateCarrierIAGL_dgtl"];
_backpack = ["UK3CB_AAF_B_B_FIELDPACK_DIGI_GRN"];
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = ["B_RadioBag_01_digi_F"];
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_AAF_B_B_CARRYALL_DIGI_GRN";
	_vest = "UK3CB_V_Falcon_9";
};
if (_role isEqualTo "crew") then {
	_helmet = "rhsusf_cvc_green_helmet";
	_vest = "UK3CB_LDF_B_V_CREW_Vest_KKZ10_OLI";
	_uniform = "U_Tank_green_F";
};
if (_role isEqualTo "p") then {
	_helmet = ["H_CrewHelmetHeli_I","H_PilotHelmetHeli_I"];
	_uniform = "U_I_HeliPilotCoveralls";
	_vest = "UK3CB_LDF_B_V_CREW_Vest_KKZ10_OLI";

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

_silencer = "rhsusf_acc_sfmb556";
_pointer = "rhsusf_acc_anpeq15side_bk";
_sight = "optic_mrco";
_bipod = "hlc_grip_pmvfg_black";

_rifle = ["arifle_SPAR_02_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_SPAR_01_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["arifle_SPAR_01_GL_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["arifle_SPAR_03_blk_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_50rnd_556x45_M";
_rifle_mag_tr = "hlc_50rnd_556x45_M";
_rifleC_mag = "hlc_50rnd_556x45_M";
_rifleC_mag_tr = "hlc_50rnd_556x45_M";
_rifleGL_mag = "hlc_50rnd_556x45_M";
_rifleGL_mag_tr = "hlc_50rnd_556x45_M";
_rifleL_mag = "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
_rifleL_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";

_LMG = ["UK3CB_BAF_L110A3", "uk3cb_baf_sffh", _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_556_200Rnd_T";

_MMG = ["UK3CB_BAF_L110_762", "uk3cb_baf_sffh", _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_olive_rail_F", _silencer, _pointer, _sight, _bipod];
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
