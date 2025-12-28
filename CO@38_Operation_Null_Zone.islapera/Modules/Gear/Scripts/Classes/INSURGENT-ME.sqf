_useMineDetector = false;
_allowedNightStuff = false;

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

_insignia = "";
_goggles = "UK3CB_G_Gloves_Black";
_helmet = ["UK3CB_CSAT_N_O_H_Bandanna","","UK3CB_CSAT_N_O_H_BoonieHat","UK3CB_CSAT_N_O_H_Cap","UK3CB_CSAT_N_O_H_M1_Covered","UK3CB_CSAT_N_O_H_M1_Covered_Band","UK3CB_CSAT_N_O_H_SSh68_Covered","UK3CB_CSAT_N_O_H_Patrolcap_Mic"];
_OfficerHelmet = "UK3CB_CSAT_N_O_H_Patrolcap";
_uniform = ["UK3CB_CSAT_N_O_U_Tanktop","UK3CB_CSAT_N_O_U_JumperUniform"];
_vest = ["UK3CB_CSAT_N_O_V_TacVest"];
_backpack = "B_Messenger_Black_F";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_B_I_Radio_Backpack";
};


if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "B_CivilianBackpack_01_Everyday_Black_F";
};
if (_role isEqualTo "p") then {
	_helmet = "H_Booniehat_khk_hs";
	_uniform = "UK3CB_CSAT_N_O_U_Tanktop";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "rhs_acc_dtk1983";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["rhs_weap_aks74", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74u", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_aks74_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_SVD_OLD", _silencer, _pointer, "rhs_acc_pso1m2", _bipod];
_rifle_mag = "30Rnd_545x39_Mag_F";
_rifle_mag_tr = "30Rnd_545x39_Mag_Tracer_F";
_rifleGL_mag = "30Rnd_545x39_Mag_F";
_rifleGL_mag_tr = "30Rnd_545x39_Mag_Tracer_F";
_rifleL_mag = "UK3CB_SVD_10rnd_762x54_YT";

_LMG = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_RPK74_60rnd_545x39_YT";

_MMG = ["rhs_weap_pm63", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_RPK_75rnd_762x39_YT";

if(random 1 > 0.5) then {
	_LAT = ["rhs_weap_rpg75", _silencer, _pointer, _sight, _bipod];
	_LAT_mag = "rhs_rpg75_mag";
	_LAT_ReUsable = false;
} else {
	_LAT = ["rhs_weap_rpg18", _silencer, _pointer, _sight, _bipod];
	_LAT_mag = "rhs_rpg18_mag";
	_LAT_ReUsable = false;
};

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";

_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["hgun_Pistol_01_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "10Rnd_9x21_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "rhsusf_acc_M8541";
_bipod = "";

_rifleMarksman = ["rhs_weap_m38_rail", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhsgref_5Rnd_762x54_m38";
_rifleMarksman_mag_tr = "rhsgref_5Rnd_762x54_m38";