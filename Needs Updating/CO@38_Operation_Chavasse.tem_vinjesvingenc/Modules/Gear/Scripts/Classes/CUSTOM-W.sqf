/*
	Best way to get classnames of things you want is using the ACE Arsenal.
	If you select anything in the ACE Arsenal you will get the classname string which can be pasted into the code below.
	If you don't get a simple string and a huge list of things, the copy did not work, so give it another select and copy again.
	Any questions ask #Editing on Discord!
*/

_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["UK3CB_G_KR_GRN","UK3CB_G_Neck_Shemag_Oli","UK3CB_G_Gloves_Green","rhs_ess_black"];
_helmet = ["UK3CB_CW_US_B_LATE_H_PASGT_01_WDL","UK3CB_CW_US_B_LATE_H_PASGT_02_WDL"];
_OfficerHelmet = "UK3CB_CW_US_B_LATE_H_JNR_OFF_Patrol_Cap_WDL_01";
_uniform = ["UK3CB_CW_US_B_LATE_U_CombatUniform_01_WDL","UK3CB_CW_US_B_LATE_U_CombatUniform_02_WDL","UK3CB_CW_US_B_LATE_U_CombatUniform_03_WDL","UK3CB_CW_US_B_LATE_U_CombatUniform_04_WDL"];
_vest = ["UK3CB_CW_US_B_LATE_V_PASGT_Rif_Vest"];
_backpack = ["UK3CB_CW_US_B_EARLY_B_RIF","UK3CB_B_Alice_pack_02","UK3CB_B_Alice_pack_03","UK3CB_B_Alice_pack_04","UK3CB_B_Alice_pack_covered_01"];
if (true) then {
	_backpackRadio = "UK3CB_B_B_Alice_pack_frame_radio_01";
};

if(_role in ["sm","pm"]) then {
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_Medic_Vest";
	_goggles = "G_Armband_Cross_F";
};
if (_role in ["ar","mmg"]) then {
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_MG_Vest";
};

if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_Crew_Vest";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p_visor";
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_Crew_Vest";
	_goggles = "";
	_uniform = "UK3CB_CW_US_B_Early_U_CombatUniform_01_OLI";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = [["UK3CB_M16A2"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_M16A2", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["UK3CB_M16A2_UGL"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_M16A2", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_rifle_mag_tr = "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";
_rifleGL_mag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_rifleGL_mag_tr = "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";
_rifleC_mag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_rifleC_mag_tr = "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";
_rifleL_mag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_rifleL_mag_tr = "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";

_LMG = ["UK3CB_M60", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_M60_100rnd_762x51_RT";

_MMG = ["UK3CB_M60", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_M60_100rnd_762x51_RT";


_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_maaws", _silencer, _pointer, "rhs_optic_maaws", _bipod];
_MAT_mag = "rhs_mag_maaws_HEAT";
_MAT_mag_HE = "rhs_mag_maaws_HE";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_fim92_mag";

_pistol = ["rhsusf_weap_m1911a1", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_7x45acp_MHP";

_pdw = ["UK3CB_MP5A2", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine";

_silencer = "";
_pointer = "";
_sight = "uk3cb_optic_artel_m14";
_bipod = "";

_rifleMarksman = ["UK3CB_M14", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_M14_20rnd_762x51";
_rifleMarksman_mag_tr = "UK3CB_M14_20rnd_762x51_RT";
