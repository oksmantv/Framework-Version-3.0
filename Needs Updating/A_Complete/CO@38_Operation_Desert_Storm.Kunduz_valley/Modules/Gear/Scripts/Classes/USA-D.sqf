_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = "rhsusf_oakley_goggles_clr";
_helmet = ["rhsgref_helmet_pasgt_3color_desert"];
_OfficerHelmet = "rhsusf_patrolcap_ucp";
_uniform = ["rhsgref_uniform_3color_desert"];
_vest = ["UK3CB_CW_US_B_LATE_V_PASGT_Rif_Vest_GOL"];
_backpack = "UK3CB_B_Alice_pack_01";
if (true) then {
	_backpackRadio = "UK3CB_B_B_Alice_pack_frame_radio_01";
};

if (_role isEqualTo "sl") then {
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_Rif_Vest_GOL";
};

if(_role isEqualTo "ftl") then {
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_Rif_Vest_GOL";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_Medic_Vest_GOL";
	_backpack = "UK3CB_B_Alice_pack_01";
};
if (_role in ["ar","mmg"]) then {
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_MG_Vest_GOL";
};

if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_Crew_Vest_GOL";
	_backpack = "UK3CB_B_Bedroll_Backpack_GRY"
};
if (_role isEqualTo "p") then {
	_helmet = "UK3CB_H_Pilot_Helmet";
	_vest = "UK3CB_V_Pilot_Vest";
	_uniform = "UK3CB_CW_US_B_LATE_U_H_Pilot_Uniform_01_NATO";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "";
	_helmet = "FIR_hgu26p";
	_uniform = "UK3CB_CW_US_B_LATE_U_J_Pilot_Uniform_01_NATO";
	_vest = "FIR_pilot_vest";
	_backpack = "B_Parachute";
};

// Attachments
_silencer = "rhsusf_acc_SFMB556";
_pointer = "";
_sight = "JCA_optic_ICO_black";
_bipod = "";

_rifle = ["JCA_arifle_M4A1_black_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_M4A1_short_black_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["JCA_arifle_M4A1_GL_black_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m14_d", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleC_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleC_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleL_mag = "ACE_20Rnd_762x51_M993_AP_Mag";
_rifleL_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";

_LMG = ["LMG_03_F", "rhsusf_acc_ARDEC_M240", _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["UK3CB_BAF_L110_762", _silencer, _pointer, _sight, ""];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_maaws", _silencer, _pointer, "rhs_optic_maaws", _bipod];
_MAT_mag = "rhs_mag_maaws_HEAT";
_MAT_mag_HE = "rhs_mag_maaws_HE";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["JCA_hgun_M9A1_black_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "JCA_15Rnd_9x21_M9A1_Red_Mag";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "rhsusf_acc_ACOG_USMC";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["srifle_DMR_06_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_M14_20rnd_762x51_RT";
_rifleMarksman_mag_tr = "UK3CB_M14_20rnd_762x51_RT";
