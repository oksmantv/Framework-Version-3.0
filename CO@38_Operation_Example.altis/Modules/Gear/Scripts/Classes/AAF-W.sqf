
_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "insignia_block35";
_goggles = ["JCA_G_balaclava_01_sand_F"];
_OfficerHelmet = "H_MilCap_dgtl";
_helmet =  ["UK3CB_AAF_B_H_PASGT_DIGI_BRN"];
_uniform =  ["UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_BRN","UK3CB_AAF_B_U_CombatUniform_DIGI_BRN"];
_vest =  ["UK3CB_AAF_I_V_Falcon_8_DIGI_BRN","UK3CB_AAF_I_V_Falcon_7_DIGI_BRN","UK3CB_AAF_I_V_Falcon_4_DIGI_BRN","UK3CB_AAF_I_V_Falcon_3_DIGI_BRN"];
_backpack = ["UK3CB_AAF_B_B_FIELDPACK_DIGI_BRN"];
_backpackRadio = ["UK3CB_ION_I_B_RadioBag_BRN"];

if (_role in ["ag","ammg","lr","ab","atab"]) then {
	_backpack = "UK3CB_AAF_B_B_CARRYALL_DIGI_BRN";
	_vest = "UK3CB_AAF_I_V_Falcon_5_DIGI_BRN";
};
if(_role in ["ab","atab"]) then {
	_backpack = "B_Bergen_dgtl_F";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
	_vest = "UK3CB_AAF_I_V_Falcon_1_DIGI_BRN";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_I";
	_uniform = "UK3CB_AAF_I_U_H_Pilot_DIGI_GRN";
	_vest = "UK3CB_AAF_I_V_Falcon_1_DIGI_BRN";

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

_rifle = ["arifle_Mk20_plain_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_Mk20C_plain_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["arifle_Mk20_GL_plain_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["arifle_Mk20_plain_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifle_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleGL_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleGL_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleL_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleL_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleC_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleC_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";

_LMG = ["GOL_LMG_Zafir_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "150Rnd_762x54_Box_Tracer_Red";

_MMG = ["LMG_Mk200_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "200Rnd_65x39_cased_Box_Tracer_Red";

_LAT = ["JCA_launch_M72_sand_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_sand_rail_F", _silencer, _pointer, _sight, _bipod];
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
_sight = "rhsusf_acc_ACOG_RMR";
_bipod = "bipod_03_F_oli";

_rifleMarksman = ["srifle_DMR_03_woodland_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "ACE_20Rnd_762x51_Mag_Tracer";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
