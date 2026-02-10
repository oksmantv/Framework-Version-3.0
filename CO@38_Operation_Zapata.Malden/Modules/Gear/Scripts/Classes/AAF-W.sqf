
_useMineDetector = false;
_allowedNightStuff = true;

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

_insignia = "insignia_block35";
_goggles = ["G_Armband_aaf_F"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army_Off";
_helmet =  ["UK3CB_AAF_O_H_6b27m_DIGI_GRN","UK3CB_AAF_O_H_6b27m_ESS_DIGI_GRN"];
_uniform =  ["UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_GRN","UK3CB_AAF_B_U_CombatUniform_DIGI_GRN"];
_vest =  ["V_PlateCarrierIA1_dgtl","V_PlateCarrierIA2_dgtl"];
_backpack = ["UK3CB_AAF_B_B_FIELDPACK_DIGI_GRN"];
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = ["TFAR_anprc155"];
};
if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_AAF_B_B_CARRYALL_DIGI_GRN";
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

_silencer = "";
_pointer = "";
_sight = "rhs_acc_ekp8_02";
_bipod = "";

_rifle = [["rhs_weap_ak74n_2","rhs_weap_ak74m_fullplum","rhs_weap_ak74n","rhs_weap_aks74","rhs_weap_aks74_2"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_ak105", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["rhs_weap_ak74n_2_gp25","rhs_weap_ak74m_gp25","rhs_weap_ak74m_fullplum_gp25","rhs_weap_ak74n_gp25","rhs_weap_aks74n_gp25"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "UK3CB_AK12_30rnd_Magazine_R";
_rifle_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleGL_mag = "UK3CB_AK12_30rnd_Magazine_R";
_rifleGL_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleC_mag = "UK3CB_AK12_30rnd_Magazine_R";
_rifleC_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";
_rifleL_mag = "rhs_60Rnd_545X39_7N22_AK";
_rifleL_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";

_LMG = ["GOL_weap_pkp", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "GOL_100Rnd_762x54mmR_red";

_MMG = ["GOL_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "GOL_100Rnd_762x54mmR_red";

_LAT = ["JCA_launch_M72_olive_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_rpg7", _silencer, _pointer, "rhs_acc_pgo7v3", _bipod];
_MAT_mag = "rhs_rpg7_PG7VL_mag";
_MAT_mag_HE = "rhs_rpg7_OG7V_mag";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_I_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["JCA_hgun_P226_olive_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "JCA_15Rnd_9x21_P226_Green_Mag";

_pdw = ["rhs_weap_aks74un", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_AK12_30rnd_Magazine_R";
_pdw_mag_tr = "UK3CB_AK12_30rnd_Magazine_RT";

_silencer = "muzzle_snds_B_khk_F";
_pointer = "acc_pointer_IR";
_sight = "optic_LRPS_tna_F";
_bipod = "bipod_03_F_oli";

_rifleMarksman = ["srifle_DMR_03_woodland_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_762x51_Mag";
_rifleMarksman_mag_tr = "20Rnd_762x51_Mag";
