	MISSION_ROOT = call { private "_arr"; _arr = toArray __FILE__; _arr resize (count _arr - 8); toString _arr};

	if(!isNil "FriendlySquad") then {
		east setFriend [west,1];
		west setFriend [east,0];
		east setFriend [independent,0];
	};

	OKS_MortarWhitelist = [
		"StaticMortar",
		"UK3CB_BAF_Static_L16_Des"
	];
	publicVariable "OKS_MortarWhitelist";

	[] execVM "Training\Init.sqf";
	player addItem "ACE_artilleryTable";

	if(!("ItemAndroid" in (items player))) then {
		player addItem "ItemAndroid";
	};

	if(isServer) then {
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

	if (hasInterface) then {
		[] spawn {
			waitUntil {
				!isNil "MortarAction"
				&&
				!isNil "OKS_fnc_isMortarVehicle"
				&&
				!isNull player
				&&
				!isNil "ace_interact_menu_fnc_createAction"
				&&
				!isNil "SnapMortarTargets"
				&&
				!isNil "MarkerMortarTargets"
			};

			[SnapMortarTargets,MarkerMortarTargets] call MortarAction;
		};
	};

	waitUntil {!isNil "SnapMortarTargets" && !isNil "MarkerMortarTargets"};
	[flag_west_1] execVM "Training\Score.sqf";

	[helo_1, getpos helospawn_1, getDir helospawn_1, ["helicopter"]] execVM "Training\VehicleRequest.sqf";
	[plane_1, getpos planespawn_1, getDir planespawn_1, ["plane"]] execVM "Training\VehicleRequest.sqf";