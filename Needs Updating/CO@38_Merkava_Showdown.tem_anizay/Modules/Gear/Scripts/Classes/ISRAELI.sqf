_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["G_Balaclava_TI_blk_F","UK3CB_G_Gloves_Black_Shemagh_Green_Headset","UK3CB_G_KLR_BLK","UK3CB_G_KL_BLK","rhsusf_shemagh_od","rhsusf_shemagh2_od","rhsusf_shemagh_gogg_od","rhsusf_shemagh2_gogg_od","UK3CB_G_Tactical_Black_Gloves_Black","UK3CB_G_Tactical_Gloves_Black","UK3CB_G_Tactical_Gloves_Black_Shemagh_Green","rhs_googles_black"];
_helmet = ["rhsusf_opscore_rg_cover","rhsusf_opscore_rg_cover_pelt","rhsusf_opscore_fg","rhsusf_opscore_fg_pelt","rhsusf_opscore_fg_pelt_cam","rhsusf_opscore_fg_pelt_nsw"];
_OfficerHelmet = "acp_gol_IL_IDF_H_Cap_IL_IDF_hs";
_uniform = ["UK3CB_CW_US_B_Early_U_CombatUniform_02_OLI","UK3CB_CW_US_B_Early_U_CombatUniform_01_OLI"];
_vest = ["UK3CB_LDF_B_V_TL_Vest_KKZ10_OLI","UK3CB_LDF_B_V_LMG_Vest_KKZ10_OLI","UK3CB_LDF_B_V_SL_Vest_KKZ10_OLI","UK3CB_LDF_B_V_RIF_Vest_KKZ10_OLI","UK3CB_LDF_B_V_RIF_ALT_Vest_KKZ10_OLI","UK3CB_LDF_B_V_MD_Vest_KKZ10_OLI","UK3CB_LDF_B_V_MK_Vest_KKZ10_OLI","UK3CB_LDF_B_V_MG_Vest_KKZ10_OLI","UK3CB_LDF_B_V_GREN_Vest_KKZ10_OLI","V_CarrierRigKBT_01_heavy_Olive_F"];
_backpack = ["UK3CB_ION_B_B_ASS_OLI_01","UK3CB_ION_B_B_RIF_OLI_01"];
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_ION_B_B_RadioBag_OLI";
};

if (_role in ["ag","ammg","sm","lr","ab"]) then {
	_backpack = "UK3CB_ION_B_B_RIF_MED_OLI";
};

if (_role in ["ar","mmg"]) then {
	_backpack = "UK3CB_ION_B_B_RIF_MED_OLI";
};

if (_role isEqualTo "crew") then {
	_vest = "UK3CB_LDF_B_V_CREW_Vest_KKZ10_OLI";
	_helmet = "H_HelmetCrew_I";
	_uniform = "UK3CB_CW_US_B_Early_U_CombatUniform_02_OLI";
};
if (_role isEqualTo "p") then {
	_uniform = "UK3CB_CW_US_B_Early_U_CombatUniform_02_OLI";
	_helmet = "rhsusf_hgu56p_visor_black";
	_vest = "UK3CB_LDF_B_V_CREW_Vest_KKZ10_OLI";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "acp_gol_IL_IDF_U_O_PilotCoveralls_IL_IDF";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

// Attachments
_silencer = "rhsusf_acc_sfmb556";
_pointer = "hlc_panel_side_cqbr_ladder_l_black";
_sight = "optic_hamr";
_bipod = "hlc_grip_pmvfg_black";

// Primary Weapon
_rifle = ["hlc_rifle_M4", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_rifle_CQBR", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_rifle_m4m203", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m14_fiberglass", _silencer, _pointer, _sight, "rhsusf_acc_harris_bipod"];
_rifleMarksman = ["rhs_weap_sr25_ec", _silencer, _pointer, "optic_dms", "bipod_01_f_blk"];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleL_mag = "rhsusf_20Rnd_762x51_m118_special_Mag";
_rifleL_mag_tr = "rhsusf_20Rnd_762x51_m62_Mag";

_rifleMarksman_mag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
_rifleMarksman_mag_tr = "rhsusf_20Rnd_762x51_SR25_m62_Mag";

_LMG = ["LMG_03_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["rhs_weap_fnmag", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "hlc_200Rnd_762x51_T_M60E4";

// Launchers
_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_LAT = ["UK3CB_BAF_NLAW_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_I_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

// Pistol
_pistol = ["rhsusf_weap_m9", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_15Rnd_9x19_FMJ";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";
