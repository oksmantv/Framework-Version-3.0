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
_goggles = "rhs_facewear_6m2";
_helmet = ["UK3CB_CSAT_B_O_H_6b27m","UK3CB_CSAT_B_O_H_6b27m_ESS"];
_OfficerHelmet = "H_Beret_CSAT_01_F";
_uniform = ["UK3CB_CSAT_B_O_U_CombatUniform","UK3CB_CSAT_B_O_U_CombatUniform_Shortsleeve"];
_vest = "UK3CB_V_PlateCarrier1_brn";
_backpack = "UK3CB_CSAT_B_O_B_RIF";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_CSAT_B_O_B_RadioBag";
};

if(_role in ["sl","ftl","ag"]) then {
	_goggles = "rhs_facewear_6m2_1";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_CSAT_B_O_B_ENG";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_O";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_O";
	_uniform = "UK3CB_CSAT_B_O_U_H_Pilot";
	_vest = "UK3CB_V_PlateCarrier1_brn";
};
if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

// Attachments
_silencer = "rhs_acc_ak5";
_pointer = "";
_sight = "rhs_acc_1p78";
_bipod = "rhs_acc_grip_rk2";

_rifle = ["rhs_weap_ak74m_fullplum", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_AKS_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74m_fullplum_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_SVD_OLD", _silencer, _pointer, "rhs_acc_pso1m21", _bipod];
_rifle_mag = "rhs_30Rnd_545x39_7N10_plum_AK";
_rifle_mag_tr = "rhs_30Rnd_545x39_AK_plum_green";
_rifleC_mag = "rhs_30Rnd_545x39_7N10_plum_AK";
_rifleC_mag_tr = "rhs_30Rnd_545x39_AK_plum_green";
_rifleGL_mag = "rhs_30Rnd_545x39_7N10_plum_AK";
_rifleGL_mag_tr = "rhs_30Rnd_545x39_AK_plum_green";
_rifleL_mag = "rhs_10Rnd_762x54mmR_7N14";
_rifleL_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";

_LMG = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_RPK74_60rnd_545x39_GT";

_MMG = ["rhs_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_sight = "";

_LAT = ["rhs_weap_rpg18", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg18_mag";
_LAT_ReUsable = false;

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";

_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_O_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_Rook40_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "optic_SOS";
_bipod = "bipod_02_F_hex";

_rifleMarksman = ["rhs_weap_svdp_npz", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_SVD_10rnd_762x54_GT";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";
