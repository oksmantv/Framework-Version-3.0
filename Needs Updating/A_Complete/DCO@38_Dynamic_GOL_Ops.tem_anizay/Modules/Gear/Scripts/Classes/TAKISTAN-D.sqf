switch (GOL_OPFOR_Faction) do {
	case 0: { 
		// TKA
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
		_goggles = "";
		_helmet = ["UK3CB_ARD_B_H_Ssh68_Des"];
		_OfficerHelmet = "H_Beret_blk";
		_uniform = ["UK3CB_TKA_O_U_CombatUniform_01_ADPM","UK3CB_TKA_O_U_CombatUniform_02_ADPM"];
		_vest = ["rhs_6b2_chicom","rhs_6b2_lifchik","rhs_6b2_RPK"];
		_backpack = "UK3CB_B_Alice_K";
		_backpackRadio = _backpack;
		if (true) then {
			_backpackRadio = "UK3CB_B_O_Alice_Radio_Backpack";
		};

		if(_role in ["r","lr"]) then {
			_backpack = "rhs_rpg_2";
		};

		if (_role in ["ag","ammg","ab"]) then {
			_backpack = "UK3CB_B_Alice_Med_K";
		};
		if (_role isEqualTo "p") then {
			_helmet = "H_Booniehat_khk_hs";
			_uniform = "UK3CB_TKA_B_U_H_Pilot_DES";
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

		_silencer = "rhs_acc_pgs64_74u";
		_pointer = "";
		_sight = "";
		_bipod = "";

		_rifleC = ["rhs_weap_aks74u", _silencer, _pointer, _sight, _bipod];

		_silencer = "rhs_acc_dtk1983";
		_pointer = "";
		_sight = "";
		_bipod = "";

		_rifle = ["rhs_weap_aks74", _silencer, _pointer, _sight, _bipod];
		_rifleGL = ["rhs_weap_aks74_gp25", _silencer, _pointer, _sight, _bipod];
		_rifleL = ["rhs_weap_aks74n", _silencer, _pointer, _sight, _bipod];
		_rifle_mag = "30Rnd_545x39_Mag_F";
		_rifle_mag_tr = "30Rnd_545x39_Mag_Tracer_F";
		_rifleGL_mag = "30Rnd_545x39_Mag_F";
		_rifleGL_mag_tr = "30Rnd_545x39_Mag_Tracer_F";

		_LMG = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
		_LMG_mag = "UK3CB_RPK74_60rnd_545x39_GT";

		_MMG = ["rhs_weap_pkm", _silencer, _pointer, _sight, _bipod];
		_MMG_mag = "rhs_100Rnd_762x54mmR_green";

		_LAT = ["rhs_weap_rpg18", _silencer, _pointer, _sight, _bipod];
		_LAT_mag = "rhs_rpg18_mag";
		_LAT_ReUsable = false;

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
		_sight = "rhs_acc_pso1m2";
		_bipod = "";

		_rifleMarksman = ["rhs_weap_svdp_wd", _silencer, _pointer, _sight, _bipod];
		_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
		_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";			
	};
	case 1:{
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
		_goggles = "rhsusf_shemagh2_gogg_tan";
		_helmet = ["UK3CB_CSAT_A_O_H_6b27m","UK3CB_CSAT_A_O_H_6b27m_ESS"];
		_OfficerHelmet = "H_Beret_CSAT_01_F";
		_uniform = ["UK3CB_CSAT_A_O_U_CombatUniform_Shortsleeve","UK3CB_CSAT_A_O_U_CombatUniform"];
		_vest = "UK3CB_CSAT_A_O_V_Carrier_Rig_Light";
		_backpack = "UK3CB_CSAT_B_O_B_RIF";
		_backpackRadio = _backpack;
		if (true) then {
			_backpackRadio = "UK3CB_CSAT_A_O_B_RadioBag";
		};

		if(_role in ["sl","ftl","ag"]) then {
			_goggles = "rhs_facewear_6m2_1";
		};

		if (_role in ["ag","ammg","lr","ab"]) then {
			_backpack = "UK3CB_CSAT_A_O_B_ENG";
		};
		if (_role isEqualTo "crew") then {
			_helmet = "H_HelmetCrew_O";
		};
		if (_role isEqualTo "p") then {
			_helmet = "H_PilotHelmetHeli_O";
			_uniform = "UK3CB_CSAT_A_O_U_H_Pilot";
			_vest = "UK3CB_CSAT_A_O_V_Carrier_Rig_Light";
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
		_pointer = "acc_flashlight";
		_sight = "JCA_optic_ARO_black";
		_bipod = "rhs_acc_grip_rk2";

		_rifle = ["rhs_weap_ak74mr", _silencer, _pointer, _sight, _bipod];
		_rifleC = ["rhs_weap_ak105_zenitco01_b33", _silencer, _pointer, _sight, _bipod];
		_rifleGL = ["rhs_weap_ak74mr_gp25", _silencer, _pointer, _sight, _bipod];
		_rifleL = ["JCA_arifle_SR10_VFG_black_F", _silencer, _pointer, _sight, _bipod];
		_rifle_mag = "UK3CB_RPK74_60rnd_545x39_Y";
		_rifle_mag_tr = "UK3CB_RPK74_60rnd_545x39_YT";
		_rifleC_mag = "UK3CB_RPK74_60rnd_545x39_Y";
		_rifleC_mag_tr = "UK3CB_RPK74_60rnd_545x39_YT";
		_rifleGL_mag = "UK3CB_RPK74_60rnd_545x39_Y";
		_rifleGL_mag_tr = "UK3CB_RPK74_60rnd_545x39_YT";
		_rifleL_mag = "JCA_20Rnd_762x51_Yellow_SMAG";
		_rifleL_mag_tr = "JCA_20Rnd_762x51_Tracer_Yellow_SMAG";

		_LMG = ["arifle_CTARS_blk_F", _silencer, _pointer, _sight, _bipod];
		_LMG_mag = "UK3CB_DBP88_100rnd_580x42_YM";

		_MMG = ["UK3CB_M60", _silencer, _pointer, _sight, _bipod];
		_MMG_mag = "UK3CB_M60_100rnd_762x51_YT";

		_sight = "";

		_LAT = ["rhs_weap_rpg26", _silencer, _pointer, _sight, _bipod];
		_LAT_mag = "rhs_rpg26_mag";
		_LAT_ReUsable = false;

		_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
		_MAT_mag = "RPG7_F";

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
		_sight = "optic_LRPS";
		_bipod = "bipod_02_F_hex";

		_rifleMarksman = ["srifle_DMR_05_hex_F", _silencer, _pointer, _sight, _bipod];
		_rifleMarksman_mag = "10Rnd_93x64_DMR_05_Mag";
		_rifleMarksman_mag_tr = "10Rnd_93x64_DMR_05_Mag";
	};
	case 2:{
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
		_goggles = "";
		_helmet = ["UK3CB_TKM_I_H_Turban_03_1","","UK3CB_TKM_I_H_Turban_04_1","UK3CB_TKM_I_H_Turban_05_1","UK3CB_TKM_I_H_Turban_01_1","UK3CB_TKM_I_H_Turban_02_1","UK3CB_H_Shemag_red_02","H_ShemagOpen_khk"];
		_OfficerHelmet = "UK3CB_TKP_B_H_Patrolcap_TAN";
		_uniform = ["UK3CB_TKM_B_U_04","UK3CB_TKM_B_U_01","UK3CB_TKM_B_U_03","UK3CB_TKM_I_U_01","UK3CB_TKM_I_U_01_B","UK3CB_TKM_I_U_01_C","UK3CB_TKM_I_U_03","UK3CB_TKM_I_U_03_B","UK3CB_TKM_I_U_03_C","UK3CB_TKM_I_U_04","UK3CB_TKM_I_U_04_C","UK3CB_TKM_I_U_05_B","UK3CB_TKM_I_U_06","UK3CB_TKM_I_U_06_C"];
		_vest = ["rhs_6b2_chicom","rhs_6b2_holster","rhs_6b2_lifchik","rhs_6b2_RPK","rhs_6b2_SVD","rhs_6b2","UK3CB_TKA_I_V_6Sh92_Des","UK3CB_V_CW_Chestrig_2_Small","rhs_belt_RPK","UK3CB_V_Belt_Rig_KHK"];
		_backpack = "UK3CB_CW_SOV_O_EARLY_B_Sidor_RIF";
		_backpackRadio = _backpack;
		if (true) then {
			_backpackRadio = "UK3CB_CW_SOV_O_LATE_B_ASS_BERGEN_Radio";
		};


		if (_role in ["ag","ammg","lr","ab"]) then {
			_backpack = "rhs_rd54";
		};
		if (_role isEqualTo "p") then {
			_helmet = "H_Booniehat_khk_hs";
			_uniform = "UK3CB_CHC_C_U_Overall_03";
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
		_pointer = "";
		_sight = "";
		_bipod = "";

		_rifle = ["rhs_weap_aks74", _silencer, _pointer, _sight, _bipod];
		_rifleC = ["rhs_weap_aks74u", _silencer, _pointer, _sight, _bipod];
		_rifleGL = ["rhs_weap_aks74_gp25", _silencer, _pointer, _sight, _bipod];
		_rifleL = ["rhs_weap_akms", _silencer, _pointer, _sight, _bipod];
		_rifle_mag = "30Rnd_545x39_Mag_F";
		_rifle_mag_tr = "30Rnd_545x39_Mag_Tracer_F";
		_rifleGL_mag = "30Rnd_545x39_Mag_F";
		_rifleGL_mag_tr = "30Rnd_545x39_Mag_Tracer_F";
		_rifleL_mag = "rhs_30Rnd_762x39mm_bakelite_tracer";

		_LMG = ["rhs_weap_rpk74m", _silencer, _pointer, _sight, _bipod];
		_LMG_mag = "UK3CB_RPK74_60rnd_545x39_GT";

		_MMG = ["rhs_weap_pkm", _silencer, _pointer, _sight, _bipod];
		_MMG_mag = "rhs_100Rnd_762x54mmR_green";

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
		_sight = "rhs_acc_pso1m21";
		_bipod = "";

		_rifleMarksman = ["rhs_weap_svdp_wd", _silencer, _pointer, _sight, _bipod];
		_rifleMarksman_mag = "rhs_10Rnd_762x54mmR_7N1";
		_rifleMarksman_mag_tr = "rhs_10Rnd_762x54mmR_7N14";
	};
};

