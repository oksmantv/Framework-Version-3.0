

_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "insignia_block35";
_goggles = "rhs_balaclava1_olive";
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army_Off";
_helmet = selectRandom ["UK3CB_AAF_I_H_MKVI_Helmet_B_GRN","UK3CB_AAF_I_H_MKVI_Helmet_A_GRN"];
_uniform = selectRandom ["UK3CB_AAF_B_U_CombatUniform_DIGI_GRN","UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_GRN","UK3CB_AAF_B_U_JumperUniform_DIGI_GRN"];
_vest = selectRandom ["UK3CB_V_Falcon_6","UK3CB_AAF_I_V_Falcon_7_DIGI_GRN","UK3CB_V_Falcon_5"];
_backpack = "UK3CB_AAF_B_B_FIELDPACK_DIGI_GRN";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "TFAR_anprc155";
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_AAF_B_B_CARRYALL_DIGI_GRN";
	_vest = "UK3CB_V_Falcon_9";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
	_vest = "UK3CB_AAF_I_V_Falcon_1_DIGI_GRN";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_I";
	_uniform = "U_I_HeliPilotCoveralls";
	_vest = "UK3CB_AAF_I_V_Falcon_1_DIGI_GRN";

};
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "rhsusf_acc_sfmb556";
_pointer = "hlc_acc_flashlight_pcap";
_sight = "hlc_optic_ism_pcap";
_bipod = "";

_rifle = ["HLC_rifle_XM8_Carbine_Green", _silencer, _pointer, _sight, _bipod];
_rifleC = ["HLC_rifle_XM8_Compact_Green", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["HLC_rifle_XM8_Carbine_GL_green", _silencer, _pointer, _sight, _bipod];
_rifleL = ["HLC_rifle_XM8_DMAR_Green", _silencer, _pointer, "hlc_optic_amo_pcap", _bipod];
_rifle_mag = "rhssaf_30rnd_556x45_SOST_G36";
_rifle_mag_tr = "rhssaf_30rnd_556x45_Tracers_G36";
_rifleL_mag = "rhssaf_30rnd_556x45_SOST_G36";
_rifleL_mag_tr = "rhssaf_30rnd_556x45_Tracers_G36";
_rifleC_mag = "rhssaf_30rnd_556x45_SOST_G36";
_rifleC_mag_tr = "rhssaf_30rnd_556x45_Tracers_G36";
_rifleGL_mag = "rhssaf_30rnd_556x45_SOST_G36";
_rifleGL_mag_tr = "rhssaf_30rnd_556x45_Tracers_G36";

_LMG = ["UK3CB_M60", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "hlc_200Rnd_762x51_T_M60E4";

_MMG = ["hlc_lmg_MG3KWS_b", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "hlc_200Rnd_762x51_T_M60E4";

_LAT = ["UK3CB_BAF_NLAW_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_maaws", _silencer, _pointer, "rhs_optic_maaws", _bipod];
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
