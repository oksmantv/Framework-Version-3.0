_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["UK3CB_G_Gloves_Tan","UK3CB_G_KLR_TAN","UK3CB_G_KR_TAN"];
_helmet = ["UK3CB_H_HSAT_MKIII","UK3CB_H_HSAT_PTYPE","UK3CB_H_MKIV_Helmet","UK3CB_H_MKIV_Net_Helmet"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army";
_uniform = ["UK3CB_ADM_B_U_CombatUniform_Shortsleeve_01_DDPM"];
_vest = ["UK3CB_TKA_O_V_6b23_ml_sniper_Oli","UK3CB_TKA_O_V_6b23_ml_Oli","UK3CB_TKA_O_V_6b23_ml_engineer_Oli"];
_backpack = ["UK3CB_B_Alice_Bedroll_K","UK3CB_B_Alice_Bedroll_2_K"];
_backpackRadio = _backpack;

if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = ["UK3CB_B_B_Alice_Radio_Backpack"];
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_B_Alice_Med_K";
	_vest = "UK3CB_TKA_O_V_6b23_medic_Oli";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
	_vest = "UK3CB_TKA_O_V_6b23_ml_crew_Oli";
};
if (_role isEqualTo "p") then {
	_helmet = "rhs_pilotka";
	_uniform = "UK3CB_ADM_B_U_CombatUniform_Shortsleeve_01_DDPM";
	_vest = "UK3CB_TKA_O_V_6b23_ml_crew_Oli";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "Uniform_Coveralls_MTP";
	_vest = "V_Rangemaster_belt";
	_backpack = _backpackRadio;
};

_silencer = "hlc_muzzle_mag58_brake";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = [["hlc_rifle_FAL5000","hlc_rifle_FAL5061"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_Sten", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["hlc_rifle_A1m203"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["hlc_rifle_SLR", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "hlc_30rnd_556x45_M_STANAGHD";
_rifleGL_mag_tr = "hlc_30rnd_556x45_t_STANAGHD";
_rifle_mag = "hlc_30Rnd_762x51_barrier_L4";
_rifle_mag_tr = "hlc_30Rnd_762x51_T_L4";
_rifleL_mag = "hlc_30Rnd_762x51_barrier_L4";
_rifleL_mag_tr = "hlc_30Rnd_762x51_T_L4";
_rifleC_mag = "UK3CB_Sten_34Rnd_Magazine_RT";

_LMG = ["UK3CB_BAF_L7A2", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_762_100Rnd_T";

_MMG = ["UK3CB_BAF_L7A2", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_m72a7_mag";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["UK3CB_BHP", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "UK3CB_BHP_9_13Rnd";

_pdw = ["UK3CB_Sten", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_Sten_34Rnd_Magazine_RT";
_pdw_mag_tr = "UK3CB_Sten_34Rnd_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "uk3cb_optic_no32_vintage";
_bipod = "";

_rifleMarksman = ["uk3cb_enfield_no3t", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "uk3cb_no4_enfield_303_10Rnd_magazine";
_rifleMarksman_mag_tr = "uk3cb_no4_enfield_303_10Rnd_magazine_RT";
