_useMineDetector = true;
_allowedNightStuff = true;

_insignia = "GOL_Insignia_PZG371";
_goggles = "JCA_G_balaclava_01_sand_F";
_helmet = "acp_gol_DE_Tropentarn_H_HelmetSpecB_DE_Tropentarn";
_OfficerHelmet = "UK3CB_LNM_B_H_BoonieHat_FLK_03";
_uniform = ["acp_gol_DE_Tropentarn_U_I_CombatUniform_DE_Tropentarn"];
_vest = [
	"acp_gol_DE_Tropentarn_V_CarrierRigKBT_01_light_DE_Tropentarn_F",
	"acp_gol_DE_Tropentarn_V_CarrierRigKBT_01_DE_Tropentarn_F",
	"acp_gol_DE_Tropentarn_V_PlateCarrier1_DE_Tropentarn_insignia",
	//"acp_gol_DE_Tropentarn_V_PlateCarrierSpec_DE_Tropentarn_insignia",
	"acp_gol_DE_Tropentarn_V_PlateCarrier2_DE_Tropentarn_insignia"
	//"acp_gol_DE_Tropentarn_V_PlateCarrierGL_DE_Tropentarn_insignia"
];
_backpack = "acp_gol_DE_Tropentarn_B_AssaultPackEnhanced_DE_Tropentarn_insignia";
_backpackRadio = _backpack;

if (true) then {
	_backpackRadio = "acp_gol_DE_Tropentarn_B_RadioBag_01_DE_Tropentarn_F";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "acp_gol_DE_Tropentarn_B_Kitbag_rgr_DE_Tropentarn";
};

if (_role isEqualTo "crew") then {
	_backpack = "acp_gol_DE_Tropentarn_B_AssaultPackEnhanced_DE_Tropentarn_insignia";
	_uniform = "acp_gol_DE_Tropentarn_U_O_officer_noInsignia_DE_Tropentarn_F_insignia";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p_visor";
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
_silencer = "rhsusf_acc_SFMB556";
_pointer = "";
_sight = "optic_Arco_blk_F";
_bipod = "JCA_bipod_04_black";

// Primary Weapon
_rifle = ["GOL_arifle_HK437_VFG_black_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["GOL_arifle_HK437_AFG_black_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_hk416d10_m320", _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_PSG1A1_RIS", _silencer, _pointer, "JCA_optic_AICO_black", _bipod];
_rifle_mag = "GOL_30Rnd_556x45_AP45_Reload_Tracer_Red";
_rifle_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleGL_mag = "GOL_30Rnd_556x45_AP45_Reload_Tracer_Red";
_rifleGL_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleC_mag = "GOL_30Rnd_556x45_AP45_Reload_Tracer_Red";
_rifleC_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleL_mag = "ACE_20Rnd_762x51_M993_AP_Mag";
_rifleL_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";

_LMG = ["GOL_MMG_01_tan_F", _silencer, _pointer, "optic_Arco_blk_F", "bipod_01_F_blk"];
_LMG_mag = "GOL_200Rnd_93x64_Mag_SLAP_Tracer_Red";

_MMG = ["GOL_MG3_KWS_B", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "GOL_MG3_250Rnd_762x51_M993_Tracer_Red";

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

_silencer = "";
_pointer = "";
_sight = "rhsusf_acc_ACOG_USMC";
_bipod = "JCA_bipod_04_black";

_rifleMarksman = ["UK3CB_PSG1A1_RIS", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "ACE_20Rnd_762x51_Mag_Tracer";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";