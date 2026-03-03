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

_insignia = "";
_goggles = ["rhsusf_shemagh_grn"];
_helmet = ["UK3CB_CSAT_M_O_H_SSh68_Covered","UK3CB_CSAT_M_O_H_M1_Covered"];
_OfficerHelmet = "H_Beret_CSAT_01_F";
_uniform = ["UK3CB_CSAT_M_O_U_CombatUniform","UK3CB_CSAT_M_O_U_CombatUniform_Shortsleeve"];
_vest = ["rhs_6b2_chicom","rhs_6b2_RPK","rhs_6b2_lifchik","rhs_6b2_SVD","rhs_6b2"];
_backpack = "rhs_sidor";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_PLM_O_B_R148_RADIO";
};

if(_role in ["sl","ftl","ag","atab"]) then {
	_goggles = "rhsusf_shemagh_grn";
};

if (_role in ["ag","atab","ammg","lr","ab"]) then {
	_backpack = "rhs_rd54_flora1";
};
if (_role isEqualTo "crew") then {
	_helmet = "rhs_tsh4";
};
if (_role isEqualTo "p") then {
	_helmet = "rhs_pilotka";
	_uniform = "rhs_uniform_afghanka";
	_vest = "rhs_gear_OFF";
};
if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

// Attachments
_silencer = "rhs_acc_dtkakm";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["rhs_weap_akm", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_akms", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_akms_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_SVD_OLD", _silencer, _pointer, "rhs_acc_pso1m21", _bipod];
_rifle_mag = "UK3CB_AK47_30Rnd_Magazine_G";
_rifle_mag_tr = "UK3CB_AK47_30Rnd_Magazine_GT";
_rifleC_mag = "UK3CB_AK47_30Rnd_Magazine_G";
_rifleC_mag_tr = "UK3CB_AK47_30Rnd_Magazine_GT";
_rifleGL_mag = "UK3CB_AK47_30Rnd_Magazine_G";
_rifleGL_mag_tr = "UK3CB_AK47_30Rnd_Magazine_GT";
_rifleL_mag = "UK3CB_SVD_10rnd_762x54_GT";
_rifleL_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";

_LMG = ["UK3CB_RPD", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_RPD_100rnd_762x39_GT";

_MMG = ["rhs_weap_pkm", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_sight = "";

_LAT = ["rhs_weap_rpg18", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg18_mag";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_rpg7", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "rhs_rpg7_PG7V_mag";
_MAT_mag_HE = "rhs_rpg7_PG7V_mag";

_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_O_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_Rook40_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "uk3cb_optic_no32";
_bipod = "";

_rifleMarksman = ["uk3cb_enfield_no4t_walnut", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "uk3cb_no4_enfield_303_10Rnd_magazine_GT";
_rifleMarksman_mag_tr = "uk3cb_no4_enfield_303_10Rnd_magazine_GT";