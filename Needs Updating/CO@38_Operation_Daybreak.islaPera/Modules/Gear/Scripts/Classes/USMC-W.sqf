_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["rhs_googles_clear","rhs_googles_black","rhs_ess_black","UK3CB_G_KLR_TAN","UK3CB_G_Neck_Shemag_KLR_tan","rhsusf_shemagh_od","rhsusf_shemagh2_od","rhsusf_shemagh_gogg_od","rhsusf_shemagh2_gogg_od","rhsusf_oakley_goggles_clr","G_Shades_Black","G_Bandanna_tan"];
_helmet = ["rhsusf_ach_bare_wood_headset_ess","rhsusf_ach_bare_wood_headset","rhsusf_ach_bare_wood_ess","rhsusf_ach_bare_wood"];
_OfficerHelmet = "rhs_8point_marpatwd";
_uniform = ["UK3CB_ADM_B_U_CombatUniform_01_MAR","UK3CB_ADM_B_U_CombatUniform_Shortsleeve_01_MAR"];
_vest = ["rhsusf_spc_light","rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_mg","rhsusf_spc_marksman","rhsusf_spc_patchless_radio","rhsusf_spc_rifleman","rhsusf_spc_sniper","rhsusf_spc_squadleader","rhsusf_spc"];
_backpack = ["rhsusf_falconii_coy_gr","rhsusf_assault_eagleaiii_coy"];
if (true) then {
	_backpackRadio = "FRXA_tf_rt1523g_big_MARPAT_Woodlaand";
};

if (_role in ["ftl","sl"]) then {
	_vest = "rhsusf_spc_teamleader";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_vest = "rhsusf_spc_corpsman";
	_backpack = "rhsusf_assault_eagleaiii_coy_medic";
};
if (_role in ["ar","mmg"]) then {
	_vest = "rhsusf_spc_mg";
	_backpack = "rhsusf_assault_eagleaiii_coy_mg";
};

if (_role isEqualTo "crew") then {
	_helmet = "rhsusf_cvc_green_helmet";
	_vest = "rhsusf_spc_crewman";
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

_silencer = "JCA_muzzle_snds_556_advanced_olive";
_pointer = "JCA_acc_DualMount_olive_Pointer";
_sight = "JCA_optic_IHO_olive";
_bipod = "JCA_bipod_04_olive";

_rifle = ["JCA_arifle_M4A4_VFG_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_M4A4_AFG_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["JCA_arifle_M4A4_GL_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["JCA_arifle_SR10_VFG_olive_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleC_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleC_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleL_mag = "JCA_20Rnd_762x51_Red_PMAG";
_rifleL_mag_tr = "JCA_20Rnd_762x51_Tracer_Red_PMAG";

_LMG = ["rhs_weap_m249_light_S", _silencer, "JCA_acc_LaserModule_olive_Pointer", _sight, "rhsusf_acc_grip4_bipod"];
_LMG_mag = "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch";

_MMG = ["UK3CB_BAF_L110_762", "UK3CB_BAF_Silencer_L110", "JCA_acc_LaserModule_olive_Pointer", _sight, _bipod];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

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

_pistol = ["JCA_hgun_P226_black_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "JCA_15Rnd_9x21_P226_Red_Mag";

_pdw = ["JCA_smg_UMP_black_F", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "JCA_25Rnd_45ACP_UMP_Red_Mag";
_pdw_mag_tr = "JCA_25Rnd_45ACP_UMP_Tracer_Red_Mag";

_silencer = "";
_pointer = "";
_rifleMarksman = ["UK3CB_M21_Bipod_Railed", _silencer, _pointer, "rhsusf_acc_ACOG2_USMC", ""];
_rifleMarksman_mag = "UK3CB_M14_20rnd_762x51_RT";
_rifleMarksman_mag_tr = "UK3CB_M14_20rnd_762x51_RT";