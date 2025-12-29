_useMineDetector = false;
_allowedNightStuff = false;

_insignia = "";
_goggles = ["UK3CB_G_Gloves_Tan","UK3CB_G_KLR_TAN","UK3CB_G_KR_TAN"];
_helmet = ["UK3CB_H_HSAT_MKIII","UK3CB_H_HSAT_PTYPE","UK3CB_H_MKIV_Helmet","UK3CB_H_MKIV_Net_Helmet"];
_OfficerHelmet = "UK3CB_AAF_B_H_Beret_Army";
_uniform = ["UK3CB_ADM_B_U_CombatUniform_Shortsleeve_01_DDPM"];
_vest = ["UK3CB_TKA_O_V_6b23_ml_sniper_Oli","UK3CB_TKA_O_V_6b23_ml_Oli","UK3CB_TKA_O_V_6b23_ml_engineer_Oli"];
_backpack = ["UK3CB_B_Alice_Bedroll_K","UK3CB_B_Alice_Bedroll_2_K"];
_backpackRadio = _backpack;

if (true) then {
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

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = [["rhs_weap_m1garand_sa43"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["uk3cb_m2carbine", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["uk3cb_thompson_m1928a1"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_M1903A1_unertl", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhsgref_8Rnd_762x63_M2B_M1rifle";
_rifle_mag_tr = "rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle";
_rifleC_mag = "UK3CB_M1_30Rnd_30Carbine_Magazine_R";
_rifleC_mag_tr = "UK3CB_M1_30Rnd_30Carbine_Magazine_RT";
_rifleGL_mag = "UK3CB_Thompson_30rnd_1143x23_M1911B_Magazine_R";
_rifleGL_mag_tr = "UK3CB_Thompson_30rnd_1143x23_M1911B_Magazine_RT";
_rifleL_mag = "UK3CB_M1903A1_3006_5rnd_Magazine_R";
_rifleL_mag_tr = "UK3CB_M1903A1_3006_5rnd_Magazine_RT";

_LMG = ["UK3CB_Bren_303", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_Bren_30Rnd_303_Magazine_RT";

_MMG = ["UK3CB_M1919A6_Browning", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_M1919_50Rnd_3006_Magazine_RT";

_LAT = ["JCA_launch_M72_sand_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

if(_role in ["g","amat","fac","pl","sl","ftl"]) then {
	_pistol = ["rhs_weap_M320", _silencer, _pointer, _sight, _bipod];
	_pistol_mag = "rhs_mag_M433_HEDP";	
} else {
	_pistol = ["UK3CB_BHP", _silencer, _pointer, _sight, _bipod];
	_pistol_mag = "UK3CB_BHP_9_13Rnd";
};

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
