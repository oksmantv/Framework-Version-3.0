_useMineDetector = true;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["rhs_balaclava1_olive"];
_helmet = ["rhsgref_helmet_pasgt_olive"];
_OfficerHelmet = "UK3CB_ANA_B_H_OFF_Beret_GRN";
_uniform = ["UK3CB_ARD_B_U_CombatUniform_01"];
_vest = ["rhs_6b45_grn","rhs_6b45_rifleman","rhs_6b45_rifleman_2","rhs_6b45_light","rhs_6b45_holster","rhs_6b45"];
_backpack = "rhs_rd54_emr1";
_backpackRadio = _backpack;

if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_B_O_RadioBag_GRN";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "rhs_tortila_emr";
	_vest = "rhs_6b45_holster";
};

if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_HeliPilotCoveralls";
	_vest = "UK3CB_ANA_B_V_Vest_WDL_01";
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
_sight = "JCA_optic_AICO_black";
_bipod = "";

_rifle = ["rhs_weap_ak74m_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_ak74m_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74mr_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_ak74m_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "hlc_30Rnd_545x39_EP_ak_Black";
_rifle_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";
_rifleGL_mag = "hlc_30Rnd_545x39_EP_ak_Black";
_rifleGL_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";
_rifleC_mag = "hlc_30Rnd_545x39_EP_ak_Black";
_rifleC_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";
_rifleL_mag = "hlc_30Rnd_545x39_EP_ak_Black";
_rifleL_mag_tr = "hlc_30Rnd_545x39_t_ak_Black";

_LMG = ["LMG_03_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["rhs_weap_m240G", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "hlc_100Rnd_762x51_T_M60E4";

_sight = "";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_m72a7_mag";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, "", _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";


_pistol = ["rhsusf_weap_m9", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_15Rnd_9x19_JHP";

if(_role in ["r","g"] && _useMineDetector == true) then {
	_pistol = ["ACE_VMH3", _silencer, _pointer, _sight, _bipod];
	_pistol_mag = "";
};

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21_svd";
_bipod = "";

_rifleMarksman = ["rhs_weap_svdp", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "ACE_10Rnd_762x54_Tracer_mag";
