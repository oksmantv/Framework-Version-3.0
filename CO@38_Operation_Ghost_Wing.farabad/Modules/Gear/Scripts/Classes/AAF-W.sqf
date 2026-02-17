
_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["rhsusf_oakley_goggles_blk"];
_OfficerHelmet = "H_MilCap_dgtl";
_helmet =  ["rhssaf_helmet_m97_black_nocamo_black_ess","rhssaf_helmet_m97_black_nocamo_black_ess_bare","rhssaf_helmet_m97_black_nocamo"];
_uniform =  ["UK3CB_AAF_B_U_CombatUniform_Navy_DIGI_BLK"];
_vest =  ["UK3CB_APD_B_MBAV_RIFLEMAN_BLK"];
_backpack = ["B_ViperLightHarness_blk_F"];
_backpackRadio = ["FRXA_tf_rt1523g_big_Black"];

if (_role in ["ag","ammg","lr","ab","atab"]) then {
	_backpack = "B_ViperHarness_blk_F";
};
if(_role in ["ab","atab"]) then {
	_backpack = "rhs_tortila_black";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p_black";
	_uniform = "UK3CB_LSM_B_U_Crew_CombatSmock_01";
	_vest = "V_TacVestIR_blk";
};
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_I";
	_uniform = "UK3CB_AAF_I_U_J_Pilot_DIGI_GRN";
	_vest = "V_RebreatherIA";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "JCA_acc_LaserModule_black_Pointer";
_sight = "JCA_optic_MROS_black";
_bipod = "JCA_bipod_04_black";

_rifle = ["arifle_ARX_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_ARX_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["arifle_ARX_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["JCA_arifle_SR25_black_F", "JCA_muzzle_snds_762_tactical_black", _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_65x39_caseless_green";
_rifle_mag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";
_rifleC_mag = "30Rnd_65x39_caseless_green";
_rifleC_mag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";
_rifleGL_mag = "30Rnd_65x39_caseless_green";
_rifleGL_mag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";
_rifleL_mag = "JCA_20Rnd_762x51_Green_SMAG";
_rifleL_mag_tr = "JCA_20Rnd_762x51_Tracer_Green_SMAG";

_LMG = ["GOL_MG3_KWS_B", _silencer, _pointer, _sight, _sight];
_LMG_mag = "UK3CB_MG3_250rnd_762x51_RT";

_MMG = ["GOL_MG3_KWS_B", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_MG3_250rnd_762x51_RT";

_LAT = ["JCA_launch_M72_black_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_I_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

if(_role in ["pl","fac","ftl","sl","g"]) then {
	_pistol = ["rhs_weap_M320", _silencer, _pointer, _sight, _bipod];
	_pistol_mag = "rhs_mag_m4009";
} else {
	_pistol = ["hgun_ACPC2_F", _silencer, _pointer, _sight, _bipod];
	_pistol_mag = "9Rnd_45ACP_Mag";
};

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "muzzle_snds_B_khk_F";
_pointer = "acc_pointer_IR";
_sight = "rhsusf_acc_ACOG_RMR";
_bipod = "bipod_03_F_oli";

_rifleMarksman = ["srifle_DMR_03_woodland_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "ACE_20Rnd_762x51_Mag_Tracer";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
