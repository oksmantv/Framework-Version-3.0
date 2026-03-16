_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["G_Balaclava_TI_blk_F","G_Balaclava_TI_G_blk_F"];
_helmet = "acp_gol_DE_Tropentarn_H_HelmetSpecB_DE_Tropentarn_insignia";
_OfficerHelmet = "UK3CB_LNM_B_H_BoonieHat_FLK_03";
_uniform = ["acp_gol_DE_Tropentarn_U_I_CombatUniform_DE_Tropentarn","acp_gol_DE_Tropentarn_U_I_CombatUniform_shortsleeve_DE_Tropentarn","acp_gol_DE_Tropentarn_U_I_E_Uniform_DE_Tropentarn_01_F","acp_gol_DE_Tropentarn_U_I_E_Uniform_shortsleeve_DE_Tropentarn_01_F"];
_vest = ["acp_gol_DE_Tropentarn_V_CarrierRigKBT_01_light_DE_Tropentarn_F","acp_gol_DE_Tropentarn_V_PlateCarrier2_DE_Tropentarn","acp_gol_DE_Tropentarn_V_PlateCarrier1_DE_Tropentarn"];
_backpack = "acp_gol_DE_Tropentarn_B_AssaultPackEnhanced_DE_Tropentarn_insignia";
_backpackRadio = _backpack;

if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "acp_gol_DE_Tropentarn_B_RadioBag_01_DE_Tropentarn_F";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "acp_gol_DE_Tropentarn_B_Kitbag_rgr_DE_Tropentarn";
};

if (_role isEqualTo "crew") then {
	_vest = "acp_gol_DE_Tropentarn_V_PlateCarrier2_DE_Tropentarn_insignia";
	_backpack = "acp_gol_DE_Tropentarn_B_AssaultPackEnhanced_DE_Tropentarn_insignia";
	_uniform = "acp_gol_DE_Tropentarn_U_I_E_Uniform_sweater_DE_Tropentarn_01_F_insignia";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p_visor";
	_vest = "";
	_uniform = "acp_gol_DE_Tropentarn_U_O_PilotCoveralls_DE_Tropentarn";
};
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "acp_gol_DE_Tropentarn_U_O_PilotCoveralls_DE_Tropentarn";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

// Attachments
_silencer = "";
_pointer = "acc_flashlight";
_sight = "rhsusf_acc_compm4";
_bipod = "rhsusf_acc_kac_grip";

// Primary Weapon
_rifle = ["rhs_weap_g36kv", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_g36c", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_g36kv_ag36", _silencer, _pointer, _sight, _bipod];
_rifleL = ["hlc_rifle_g3sg1ris", _silencer, _pointer, "optic_hamr", _bipod];
_rifle_mag = "rhssaf_30rnd_556x45_SOST_G36";
_rifle_mag_tr = "rhssaf_30rnd_556x45_Tracers_G36";
_rifleGL_mag = "rhssaf_30rnd_556x45_SOST_G36";
_rifleGL_mag_tr = "rhssaf_30rnd_556x45_Tracers_G36";
_rifleC_mag = "rhssaf_30rnd_556x45_SOST_G36";
_rifleC_mag_tr = "rhssaf_30rnd_556x45_Tracers_G36";
_rifleL_mag = "hlc_20rnd_762x51_b_G3";
_rifleL_mag_tr = "hlc_20rnd_762x51_T_G3";

_LMG = ["LMG_03_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["hlc_lmg_MG3KWS_b", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "hlc_200Rnd_762x51_T_M60E4";

// Launchers
_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_I_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

// Pistol
_pistol = ["rhsusf_weap_glock17g4", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_17Rnd_9x19_JHP";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_rifleMarksman = ["hlc_rifle_psg1A1", _silencer, _pointer, "hlc_optic_accupoint_g3", "bipod_01_F_blk"];
_rifleMarksman_mag = "hlc_20rnd_762x51_Mk316_G3";
_rifleMarksman_mag_tr = "hlc_20rnd_762x51_T_G3";
