_useMineDetector = false;
_allowedNightStuff = false;

_insignia = "";
_goggles = ["rhsusf_oakley_goggles_clr","rhsusf_shemagh_grn","UK3CB_G_KLR_GRN","UK3CB_G_Neck_Shemag_KLR_GRN","rhsusf_oakley_goggles_clr","rhsusf_shemagh_grn"];
_helmet = ["rhsgref_helmet_pasgt_3color_desert"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army_Off";
_uniform = ["rhsgref_uniform_3color_desert"];
_vest = ["UK3CB_CW_US_B_LATE_V_PASGT_Crew_Vest","UK3CB_CW_US_B_LATE_V_PASGT_Medic_Vest","UK3CB_CW_US_B_LATE_V_PASGT_MG_Vest","UK3CB_CW_US_B_LATE_V_PASGT_Rif_Vest"];
_backpack = ["UK3CB_B_Alice_pack_01","UK3CB_B_Alice_pack_02","UK3CB_B_Alice_pack_03"];
if (true) then {
	_backpackRadio = "UK3CB_B_B_Alice_pack_frame_radio_01";
};

if (_role in ["ag","ammg","lr","ab","hat","ahat"]) then {
	_backpack = "UK3CB_B_Alice_pack_04";
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_Medic_Vest";
};

if (_role isEqualTo "crew") then {
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_Crew_Vest";
};
if (_role isEqualTo "p") then {
	_helmet = "UK3CB_H_Pilot_Helmet";
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
_sight = "";
_bipod = "";

_rifle = ["JCA_arifle_M4A1_black_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_M4A1_short_black_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["JCA_arifle_M4A1_GL_black_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_M16A1_LSW", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleC_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleC_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_LMG = ["rhs_weap_m249", _silencer, _pointer, _sight, ""];
_LMG_mag = "rhsusf_200rnd_556x45_mixed_box";

_MMG = ["UK3CB_M60", _silencer, _pointer, _sight, ""];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_m72a7_mag";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_maaws", _silencer, _pointer, "rhs_optic_maaws", _bipod];
_MAT_mag = "rhs_mag_maaws_HEDP";
_MAT_mag_HE = "rhs_mag_maaws_HE";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";
_HAT_mag_HE = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

if(_role in ["officer","sl","pl","ftl"]) then {
	_pistol = ["rhsusf_weap_m1911a1", _silencer, _pointer, _sight, _bipod];
	_pistol_mag = "rhsusf_mag_7x45acp_MHP";
} else {
	_pistol = ["rhsusf_weap_m9", _silencer, _pointer, _sight, _bipod];
	_pistol_mag = "rhsusf_mag_15Rnd_9x19_FMJ";
};

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "rhsusf_acc_m8541_low_wd";
_bipod = "rhsusf_acc_harris_swivel";

_rifleMarksman = ["rhs_weap_m24sws_wd", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhsusf_5Rnd_762x51_m993_Mag";
_rifleMarksman_mag_tr = "rhsusf_5Rnd_762x51_m62_Mag";
