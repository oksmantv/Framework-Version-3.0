_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["G_Balaclava_TI_blk_F"];
_helmet = ["rhssaf_helmet_m97_black_nocamo","rhssaf_helmet_m97_black_nocamo_black_ess","rhssaf_helmet_m97_black_nocamo_black_ess_bare"];
_OfficerHelmet = "rhssaf_beret_green";
_uniform = ["acp_gol_US_Tigerstripe_U_B_CTRG_Soldier_3_US_Tigerstripe_F","acp_gol_US_Tigerstripe_U_B_CTRG_Soldier_US_Tigerstripe_F"];
_vest = ["UK3CB_V_Carrier_Rig_CQB_BLK","UK3CB_TKA_B_V_GA_HEAVY_BLK"];
_backpack = "B_ViperLightHarness_blk_F";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "FRXA_tf_rt1523g_big_Black";
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "B_ViperHarness_blk_F";
};
if (_role isEqualTo "crew") then {
	_uniform = "UK3CB_MEE_O_U_07";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_ihadss";
	_uniform = "acp_gol_US_Tigerstripe_U_O_PilotCoveralls_US_Tigerstripe";
	_vest = "UK3CB_V_Invisible_Plate";
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

_silencer = "";
_pointer = "JCA_acc_flashlight_tactical_black";
_sight = "";
_bipod = "";

_rifle = [["arifle_CTARS_blk_F"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_CTAR_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["arifle_CTAR_GL_blk_F"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["srifle_DMR_07_blk_F", "muzzle_snds_65_TI_blk_F", _pointer, "optic_MRCO", _bipod];
_rifle_mag = "UK3CB_DBP88_30rnd_580x42_R";
_rifle_mag_tr = "UK3CB_DBP88_30rnd_580x42_RT";
_rifleGL_mag = "UK3CB_DBP88_30rnd_580x42_R";
_rifleGL_mag_tr = "UK3CB_DBP88_30rnd_580x42_RT";
_rifleC_mag = "UK3CB_DBP88_30rnd_580x42_R";
_rifleC_mag_tr = "UK3CB_DBP88_30rnd_580x42_RT";
_rifleL_mag = "ACE_20Rnd_65_Creedmor_mag";
_rifleL_mag_tr = "ACE_20Rnd_65_Creedmor_mag";

_LMG = ["GOL_LMG_Zafir_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "150Rnd_762x54_Box_Tracer_Red";

_MMG = ["GOL_LMG_Zafir_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "150Rnd_762x54_Box_Tracer_Red";

_sight = "";

_LAT = ["JCA_launch_M72_black_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_maaws", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "rhs_mag_maaws_HEAT";
_MAT_mag_HE = "rhs_mag_maaws_HE";

_HAT = ["launch_I_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["launch_B_Titan_olive_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["JCA_hgun_Mk23_black_F", "", _pointer, _sight, _bipod];
_pistol_mag = "JCA_12Rnd_45ACP_Mk23_Tracer_Red_Mag";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "rhsusf_acc_ACOG_USMC";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["srifle_DMR_06_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_M14_20rnd_762x51_RT";
_rifleMarksman_mag_tr = "UK3CB_M14_20rnd_762x51_RT";