switch (GOL_BLUFOR_Faction) do {
	case 0: { 
		// NATO
		_useMineDetector = false;
		_allowedNightStuff = true;

		_insignia = "111thID";
		_goggles = ["G_Tactical_Clear","G_Balaclava_TI_blk_F","G_Balaclava_TI_G_blk_F","rhsusf_oakley_goggles_clr","rhsusf_shemagh2_gogg_od","rhsusf_shemagh_gogg_od","rhsusf_shemagh2_od","rhsusf_shemagh_od","UK3CB_G_KLR_Oli","G_Combat","UK3CB_G_Tactical_Clear"];
		_helmet = ["H_HelmetB_camo","H_HelmetB","H_HelmetSpecB"];
		_OfficerHelmet = "H_Beret_02";
		_uniform = ["U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_vest"];
		_vest = ["V_PlateCarrier2_rgr","V_PlateCarrierGL_mtp","V_PlateCarrierSpec_mtp","V_PlateCarrier1_rgr"];
		_backpack = "B_Kitbag_mcamo";
		_backpackRadio = _backpack;
		if (true) then {
			_backpackRadio = "B_RadioBag_01_mtp_F";
		};

		if (_role in ["ag","ammg","lr","ab"]) then {
			_backpack = "B_Carryall_mcamo";
		};
		if (_role isEqualTo "crew") then {
			_helmet = "H_HelmetCrew_B";
			_vest = "V_BandollierB_khk";
		};
		if (_role isEqualTo "p") then {
			_helmet = "H_PilotHelmetHeli_B";
			_uniform = "U_B_PilotCoveralls";
			_vest = "V_TacVest_blk";
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
		_sight = "";
		_bipod = "";

		_rifle = ["arifle_MX_F", _silencer, _pointer, _sight, _bipod];
		_rifleC = ["arifle_MXC_F", _silencer, _pointer, _sight, _bipod];
		_rifleGL = ["arifle_MX_GL_F", _silencer, _pointer, _sight, _bipod];
		_rifleL = ["arifle_MXM_F", _silencer, _pointer, _sight, _bipod];
		_rifle_mag = "30Rnd_65x39_caseless_mag";
		_rifle_mag_tr = "30Rnd_65x39_caseless_mag_Tracer";
		_rifleGL_mag = "30Rnd_65x39_caseless_mag";
		_rifleGL_mag_tr = "30Rnd_65x39_caseless_mag_Tracer";
		_rifleL_mag = "30Rnd_65x39_caseless_mag";
		_rifleL_mag_tr = "30Rnd_65x39_caseless_mag_Tracer";

		_LMG = ["arifle_MX_SW_F", _silencer, _pointer, _sight, _bipod];
		_LMG_mag = "100Rnd_65x39_caseless_mag_Tracer";

		_MMG = ["rhs_weap_m249_pip_L", _silencer, _pointer, _sight, _bipod];
		_MMG_mag = "rhsusf_200rnd_556x45_mixed_box";

		_sight = "";

		_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
		_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
		_LAT_ReUsable = false;

		_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
		_MAT_mag = "MRAWS_HEAT_F";

		_HAT = ["launch_B_Titan_short_F", _silencer, _pointer, _sight, _bipod];
		_HAT_mag = "Titan_AT";

		_AA = ["launch_B_Titan_F", _silencer, _pointer, _sight, _bipod];
		_AA_mag = "Titan_AA";

		_pistol = ["hgun_Pistol_heavy_01_F", _silencer, _pointer, "optic_MRD", _bipod];
		_pistol_mag = "11Rnd_45ACP_Mag";

		_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
		_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
		_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

		_silencer = "";
		_pointer = "";
		_sight = "optic_LRPS";
		_bipod = "rhsusf_acc_harris_bipod";

		_rifleMarksman = ["srifle_DMR_06_hunter_F", _silencer, _pointer, _sight, _bipod];
		_rifleMarksman_mag = "20Rnd_762x51_Mag";
		_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mag_Tracer";

	};
	case 1: {
		// USMC
		_useMineDetector = false;
		_allowedNightStuff = true;

		_insignia = "";
		_goggles = "";
		_helmet = "rhsusf_lwh_helmet_marpatd";
		_OfficerHelmet = "rhs_8point_marpatd";
		_uniform = "rhs_uniform_FROG01_d";
		_vest = "rhsusf_spc_rifleman";
		_backpack = "B_Kitbag_tan";
		if (true) then {
			_backpackRadio = "tfw_ilbe_blade_d";
		};

		if (_role in ["ag","ammg","lr","ab"]) then {
			_vest = "rhsusf_spc_iar";
		};
		if (_role in ["ar","mmg"]) then {
			_vest = "rhsusf_spc_mg";
		};
		if (_role isEqualTo "crew") then {
			_vest = "rhsufs_spc_crewman";
			_helmet = "rhsusf_cvc_helmet";
		};
		if (_role isEqualTo "p") then {
			_helmet = "rhsusf_cvc_helmet";
			_vest = "rhsusf_spc_light";
		};

		if (_role isEqualTo "uav") then {
			_backpack = "B_UAV_01_backpack_F";
			_gps = "B_UAVTerminal";

		};
		if (_role isEqualTo "jetp") then {
			_goggles = "";
			_helmet = "H_PilotHelmetFighter_B";
			_uniform = "UK3CB_CW_US_B_LATE_U_J_Pilot_Uniform_01_NATO";
			_vest = "V_Rangemaster_belt";
			_backpack = "B_Parachute";
		};

		_silencer = "";
		_pointer = "";
		_sight = "";
		_bipod = "";

		_rifle = ["rhs_weap_m4a1_blockII_bk", _silencer, _pointer, _sight, _bipod];
		_rifleC = ["rhs_weap_m4a1_carryhandle", _silencer, _pointer, _sight, _bipod];
		_rifleGL = ["rhs_weap_m4a1_blockII_M203_bk", _silencer, _pointer, _sight, _bipod];
		_rifleL = ["rhs_weap_m4a1_blockII_bk", _silencer, _pointer, _sight, _bipod];
		_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
		_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
		_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
		_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
		_rifleC_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
		_rifleC_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

		_LMG = ["rhs_weap_m249_light_L", _silencer, _pointer, _sight, _bipod];
		_LMG_mag = "rhsusf_200rnd_556x45_mixed_box";

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

		_pistol = ["rhsusf_weap_m9", _silencer, _pointer, _sight, _bipod];
		_pistol_mag = "rhsusf_mag_15Rnd_9x19_FMJ";

		_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
		_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
		_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

		_silencer = "";
		_pointer = "";
		_rifleMarksman = ["rhs_weap_sr25", _silencer, _pointer, "optic_dms", "bipod_01_f_blk"];
		_rifleMarksman_mag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
		_rifleMarksman_mag_tr = "rhsusf_20Rnd_762x51_SR25_m62_Mag";

	};
	case 2:{
		// USA
		_useMineDetector = false;
		_allowedNightStuff = true;

		_insignia = "";
		_goggles = "rhsusf_shemagh_tan";
		_helmet = ["rhsusf_ach_helmet_headset_ess_ucp","rhsusf_ach_helmet_headset_ucp_alt","rhsusf_ach_helmet_ESS_ucp_alt","rhsusf_ach_helmet_ucp_norotos"];
		_OfficerHelmet = "rhsusf_patrolcap_ucp";
		_uniform = "rhs_uniform_cu_ucp_10th";
		_vest = "rhsusf_spcs_ucp_rifleman_alt";
		_backpack = "B_Kitbag_cbr";
		if (true) then {
			_backpackRadio = "tfw_ilbe_blade_coy";
		};

		if (_role isEqualTo "sl") then {
			_vest = "rhsusf_spcs_ucp_squadleader";
		};

		if(_role isEqualTo "ftl") then {
			_vest = "rhsusf_spcs_ucp_teamleader_alt";
		};

		if (_role in ["ag","ammg","lr","ab"]) then {
			_vest = "rhsusf_spcs_ucp_medic";
			_backpack = "UK3CB_KRG_B_B_FieldPack_SF_MED";
		};
		if (_role in ["ar","mmg"]) then {
			_vest = "rhsusf_spcs_ucp_saw";
		};

		if (_role isEqualTo "crew") then {
			_helmet = "rhsusf_cvc_green_alt_helmet";
			_vest = "rhsusf_spcs_ucp_crewman";
		};
		if (_role isEqualTo "p") then {
			_helmet = "rhsusf_hgu56p";
			_vest = "rhsusf_spcs_ocp_crewman";
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

		// Attachments
		_silencer = "";
		_pointer = "";
		_sight = "";
		_bipod = "";

		_rifle = ["JCA_arifle_M4A4_VFG_sand_F", _silencer, _pointer, _sight, _bipod];
		_rifleC = ["JCA_arifle_M4A4_AFG_sand_F", _silencer, _pointer, _sight, _bipod];
		_rifleGL = ["JCA_arifle_M4A4_GL_sand_F", _silencer, _pointer, _sight, _bipod];
		_rifleL = ["rhs_weap_m16a4_imod", _silencer, _pointer, _sight, _bipod];
		_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
		_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
		_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
		_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
		_rifleC_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
		_rifleC_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
		_rifleL_mag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
		_rifleL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";


		_LMG = ["rhs_weap_m249_light_S", _silencer, _pointer, _sight, _bipod];
		_LMG_mag = "rhsusf_200rnd_556x45_mixed_box";

		_MMG = ["UK3CB_BAF_L110_762", _silencer, _pointer, _sight, ""];
		_MMG_mag = "UK3CB_BAF_762_200Rnd_T";

		_LAT = ["UK3CB_BAF_AT4_CS_AT_Launcher", _silencer, _pointer, _sight, _bipod];
		_LAT_mag = "UK3CB_BAF_AT4_CS_AT_Mag";
		_LAT_ReUsable = false;

		_MAT = ["launch_MRAWS_green_rail_F", _silencer, _pointer, _sight, _bipod];
		_MAT_mag = "MRAWS_HEAT_F";
		_MAT_mag_HE = "MRAWS_HE_F";

		_HAT = ["rhs_weap_fgm148", _silencer, _pointer, _sight, _bipod];
		_HAT_mag = "rhs_fgm148_magazine_AT";

		_AA = ["rhs_weap_fim92", _silencer, _pointer, _sight, _bipod];
		_AA_mag = "Titan_AA";

		_pistol = ["rhsusf_weap_m9", _silencer, _pointer, _sight, _bipod];
		_pistol_mag = "rhsusf_mag_15Rnd_9x19_FMJ";

		_pdw = ["UK3CB_MP5A4", _silencer, _pointer, _sight, _bipod];
		_pdw_mag = "UK3CB_MP5_30Rnd_9x19_Magazine_R";
		_pdw_mag_tr = "UK3CB_MP5_30Rnd_9x19_Magazine_RT";

		_silencer = "rhsusf_acc_m2010s_wd";
		_pointer = "";
		_sight = "optic_LRPS";
		_bipod = "rhsusf_acc_harris_bipod";

		_rifleMarksman = ["rhs_weap_XM2010_wd", _silencer, _pointer, _sight, _bipod];
		_rifleMarksman_mag = "rhsusf_5Rnd_300winmag_xm2010";
		_rifleMarksman_mag_tr = "";

	};
};

