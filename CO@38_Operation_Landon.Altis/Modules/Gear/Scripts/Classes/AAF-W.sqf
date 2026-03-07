
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

if (_role in ["ag","ammg","lr","ab","atab"]) then {
	_backpack = "UK3CB_AAF_B_B_CARRYALL_DIGI_GRN";
	_vest = "V_PlateCarrierIAGL_dgtl";
};
if(_role in ["ab","atab"]) then {
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

_silencer = "JCA_muzzle_snds_556_Enhanced_olive";
_pointer = "";
_sight = "JCA_optic_ICO_olive";
_bipod = "rhs_acc_grip_ffg2";

_rifle = ["rhs_weap_m4a1_wd", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_m4a1_wd", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_m4a1_m203s_wd", _silencer, _pointer, _sight, "rhsusf_acc_grip_m203_wd"];
_rifleL = ["rhs_weap_m4a1_blockII_wd", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "GOL_30Rnd_556x45_AP45";
_rifle_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleGL_mag = "GOL_30Rnd_556x45_AP45";
_rifleGL_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleL_mag = "GOL_30Rnd_556x45_AP45";
_rifleL_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleC_mag = "GOL_30Rnd_556x45_AP45";
_rifleC_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";

_LMG = ["GOL_MMG_02_black_F", "muzzle_snds_338_black", _pointer, "JCA_optic_CRO_black", "JCA_bipod_04_black"];
_LMG_mag = "GOL_130Rnd_338_Mag_red";

_MMG = ["GOL_MMG_02_black_F", "muzzle_snds_338_black", _pointer, "JCA_optic_CRO_black", "JCA_bipod_04_black"];
_MMG_mag = "GOL_130Rnd_338_Mag_red";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
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
_sight = "rhsusf_acc_ACOG_RMR";
_bipod = "bipod_03_F_oli";

_rifleMarksman = ["srifle_DMR_03_woodland_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "ACE_20Rnd_762x51_Mag_Tracer";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
