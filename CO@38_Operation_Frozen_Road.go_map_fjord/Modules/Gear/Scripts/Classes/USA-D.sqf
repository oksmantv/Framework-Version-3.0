_useMineDetector = false;
_allowedNightStuff = false;

_goggles = "UK3CB_G_Balaclava_Win";
_helmet = ["UK3CB_ION_B_H_OPSCORE_PELT_WIN","UK3CB_ION_B_H_OPSCORE_WIN"];
_OfficerHelmet = "rhsusf_patrolcap_ucp";
_uniform = "UK3CB_ION_B_U_CombatSmock_01_WIN";
_vest = ["UK3CB_V_MBAV_LIGHT_WIN","UK3CB_V_MBAV_RIFLEMAN_WIN"];
_backpack = "UK3CB_ION_B_B_RIF_WIN_01";
if (true) then {
	_backpackRadio = "UK3CB_B_O_RadioBag_WIN";
};

if (_role isEqualTo "sl") then {
	_vest = "UK3CB_V_MBAV_GRENADIER_WIN";
};

if(_role isEqualTo "ftl") then {
	_vest = "UK3CB_V_MBAV_GRENADIER_WIN";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_vest = "UK3CB_V_MBAV_MEDIC_WIN";
	_backpack = "UK3CB_ION_B_B_RIF_MED_WIN";
};
if (_role in ["ar","mmg"]) then {
	_vest = "UK3CB_V_MBAV_MG_WIN";
};

if (_role isEqualTo "crew") then {
	_helmet = "rhsusf_cvc_green_alt_helmet";
	_vest = "UK3CB_V_MBAV_WIN";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p_white";
	_vest = "UK3CB_V_MBAV_WIN";
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
_sight = "JCA_optic_AICO_black";
_bipod = "JCA_bipod_04_black";

_rifle = ["JCA_arifle_HK433_black_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_HK433_short_black_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["JCA_arifle_HK433_black_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m16a4_imod", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleC_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleC_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";


_LMG = ["UK3CB_BAF_L110_762", "UK3CB_BAF_Silencer_L110", _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_762_100Rnd_T";

_MMG = ["UK3CB_BAF_L110_762", _silencer, _pointer, _sight, ""];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_olive_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

if(_role in ["ftl","fac","sl","pl","g","amat"]) then {
	_pistol = ["rhs_weap_M320", _silencer, _pointer, _sight, _bipod];
	_pistol_mag = "rhs_mag_M441_HE";
} else {
	_pistol = ["rhsusf_weap_m9", _silencer, _pointer, _sight, _bipod];
	_pistol_mag = "rhsusf_mag_15Rnd_9x19_FMJ";
};

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
