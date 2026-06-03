_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "";
_goggles = ["G_Tactical_Clear","G_Balaclava_TI_blk_F","G_Balaclava_TI_G_blk_F","rhsusf_oakley_goggles_clr","rhsusf_shemagh2_gogg_od","rhsusf_shemagh_gogg_od","rhsusf_shemagh2_od","rhsusf_shemagh_od","UK3CB_G_KLR_Oli","G_Combat","UK3CB_G_Tactical_Clear"];
_helmet = ["rhsgref_helmet_pasgt_altis_lizard"];
_OfficerHelmet = "H_Beret_02";
_uniform = ["rhsgref_uniform_altis_lizard"];
_vest = ["rhs_6b3"];
_backpack = "UK3CB_B_Alice_pack_01";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_B_B_Alice_pack_frame_radio_01";
};

if (_role in ["ag","ammg","lr","ab","atab"]) then {
	_backpack = "UK3CB_B_Alice_pack_04";
	_Vest = "rhs_6b3_RPK";
};

if(_role in ["g","amat"]) then {
	_vest = ["rhs_6b3_VOG","rhs_6b3_VOG_2"]
};

if(_role in ["pl","ftl","sl","fac"]) then {
	_vest = "rhs_6b3_R148";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
	_vest = "rhs_6b3_holster";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_PlateCarrier2_rgr";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
_sight = "JCA_optic_IHO_sand_magnifier";
_bipod = "rhsusf_acc_grip2_tan";

_rifle = ["rhs_weap_m4a1_blockII_d", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_mk18_d", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_m4a1_blockII_M203_d", _silencer, _pointer, _sight, _bipod];
_rifleL = ["rhs_weap_SCARH_LB", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifle_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleGL_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleGL_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";
_rifleL_mag = "rhs_mag_20Rnd_SCAR_762x51_mk316_special_bk";
_rifleL_mag_tr = "rhs_mag_20Rnd_SCAR_762x51_m62_tracer_bk";

_LMG = ["GOL_MMG_01_tan_F", _silencer, _pointer, "JCA_optic_MROS_sand_magnifier", "JCA_bipod_04_sand"];
_LMG_mag = "GOL_200Rnd_93x64_Mag_SLAP_Tracer_Red";

_MMG = ["GOL_MG3_KWS_B", _silencer, _pointer, "JCA_optic_MROS_black_magnifier", _bipod];
_MMG_mag = "GOL_MG3_250Rnd_762x51_M993_SLAP_Tracer_Red";

_sight = "";

_LAT = ["GOL_launch_NLAW_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_olive_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_B_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["hgun_Pistol_heavy_01_F", _silencer, _pointer, "optic_MRD", _bipod];
_pistol_mag = "11Rnd_45ACP_Mag";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "";
_pointer = "";
_sight = "rhsusf_acc_ACOG_RMR";
_bipod = "rhsusf_acc_harris_bipod";

_rifleMarksman = ["srifle_DMR_06_olive_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "ACE_20Rnd_762x51_Mag_Tracer";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";

