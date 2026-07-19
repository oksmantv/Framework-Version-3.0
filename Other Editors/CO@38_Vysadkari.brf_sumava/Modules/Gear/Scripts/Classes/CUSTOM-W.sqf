/*
	Best way to get classnames of things you want is using the ACE Arsenal.
	If you select anything in the ACE Arsenal you will get the classname string which can be pasted into the code below.
	If you don't get a simple string and a huge list of things, the copy did not work, so give it another select and copy again.
	Any questions ask #Editing on Discord!
*/


_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["UK3CB_G_Gloves_Green","G_Squares","G_Bandanna_oli","",""];
_helmet = ["rhs_ssh6_GOL"];
_OfficerHelmet = "rhssaf_beret_red";
_uniform = ["rhs_uniform_afghanka_grey"];
_vest = ["rhs_6b3_AK","rhs_6b3"];
_backpack = ["UK3CB_UN_B_B_ASS","UK3CB_KDF_B_B_Sidor_RIF_OLI"];
if (true) then {
	_backpackRadio = "UK3CB_B_B_Alice_Radio_Backpack";
};

if (_role isEqualTo "sl") then {
_vest = "rhs_6b3_off";

};

if(_role isEqualTo "ftl") then {
_vest = "rhs_6b3_R148";

};

if (_role in ["sm"]) then {
	_backpack = "UK3CB_KDF_B_B_Sidor_MD_OLI";
};

if (_role in ["ar","mmg"]) then {
	_vest = "rhs_6b3_RPK";

};

if (_role in ["ag","ammg"]) then {
	_backpack = "UK3CB_KDF_B_B_Sidor_RIF_OLI";
};

if (_role isEqualTo "crew") then {
	_helmet = "rhs_tsh4";
};
if (_role isEqualTo "p") then {
	_helmet = "rhs_zsh7a_mike_green_alt";
};
if (_role isEqualTo "uav") then {
	_backpack = "";
	_gps = "";
};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "rhs_zsh7a_alt";
	_uniform = "UK3CB_CW_SOV_O_LATE_U_J_Pilot_Uniform_01_OLI";
	_vest = "rhs_6b2_holster";
	_backpack = "";
};



_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";


_rifle = [["rhs_weap_savz58p"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_savz58v", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["rhs_weap_savz58p"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_SVD_OLD", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_30Rnd_762x39mm_Savz58";
_rifle_mag_tr = "rhs_30Rnd_762x39mm_Savz58_tracer";
_rifleGL_mag = "rhs_30Rnd_762x39mm_Savz58";
_rifleGL_mag_tr = "rhs_30Rnd_762x39mm_Savz58_tracer";
_rifleC_mag = "rhs_30Rnd_762x39mm_Savz58";
_rifleC_mag_tr = "rhs_30Rnd_762x39mm_Savz58_tracer";
_rifleL_mag = "rhs_10Rnd_762x54mmR_7N14";
_rifleL_mag_tr = "UK3CB_SVD_10rnd_762x54_YT";


_LMG = ["UK3CB_RPK", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhs_75Rnd_762x39mm_tracer";

_MMG = ["GOL_weap_UK59N", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "GOL_UK59_200Rnd_762x51_M993_Tracer_Green";

_LAT = ["rhs_weap_rpg75", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg75_mag";
_LAT_ReUsable = false;

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";
_MAT_mag_HE = "rhs_rpg7_TBG7V_mag";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["rhs_weap_tt33", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhs_mag_762x25_8";

_pdw = ["rhs_weap_savz61", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhsgref_20rnd_765x17_vz61";
_pdw_mag_tr = "rhsgref_20rnd_765x17_vz61";

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifleMarksman = ["UK3CB_SVD_OLD", _silencer, _pointer, "rhs_acc_pso1m2", _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N14";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";


if (_role isEqualTo "fac") then {
_pistol = ["rhs_weap_M320", _silencer, _pointer, _sight, _bipod];
};

if (_role isEqualTo "sl") then {
_pistol = ["rhs_weap_M320", _silencer, _pointer, _sight, _bipod];
};

if (_role isEqualTo "ftl") then {
_pistol = ["rhs_weap_M320", _silencer, _pointer, _sight, _bipod];
};

if (_role isEqualTo "g") then {
_pistol = ["rhs_weap_M320", _silencer, _pointer, _sight, _bipod];
};

if (_role isEqualTo "pl") then {
_pistol = ["rhs_weap_M320", _silencer, _pointer, _sight, _bipod];
};

if (_role isEqualTo "amat") then {
_pistol = ["rhs_weap_M320", _silencer, _pointer, _sight, _bipod];
};
