/*
	Best way to get classnames of things you want is using the ACE Arsenal.
	If you select anything in the ACE Arsenal you will get the classname string which can be pasted into the code below.
	If you don't get a simple string and a huge list of things, the copy did not work, so give it another select and copy again.
	Any questions ask #Editing on Discord!
*/

_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["G_Armband_ligblu_alt_F","UK3CB_G_Neck_Shemag_Tan","rhsusf_shemagh_tan","rhsusf_shemagh2_tan","rhsusf_shemagh_gogg_tan","rhsusf_shemagh2_gogg_tan","rhsusf_oakley_goggles_blk"];
_helmet = ["UK3CB_ABP_B_H_6b27m_ess_DES","UK3CB_ABP_B_H_6b27m_DES"];
_OfficerHelmet = "";
_uniform = [
	"UK3CB_ION_B_U_Tshirt_Uniform_06_DES",
	"UK3CB_ION_B_U_Tshirt_Uniform_05_DES",
	"UK3CB_ION_B_U_Tshirt_Uniform_04_DES",
	"UK3CB_ION_B_U_Tshirt_Uniform_03_DES",
	"UK3CB_ION_B_U_Tshirt_Uniform_02_DES",
	"UK3CB_ION_B_U_Tshirt_Uniform_01_DES",
	"UK3CB_ION_B_U_Uniform_04_DES",
	"UK3CB_ION_B_U_Uniform_03_DES",
	"UK3CB_ION_B_U_Uniform_05_DES",
	"UK3CB_ION_B_U_Uniform_06_DES",
	"UK3CB_ION_B_U_Uniform_08_DES"
];
_vest = ["UK3CB_ION_B_V_MG_BRN_01","UK3CB_ION_B_V_RIF_BRN_01","UK3CB_ION_B_V_RIF_ALT_BRN_01"],;
_backpack = ["UK3CB_ION_B_B_ASS_DES_03"];
if (true) then {
	_backpackRadio = "UK3CB_ION_B_B_RadioBag_DES";
};

if (_role isEqualTo "sl") then {
	_vest = ["UK3CB_ION_B_V_SL_BRN_01"];
};

if(_role isEqualTo "ftl") then {
	_vest = ["UK3CB_ION_B_V_TacVest_des_01"];
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_ION_B_B_RIF_MED_DES";
	_vest = "UK3CB_ION_B_V_MD_BRN_01";
};
if (_role in ["ar","mmg"]) then {
	_vest = "UK3CB_ION_B_V_LMG_BRN_01";
	_backpack = "UK3CB_ION_B_B_RIF_DES_03";
};

if (_role isEqualTo "crew") then {
	_helmet = "rhs_tsh4";
	_vest = "UK3CB_ION_B_V_CREW_BRN_02";
	_backpack = "UK3CB_UN_B_B_ASS";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p_visor_black";
	_vest = ["UK3CB_ION_B_V_TacVest_des_01"];
	_uniform = ["UK3CB_ION_B_U_H_Pilot_Uniform_01_URB","UK3CB_ION_B_U_H_Pilot_Uniform_02_URB"];
};

if (_role isEqualTo "jetp") then {
	_goggles = "";
	_helmet = "FIR_JHMCS_II";
	_uniform = "FIR_Fighter_Pilot_USMC_Nomex2";
	_vest = "FIR_pilot_vest";
};

_silencer = "rhsusf_acc_SFMB556";
_pointer = "";
_sight = "JCA_optic_ACOG_black";
_bipod = "rhsusf_acc_tdstubby_blk";

_rifle = [["rhs_weap_m4a1_blockII_KAC","rhs_weap_m4a1","rhs_weap_m4a1_blockII","rhs_weap_m27iar_grip","rhs_weap_hk416d10","rhs_weap_hk416d145"], _silencer, _pointer, _sight, _bipod];
_rifleC = [["rhs_weap_mk18"], _silencer, _pointer, _sight, _bipod];
_rifleGL = [["rhs_weap_m4a1_m203s","rhs_weap_m4a1_m320","rhs_weap_m4a1_blockII_M203","rhs_weap_hk416d10_m320","rhs_weap_mk18_m320"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_sr25", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_mag_30Rnd_556x45_Mk262_Stanag";
_rifle_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_rifleGL_mag = "rhs_mag_30Rnd_556x45_Mk262_Stanag";
_rifleGL_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_rifleC_mag = "rhs_mag_30Rnd_556x45_Mk262_Stanag";
_rifleC_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_rifleL_mag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
_rifleL_mag_tr = "rhsusf_20Rnd_762x51_SR25_m62_Mag";


_LMG = ["UK3CB_BAF_L110_762", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_762_200Rnd_T";

_MMG = ["UK3CB_BAF_L7A2", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_sand_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["JCA_launch_Mk153_PWS_sand_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "JCA_MK153_HEAT_F";
_HAT_mag_HE = "JCA_MK153_HE_F";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_fim92_mag";

_pistol = ["rhsusf_weap_m9", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_15Rnd_9x19_FMJ";

_pdw = ["UK3CB_Uzi", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_Uzi_32Rnd_Magazine_R";
_pdw_mag_tr = "UK3CB_Uzi_32Rnd_Magazine_RT";

_silencer = "uk3cb_muzzle_snds_M14";
_pointer = "";
_sight = "JCA_optic_CRBS_black";
_bipod = "";

_rifleMarksman = ["UK3CB_M14DMR_Railed", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "ACE_20Rnd_762x51_M993_AP_Mag";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
