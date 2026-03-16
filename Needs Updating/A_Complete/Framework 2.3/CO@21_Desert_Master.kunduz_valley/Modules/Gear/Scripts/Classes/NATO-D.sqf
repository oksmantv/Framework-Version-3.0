_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "111thID";
_goggles = ["Armband_Green_xl","Armband_Red_xl","Armband_Yellow_xl"];
_helmet = ["H_HelmetSpecB"];
_OfficerHelmet = "rhsusf_patrolcap_ocp";
_uniform = ["U_B_CombatUniform_mcam"];
_vest = ["V_PlateCarrierSpec_mtp"];
_backpack = "B_Kitbag_mcamo";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "B_RadioBag_01_mtp_F";
};

if(_role in ["sl"]) then {
	_goggles = "Armband_Green_xl";
};

if(_role in ["ftl"]) then {
	_goggles = "Armband_Green_xl";
};

if(_role isEqualTo "g") then {
	_goggles = "Armband_Red_xl";
};

if(_role isEqualTo "r") then {
	_goggles = "Armband_Red_xl";
};

if(_role in ["ar","mmg"]) then {
	_goggles = "Armband_Blue_xl";
};

if (_role in ["sm"]) then {
	_backpack = "UK3CB_ION_B_B_RIF_MED_BRN";
	_goggles = "Armband_Green_xl";
	_vest = "rhsusf_spcs_ocp_medic";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "B_Carryall_mcamo";
	_goggles = "Armband_Blue_xl";
	_vest = "rhsusf_spcs_ocp_medic";
};

if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
	_goggles = "Armband_Yellow_xl";
	_vest = "rhsusf_spcs_ocp_crewman";
};

if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "rhsusf_spcs_ocp";
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
_pointer = "JCA_acc_LaserModule_sand_Pointer";
_sight = "";
_bipod = "bipod_01_f_blk";

_rifle = ["arifle_MX_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_MXC_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["arifle_MX_GL_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["arifle_MXM_F", _silencer, _pointer, _sight, "JCA_bipod_04_sand"];
_rifle_mag = "30Rnd_65x39_caseless_mag";
_rifle_mag_tr = "30Rnd_65x39_caseless_mag_Tracer";
_rifleGL_mag = "30Rnd_65x39_caseless_mag";
_rifleGL_mag_tr = "30Rnd_65x39_caseless_mag_Tracer";
_rifleL_mag = "30Rnd_65x39_caseless_mag";
_rifleL_mag_tr = "30Rnd_65x39_caseless_mag_Tracer";

_LMG = ["arifle_MX_SW_F", _silencer, _pointer, _sight, "JCA_bipod_04_sand"];
_LMG_mag = "100Rnd_65x39_caseless_mag_Tracer";

_MMG = ["rhs_weap_m249_pip_L", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhsusf_200rnd_556x45_mixed_box";

_sight = "";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_B_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["launch_B_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_Pistol_heavy_01_F", _silencer, _pointer, "optic_MRD", _bipod];
_pistol_mag = "11Rnd_45ACP_Mag";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["srifle_DMR_06_hunter_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_762x51_Mag";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
