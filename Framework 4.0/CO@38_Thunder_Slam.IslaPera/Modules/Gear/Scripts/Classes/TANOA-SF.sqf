_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "GOL_Insignia_Hellfish";
_goggles = ["acp_gol_US_Tigerstripe_G_Balaclava_TI_G_US_Tigerstripe_F","acp_gol_US_Tigerstripe_G_Balaclava_TI_US_Tigerstripe_F","acp_gol_US_Tigerstripe_G_Bandanna_US_Tigerstripe","acp_gol_US_Tigerstripe_G_Balaclava_combat_US_Tigerstripe","acp_gol_US_Tigerstripe_G_Combat_US_Tigerstripe"];
_helmet = ["acp_gol_US_Tigerstripe_H_HelmetB_TI_US_Tigerstripe_F"];
_OfficerHelmet = "rhssaf_beret_green";
_uniform = ["acp_gol_US_Tigerstripe_U_I_CombatUniform_US_Tigerstripe","acp_gol_US_Tigerstripe_U_I_CombatUniform_shortsleeve_US_Tigerstripe"];
_vest = ["acp_gol_US_Tigerstripe_V_PlateCarrier1_US_Tigerstripe","acp_gol_US_Tigerstripe_V_PlateCarrier_Kerry_US_Tigerstripe","acp_gol_US_Tigerstripe_V_CarrierRigKBT_01_light_US_Tigerstripe_F","acp_gol_US_Tigerstripe_V_PlateCarrierIA1_US_Tigerstripe"];
_backpack = "acp_gol_US_Tigerstripe_B_Kitbag_rgr_US_Tigerstripe";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "acp_gol_US_Tigerstripe_B_RadioBag_01_US_Tigerstripe_F";
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "acp_gol_US_Tigerstripe_B_Carryall_US_Tigerstripe";
};
if (_role isEqualTo "lightdragon") then {
	_backpack = "acp_gol_US_Tigerstripe_B_Bergen_US_Tigerstripe_F";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_ihadss";
	_vest = "acp_gol_US_Tigerstripe_V_PlateCarrierIA1_US_Tigerstripe";
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
_pointer = "";
_sight = "optic_ACO_grn_smg";
_bipod = "JCA_bipod_04_black";

_rifle = [["arifle_AK12_F"], _silencer, _pointer, _sight, _bipod];
_rifleC = [["arifle_AK12U_F","arifle_AK12_F"], _silencer, _pointer, _sight, _bipod];
_rifleGL = [["arifle_AK12_GL_F"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_svds", _silencer, _pointer, "rhs_acc_pso1m21", _bipod];
_rifle_mag = "30Rnd_762x39_Mag_F";
_rifle_mag_tr = "30Rnd_762x39_Mag_Tracer_F";
_rifleGL_mag = "30Rnd_762x39_Mag_F";
_rifleGL_mag_tr = "30Rnd_762x39_Mag_Tracer_F";
_rifleC_mag = "30Rnd_762x39_Mag_F";
_rifleC_mag_tr = "30Rnd_762x39_Mag_Tracer_F";
_rifleL_mag = "rhs_10Rnd_762x54mmR_7N14";
_rifleL_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";

_LMG = ["arifle_CTARS_blk_F", "", "", _sight, _bipod];
_LMG_mag = "UK3CB_DBP88_100rnd_580x42_YM";

_MMG = ["rhs_weap_rpk74m", "", _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_RPK74_60rnd_545x39_YM";

_sight = "";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["JCA_launch_Mk153_PWS_olive_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "JCA_MK153_HEAT_F";
_MAT_mag_HE = "JCA_MK153_HE_F";

_HAT = ["launch_I_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["launch_B_Titan_olive_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["rhsusf_weap_glock17g4", "", _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_17Rnd_9x19_FMJ";

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