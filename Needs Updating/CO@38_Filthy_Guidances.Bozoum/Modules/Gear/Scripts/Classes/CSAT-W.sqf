_useMineDetector = false;
_allowedNightStuff = true;

_goggles = "rhs_balaclava1_olive";
_helmet = "H_HelmetSpecO_ghex_F";
_OfficerHelmet = "H_Beret_CSAT_01_F";
_uniform = "U_O_T_Soldier_F";
_vest = selectRandom ["rhs_6sh117_svd","rhs_6sh117_rifleman","rhs_6sh117_val"];
_backpack = "B_FieldPack_ghex_F";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "TFAR_rt1523g_big_bwmod";
};

if(_role in ["pl","sl"]) then {
	_vest = "rhs_6sh117_nco_azart";
};
if(_role in ["tl"]) then {
	_vest = "rhs_6sh117_nco";
};
if(_role in ["g"]) then {
	_vest = "rhs_6sh117_grn";
};
if(_role in ["mmg"]) then {
	_vest = "rhs_6sh117_mg";
};
if(_role in ["ar"]) then {
	_vest = "rhs_6sh117_ar";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "B_Carryall_ghex_F";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_O_ghex_F";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_O";
	_uniform = "U_I_pilotCoveralls";
	_vest = "UK3CB_LDF_B_V_CREW_Vest_KKZ10_OLI";
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

_silencer = "";
_pointer = "";
_sight = "optic_arco_blk_f";
_bipod = "";

_rifle = ["arifle_CTAR_ghex_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_Katiba_C_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["arifle_CTAR_GL_ghex_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["arifle_ARX_ghex_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_580x42_Mag_F";
_rifle_mag_tr = "30Rnd_580x42_Mag_Tracer_F";
_rifleGL_mag = "30Rnd_580x42_Mag_F";
_rifleGL_mag_tr = "30Rnd_580x42_Mag_Tracer_F";
_rifleL_mag = "30Rnd_65x39_caseless_green";
_rifleL_mag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";
_rifleC_mag = "30Rnd_65x39_caseless_green";
_rifleC_mag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";

_LMG = ["UK3CB_BAF_L110_762", "uk3cb_baf_sffh", _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_762_200Rnd_T";

_MMG = ["LMG_Zafir_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "150Rnd_762x51_Box_Tracer";

_sight = "";

_LAT = ["rhs_weap_M136_hp", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = true;

_MAT = ["launch_RPG32_ghex_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG32_F";
_MAT_mag_HE = "RPG32_HE_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_O_Titan_ghex_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_Rook40_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "bipod_02_F_blk";

_rifleMarksman = ["srifle_DMR_05_hex_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "10Rnd_93x64_DMR_05_Mag";
_rifleMarksman_mag_tr = "10Rnd_93x64_DMR_05_Mag";
