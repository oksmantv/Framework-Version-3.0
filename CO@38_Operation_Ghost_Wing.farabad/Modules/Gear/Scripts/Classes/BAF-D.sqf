_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles =  ["JCA_G_balaclava_01_black_F"];
_helmet = ["rhsusf_opscore_ut","rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_OfficerHelmet = "UK3CB_ANA_B_H_Beret_GRN";
_uniform =  ["acp_gol_GB_DDPM_U_I_CombatUniform_shortsleeve_GB_DDPM_insignia","acp_gol_GB_DDPM_U_I_CombatUniform_GB_DDPM_insignia"];
_vest = ["acp_gol_GB_DDPM_V_CarrierRigKBT_01_light_GB_DDPM_F","acp_gol_GB_DDPM_V_PlateCarrier2_GB_DDPM_insignia","acp_gol_GB_DDPM_V_PlateCarrier1_GB_DDPM"];
_backpack = ["UK3CB_ION_B_B_RIF_DES_01"];
_backpackRadio = _backpack;

if (true) then {
	_backpackRadio = ["UK3CB_ION_I_B_RadioBag_DES"];
};

if (_role in ["ag","ammg","lr","ab","atab"]) then {
	_backpack = "UK3CB_ION_B_B_ENG_DES";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
	_vest = "acp_gol_GB_DDPM_V_PlateCarrier1_GB_DDPM";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p_visor_black";
	_uniform = "acp_gol_GB_DDPM_U_I_E_Uniform_sweater_GB_DDPM_01_F_insignia";
	_vest = "acp_gol_GB_DDPM_V_PlateCarrier1_GB_DDPM";
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
_silencer = "UK3CB_BAF_SFFH";
_pointer = "JCA_acc_flashlight_tactical_black";
_sight = "JCA_optic_ARO_black";
_bipod = "UK3CB_underbarrel_acc_grippod";

_rifle = ["UK3CB_BAF_L85A3", _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_BAF_L85A2", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["UK3CB_BAF_L85A3_UGL", _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_BAF_L86A2", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifle_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleGL_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleGL_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleC_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleC_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleL_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleL_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";

_LMG = ["LMG_03_F", "rhsusf_acc_ARDEC_M240", _pointer, _sight, _bipod];
_LMG_mag = "GOL_200Rnd_556x45_AP45_Box_Tracer_Red";

_MMG = ["GOL_MMG_02_black_F", "ACE_muzzle_mzls_338", _pointer, _sight, _bipod];
_MMG_mag = "GOL_130Rnd_338_Mag_red";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_sand_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["rhsusf_weap_glock17g4", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_17Rnd_9x19_JHP";

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
