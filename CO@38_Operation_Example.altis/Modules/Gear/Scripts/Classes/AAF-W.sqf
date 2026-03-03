
_useMineDetector = false;
_allowedNightStuff = true;

_glHEDP = "uk3cb_1rnd_riflegrenade_mas_ap";
_glHE = "uk3cb_1rnd_riflegrenade_mas_ap";
_glSmokeW = "uk3cb_1rnd_riflegrenade_mas_wp";
_glSmokeR = "uk3cb_1rnd_riflegrenade_mas_wp";
_glSmokeG = "uk3cb_1rnd_riflegrenade_mas_wp";

_insignia = "UK3CB_AAF_Insignia_Recon";
_goggles = ["UK3CB_G_KLR_GRN","UK3CB_G_KL_GRN","UK3CB_G_KR_GRN","JCA_G_balaclava_01_olive_F","JCA_G_balaclava_01_olive_F"];
_OfficerHelmet = "H_MilCap_dgtl";
_helmet =  ["UK3CB_H_M1_Helmet_Net_OLI","UK3CB_H_M1_Helmet_Covered_Band_OLI","UK3CB_H_M1_Helmet_Covered_OLI"];
_uniform =  ["UK3CB_AAF_B_U_CombatUniform_DIGI_GRN","UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_GRN","UK3CB_AAF_B_U_JumperUniform_DIGI_GRN"];
_vest =  ["UK3CB_CW_US_B_LATE_V_PASGT_Rif_Vest_GOL"];
_backpack = ["UK3CB_B_Alice_pack_01"];
_backpackRadio = ["UK3CB_B_I_Alice_pack_frame_radio_01"];

if (_role in ["ag","ammg","lr","ab","atab"]) then {
	_backpack = "UK3CB_B_Alice_pack_frame_02";
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_Medic_Vest_GOL";
};
if(_role in ["mmg","ar"]) then {
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_MG_Vest_GOL";
};
if(_role in ["ab","atab"]) then {
	_backpack = "B_Bergen_dgtl_F";
};
if (_role isEqualTo "crew") then {
	_helmet = "UK3CB_H_HSAT_PTYPE";
	_vest = "UK3CB_CW_US_B_LATE_V_PASGT_Crew_Vest_GOL";
};
if (_role isEqualTo "p") then {
	_helmet = "UK3CB_H_Crew_Helmet";
	_uniform = "UK3CB_AAF_I_U_H_Pilot_DIGI_GRN";
	_vest = "V_PlateCarrierIA1_dgtl";

};
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_I";
	_uniform = "UK3CB_AAF_I_U_J_Pilot_DIGI_GRN";
	_vest = "V_RebreatherIA";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["UK3CB_AR10_Porto_Sup_OD", _silencer, _pointer, _sight, _bipod];
_rifleC = ["UK3CB_AR10_Porto_Carbine_OD", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["UK3CB_AR10_Porto_OD", _silencer, _pointer, _sight, _bipod];
_rifleL = ["UK3CB_AR10_Porto_Marksman_Sup_OD", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag";
_rifle_mag_tr = "rhsusf_20Rnd_762x51_SR25_m62_Mag";
_rifleGL_mag = "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag";
_rifleGL_mag_tr = "rhsusf_20Rnd_762x51_SR25_m62_Mag";
_rifleL_mag = "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag";
_rifleL_mag_tr = "rhsusf_20Rnd_762x51_SR25_m62_Mag";
_rifleC_mag = "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag";
_rifleC_mag_tr = "rhsusf_20Rnd_762x51_SR25_m62_Mag";

_LMG = ["UK3CB_M60", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_BAF_762_100Rnd_T";

_MMG = ["UK3CB_M60", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

_LAT = ["JCA_launch_M72_olive_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_maaws", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["launch_I_Titan_F", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

_pistol = ["UK3CB_BHP", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "UK3CB_BAF_9_13Rnd";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

_silencer = "muzzle_snds_B_khk_F";
_pointer = "acc_pointer_IR";
_sight = "rhsusf_acc_ACOG_RMR";
_bipod = "bipod_03_F_oli";

_rifleMarksman = ["srifle_DMR_03_woodland_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "ACE_20Rnd_762x51_Mag_Tracer";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";
