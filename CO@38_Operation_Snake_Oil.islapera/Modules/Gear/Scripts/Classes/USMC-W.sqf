_useMineDetector = false;
_allowedNightStuff = true;

_insignia = "insignia_block82";
_goggles = ["JCA_G_balaclava_01_black_F"];
_helmet = ["rhsusf_mich_bare_norotos","rhsusf_mich_bare_norotos_alt","rhsusf_mich_bare_norotos_alt_headset","rhsusf_mich_bare_norotos_arc","rhsusf_mich_bare_norotos_arc_alt","rhsusf_mich_bare_norotos_headset"];
_OfficerHelmet = "rhs_8point_marpatwd";
_uniform = ["rhs_uniform_g3_m81"];
_vest = ["rhsusf_spc_light","rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_mg","rhsusf_spc_marksman","rhsusf_spc_patchless_radio","rhsusf_spc_rifleman","rhsusf_spc_sniper","rhsusf_spc_squadleader","rhsusf_spc"];
_backpack = ["rhsusf_falconii_coy_gr","rhsusf_assault_eagleaiii_coy"];
if (true) then {
	_backpackRadio = "FRXA_tf_rt1523g_big_Ranger_Green";
};

if (_role in ["ftl","sl"]) then {
	_vest = "rhsusf_spc_teamleader";
};

if (_role in ["ag","ammg","lr","ab"]) then {
	_vest = "rhsusf_spc_corpsman";
	_backpack = "rhsusf_assault_eagleaiii_coy_medic";
};
if (_role in ["ar","mmg"]) then {
	_vest = "rhsusf_spc_mg";
	_backpack = "rhsusf_assault_eagleaiii_coy_mg";
};

if (_role isEqualTo "crew") then {
	_helmet = "rhsusf_cvc_green_helmet";
	_vest = "rhsusf_spc_crewman";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p";
	_vest = "rhsusf_spc_crewman";
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

_silencer = "JCA_muzzle_snds_556_Enhanced_black";
_pointer = "JCA_acc_LaserModule_black_Pointer";
_sight = "rhsusf_acc_eotech_xps3";
_bipod = "rhsusf_acc_tdstubby_blk";

_rifle = ["rhs_weap_m4a1_blockII_KAC_bk", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifle_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";

_rifleC = ["rhs_weap_mk18_bk", _silencer, _pointer, _sight, _bipod];
_rifleC_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleC_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";

_rifleGL = ["rhs_weap_m4a1_blockII_M203_bk", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "GOL_30Rnd_556x45_AP45_Mixed_Red";
_rifleGL_mag_tr = "GOL_30Rnd_556x45_AP45_Tracer_Red";

_rifleL = ["rhs_weap_mk17_LB", _silencer, _pointer, "optic_Hamr", _bipod];
_rifleL_mag = "rhs_mag_20Rnd_SCAR_762x51_m80_ball";
_rifleL_mag_tr = "rhs_mag_20Rnd_SCAR_762x51_m61_ap";

_LMG = ["GOL_weap_m249_pip", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "GOL_rhsusf_200rnd_556x45_AP45_tracer_red";

_MMG = ["rhs_weap_m240B", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhsusf_100Rnd_762x51_m62_tracer";

_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_sand_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "rhs_fgm148_magazine_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["rhsusf_weap_glock17g4", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_17Rnd_9x19_JHP";

_pdw = ["SMG_01_F", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "30Rnd_45ACP_Mag_SMG_01_Tracer_Red";
_pdw_mag_tr = "30Rnd_45ACP_Mag_SMG_01_Tracer_Red";

_rifleMarksman = ["rhs_weap_M107", _silencer, _pointer, "optic_AMS", _bipod];
_rifleMarksman_mag = "rhsusf_mag_10Rnd_STD_50BMG_M33";
_rifleMarksman_mag_tr = "rhsusf_mag_10Rnd_STD_50BMG_mk211";