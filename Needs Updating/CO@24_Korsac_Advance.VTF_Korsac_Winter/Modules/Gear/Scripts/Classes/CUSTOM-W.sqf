/*
	Best way to get classnames of things you want is using the ACE Arsenal.
	If you select anything in the ACE Arsenal you will get the classname string which can be pasted into the code below.
	If you don't get a simple string and a huge list of things, the copy did not work, so give it another select and copy again.
	Any questions ask #Editing on Discord!
*/

_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["",""];
_helmet = ["UK3CB_CSAT_S_O_H_6b47_bala_WIN"];
_OfficerHelmet = "";
_uniform = ["UK3CB_ION_B_U_Uniform_01_WIN","UK3CB_ION_B_U_Uniform_02_WIN","UK3CB_ION_B_U_Uniform_04_WIN"];
_vest = ["UK3CB_V_PlateCarrier1_win"];
_backpack = ["UK3CB_ION_B_B_RIF_WIN_01"];
if (true) then {
	_backpackRadio = "UK3CB_ION_O_B_RadioBag_WIN";
};

if (_role isEqualTo "crew") then {
	_helmet = "H_Tank_black_F";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_O";
	_unform = "UK3CB_ION_B_U_H_Pilot_Uniform_01_WIN";
};
_silencer = "";
_pointer = "";
_sight = "optic_Holosight_blk_F";
_bipod = "";

_rifle = [["arifle_SPAR_02_blk_F"], _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_SPAR_02_blk_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = [["arifle_SPAR_01_GL_blk_F"], _silencer, _pointer, _sight, _bipod];
_rifleL = ["arifle_SPAR_03_blk_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "JCA_30Rnd_556x45_PMAG";
_rifle_mag_tr = "JCA_30Rnd_556x45_Tracer_Red_PMAG";
_rifleGL_mag = "JCA_30Rnd_556x45_PMAG";
_rifleGL_mag_tr = "JCA_30Rnd_556x45_Tracer_Red_PMAG";
_rifleC_mag = "JCA_30Rnd_556x45_PMAG";
_rifleC_mag_tr = "JCA_30Rnd_556x45_Tracer_Red_PMAG";
_rifleL_mag = "20Rnd_762x51_Mag";
_rifleL_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";


_LMG = ["rhs_weap_m249", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["UK3CB_M60", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_M60_100rnd_762x51_RT";

_LAT = ["rhs_weap_M136", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT55_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_I_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_fim92_mag";

_pistol = ["rhsusf_weap_glock17g4", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_17Rnd_9x19_JHP";

_pdw = ["JCA_smg_MP5_FL_black_F", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "JCA_30Rnd_9x21_MP5_Mag";
_pdw_mag_tr = "JCA_30Rnd_9x21_MP5_Red_Mag";

_silencer = "";
_pointer = "";
_sight = "JCA_optic_HPPO_black";
_bipod = "UK3CB_underbarrel_acc_bipod";

_rifleMarksman = ["UK3CB_BAF_L115A3_BL", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "7Rnd_408_Mag";
_rifleMarksman_mag_tr = "UK3CB_BAF_338_5Rnd_Tracer";
