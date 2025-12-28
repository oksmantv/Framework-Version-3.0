_useMineDetector = false;
_allowedNightStuff = true;

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
_goggles = ["rhs_facewear_6m2","G_Armband_csat_F","G_Armband_csat_F","G_Headband_darred_F","G_Headband_darred_F"];
_helmet = ["UK3CB_CSAT_N_O_H_6b27m","UK3CB_CSAT_N_O_H_6b27m_ESS"];
_OfficerHelmet = "H_Beret_CSAT_01_F";
_uniform = ["UK3CB_CSAT_N_O_U_CombatUniform","UK3CB_CSAT_N_O_U_CombatUniform_Shortsleeve"];
_vest = "UK3CB_CSAT_N_O_V_Carrier_Rig";
_backpack = "UK3CB_CSAT_N_O_B_ASS";
_backpackRadio = _backpack;
if (true) then {
	_backpackRadio = "UK3CB_CSAT_N_O_B_RadioBag";
};

if(_role in ["sl","ftl","ag","atab"]) then {
	_goggles = "rhs_facewear_6m2_1";
};

if (_role in ["ag","atab","ammg","lr","ab"]) then {
	_backpack = "UK3CB_CSAT_N_O_B_ENG";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_O";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_O";
	_uniform = "UK3CB_CSAT_G_O_U_H_Pilot";
	_vest = "UK3CB_V_PlateCarrier1_oli";
};
if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

// Attachments
_silencer = "rhs_acc_uuk";
_pointer = "";
_sight = "JCA_optic_ARO_black";
_bipod = "rhs_acc_grip_rk2";

_rifle = ["rhs_weap_vhsd2_ct15x", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_vhsk2", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_vhsd2_bg_ct15x", _silencer, _pointer, _sight, _bipod];
_rifleL = ["arifle_ARX_blk_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "UK3CB_G36_30rnd_556x45_Y";
_rifle_mag_tr = "UK3CB_G36_30rnd_556x45_YT";
_rifleC_mag = "UK3CB_G36_30rnd_556x45_Y";
_rifleC_mag_tr = "UK3CB_G36_30rnd_556x45_YT";
_rifleGL_mag = "UK3CB_G36_30rnd_556x45_Y";
_rifleGL_mag_tr = "UK3CB_G36_30rnd_556x45_YT";
_rifleL_mag = "10Rnd_50BW_Mag_F";
_rifleL_mag_tr = "30Rnd_65x39_caseless_green";

_LMG = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_RPK74_60rnd_545x39_YT";

_MMG = ["LMG_Mk200_black_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "200Rnd_65x39_cased_Box_Tracer";

_sight = "";

_LAT = ["rhs_weap_rpg26", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg26_mag";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_rpg7", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "RPG7_F";
_MAT_mag_HE = "rhs_rpg7_type69_airburst_mag";

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
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svdp_wd_npz", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "UK3CB_SVD_10rnd_762x54_GT";
_rifleMarksman_mag_tr = "UK3CB_SVD_10rnd_762x54_GT";

_random = (random 1);
if(_random < 0.3) then {

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
	_goggles = "UK3CB_G_Gloves_Black";
	_helmet = ["UK3CB_CSAT_N_O_H_Bandanna","","UK3CB_CSAT_N_O_H_BoonieHat","UK3CB_CSAT_N_O_H_Cap","UK3CB_CSAT_N_O_H_M1_Covered","UK3CB_CSAT_N_O_H_M1_Covered_Band","UK3CB_CSAT_N_O_H_SSh68_Covered","UK3CB_CSAT_N_O_H_Patrolcap_Mic"];
	_OfficerHelmet = "UK3CB_CSAT_N_O_H_Patrolcap";
	_uniform = ["UK3CB_CSAT_N_O_U_Tanktop","UK3CB_CSAT_N_O_U_JumperUniform"];
	_vest = ["UK3CB_CSAT_N_O_V_TacVest"];
	_backpack = "B_Messenger_Black_F";
	_backpackRadio = _backpack;
	if (true) then {
		_backpackRadio = "UK3CB_B_I_Radio_Backpack";
	};


	if (_role in ["ag","ammg","lr","ab"]) then {
		_backpack = "B_CivilianBackpack_01_Everyday_Black_F";
	};
	if (_role isEqualTo "p") then {
		_helmet = "H_Booniehat_khk_hs";
		_uniform = "UK3CB_CSAT_N_O_U_Tanktop";
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
	_pointer = "rhs_acc_2dpZenit";
	_sight = "";
	_bipod = "";

	_rifle = ["rhs_weap_aks74", _silencer, _pointer, _sight, _bipod];
	_rifleC = ["rhs_weap_aks74u", _silencer, _pointer, _sight, _bipod];
	_rifleGL = ["rhs_weap_aks74_gp25", _silencer, _pointer, _sight, _bipod];
	_rifleL = ["UK3CB_SVD_OLD", _silencer, _pointer, "rhs_acc_pso1m2", _bipod];
	_rifle_mag = "30Rnd_545x39_Mag_F";
	_rifle_mag_tr = "30Rnd_545x39_Mag_Tracer_F";
	_rifleGL_mag = "30Rnd_545x39_Mag_F";
	_rifleGL_mag_tr = "30Rnd_545x39_Mag_Tracer_F";
	_rifleL_mag = "UK3CB_SVD_10rnd_762x54_YT";

	_LMG = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
	_LMG_mag = "UK3CB_RPK74_60rnd_545x39_YT";

	_MMG = ["rhs_weap_pm63", _silencer, _pointer, _sight, _bipod];
	_MMG_mag = "UK3CB_RPK_75rnd_762x39_YT";

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

	_HAT = ["launch_O_Vorona_brown_F", _silencer, _pointer, _sight, _bipod];
	_HAT_mag = "Vorona_HEAT";

	_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
	_AA_mag = "rhs_mag_9k38_rocket";

	_pistol = ["hgun_Pistol_01_F", _silencer, _pointer, _sight, _bipod];
	_pistol_mag = "10Rnd_9x21_Mag";

	_pdw = ["rhs_weap_pp2000", _silencer, _pointer, _sight, _bipod];
	_pdw_mag = "rhs_mag_9x19mm_7n31_44";

	_silencer = "";
	_pointer = "";
	_sight = "rhsusf_acc_M8541";
	_bipod = "";

	_rifleMarksman = ["rhs_weap_m38_rail", _silencer, _pointer, _sight, _bipod];
	_rifleMarksman_mag = "rhsgref_5Rnd_762x54_m38";
	_rifleMarksman_mag_tr = "rhsgref_5Rnd_762x54_m38";

};