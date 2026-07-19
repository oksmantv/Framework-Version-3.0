_useMineDetector = true;
_allowedNightStuff = true;

_glHE = "rhs_VOG25";
_glHEDP = "rhs_VOG25";
_glsmokeW = "rhs_GRD40_White";
_glsmokeB = "";
_glsmokeG = "rhs_GRD40_Green";
_glsmokeO = "";
_glsmokeP = "";
_glsmokeR = "rhs_GRD40_Red";
_glsmokeY = "";

_glflareG = "rhs_VG40OP_green";
_glflareR = "rhs_VG40OP_red";
_glflareW = "rhs_VG40OP_white";

_insignia = "";
_goggles = ["JCA_G_balaclava_01_sand_F","JCA_G_balaclava_01_sand_F","rhsusf_oakley_goggles_clr","rhsusf_shemagh2_gogg_tan","rhsusf_shemagh_gogg_tan","rhsusf_shemagh2_tan","rhsusf_shemagh_tan","UK3CB_G_Balaclava_DES"];
_helmet = ["rhsusf_opscore_ut_pelt_nsw_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt"];
_OfficerHelmet = "H_Beret_blk";
_uniform = ["UK3CB_TKA_I_U_CombatUniform_01_TKA_Brush","UK3CB_TKA_I_U_CombatUniform_02_TKA_Brush"];
_vest = ["rhsusf_spc_iar","rhsusf_spc_mg","rhsusf_spc_rifleman"];
_backpack = "UK3CB_B_Alice_K";
_backpackRadio = _backpack;

if (true) then {
	_backpackRadio = "UK3CB_B_O_Alice_Radio_Backpack";
};

if(_role in ["pl","sl","fac"]) then {
	_vest = "rhsusf_spc_teamleader";
};

if(_role in ["r","lr"]) then {
	_backpack = "rhs_rpg_2";
};

if (_role in ["ag","ammg","sm"]) then {
	_backpack = "UK3CB_B_Alice_Med_K";
	_vest = "rhsusf_spc_corpsman";
};

if (_role isEqualTo "p") then {
	_helmet = "UK3CB_H_Pilot_Helmet";
	_uniform = "UK3CB_TKA_B_U_H_Pilot_DES";
};

if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};

if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

// Attachments
_silencer = "rhs_acc_dtk4short";
_pointer = "GOL_OX3000";
_sight = "JCA_optic_ARO_black";
_bipod = "rhsusf_acc_rvg_blk";

_rifle = ["rhs_weap_ak74mr", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_ak105_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74mr_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_svds", _silencer, _pointer, "rhs_acc_pso1m21", _bipod];
_rifle_mag = "UK3CB_AEK971_30rnd_Magazine_RT";
_rifle_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";
_rifle_mag = "UK3CB_AEK971_30rnd_Magazine_RT";
_rifle_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleGL_mag = "UK3CB_AEK971_30rnd_Magazine_RT";
_rifleGL_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleL_mag = "UK3CB_SVD_10rnd_762x54_R";
_rifleL_mag_tr = "UK3CB_SVD_10rnd_762x54_RT";

_LMG = ["GOL_MMG_01_tan_F", "muzzle_snds_93mmg", "JCA_acc_LaserModule_sand_Pointer", "JCA_optic_AHO_sand", "JCA_bipod_04_sand"];
_LMG_mag = "GOL_150Rnd_93x64_Mag_Tracer_Red";

_MMG = ["GOL_MMG_01_tan_F", "muzzle_snds_93mmg", "JCA_acc_LaserModule_sand_Pointer", "JCA_optic_AHO_sand", "JCA_bipod_04_sand"];
_MMG_mag = "GOL_150Rnd_93x64_Mag_Tracer_Red";

_LAT = ["JCA_launch_M72_sand_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_sand_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT55_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["UK3CB_PC9_ZOAF", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "UK3CB_PC9_ZOAF_9_12Rnd";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "rhsusf_acc_ACOG_USMC";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["srifle_DMR_06_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_M14_20rnd_762x51_GT";
_rifleMarksman_mag_tr = "UK3CB_M14_20rnd_762x51_GT";