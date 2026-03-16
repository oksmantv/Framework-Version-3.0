_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = "rhsusf_shemagh_tan";
_helmet = ["H_HelmetSpecB_sand"];
_OfficerHelmet = "rhsusf_patrolcap_ucp";
_uniform = "UK3CB_ADM_B_U_CombatUniform_01_MAR_DES";
_vest = "rhsusf_spc_rifleman";
_backpack = "B_Kitbag_cbr";
if (true) then {
	_backpackRadio = "tfw_ilbe_coy";
};

if (_role isEqualTo "sl") then {
	_vest = "rhsusf_spc_squadleader";
};

if(_role isEqualTo "ftl") then {
	_vest = "rhsusf_spc_teamleader";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_vest = "rhsusf_spc_corpsman";
	_backpack = "UK3CB_KRG_B_B_FieldPack_SF_MED";
};
if (_role in ["ar","mmg"]) then {
	_vest = "rhsusf_spc_mg";
};

if (_role isEqualTo "crew") then {
	_helmet = "rhsusf_cvc_green_alt_helmet";
	_vest = "rhsusf_spcs_ucp_crewman";
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

// Attachments
_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["JCA_arifle_M4A1_sand_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_M4A1_short_sand_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["JCA_arifle_M4A1_GL_sand_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m14_ris_d", _silencer, _pointer, "JCA_optic_ACOG_sand", _bipod];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleC_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleC_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleL_mag = "UK3CB_DMR_20rnd_762x51_R";
_rifleL_mag_tr = "UK3CB_M14_20rnd_762x51_RT";


_LMG = ["rhs_weap_m249_light_S", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhsusf_200rnd_556x45_mixed_box";

_MMG = ["rhs_weap_m240G", _silencer, _pointer, "JCA_optic_IHO_black_magnifier", ""];
_MMG_mag = "rhsusf_100Rnd_762x51_m62_tracer";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_sand_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["JCA_launch_Mk153_PWS_sand_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "JCA_MK153_HEAT_F";
_HAT_mag_HE = "JCA_MK153_HE_F";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["rhsusf_weap_m9", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_15Rnd_9x19_FMJ";

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
