/*
	Best way to get classnames of things you want is using the ACE Arsenal.
	If you select anything in the ACE Arsenal you will get the classname string which can be pasted into the code below.
	If you don't get a simple string and a huge list of things, the copy did not work, so give it another select and copy again.
	Any questions ask #Editing on Discord!
*/

_useMineDetector = true;
_allowedNightStuff = false;

_insignia = "";
_goggles = ["rhsusf_oakley_goggles_clr","UK3CB_G_Balaclava"];
_helmet = ["UK3CB_LDF_B_H_HB97_GEO","UK3CB_LDF_B_H_HB97_ESS_GEO","UK3CB_LDF_B_H_HB97_ESS_Cover_GEO"];
_OfficerHelmet = "UK3CB_LDF_B_H_CP04_GEO";
_uniform = ["U_I_E_Uniform_01_F","U_I_E_Uniform_01_shortsleeve_F","U_I_E_Uniform_01_sweater_F"];
_vest = ["UK3CB_LDF_B_V_RIF_Vest_KKZ10_GEO","UK3CB_LDF_B_V_RIF_ALT_Vest_KKZ10_GEO"];
_backpack = ["UK3CB_LDF_B_B_ASS_GEO"];
if (true) then {
	_backpackRadio = "B_RadioBag_01_eaf_F";
};

if (_role isEqualTo "sl") then {
	_vest = "UK3CB_LDF_B_V_SL_Vest_KKZ10_GEO";
};

if (_role isEqualTo "sm") then {
	_vest = "UK3CB_LDF_B_V_MD_Vest_KKZ10_GEO";
};

if (_role isEqualTo "marksman") then {
	_vest = "UK3CB_LDF_B_V_MK_Vest_KKZ10_GEO";
};

if(_role isEqualTo "ftl") then {
	_vest = "UK3CB_LDF_B_V_TL_Vest_KKZ10_GEO";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "B_Carryall_oli";
};
if (_role isEqualTo "mmg") then {
	_vest = "UK3CB_LDF_B_V_MG_Vest_KKZ10_GEO";
};

if (_role isEqualTo "ar") then {
	_vest = "UK3CB_LDF_B_V_LMG_Vest_KKZ10_GEO";
};

if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
	_vest = "UK3CB_LDF_B_V_CREW_Vest_KKZ10_GEO";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "rhsusf_hgu56p_visor_green";
	_uniform = "UK3CB_LDF_B_U_H_Pilot_GEO";
	_vest = "UK3CB_V_Pilot_Vest";
	_backpack = "";
};
if (_role isEqualTo "uav") then {
	_backpack = "";
	_gps = "";
};
if (_role isEqualTo "jetp") then {
	_goggles = "";
	_helmet = "H_PilotHelmetFighter_I";
	_uniform = "UK3CB_LDF_B_U_J_Pilot_GEO";
	_vest = "UK3CB_V_Pilot_Vest";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
_sight = "JCA_optic_ACOG_olive";
_bipod = "";

_rifle = [["JCA_arifle_M16A4_olive_F"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["JCA_arifle_M4A1_short_olive_F", _silencer, _pointer, "", _bipod];
_rifleGL = [["JCA_arifle_M16A4_GL_olive_F"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["JCA_arifle_M16A4_olive_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "JCA_30Rnd_556x45_PMAG";
_rifle_mag_tr = "JCA_30Rnd_556x45_Tracer_Green_PMAG";
_rifleGL_mag = "JCA_30Rnd_556x45_PMAG";
_rifleGL_mag_tr = "JCA_30Rnd_556x45_Tracer_Green_PMAG";
_rifleC_mag = "JCA_30Rnd_556x45_PMAG";
_rifleC_mag_tr = "JCA_30Rnd_556x45_Tracer_Green_PMAG";
_rifleL_mag = "JCA_30Rnd_556x45_PMAG";
_rifleL_mag_tr = "JCA_30Rnd_556x45_Tracer_Green_PMAG";


_LMG = ["rhs_weap_m249", _silencer, _pointer, "", _bipod];
_LMG_mag = "rhsusf_200rnd_556x45_M855_mixed_box";

_MMG = ["rhs_weap_pkm", _silencer, _pointer, "", _bipod];
_MMG_mag = "rhs_100Rnd_762x54mmR_green";

_LAT = ["rhs_weap_rpg26", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_maaws", _silencer, _pointer, "rhs_optic_maaws", _bipod];
_MAT_mag = "rhs_mag_maaws_HEAT";
_MAT_mag_HE = "rhs_mag_maaws_HE";

_HAT = ["UK3CB_BAF_Javelin_Slung_Tube", _silencer, _pointer, "UK3CB_BAF_Javelin_CLU", _bipod];
_HAT_mag = "";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_fim92_mag";

_pistol = ["UK3CB_USP", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "UK3CB_USP_9_15Rnd";

_pdw = ["JCA_smg_MP5_VFG_olive_F", _silencer, _pointer, "", _bipod];
_pdw_mag = "JCA_30Rnd_9x21_MP5_Mag";
_pdw_mag_tr = "JCA_30Rnd_9x21_MP5_Green_Mag";

_silencer = "";
_pointer = "";
_sight = "JCA_optic_HPPO_olive";
_bipod = "JCA_bipod_04_olive";

_rifleMarksman = ["JCA_arifle_SR10_AFG_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "JCA_20Rnd_762x51_PMAG";
_rifleMarksman_mag_tr = "JCA_20Rnd_762x51_Tracer_Green_PMAG";
