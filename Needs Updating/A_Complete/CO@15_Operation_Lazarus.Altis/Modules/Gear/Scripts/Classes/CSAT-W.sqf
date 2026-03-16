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
_goggles = "G_RegulatorMask_F";
_helmet = ["H_Beret_blk","H_Cap_blk","UK3CB_H_Cap_Back_ION_BLK","UK3CB_H_Cap_Back_Earpiece_ION_BLK","rhsusf_opscore_bk","H_HeadSet_black_F","UK3CB_H_Ballistic_Mask_BLK","UK3CB_H_Beanie_02_BLK"];
_OfficerHelmet = "H_Beret_CSAT_01_F";
_uniform = ["UK3CB_MEE_O_U_07","UK3CB_MEE_O_U_07_B"];
_vest = ["UK3CB_ADA_B_V_TacVest_BLK","UK3CB_ADA_B_V_TacVest_BLK","UK3CB_V_Carrier_Rig_Light_BLK","UK3CB_V_Carrier_Rig_Compact_BLK","UK3CB_ADA_B_V_TacVest_BLK"];
_backpack = "B_Messenger_Black_F";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "B_RadioBag_01_black_F";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_backpack = "UK3CB_TKP_O_B_ASS_BLK";
};

// Attachments
_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["", _silencer, _pointer, _sight, _bipod];
_rifleC = ["", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["", _silencer, _pointer, _sight, _bipod];
_rifleL = ["", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "";
_rifle_mag_tr = "";
_rifleC_mag = "";
_rifleC_mag_tr = "";
_rifleGL_mag = "";
_rifleGL_mag_tr = "";
_rifleL_mag = "";
_rifleL_mag_tr = "";

_LMG = ["", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "";

_MMG = ["", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "";

_sight = "";

_LAT = ["", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = true;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_O_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "";

_pdw = ["", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "";

_silencer = "";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "bipod_02_F_hex";

_rifleMarksman = ["", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "10Rnd_93x64_DMR_05_Mag";
_rifleMarksman_mag_tr = "10Rnd_93x64_DMR_05_Mag";
