_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "insignia_block78";
_goggles = "JCA_G_balaclava_01_sand_F";
_helmet = ["rhsusf_mich_bare_alt","rhsusf_mich_bare_headset","rhsusf_mich_bare_alt","rhsusf_mich_bare"];
_OfficerHelmet = "rhs_8point_marpatwd";
_uniform = "rhs_uniform_g3_mc";
_vest = "rhsusf_plateframe_rifleman";
_backpack = "B_Kitbag_mcamo";
if (true) then {
	_backpackRadio = "TFAR_mr3000_multicam";
};

if (_role in ["ftl","sl"]) then {
	_vest = "rhsusf_plateframe_teamleader";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_vest = "rhsusf_plateframe_medic";
	_backpack = "UK3CB_GAF_B_B_ENG_MULTICAM_01";
};
if (_role in ["ar","mmg"]) then {
	_vest = "rhsusf_plateframe_machinegunner";
	_backpack = "UK3CB_GAF_B_B_ENG_MULTICAM_01";
};

if (_role isEqualTo "crew") then {
	_helmet = "rhsusf_cvc_green_alt_helmet";
	_vest = "rhsusf_plateframe_light";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p";
	_vest = "rhsusf_plateframe_sapi";
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
_sight = "JCA_optic_ACOG_black";
_bipod = "";

_rifle = ["JCA_arifle_M4A4_VFG_black_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_M4A4_VFG_black_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["JCA_arifle_M4A4_GL_black_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m27iar_grip", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifle_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleGL_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleGL_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleC_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleC_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleL_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleL_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";

_LMG = ["GOL_weap_m249_pip", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "GOL_rhsusf_200rnd_556x45_AP45_tracer_red";

_MMG = ["GOL_MMG_02_black_F", _silencer, _pointer, _sight, ""];
_MMG_mag = "GOL_200Rnd_338_AP_Tracer_Red";

_LAT = ["JCA_launch_M72_sand_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["rhsusf_weap_m9", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_15Rnd_9x19_FMJ";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_rifleMarksman = ["UK3CB_M21_Bipod_Railed", _silencer, _pointer, "rhsusf_acc_ACOG2_USMC", ""];
_rifleMarksman_mag = "UK3CB_M14_20rnd_762x51_RT";
_rifleMarksman_mag_tr = "UK3CB_M14_20rnd_762x51_RT";
