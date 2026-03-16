/*
	Best way to get classnames of things you want is using the ACE Arsenal.
	If you select anything in the ACE Arsenal you will get the classname string which can be pasted into the code below.
	If you don't get a simple string and a huge list of things, the copy did not work, so give it another select and copy again.
	Any questions ask #Editing on Discord!
*/

_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["UK3CB_G_Balaclava2_WIN",""];
_helmet = ["UK3CB_CSAT_S_O_H_6b27m"];
_OfficerHelmet = "";
_uniform = ["UK3CB_CSAT_S_O_U_CombatUniform_02","UK3CB_CSAT_S_O_U_CombatUniform_Shortsleeve_02","UK3CB_CSAT_S_O_U_JumperUniform","UK3CB_CSAT_S_O_U_CombatUniform"];
_vest = ["UK3CB_CSAT_S_O_V_Carrier_Rig_Light","UK3CB_CSAT_S_O_V_Carrier_Rig_Light_Med","UK3CB_CSAT_S_O_V_Carrier_Rig_Compact","UK3CB_CSAT_S_O_V_Carrier_Rig_CQB","UK3CB_CSAT_S_O_V_Carrier_Rig_Crew","UK3CB_CSAT_S_O_V_Carrier_Rig_Recon"];
_backpack = ["UK3CB_CSAT_S_O_B_RIF","UK3CB_CSAT_S_O_B_ASS","UK3CB_CSAT_S_O_B_ENG"];
if (true) then {
	_backpackRadio = "UK3CB_CSAT_S_O_B_RadioBag";
};

if (_role isEqualTo "sl") then {
	_helmet = "UK3CB_CSAT_S_O_H_6b27m_ESS";
};

if(_role isEqualTo "ftl") then {
	_helmet = "UK3CB_CSAT_S_O_H_6b27m_ESS";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_CSAT_S_O_B_RIF";
};
if (_role in ["ar","mmg"]) then {
	_backpack = "UK3CB_CSAT_S_O_B_RIF";
};

if (_role isEqualTo "crew") then {
	_uniform = "UK3CB_CSAT_S_O_U_Tank_Uniform";
	_helmet = "H_Tank_black_F";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_O";
	_uniform = "UK3CB_CSAT_S_O_U_H_Pilot";
};
if (_role isEqualTo "jetp") then {
	_goggles = "UK3CB_G_Balaclava2_WIN";
	_helmet = "H_PilotHelmetFighter_O";
	_uniform = "UK3CB_CSAT_S_O_U_J_Pilot";
	_vest = "UK3CB_V_Pilot_Vest_WIN";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = [["arifle_CTAR_blk_F"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_CTAR_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["arifle_CTAR_GL_blk_F"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["srifle_DMR_07_blk_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_580x42_Mag_F";
_rifle_mag_tr = "30Rnd_580x42_Mag_Tracer_F";
_rifleGL_mag = "30Rnd_580x42_Mag_F";
_rifleGL_mag_tr = "30Rnd_580x42_Mag_Tracer_F";
_rifleC_mag = "30Rnd_580x42_Mag_F";
_rifleC_mag_tr = "30Rnd_580x42_Mag_Tracer_F";
_rifleL_mag = "20Rnd_650x39_Cased_Mag_F";
_rifleL_mag_tr = "ACE_20Rnd_65_Creedmor_mag";


_LMG = ["arifle_CTARS_blk_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "100Rnd_580x42_Mag_Tracer_F";

_MMG = ["arifle_RPK12_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "75Rnd_762x39_Mag_Tracer_F";

_LAT = ["rhs_weap_M136", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_RPG32_green_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG32_F";
_MAT_mag_HE = "RPG32_HE_F";

_HAT = ["launch_I_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["hgun_Rook40_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

_pdw = ["SMG_05_F", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "30Rnd_9x21_Mag_SMG_02";
_pdw_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Green";

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifleMarksman = ["srifle_DMR_07_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_650x39_Cased_Mag_F";
_rifleMarksman_mag_tr = "ACE_20Rnd_65_Creedmor_mag";
