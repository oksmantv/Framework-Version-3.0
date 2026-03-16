_useMineDetector = false;
_allowedNightStuff = false;

_insignia = "";
_goggles = ["","G_Shades_Blue","G_Shades_Green","G_Bandanna_shades","G_Aviator","G_Bandanna_sport","G_Bandanna_blk","G_Shades_Red","G_Bandanna_beast"];
_helmet = [
	"H_Booniehat_khk","","H_Cap_marshal","H_Cap_oli_Syndikat_F","H_Bandanna_blu","H_Booniehat_oli","H_Bandanna_sgg",
	"","H_Booniehat_tan","H_Cap_grn_Syndikat_F","H_Bandanna_surfer_blk","H_Bandanna_khk"
];
_OfficerHelmet = "rhs_beret_vdv3";
_uniform = [
	"U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F",
	"U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Para_4_F",
	"U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_1_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F"
];
_vest = [
	"V_BandollierB_rgr","V_Chestrig_blk","V_Chestrig_khk","V_BandollierB_blk","V_TacVest_oli","V_Chestrig_oli",
	"rhs_6b2_chicom","rhs_6b2_holster","rhs_6b2_lifchik","rhs_6b2_RPK","rhs_6b2_SVD","rhs_6b2","rhsgref_alice_webbing","UK3CB_V_CW_Chestrig_2_Small",
	"UK3CB_V_Belt_Rig_KHK","V_Chestrig_rgr","rhsgref_chestrig","rhsgref_chicom","UK3CB_V_Invisible","V_SmershVest_01_F","UK3CB_V_Chestrig_2_Small_OLI","V_Pocketed_coyote_F",
	"V_Rangemaster_belt","V_BandollierB_rgr","UK3CB_TKP_I_V_6Sh92_Khk","UK3CB_TKA_I_V_6Sh92_Khk","UK3CB_TKA_I_V_6Sh92_Oli","rhs_belt_AK_GL","rhs_belt_RPK","rhs_lifchik_NCO",
	"rhs_lifchik_vog","rhs_suspender_AK8_chestrig","rhs_suspender_AK","rhs_suspender_AK4","V_TacVest_camo","UK3CB_ADA_B_V_TacVest_DPM","V_TacVest_oli",
	"rhs_6b2_chicom","rhs_6b2_holster","rhs_6b2_lifchik","rhs_6b2_RPK","rhs_6b2_SVD","rhs_6b2","rhs_6b2_chicom","rhs_6b2_holster","rhs_6b2_lifchik","rhs_6b2_RPK","rhs_6b2_SVD","rhs_6b2"
];
_backpack = [
	"B_FieldPack_cb_Bandit_3_F","B_Kitbag_cbr_Bandit_2_F","B_FieldPack_khk_Bandit_1_F","B_FieldPack_blk_Bandit_8_F","B_Kitbag_rgr_Para_3_F","B_Kitbag_rgr_Para_8_F","B_Kitbag_cbr_Para_5_F"
];
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "UK3CB_CW_SOV_O_LATE_B_ASS_BERGEN_Radio";
};

if (_role isEqualTo "p") then {
	_helmet = "H_Cap_headphones";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";
};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "rhs_acc_dtk1983";
_pointer = "acc_flashlight";
_sight = "";
_bipod = "";

_rifle = ["hlc_rifle_akm", _silencer, _pointer, _sight, _bipod];
_rifleC = ["arifle_AKS_F", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["hlc_rifle_akmgl", _silencer, _pointer, _sight, _bipod];
_rifleL = ["uk3cb_sks_01_sling", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_762x39_Mag_Tracer_Green_F";
_rifleGL_mag = "30Rnd_762x39_Mag_Tracer_Green_F";
_rifleC_mag = "30Rnd_545x39_Mag_Tracer_Green_F";
_rifleL_mag = "uk3cb_10rnd_magazine_sks_RT";

_LMG = ["UK3CB_Bren", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_Bren_30Rnd_762x51_Magazine_RT";

_MMG = ["UK3CB_FNLAR", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_FNFAL_30rnd_762x51_GT";

if(random 1 > 0.5) then {
	_LAT = ["rhs_weap_rpg75", _silencer, _pointer, _sight, _bipod];
	_LAT_mag = "rhs_rpg75_mag";
	_LAT_ReUsable = false;
} else {
	_LAT = ["rhs_weap_rpg18", _silencer, _pointer, _sight, _bipod];
	_LAT_mag = "rhs_rpg18_mag";
	_LAT_ReUsable = false;
};

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";

_HAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "RPG7_F";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["hgun_Pistol_01_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "10Rnd_9x21_Mag";

_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "rhs_mag_9x19mm_7n31_44";

_rifleMarksman = ["rhs_weap_m1garand_sa43", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhsgref_8Rnd_762x63_M2B_M1rifle";
_rifleMarksman_mag_tr = "rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle";
