_useMineDetector = false;
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
_goggles = "JCA_G_balaclava_01_olive_F";
_helmet = ["rhs_altyn","rhs_altyn_visordown","rhs_altyn_novisor_ess"] call BIS_fnc_selectRandom;
_OfficerHelmet = "UK3CB_ANA_B_H_OFF_Beret_GRN";
_uniform = ["rhsgref_uniform_ttsko_mountain"];
_vest = ["V_PlateCarrierIAGL_oli"];
_backpack = "B_ViperHarness_oli_F";
_backpackRadio = _backpack;

if (true) then {
	_backpackRadio = "UK3CB_ION_I_B_RadioBag_OLI";
};
if(_role in ["ftl","sl","g"]) then {
	_vest = "V_PlateCarrierIAGL_oli";
};
if(_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_oli";
	_vest = "V_PlateCarrierIAGL_oli";
};
if(_role in ["ar","mmg"]) then {
	_vest = "V_PlateCarrierIAGL_oli";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "rhs_zsh7a_mike_green_alt";
	_uniform = "rhsgref_uniform_ttsko_mountain";
	_vest = "UK3CB_V_MBAV_LIGHT_OLI";
};

if(_role isEqualTo "crew") then {
	_goggles = "";
	_vest = "UK3CB_V_MBAV_LIGHT_OLI";
};
if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "rhs_zsh7a";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};


_silencer = "rhs_acc_dtk2";
_pointer = "acc_flashlight";
_sight = "optic_MRCO";
_bipod = "rhsusf_acc_kac_grip";

_rifle = [["rhs_weap_ak74mr","rhs_weap_ak105_zenitco01_b33","UK3CB_AK12"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_AEK971", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["rhs_weap_ak74mr_gp25","UK3CB_AK12_GL"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_ak74mr", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "UK3CB_RPK74_60rnd_545x39_RM";
_rifle_mag_tr = "UK3CB_RPK74_60rnd_545x39_RT";
_rifleGL_mag = "UK3CB_RPK74_60rnd_545x39_RM";
_rifleGL_mag_tr = "UK3CB_RPK74_60rnd_545x39_RT";
_rifleL_mag = "UK3CB_RPK74_60rnd_545x39_RM";
_rifleL_mag_tr = "UK3CB_RPK74_60rnd_545x39_RT";

_LMG = ["UK3CB_BAF_L110_762", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_762_200Rnd_T";

_MMG = ["rhs_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "rhs_mag_maaws_HE";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["JCA_hgun_Mk23_olive_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "JCA_12Rnd_45ACP_Mk23_Tracer_Red_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svds", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";