_useMineDetector = false;
_allowedNightStuff = false;

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
_goggles = "Armband_Blue_medium";
_helmet = ["UK3CB_H_SSH60_Helmet_Covered_CDF"] call BIS_fnc_selectRandom;
_OfficerHelmet = "UK3CB_ANA_B_H_OFF_Beret_GRN";
_uniform = ["rhsgref_uniform_ttsko_mountain"];
_vest = ["UK3CB_MD12_VEST_KHK"];
_backpack = ["UK3CB_UN_B_B_ASS"];
_backpackRadio = _backpack;

if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_B_B_Alice_pack_frame_radio_01";
};

if(_role in ["ag","ammg"]) then {
	_backpack = ["UK3CB_B_Alice_pack_frame_02","UK3CB_B_Alice_pack_frame_01"];
};

if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "rhs_zsh7a_mike_green_alt";
	_uniform = "rhsgref_uniform_ttsko_mountain";
	_vest = "UK3CB_TKA_O_V_6b23_ml_crew_Oli";
};

if(_role isEqualTo "crew") then {
	_goggles = "";
	_vest = "UK3CB_TKA_O_V_6b23_ml_crew_Oli";
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


_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = [["rhs_weap_ak74m"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74un", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["rhs_weap_ak74m_gp25"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_ak74m", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_30Rnd_545x39_EP_ak_Black";
_rifle_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";
_rifleGL_mag = "hlc_30Rnd_545x39_EP_ak_Black";
_rifleGL_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";
_rifleL_mag = "hlc_30Rnd_545x39_EP_ak_Black";
_rifleL_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";

_LMG = ["LMG_03_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_F";

_MMG = ["rhs_weap_pkm", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_olive_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["rhs_weap_6p53", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_18rnd_9x21mm_7N28";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svds", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";