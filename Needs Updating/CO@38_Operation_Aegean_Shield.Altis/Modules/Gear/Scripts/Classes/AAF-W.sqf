
_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "insignia_block35";
_goggles = ["UK3CB_G_KLR_GRN","G_Headband_grn_F","G_Armband_aaf_alt_F","rhsusf_shemagh2_grn","rhsusf_shemagh_grn","rhsusf_shemagh_gogg_grn","rhsusf_shemagh2_gogg_grn","rhsusf_oakley_goggles_blk","rhs_balaclava1_olive","rhs_balaclava"];
_OfficerHelmet = "H_MilCap_dgtl";
_helmet =  ["H_HelmetIA"];
_uniform =  ["UK3CB_AAF_B_U_CombatUniform_DIGI_GRN","UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_GRN","UK3CB_AAF_B_U_JumperUniform_DIGI_GRN"];
_vest =  ["V_PlateCarrierIAGL_dgtl"];
_backpack = ["UK3CB_AAF_B_B_FIELDPACK_DIGI_GRN"];
_backpackRadio = ["TFAR_anprc155"];

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_AAF_B_B_CARRYALL_DIGI_GRN";
	_vest = "V_PlateCarrierIAGL_dgtl";
};
if(_role in ["ab","drone"]) then {
	_backpack = "B_Bergen_dgtl_F";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
	_vest = "V_PlateCarrierIA2_dgtl";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_I";
	_uniform = "UK3CB_AAF_I_U_H_Pilot_DIGI_GRN";
	_vest = "V_PlateCarrierIA1_dgtl";

};
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_I";
	_uniform = "UK3CB_AAF_I_U_J_Pilot_DIGI_GRN";
	_vest = "V_RebreatherIA";
	_backpack = "B_Parachute";
};

_silencer = "rhsusf_acc_SFMB556";
_pointer = "";
_sight = "optic_MRCO";
_bipod = "";

_rifle = ["arifle_MX_khk_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_MXC_khk_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["arifle_MX_GL_khk_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["arifle_MX_SW_khk_F", _silencer, _pointer, _sight, "JCA_bipod_04_olive"];
_rifle_mag = "30Rnd_65x39_caseless_khaki_mag";
_rifle_mag_tr = "30Rnd_65x39_caseless_khaki_mag_Tracer";
_rifleC_mag = "30Rnd_65x39_caseless_khaki_mag";
_rifleC_mag_tr = "30Rnd_65x39_caseless_khaki_mag_Tracer";
_rifleL_mag = "100Rnd_65x39_caseless_khaki_mag_tracer";
_rifleGL_mag = "30Rnd_65x39_caseless_khaki_mag";
_rifleGL_mag_tr = "30Rnd_65x39_caseless_khaki_mag_Tracer";

_LMG = ["LMG_Mk200_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_65x39_cased_Box_Tracer";

_MMG = ["LMG_Mk200_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "200Rnd_65x39_cased_Box_Tracer";

_LAT = ["UK3CB_BAF_NLAW_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_I_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_ACPC2_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "9Rnd_45ACP_Mag";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "muzzle_snds_B_khk_F";
_pointer = "acc_pointer_IR";
_sight = "optic_LRPS_tna_F";
_bipod = "bipod_03_F_oli";

_rifleMarksman = ["srifle_DMR_03_woodland_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_762x51_Mag";
_rifleMarksman_mag_tr = "20Rnd_762x51_Mag";
