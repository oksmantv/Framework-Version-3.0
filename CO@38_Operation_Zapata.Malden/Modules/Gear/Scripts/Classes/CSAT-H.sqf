_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = "rhs_facewear_6m2";
_helmet = ["UK3CB_CSAT_M_O_H_6b27m_ESS","UK3CB_CSAT_M_O_H_6b27m"];
_OfficerHelmet = "H_Beret_CSAT_01_F";
_uniform = ["UK3CB_CSAT_M_O_U_CombatUniform","UK3CB_CSAT_M_O_U_CombatUniform_Shortsleeve"];
_vest = "UK3CB_CSAT_M_O_V_Carrier_Rig_Tactical";
_backpack = "UK3CB_CSAT_M_O_B_RIF";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_CSAT_M_O_B_RadioBag";
};

if(_role in ["sl","ftl","ag","atab"]) then {
	_goggles = "rhs_facewear_6m2_1";
	_uniform = "UK3CB_CSAT_M_O_U_Officer";
};

if (_role in ["ag","atab","ammg","lr","ab"]) then {
	_backpack = "UK3CB_CSAT_M_O_B_ENG";
};
if (_role isEqualTo "crew") then {
	_helmet = "UK3CB_CSAT_M_O_H_SSh68_Covered";
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
_silencer = "rhs_acc_uuk";
_pointer = "acc_flashlight";
_sight = "rhsusf_acc_su230";
_bipod = "rhs_acc_grip_rk2";

_rifle = ["JCA_arifle_HK433_black_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_HK433_black_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["UK3CB_HK33KA2_RIS_GL", _silencer, _pointer, _sight, _bipod];
_rifleL = ["JCA_arifle_SR10_VFG_black_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "JCA_30Rnd_556x45_Green_EMAG";
_rifle_mag_tr = "JCA_30Rnd_556x45_Tracer_Green_EMAG";
_rifleC_mag = "JCA_30Rnd_556x45_Green_EMAG";
_rifleC_mag_tr = "JCA_30Rnd_556x45_Tracer_Green_EMAG";
_rifleGL_mag = "UK3CB_HK33_30rnd_556x45_G";
_rifleGL_mag_tr = "UK3CB_HK33_30rnd_556x45_GT";
_rifleL_mag = "JCA_20Rnd_762x51_Yellow_SMAG";
_rifleL_mag_tr = "JCA_20Rnd_762x51_Tracer_Yellow_SMAG";

_LMG = ["arifle_CTARS_blk_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_DBP88_100rnd_580x42_YM";

_MMG = ["MMG_01_tan_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "150Rnd_93x64_Mag";

_sight = "";

_LAT = ["rhs_weap_rpg26", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg26_mag";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_maaws", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

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
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svdp_wd_npz", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_SVD_10rnd_762x54_GT";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";
