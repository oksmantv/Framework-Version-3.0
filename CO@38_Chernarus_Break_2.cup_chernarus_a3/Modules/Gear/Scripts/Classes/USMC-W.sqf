_useMineDetector = false;
_allowedNightStuff = true;

_glHEDP = "3Rnd_HE_Grenade_shell";
_glsmokeW = "3Rnd_Smoke_Grenade_shell";
_glsmokeB = "3Rnd_SmokeBlue_Grenade_shell";
_glsmokeG = "3Rnd_SmokeGreen_Grenade_shell";
_glsmokeO = "3Rnd_SmokeOrange_Grenade_shell";
_glsmokeP = "3Rnd_SmokePurple_Grenade_shell";
_glsmokeR = "3Rnd_SmokeRed_Grenade_shell";
_glsmokeY = "3Rnd_SmokeYellow_Grenade_shell";

_glflareG = "3rnd_UGL_FlareGreen_Illumination_F";
_glflareR = "3rnd_UGL_FlareRed_Illumination_F";
_glflareW = "3rnd_UGL_FlareWhite_Illumination_F";

_insignia = "";
_goggles = ["JCA_G_balaclava_01_olive_F","rhsusf_shemagh_od","rhsusf_shemagh2_od","JCA_G_balaclava_01_olive_F","JCA_G_balaclava_01_olive_F","UK3CB_G_KR_TAN","UK3CB_G_KLR_TAN","rhsusf_oakley_goggles_blk","rhsusf_oakley_goggles_clr"];
_helmet = ["rhsusf_mich_bare_norotos_alt","rhsusf_mich_bare_norotos","rhsusf_mich_bare_norotos_alt_headset","rhsusf_mich_bare_norotos_arc","rhsusf_mich_bare_norotos_arc_alt_headset","rhsusf_mich_bare_norotos_headset"];
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

_silencer = "ACE_muzzle_mzls_H";
_pointer = "JCA_acc_flashlight_tactical_black";
_sight = "JCA_optic_IHO_black_magnifier";
_bipod = "rhsusf_acc_harris_bipod";

_rifle = ["arifle_MX_SW_Black_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_MX_Black_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["arifle_MX_GL_Black_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["JCA_arifle_SR10_AFG_black_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_65x39_caseless_black_mag";
_rifle_mag_tr = "30Rnd_65x39_caseless_black_mag_Tracer";
_rifleGL_mag = "30Rnd_65x39_caseless_black_mag";
_rifleGL_mag_tr = "30Rnd_65x39_caseless_black_mag_Tracer";
_rifleC_mag = "30Rnd_65x39_caseless_black_mag";
_rifleC_mag_tr = "30Rnd_65x39_caseless_black_mag_Tracer";
_rifleL_mag = "JCA_20Rnd_762x51_Red_PMAG";
_rifleL_mag_tr = "JCA_20Rnd_762x51_Tracer_Red_PMAG";

_LMG = ["GOL_arifle_MX_SW_Black_F", _silencer, _pointer, "JCA_optic_IHO_black_magnifier", _bipod];
_LMG_mag = "100Rnd_65x39_caseless_black_mag_tracer";

_MMG = ["GOL_MMG_02_black_F", _silencer, _pointer, "JCA_optic_IHO_black_magnifier", _bipod];
_MMG_mag = "130Rnd_338_Mag";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["JCA_hgun_Mk23_olive_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "JCA_12Rnd_45ACP_Mk23_Tracer_Red_Mag";

_pdw = ["JCA_smg_UMP_black_F", _silencer, _pointer, "JCA_optic_ARO_black", _bipod];
_pdw_mag = "JCA_25Rnd_45ACP_UMP_Red_Mag";
_pdw_mag_tr = "JCA_25Rnd_45ACP_UMP_Tracer_Red_Mag";

_silencer = "";
_pointer = "";
_rifleMarksman = ["JCA_arifle_SR25_black_F", "JCA_muzzle_snds_762_tactical_black", _pointer, "JCA_optic_CRBS_black", "JCA_bipod_04_black"];
_rifleMarksman_mag = "JCA_20Rnd_762x51_Red_SMAG";
_rifleMarksman_mag_tr = "JCA_20Rnd_762x51_Tracer_Red_SMAG";