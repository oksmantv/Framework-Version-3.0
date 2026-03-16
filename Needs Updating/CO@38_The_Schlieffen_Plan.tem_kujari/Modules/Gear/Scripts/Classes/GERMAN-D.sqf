_useMineDetector = true;
_allowedNightStuff = true;

_insignia = "";
_goggles = "rhsusf_shemagh2_tan";
_helmet = "acp_gol_DE_Tropentarn_H_HelmetSpecter_cover_DE_Tropentarn_F";
_OfficerHelmet = "UK3CB_LNM_B_H_BoonieHat_FLK_03";
_uniform = SelectRandom ["acp_gol_DE_Tropentarn_U_B_CTRG_Soldier_DE_Tropentarn_F_insignia"];
_vest = "acp_gol_DE_Tropentarn_V_PlateCarrierSpec_DE_Tropentarn_insignia";
_backpack = "acp_gol_DE_Tropentarn_B_AssaultPackEnhanced_DE_Tropentarn_insignia";
_backpackRadio = _backpack;

if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "acp_gol_DE_Tropentarn_B_RadioBag_01_DE_Tropentarn_F";
};
if(_role in ["g"]) then {
	_backpack = "acp_gol_DE_Tropentarn_B_Carryall_DE_Tropentarn";
};
if (_role in ["ag","lr","ar"]) then {
	_backpack = "acp_gol_DE_Tropentarn_B_Kitbag_rgr_DE_Tropentarn";
};
if(_role in ["mmg"]) then {
	_backpack = "acp_gol_DE_Tropentarn_B_Carryall_DE_Tropentarn";
};
if(_role in ["ammg","ab"]) then {
	_backpack = "acp_gol_DE_Tropentarn_B_Bergen_DE_Tropentarn_F";
};
if (_role isEqualTo "crew") then {
	_vest = "acp_gol_DE_Tropentarn_V_CarrierRigKBT_01_light_DE_Tropentarn_F";
	_backpack = "acp_gol_DE_Tropentarn_B_AssaultPackEnhanced_DE_Tropentarn_insignia";
	_uniform = "acp_gol_DE_Tropentarn_U_O_officer_noInsignia_DE_Tropentarn_F_insignia";
	_helmet = "acp_gol_DE_Tropentarn_H_HelmetHBK_headset_F_DE_Tropentarn";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_ihadss";
	_vest = "rhsusf_spcs_ucp_crewman";
	_uniform = "rhs_uniform_acu_ucp";
	_backpack = "UK3CB_B_I_Backpack_Radio_Chem";
	if(GVARMAIN(mod_TFAR)) then {
		_backpackRadio = "UK3CB_B_I_Backpack_Radio_Chem";
	}
};
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "FIR_USHelmetType1";
	_uniform = "rhs_uniform_acu_ucp";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
	if(GVARMAIN(mod_TFAR)) then {
		_backpackRadio = "UK3CB_B_I_Backpack_Radio_Chem";
	}
};

// Attachments
_silencer = "hlc_muzzle_gunfighter_comp";
_pointer = "";
_sight = "optic_erco_snd_f";
_bipod = "rhsusf_acc_harris_bipod";

// Primary Weapon
_rifle = ["arifle_SPAR_01_snd_F", _silencer, _pointer, _sight, _bipod];
_rifleC = ["hlc_rifle_416D10_ptato", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["arifle_SPAR_01_GL_snd_F", _silencer, _pointer, _sight, _bipod];
_rifleL = ["arifle_SPAR_02_snd_F", _silencer, _pointer, "optic_hamr", _bipod];
_rifle_mag = "hlc_30rnd_556x45_EPR_L5";
_rifle_mag_tr = "hlc_30rnd_556x45_t_L5";
_rifleGL_mag = "hlc_30rnd_556x45_EPR_L5";
_rifleGL_mag_tr = "hlc_30rnd_556x45_t_L5";
_rifleL_mag = "hlc_30rnd_556x45_EPR_L5";
_rifleL_mag_tr = "hlc_30rnd_556x45_t_L5";
_rifleC_mag = "hlc_30rnd_556x45_EPR_L5";
_rifleC_mag_tr = "hlc_30rnd_556x45_t_L5";

_LMG = ["LMG_03_F", _silencer, _pointer, "optic_erco_blk_f", _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["hlc_lmg_MG3KWS_b", _silencer, _pointer, "hlc_optic_docterr", _bipod];
_MMG_mag = "hlc_200Rnd_762x51_T_M60E4";

// Launchers
_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_LAT = ["rhs_weap_M136_hp", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_HAT = ["launch_I_Titan_short_F", _silencer, _pointer, _sight, _bipod];
_HAT_mag = "Titan_AT";

_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
_AA_mag = "Titan_AA";

// Pistol
_pistol = ["rhsusf_weap_glock17g4", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_17Rnd_9x19_FMJ";

_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";