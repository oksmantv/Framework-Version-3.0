_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = "rhsusf_shemagh_od";
_helmet = selectRandom ["rhsgref_helmet_M1_erdl"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army_Off";
_uniform = selectRandom["UK3CB_CW_US_B_Early_U_SF_CombatUniform_02_ERDL","UK3CB_CW_US_B_Early_U_SF_CombatUniform_04_ERDL_OLI"];
_vest = "rhsgref_TacVest_ERDL";
_backpack = "rhsgref_hidf_alicepack";
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_B_B_Radio_Backpack";
};

if (_role in ["ag","ammg","lr","ab","hat","ahat"]) then {
	_backpack = "rhsgref_hidf_alicepack";
};

if(_role in ["ag","ammg","sm"]) then {
	_helmet = "UK3CB_MDF_B_H_M1_MED";
};

if (_role isEqualTo "crew") then {
	_helmet = "rhsusf_cvc_green_alt_helmet";
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
_pointer = "acc_flashlight";
_sight = "";
_bipod = "rhsusf_acc_m14_bipod";

_rifle = ["rhs_weap_m14_ris", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_m14_ris", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_rifle_A1m203", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_m14_ris", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_20Rnd_762x51_barrier_M14";
_rifle_mag_tr = "hlc_20Rnd_762x51_T_M14";
_rifleGL_mag = "hlc_30rnd_556x45_SOST_STANAGHD";
_rifleGL_mag_tr = "hlc_30rnd_556x45_t_STANAGHD";
_rifleL_mag = "hlc_20Rnd_762x51_barrier_M14";
_rifleL_mag_tr = "hlc_20Rnd_762x51_T_M14";
_rifleC_mag = "hlc_20Rnd_762x51_barrier_M14";
_rifleC_mag_tr = "hlc_20Rnd_762x51_T_M14";

_LMG = ["hlc_lmg_m60", _silencer, _pointer, _sight, ""];
_LMG_mag = "hlc_200Rnd_762x51_T_M60E4";

_MMG = ["hlc_lmg_M60E4", _silencer, _pointer, _sight, ""];
_MMG_mag = "hlc_100Rnd_762x51_T_M60E4";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";
_HAT_mag_HE = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["rhsusf_weap_m1911a1", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_7x45acp_MHP";

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
