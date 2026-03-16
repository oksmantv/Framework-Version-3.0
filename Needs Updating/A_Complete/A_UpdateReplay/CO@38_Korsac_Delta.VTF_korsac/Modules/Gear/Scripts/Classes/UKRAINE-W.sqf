_useMineDetector = true;
_allowedNightStuff = false;

_glHE = "rhs_VOG25";
_glHEDP = "rhs_VG40TB";
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
_insignia = "GOL_Insignia_Hellfish";
_goggles = [
	"rhsusf_shemagh_grn"
];
_helmet = ["rhs_altyn_bala","rhs_altyn","rhs_altyn_visordown","rhs_altyn_novisor_ess_bala","rhs_altyn_novisor_ess","rhs_altyn_novisor_bala","rhs_altyn_novisor"];
_OfficerHelmet = "UK3CB_ANA_B_H_OFF_Beret_GRN";
_uniform = ["acp_gol_US_Tigerstripe_U_B_CombatUniform_US_Tigerstripe","acp_gol_US_Tigerstripe_U_B_CombatUniform_vest_US_Tigerstripe","acp_gol_US_Tigerstripe_U_B_CTRG_Soldier_US_Tigerstripe_F","acp_gol_US_Tigerstripe_U_B_CTRG_Soldier_3_US_Tigerstripe_F"];
_vest = ["UK3CB_GAF_B_MBAV_LIGHT_DIGI","UK3CB_GAF_B_MBAV_LIGHT_DIGI_OLI","UK3CB_GAF_B_MBAV_RIFLEMAN_DIGI","UK3CB_GAF_B_MBAV_RIFLEMAN_DIGI_OLI"];
_backpack = "UK3CB_GAF_B_B_ASS_DIGI";
_backpackRadio = _backpack;

if (true) then {
	_backpackRadio = "UK3CB_ION_B_B_RadioBag_OLI";
};

if(_role in ["pl","fac","sl"]) then {
	_helmet = "UK3CB_GAF_B_H_Beret_Army";
	_goggles = "rhsusf_shemagh_grn";
};

if(_role in ["ammg","mmg","amat","mat"]) then {
	_backpack = "UK3CB_GAF_B_B_ENG_DIGI";
};
if(_role in ["sm"]) then {
	_vest = ["UK3CB_GAF_B_MBAV_MEDIC_DIGI_OLI_01","UK3CB_GAF_B_MBAV_MEDIC_DIGI_OLI_02","UK3CB_GAF_B_MBAV_MEDIC_DIGI_OLI_03"];
};
if(_role in ["g","amat"]) then {
	_vest = ["UK3CB_GAF_B_MBAV_GRENADIER_DIGI_OLI","UK3CB_GAF_B_MBAV_GRENADIER_DIGI"]
};
if(_role in ["ar","mmg"]) then {
	_vest = ["UK3CB_GAF_B_MBAV_MG_DIGI_OLI_01","UK3CB_GAF_B_MBAV_MG_DIGI_02","UK3CB_GAF_B_MBAV_MG_OLI_02"]
};
if (_role isEqualTo "p") then {
	_helmet = ["UK3CB_TKA_O_H_zsh7a_mike_Des","UK3CB_TKA_O_H_zsh7a_mike_Des_alt"];
	_uniform = "acp_gol_US_Tigerstripe_U_B_CombatUniform_US_Tigerstripe";
	_vest = "UK3CB_GAF_B_MBAV_DIGI";
	_backpack = "tfw_ilbe_dd_coy";
};

if(_role isEqualTo "crew") then {
	_helmet = "rhs_tsh4";
	_uniform = "acp_gol_US_Tigerstripe_U_B_CombatUniform_US_Tigerstripe";
	_vest = "UK3CB_GAF_B_MBAV_DIGI";
};
if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "rhs_zsh7a";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};


_silencer = "rhs_acc_uuk";
_pointer = "";
_sight = "optic_Arco_blk_F";
_bipod = "";

_rifle = ["rhs_weap_ak74m_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_aks74un", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_ak74mr_gp25", _silencer, _pointer, _sight, _bipod];
_rifleL = ["srifle_DMR_07_blk_F", "muzzle_snds_65_TI_blk_F", _pointer, "rhsusf_acc_LEUPOLDMK4_2", ""];
_rifle_mag = "30Rnd_545x39_Mag_F";
_rifle_mag_tr = "30Rnd_545x39_Mag_Tracer_F";
_rifleC_mag = "30Rnd_545x39_Mag_F";
_rifleC_mag_tr = "30Rnd_545x39_Mag_Tracer_F";
_rifleGL_mag = "30Rnd_545x39_Mag_F";
_rifleGL_mag_tr = "30Rnd_545x39_Mag_Tracer_F";
_rifleL_mag = "ACE_20Rnd_65_Creedmor_mag";
_rifleL_mag_tr = "ACE_20Rnd_65_Creedmor_mag";

_LMG = [["rhs_weap_rpk74m","rhs_weap_rpk74m_npz"], _silencer, _pointer, _sight, _bipod];
_LMG_mag = "UK3CB_RPK74_60rnd_545x39_YT";

_MMG = ["UK3CB_BAF_L110A2RIS", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "UK3CB_BAF_556_200Rnd_T";


_LAT = ["rhs_weap_m72a7", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_rpg7", _silencer, _pointer, "rhs_acc_pgo7v3", _bipod];
_MAT_mag = "rhs_rpg7_PG7VM_mag";
_MAT_mag_HE = "rhs_rpg7_TBG7V_mag";

_HAT = ["launch_O_Vorona_green_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Vorona_HEAT";

_AA = ["rhs_weap_igla", _silencer, _pointer, _sight, _bipod];
_AA_mag = "rhs_mag_9k38_rocket";

_pistol = ["hgun_Rook40_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "16Rnd_9x21_yellow_Mag";

_pdw = ["rhs_weap_aks74un", _silencer, _pointer, "", _bipod];
_pdw_mag = "30Rnd_545x39_Mag_F";

_silencer = "";
_pointer = "";
_sight = "rhs_acc_pso1m21";
_bipod = "";

_rifleMarksman = ["rhs_weap_svds", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";