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
_goggles = "rhsusf_shemagh_grn";
_helmet = ["UK3CB_H_M1_Helmet_Net_OLI","UK3CB_H_M1_Helmet_Covered_Band_OLI","UK3CB_H_M1_Helmet_Covered_OLI"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army_Off";
_uniform = ["UK3CB_LDF_B_U_CombatUniform_WDL_01","UK3CB_LDF_B_U_CombatUniform_Shortsleeve_WDL_01"];
_vest = "UK3CB_CW_US_B_LATE_V_PASGT_Rif_Vest";
_backpack = "UK3CB_B_TacticalPack_Oli";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_LDF_I_B_RadioBag_GEO";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_B_TacticalPack_Med_Oli";
};
if (_role isEqualTo "crew") then {
	_helmet = "UK3CB_LDF_B_H_CP04_GEO";
	_vest = "UK3CB_LDF_B_V_TacVest_GEO";
	_uniform = "UK3CB_LDF_B_U_Tank_Uniform_GEO";
	_goggles = "rhs_facewear_6m2_1";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_I_E";
	_uniform = "UK3CB_LDF_B_U_H_Pilot_GEO";
	_vest = "UK3CB_LDF_B_V_TacVest_GEO";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "UK3CB_LDF_B_U_J_Pilot_GEO";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["UK3CB_M16A1", _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_M16_Carbine", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["UK3CB_M16A2_UGL", _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_M16A1_LSW", _silencer, _pointer, "optic_AMS", ""];
_rifle_mag = "rhs_mag_30Rnd_556x45_M193_Stanag";
_rifle_mag_tr = "rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red";
_rifleC_mag = "rhs_mag_30Rnd_556x45_M193_Stanag";
_rifleC_mag_tr = "rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red";
_rifleGL_mag = "rhs_mag_30Rnd_556x45_M193_Stanag";
_rifleGL_mag_tr = "rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red";
_rifleL_mag = "rhs_mag_30Rnd_556x45_M193_Stanag";
_rifleL_mag_tr = "rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red";

_LMG = ["rhs_weap_m249", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhsusf_200rnd_556x45_M855_box";

_MMG = ["UK3CB_M60", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_sight = "";

_LAT = ["GOL_weap_RPG17_Type69", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "GOL_mag_rpg17_Type69";
_LAT_ReUsable = false;

_MAT = ["GOL_weap_RPG7_RHS", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "GOL_mag_rpg7_Type69";
_MAT_mag_HE = "rhs_rpg7_OG7V_mag";

_HAT = ["launch_I_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";


_pistol = ["UK3CB_BAF_L117A2", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "16Rnd_9x21_red_Mag";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_sight = "rhs_acc_pso1m21";
_rifleMarksman = ["rhs_weap_svdp", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_SVD_10rnd_762x54_RT";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_RT";
