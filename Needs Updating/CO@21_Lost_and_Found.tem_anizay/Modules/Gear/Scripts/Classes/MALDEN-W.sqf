_useMineDetector = true;
_allowedNightStuff = true;

_insignia = "";
_goggles = "rhs_balaclava1_olive";
_helmet = ["rhssaf_helmet_m97_olive_nocamo_black_ess_bare","rhssaf_helmet_m97_olive_nocamo_black_ess","rhssaf_helmet_m97_olive_nocamo"];
_OfficerHelmet = "UK3CB_MDF_B_H_Off_Beret";
_uniform = "UK3CB_B_U_CombatUniform_03_WDL";
_vest = ["rhssaf_vest_md98_woodland","rhssaf_vest_md98_rifleman","rhssaf_vest_md99_woodland_rifleman_radio","rhssaf_vest_md99_woodland_rifleman","rhssaf_vest_md99_woodland_radio","rhssaf_vest_md99_woodland"];
_backpack = "UK3CB_ION_B_B_RIF_BLK_01";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "B_RadioBag_01_black_F";
};
if (_role in ["ag","ammg","sm"]) then {
	_backpack = "UK3CB_ION_B_B_RIF_MED_BLK";
};

if (_role in ["lr","ab"]) then {
	_backpack = "B_Carryall_blk";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
	_vest = "V_BandollierB_khk";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_TacVest_blk";
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
_pointer = "";
_sight = "optic_Hamr";
_bipod = "rhsusf_acc_grip1";

_rifle = ["rhs_weap_m4a1_carryhandle", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_m4a1_carryhandle", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_m4a1_carryhandle_m203S", _silencer, _pointer, _sight, "rhsusf_acc_grip_m203_blk"];
_rifleL = ["rhs_weap_m76", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_30rnd_556x45_SPR";
_rifle_mag_tr = "hlc_30rnd_556x45_t";
_rifleGL_mag = "hlc_30rnd_556x45_SPR";
_rifleGL_mag_tr = "hlc_30rnd_556x45_t";
_rifleL_mag = "rhsgref_10Rnd_792x57_m76";
_rifleL_mag_tr = "rhssaf_10Rnd_792x57_m76_tracer";

_LMG = ["UK3CB_BAF_L110A3", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_556_200Rnd_T";

_MMG = ["rhs_weap_m84", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhssaf_250Rnd_762x54R";

_sight = "";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_fim92_mag";

_pistol = ["UK3CB_CZ75", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "UK3CB_CZ75_9_20Rnd";

_pdw = ["rhs_weap_m92", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhssaf_30Rnd_762x39_M82_api";
_pdw_mag_tr = "rhssaf_30Rnd_762x39_M82_api";

_silencer = "";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["srifle_DMR_06_hunter_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_762x51_Mag";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
