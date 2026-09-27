	MISSION_ROOT = call { private "_arr"; _arr = toArray __FILE__; _arr resize (count _arr - 8); toString _arr};

	execVM "Training\FAC_Teleport.sqf";
	execVM "Training\Init.sqf";
	execVM "Training\Medical\Init.sqf";

	if(isServer) then {	
		OKS_Landing_Array_Server = [];
		OKS_Target_Array_Server = [];
		publicVariable "OKS_Landing_Array_Server";
		publicVariable "OKS_Target_Array_Server";
		OKS_MortarWhitelist = [
			"StaticMortar",
			"UK3CB_BAF_Static_L16_Des"
		];

		publicVariable "OKS_MortarWhitelist";

		// Create the mortar targets
		SnapMortarTargets = [
			MortarTarget_1,MortarTarget_2,MortarTarget_3,MortarTarget_4,MortarTarget_5,MortarTarget_6,
			MortarTarget_7,MortarTarget_8,MortarTarget_9,MortarTarget_10,MortarTarget_11,MortarTarget_12,
			MortarTarget_13,MortarTarget_14,MortarTarget_15,MortarTarget_16,MortarTarget_17,MortarTarget_18,
			MortarTarget_19,MortarTarget_20,MortarTarget_21,MortarTarget_22,MortarTarget_23,MortarTarget_24,
			MortarTarget_25,MortarTarget_26,MortarTarget_27,MortarTarget_28,MortarTarget_29,MortarTarget_30,
			MortarTarget_31,MortarTarget_32,MortarTarget_33,MortarTarget_34,MortarTarget_35,MortarTarget_36,
			MortarTarget_37,MortarTarget_38,MortarTarget_39,MortarTarget_40,MortarTarget_41,MortarTarget_42,
			MortarTarget_43,MortarTarget_44,MortarTarget_45,MortarTarget_46,MortarTarget_47,MortarTarget_48,
			MortarTarget_49
		];
		publicVariable "SnapMortarTargets";

		MarkerMortarTargets = [
			MortarTarget_50,MortarTarget_51,MortarTarget_52,MortarTarget_53,MortarTarget_54,MortarTarget_55,MortarTarget_56,
			MortarTarget_57,MortarTarget_58,MortarTarget_59,MortarTarget_60,MortarTarget_61,MortarTarget_62,
			MortarTarget_63,MortarTarget_64,MortarTarget_65,MortarTarget_66,MortarTarget_67,MortarTarget_68,
			MortarTarget_69,MortarTarget_70,MortarTarget_71,MortarTarget_72,MortarTarget_73,MortarTarget_74,
			MortarTarget_75,MortarTarget_76,MortarTarget_77,MortarTarget_78,MortarTarget_79,MortarTarget_80,
			MortarTarget_81,MortarTarget_82,MortarTarget_83,MortarTarget_84,MortarTarget_85,MortarTarget_86,
			MortarTarget_87,MortarTarget_88,MortarTarget_89,MortarTarget_90,MortarTarget_91,MortarTarget_92,
			MortarTarget_93,MortarTarget_94,MortarTarget_95,MortarTarget_96,MortarTarget_97,MortarTarget_98,
			MortarTarget_99
		];		
		publicVariable "MarkerMortarTargets";
	};


	OKS_Landing_Array = [h_2,h_3,h_4,h_5,h_6,h_7,h_8,h_9,h_10,h_11,h_12,h_13,h_14,h_15,h_16,h_17,h_18,h_19,h_20,h_21,h_22,h_23,h_24,h_25,h_26,h_27,h_28,h_29,h_30,h_31,h_32,h_33,h_34,h_35,h_1,h_36,h_37,h_38,h_39,h_40,h_41,h_42,h_43,h_44,h_45,h_46,h_47,h_48,h_49,h_50,h_51];
	OKS_Target_Array = [t_35,t_1,t_2,t_3,t_4,t_5,t_6,t_7,t_8,t_9,t_10,t_11,t_12,t_13,t_14,t_15,t_16,t_17,t_18,t_19,t_20,t_21,t_22,t_23,t_24,t_25,t_26,t_27,t_28,t_29,t_30,t_31,t_32,t_33,t_34,t_36,t_37,t_38,t_39];
	publicVariable "OKS_Landing_Array";
	publicVariable "OKS_Target_Array";

	CreateHLSPanels = compile preprocessFileLineNumbers "Training\CreateHLSPanels.sqf";
	OKS_TransportTask = compile preprocessFileLineNumbers "Training\AddLandingTask.sqf";
	OKS_TargetTask = compile preprocessFileLineNumbers "Training\AddTargetTask.sqf";
	OKS_FacTask = compile preprocessFileLineNumbers "Training\AddFacTask.sqf";
	//execVM "Scripts\AddFacTeleport.sqf";

	MainScreen addAction ["<t color='#FEB000'>Request Transport Tasks</t>",{ [(_this select 1),OKS_Landing_Array,2000] remoteExec ["OKS_TransportTask",2]}, nil, 1,false, true, "","!(_this getVariable ['OKS_Transport_Task_Deactivated',false])",15];
	MainScreen addAction ["<t color='#FF0000'>Request CAS Tasks</t>",{ [(_this select 1),OKS_Target_Array,2500] remoteExec ["OKS_TargetTask",2]}, nil, 1,false, true, "","!(_this getVariable ['OKS_Target_Task_Deactivated',false])",15];
	MainScreen addAction ["<t color='#26B2E4'>Request FAC Tasks</t>",{ [(_this select 1),OKS_Landing_Array] remoteExec ["OKS_FacTask",2]}, nil, 1,false, true, "","!(_this getVariable ['OKS_FAC_Task_Deactivated',false])",15];
	SecondaryScreen addAction ["<t color='#FEB000'>Request Transport Tasks</t>",{ [(_this select 1),OKS_Landing_Array,2000] remoteExec ["OKS_TransportTask",2]}, nil, 1,false, true, "","!(_this getVariable ['OKS_Transport_Task_Deactivated',false])",15];
	SecondaryScreen addAction ["<t color='#FF0000'>Request CAS Tasks</t>",{ [(_this select 1),OKS_Target_Array,2500] remoteExec ["OKS_TargetTask",2]}, nil, 1,false, true, "","!(_this getVariable ['OKS_Target_Task_Deactivated',false])",15];
	SecondaryScreen addAction ["<t color='#26B2E4'>Request FAC Tasks</t>",{ [(_this select 1),OKS_Landing_Array] remoteExec ["OKS_FacTask",2]}, nil, 1,false, true, "","!(_this getVariable ['OKS_FAC_Task_Deactivated',false])",15];

	[helo_1, getpos helospawn_1, getDir helospawn_1, ["helicopter"]] execVM "Training\VehicleRequest.sqf";
	[helo_2, getpos helospawn_2, getDir helospawn_2, ["helicopter"]] execVM "Training\VehicleRequest.sqf";
	[helo_3, getpos helospawn_3, getDir helospawn_3, ["helicopter"]] execVM "Training\VehicleRequest.sqf";
	[plane_1, getpos planespawn_1, getDir planespawn_1, ["plane"]] execVM "Training\VehicleRequest.sqf";
	[plane_2, getpos planespawn_2, getDir planespawn_2, ["plane"]] execVM "Training\VehicleRequest.sqf";
	[plane_3, getpos planespawn_3, getDir planespawn_3, ["plane"]] execVM "Training\VehicleRequest.sqf";