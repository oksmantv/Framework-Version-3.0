_useMineDetector = false;
_allowedNightStuff = false;

_insignia = "";
_goggles = "G_Armband_napa_alt_F";
_helmet = [
	"JCA_H_balaclava_01_black_F"
];
_OfficerHelmet = "rhs_beret_vdv3";
_uniform = [
	"UK3CB_CHC_C_U_ACTIVIST_04",
	"UK3CB_CHC_C_U_ACTIVIST_03",
	"UK3CB_CHC_C_U_ACTIVIST_01",
	"UK3CB_CHC_C_U_ACTIVIST_02",
	"UK3CB_CHC_C_U_COACH_04",
	"UK3CB_CHC_C_U_COACH_01",
	"UK3CB_MEC_C_U_WORK_01",
	"UK3CB_CHC_C_U_HIKER_02",
	"UK3CB_CHC_C_U_HIKER_04",
	"UK3CB_CHC_C_U_HIKER_03"
];
_vest = [
	"rhs_6b2_chicom","rhs_6b2_holster","rhs_6b2_lifchik","rhs_6b2_RPK","rhs_6b2_SVD","rhs_6b2","rhsgref_alice_webbing","UK3CB_V_CW_Chestrig_2_Small",
	"UK3CB_V_Belt_Rig_KHK","V_Chestrig_rgr","rhsgref_chestrig","rhsgref_chicom","UK3CB_V_Invisible","V_SmershVest_01_F","UK3CB_V_Chestrig_2_Small_OLI","V_Pocketed_coyote_F",
	"V_Rangemaster_belt","V_BandollierB_rgr","UK3CB_TKP_I_V_6Sh92_Khk","UK3CB_TKA_I_V_6Sh92_Khk","UK3CB_TKA_I_V_6Sh92_Oli","rhs_belt_AK_GL","rhs_belt_RPK","rhs_lifchik_NCO",
	"rhs_lifchik_vog","rhs_suspender_AK8_chestrig","rhs_suspender_AK","rhs_suspender_AK4","V_TacVest_camo","UK3CB_ADA_B_V_TacVest_DPM","V_TacVest_oli",
	"rhs_6b2_chicom","rhs_6b2_holster","rhs_6b2_lifchik","rhs_6b2_RPK","rhs_6b2_SVD","rhs_6b2","rhs_6b2_chicom","rhs_6b2_holster","rhs_6b2_lifchik","rhs_6b2_RPK","rhs_6b2_SVD","rhs_6b2"
];
_backpack = [
	"rhs_sidor","UK3CB_B_Alice_Bedroll_K","UK3CB_B_Alice_Bedroll_2_K","UK3CB_B_Alice_K","UK3CB_CHC_C_B_HIKER","UK3CB_FIA_B_B_ASS_OLI","UK3CB_B_US_Backpack","UK3CB_B_Bedroll_Backpack",
	"UK3CB_B_Fieldpack","UK3CB_B_Hiker","UK3CB_ION_B_B_RIF_OLI_01","UK3CB_B_Largepack","UK3CB_KDF_B_B_Sidor_RIF_OLI","B_CivilianBackpack_01_Everyday_Black_F","B_Messenger_Olive_F","rhs_rd54"
];
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_CW_SOV_O_LATE_B_ASS_BERGEN_Radio";
};

if (_role in ["lr","ab"]) then {
	_backpack = "rhs_rd54";
};

if (_role in ["ag","ammg"]) then {
	_backpack = ["rhs_medic_bag","UK3CB_KDF_B_B_Sidor_MD_OLI","UK3CB_B_Largepack_Med"];
};
if (_role isEqualTo "p") then {
	_helmet = "H_Booniehat_khk_hs";
	_uniform = "UK3CB_MDF_B_U_CombatUniform_01_LIZ";
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

_rifle = ["rhs_weap_m38", _silencer, _pointer, _sight, _bipod];
_rifleC = ["uk3cb_ak47", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["uk3cb_ppsh41", _silencer, _pointer, _sight, _bipod];
_rifleL = ["uk3cb_sks_01_sling", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhsgref_5Rnd_762x54_m38";
_rifleGL_mag = "uk3cb_PPSH_35rnd_magazine";
_rifleC_mag = "30Rnd_762x39_Mag_Tracer_Green_F";
_rifleL_mag = "uk3cb_10rnd_magazine_sks_RT";

_LMG = ["UK3CB_RPD", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_RPD_100rnd_762x39_GT";

_MMG = ["uk3cb_ppsh41", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "uk3cb_PPSH_71rnd_magazine_RT";

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
_MAT_mag_HE = "rhs_rpg7_TBG7V_mag";

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
