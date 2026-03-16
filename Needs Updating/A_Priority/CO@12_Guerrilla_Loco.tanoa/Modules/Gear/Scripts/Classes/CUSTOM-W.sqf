/*
	Best way to get classnames of things you want is using the ACE Arsenal.
	If you select anything in the ACE Arsenal you will get the classname string which can be pasted into the code below.
	If you don't get a simple string and a huge list of things, the copy did not work, so give it another select and copy again.
	Any questions ask #Editing on Discord!
*/

_useMineDetector = false;
_allowedNightStuff = true;

_glHE = "";
_glHEDP = "";
_glsmokeW = "";
_glsmokeB = "";
_glsmokeG = "";
_glsmokeO = "";
_glsmokeP = "";
_glsmokeR = "";
_glsmokeY = "";

_glflareG = "";
_glflareR = "";
_glflareW = "";

_insignia = "";
_goggles = ["Armband_Green_large","Armband_Green_medium"];
_helmet = ["UK3CB_H_Woolhat_GRN","UK3CB_H_Woolhat_KHK","UK3CB_LSM_B_H_BoonieHat_KHK","UK3CB_LSM_B_H_BoonieHat_OLI","UK3CB_LNM_B_H_BoonieHat_WDL_01","H_Cap_blk","UK3CB_LSM_B_H_M88_Field_Cap_KHK","UK3CB_LSM_B_H_M88_Field_Cap_OLI","rhsgref_hat_m1941cap","H_Shemag_olive","UK3CB_H_Shemag_oli","rhs_tsh4"];
_OfficerHelmet = "";
_uniform = ["U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F"];
_vest = ["UK3CB_V_Belt_KHK","UK3CB_V_Chicom_Brown","rhsgref_chicom","UK3CB_V_Pouch","V_BandollierB_rgr","UK3CB_TKA_I_V_6Sh92_Oli"];
_backpack = ["B_Messenger_Coyote_F","B_Messenger_Olive_F"];
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "rhs_r148";
};

if (_role isEqualTo "sl") then {
	_helmet = "rhsusf_bowman_cap";
	_vest = "UK3CB_TKA_I_V_6Sh92_Radio_Oli"
};

if(_role isEqualTo "ftl") then {
	_helmet = "rhsusf_bowman_cap";
	_vest = "UK3CB_TKA_I_V_6Sh92_Radio_Oli"
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "rhs_medic_bag";
};

_silencer = "rhsgref_sdn6_suppressor";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = [["UK3CB_CZ550"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_m3a1_specops", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["rhs_weap_m3a1_specops"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["hlc_rifle_awMagnum_OD_ghillie", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "UK3CB_CZ550_5rnd_Mag_R";
_rifle_mag_tr = "UK3CB_CZ550_5rnd_Mag_RT";
_rifleGL_mag = "rhsgref_30rnd_1143x23_M1911B_SMG";
_rifleGL_mag_tr = "rhsgref_30rnd_1143x23_M1T_SMG";
_rifleC_mag = "rhsgref_30rnd_1143x23_M1911B_SMG";
_rifleC_mag_tr = "rhsgref_30rnd_1143x23_M1T_SMG";
_rifleL_mag = "hlc_5rnd_300WM_mk248_AWM";

_LMG = ["hlc_rifle_L4A3", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_FNFAL_20rnd_762x51_RT";

_MMG = ["hlc_rifle_L4A3", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_FNFAL_20rnd_762x51_RT";

_LAT = ["rhs_weap_m80", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_m80", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "";

_AA = ["", _silencer, _pointer, _sight, _bipod];
_AA_mag = "";

_pistol = ["rhs_weap_pb_6p9", "rhs_acc_6p9_suppressor", _pointer, _sight, _bipod];
_pistol_mag = "rhs_mag_9x18_8_57N181S";

_pdw = ["", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "";
_pdw_mag_tr = "";

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifleMarksman = ["", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "";
_rifleMarksman_mag_tr = "";
