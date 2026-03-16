_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = "";
_helmet = ["rhssaf_helmet_m97_olive_nocamo","rhssaf_helmet_m97_olive_nocamo_black_ess","rhssaf_helmet_m97_olive_nocamo_black_ess_bare"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army_Off";
_uniform = ["UK3CB_LDF_B_U_CombatUniform_WDL_01","UK3CB_LDF_B_U_CombatUniform_Shortsleeve_WDL_01"];
_vest = ["UK3CB_LDF_B_V_RIF_ALT_Vest_KKZ10_OLI","UK3CB_LDF_B_V_RIF_Vest_KKZ10_OLI"];
_backpack = ["UK3CB_B_Alice_pack_01","UK3CB_B_Alice_pack_02","UK3CB_B_Alice_pack_04","UK3CB_B_Alice_pack_frame_01","UK3CB_B_Alice_pack_frame_02"];
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_B_I_Alice_pack_frame_radio_01";
};
if(_role in ["sl","ftl","sm"]) then {
	_goggles = "Armband_Green_medium";
	_vest = "UK3CB_LDF_B_V_SL_Vest_KKZ10_OLI";
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_goggles = "Armband_Blue_medium";
	_vest = "UK3CB_LDF_B_V_MD_Vest_KKZ10_OLI";
};

if(_role in ["ar","mmg"]) then {
	_goggles = "Armband_Blue_medium";
	_vest = ["UK3CB_LDF_B_V_LMG_Vest_KKZ10_OLI","UK3CB_LDF_B_V_MG_Vest_KKZ10_OLI"];
};

if(_role in ["r","g"]) then {
	_goggles = "Armband_Red_medium";
};
if (_role isEqualTo "crew") then {
	_helmet = "UK3CB_LDF_B_H_CP04_GEO";
	_vest = "UK3CB_LDF_B_V_CREW_Vest_KKZ10_OLI";
	_uniform = "UK3CB_LDF_B_U_Tank_Uniform_GEO";
	_goggles = "Armband_Green_yellow";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_I_E";
	_uniform = "UK3CB_LDF_B_U_H_Pilot_GEO";
	_vest = "UK3CB_LDF_B_V_CREW_Vest_KKZ10_OLI";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "UK3CB_LDF_B_U_J_Pilot_GEO";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["JCA_arifle_M4A4_VFG_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_M4A1_short_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["JCA_arifle_M4A4_GL_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m27iar_grip", _silencer, _pointer, "JCA_optic_ACOG_black", "JCA_bipod_04_black"];
_rifle_mag = "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
_rifle_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_rifleC_mag = "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
_rifleC_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_rifleGL_mag = "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
_rifleGL_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_rifleL_mag = "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
_rifleL_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

_LMG = ["LMG_03_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["UK3CB_BAF_L7A2", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_sight = "";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_I_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";


_pistol = ["UK3CB_BAF_L117A2", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "16Rnd_9x21_red_Mag";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_sight = "rhs_acc_pso1m21";
_rifleMarksman = ["rhs_weap_svdp", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "10Rnd_338_Mag";
_rifleMarksman_mag_tr = "10Rnd_338_Mag";
