/*
	Best way to get classnames of things you want is using the ACE Arsenal.
	If you select anything in the ACE Arsenal you will get the classname string which can be pasted into the code below.
	If you don't get a simple string and a huge list of things, the copy did not work, so give it another select and copy again.
	Any questions ask #Editing on Discord!
*/

_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["UK3CB_G_KLR_Oli","UK3CB_G_KR_Oli"];
_helmet = ["UK3CB_CSAT_W_O_H_6b27m","UK3CB_CSAT_W_O_H_6b27m_ESS","UK3CB_CSAT_W_O_H_6b27m_Alt","UK3CB_CSAT_W_O_H_6b27m_ESS_Alt"];
_OfficerHelmet = "UK3CB_CSAT_BEL_H_Beret";
_uniform = ["UK3CB_CSAT_W_O_U_CombatUniform","UK3CB_CSAT_W_O_U_CombatUniform_Shortsleeve"];
_vest = ["UK3CB_CSAT_W_O_V_Carrier_Rig_Light"];
_backpack = ["UK3CB_CSAT_W_O_B_FIELDPACK"];
if (true) then {
	_backpackRadio = "UK3CB_CSAT_W_O_B_RadioBag";
};

if (_role in ["sl","ftl","g"]) then {
	_vest = "UK3CB_CSAT_W_O_V_Carrier_Rig_Heavy";
};

if(_role isEqualTo "mat") then {
	_backpack = "UK3CB_CSAT_O_B_RPG";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_CSAT_W_O_B_TACPACK";
};
if (_role in ["ar","mmg"]) then {
	_vest = "UK3CB_CSAT_W_O_V_Carrier_Rig_Tactical";
};

if (_role isEqualTo "crew") then {
	_helmet = "rhs_tsh4";
	_vest = "UK3CB_CSAT_W_O_V_Carrier_Rig_Crew";
};
if (_role isEqualTo "p") then {
	_helmet = "rhs_zsh7a_mike";
	_uniform = "UK3CB_CSAT_W_O_U_H_Pilot";
	_vest = "UK3CB_V_Pilot_Vest";
};
if (_role isEqualTo "uav") then {
	_backpack = "";
	_gps = "";
};
if (_role isEqualTo "jetp") then {
	_goggles = "";
	_helmet = "rhs_zsh7a";
	_uniform = "UK3CB_CSAT_W_O_U_J_Pilot";
	_vest = "UK3CB_V_Invisible";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
_sight = "rhs_acc_1p87";
_bipod = "";

_rifle = [["rhs_weap_ak74n_2_npz"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74_2", _silencer, _pointer, "", _bipod];
_rifleGL = [["rhs_weap_ak74n_2_gp25_npz"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_ak74n_2_npz", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_30Rnd_545x39_7N6M_plum_AK";
_rifle_mag_tr = "rhs_30Rnd_545x39_AK_plum_green";
_rifleGL_mag = "rhs_30Rnd_545x39_7N6M_plum_AK";
_rifleGL_mag_tr = "rhs_30Rnd_545x39_AK_plum_green";
_rifleC_mag = "rhs_30Rnd_545x39_7N6M_plum_AK";
_rifleC_mag_tr = "rhs_30Rnd_545x39_AK_plum_green";
_rifleL_mag = "rhs_30Rnd_545x39_7N6M_plum_AK";
_rifleL_mag_tr = "rhs_30Rnd_545x39_AK_plum_green";


_LMG = ["rhs_weap_rpk74m_npz", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhs_45Rnd_545X39_7N6M_AK";

_MMG = ["rhs_weap_pkp", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_LAT = ["rhs_weap_rpg26", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_rpg7", _silencer, _pointer, "rhs_acc_pgo7v3", _bipod];
_MAT_mag = "rhs_rpg7_PG7VL_mag";
_MAT_mag_HE = "rhs_rpg7_OG7V_mag";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["rhs_weap_makarov_pm", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_mag_9x18_8_57N181S";

_pdw = ["rhs_weap_aks74un", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_30Rnd_545x39_7N6M_AK";
_pdw_mag_tr = "rhs_30Rnd_545x39_AK_green";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_1p29";
_bipod = "";

_rifleMarksman = ["rhs_weap_vss", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_20rnd_9x39mm_SP5";
_rifleMarksman_mag_tr = "rhs_20rnd_9x39mm_SP6";
