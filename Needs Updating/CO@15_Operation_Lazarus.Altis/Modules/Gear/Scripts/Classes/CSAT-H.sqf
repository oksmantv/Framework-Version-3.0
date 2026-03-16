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
_pointer = "acc_flashlight";
_sight = "";
_bipod = "";

_rifle = ["SMG_02_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_Uzi_Stock", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["SMG_05_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["SMG_03C_black", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_9x21_Green_Mag";
_rifle_mag_tr = "30Rnd_9x21_Green_Mag";
_rifleC_mag = "UK3CB_Uzi_32Rnd_Magazine_GT";
_rifleC_mag_tr = "UK3CB_Uzi_32Rnd_Magazine_GT";
_rifleGL_mag = "30Rnd_9x21_Mag_SMG_02_Tracer_Green";
_rifleGL_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Green";
_rifleL_mag = "50Rnd_570x28_SMG_03";
_rifleL_mag_tr = "50Rnd_570x28_SMG_03";

_LMG = ["UK3CB_FAMAS_F1", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_FAMAS_25rnd_556x45_GT";

_MMG = ["UK3CB_M16_Carbine", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_M16_30rnd_556x45_GT";

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

_pistol = ["hgun_Rook40_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifleMarksman = ["uk3cb_auga1_para_blk", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_AUG_25Rnd_9x19mm_Magazine";
