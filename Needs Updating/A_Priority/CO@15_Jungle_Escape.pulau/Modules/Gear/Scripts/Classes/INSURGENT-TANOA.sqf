_useMineDetector = true;
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
_goggles = [
	"G_Bandanna_Skull1","G_Bandanna_Skull2","UK3CB_G_Bandanna_green_check","G_Bandanna_CandySkull",
	"G_Bandanna_blk","G_Bandanna_beast","UK3CB_G_Balaclava2_MEE","UK3CB_G_Balaclava_Neck_Shemag_MEE",
	"G_Balaclava_Skull1","G_Balaclava_lowprofile","G_Balaclava_blk"
];
_helmet = ["UK3CB_H_HSAT_MKIII","UK3CB_H_HSAT_PTYPE","UK3CB_H_MKIV_Helmet","UK3CB_H_MKIV_Net_Helmet"];
_OfficerHelmet = "rhs_beret_vdv3";
_uniform = [
	"UK3CB_ADE_O_U_02_C","UK3CB_ADE_O_U_02_D","UK3CB_ADE_O_U_02_E","UK3CB_ADE_O_U_02_F",
	"UK3CB_ADE_O_U_02_G","UK3CB_ADE_O_U_02_H","UK3CB_ADE_O_U_02_I","UK3CB_MEE_O_U_05_C",
	"UK3CB_MEE_O_U_05"
];
_vest = ["UK3CB_V_MBAV_RIFLEMAN_BLK"];
_backpack = ["UK3CB_TKP_O_B_ASS_BLK","UK3CB_ION_B_B_ASS_BLK_01"];
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "B_RadioBag_01_black_F";
};

if (_role in ["sl","tl","g"]) then {
	_vest = "UK3CB_V_MBAV_MG_BLK";
};

if (_role in ["ar","mmg"]) then {
	_backpack = "UK3CB_ION_B_B_RIF_BLK_01";
	_vest = "UK3CB_V_MBAV_GRENADIER_BLK";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "UK3CB_ION_B_B_RIF_MED_BLK";
	_vest = "UK3CB_V_MBAV_MEDIC_BLK";
};
if (_role isEqualTo "p") then {
	_helmet = "H_Booniehat_khk_hs";
	_uniform = "UK3CB_MDF_B_U_CombatUniform_01_LIZ";
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

_silencer = "rhs_acc_tgpa";
_pointer = "rhs_acc_2dpZenit_ris";
_sight = "rhs_acc_pkas";
_bipod = "";

_rifle = [["rhs_weap_ak74n","rhs_weap_aks74","rhs_weap_ak74n"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74un", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["rhs_weap_ak74n_gp25","rhs_weap_aks74_gp25","rhs_weap_ak74_gp25"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_asval_grip", _silencer, _pointer, _sight, _bipod];

_rifle_mag = "rhs_30Rnd_545x39_7N6M_AK";
_rifle_mag_tr = "rhs_30Rnd_545x39_AK_green";
_rifleGL_mag = "rhs_30Rnd_545x39_7N6M_AK";
_rifleGL_mag_tr = "rhs_30Rnd_545x39_AK_green";
_rifleC_mag = "rhs_30Rnd_545x39_7N6M_AK";
_rifleC_mag_tr = "rhs_30Rnd_545x39_AK_green";
_rifleL_mag = "rhs_20rnd_9x39mm_SP6";
_rifleL_mag_tr = "rhs_20rnd_9x39mm_SP6";

_LMG = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_RPK74_60rnd_545x39_RT";

_MMG = ["rhs_weap_pkp", _silencer, _pointer, "rhs_acc_pso1m21", _bipod];
_MMG_mag = "150Rnd_762x54_Box_Tracer";


_LAT = ["rhs_weap_rpg18", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg18_mag";
_LAT_ReUsable = false;


_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";

_HAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "RPG7_F";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["hgun_Pistol_01_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "10Rnd_9x21_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_rifleMarksman = ["UK3CB_SVD_OLD", "rhs_acc_tgpv2", _pointer, "rhs_acc_pso1m21", _bipod];
_rifleMarksman_mag = "ACE_10Rnd_762x54_Tracer_mag";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_RT";
