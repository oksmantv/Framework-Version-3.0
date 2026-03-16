// Example: [unit,"r"] execVM "Scripts\OKS_Second_PrimaryWeapon.sqf";
// This code is automatically run on every role on start and reselection of kits.
Params ["_unit","_role"];

_Weapons = [
	[
		// Weapon select 0
		"rhs_weap_m32", 		  // Weapon
		["rhsusf_mag_6Rnd_M397_HET",""], // Magazine and secondary magazine
		"", 						  // Muzzle
		"", 		  // Pointer
		"", 	  // Sights
		"", 						  // Bipod
		6 							  // Added Mag Count
	],
	[
		// Weapon select 1
		"hlc_rifle_hk53RAS", 	 	 // Weapon
		["hlc_30rnd_556x45_b_HK33",""], // Magazine and secondary magazine
		"rhsusf_acc_rotex5_grey", 						 // Muzzle
		"uk3cb_baf_llm_flashlight_black", 		 // Pointer
		"optic_holosight_blk_f", 	 // Sights
		"hlc_grip_pmvfg_black", 	 // Bipod
		6							 // Added Mag Count	
	]
];

_AddSecondaryWeapon = {

	Params ["_Unit","_WeaponArray"];
	_WeaponArray Params ["_Weapon","_MagArray","_Muzzle","_Pointer","_Sight","_Bipod","_MagCount"];
	[ 
		_unit, 
		_Weapon, 
		_MagArray, 
		_Muzzle, 
		_Pointer, 
		_Sight,
		_Bipod
	] call WKB_CreateWeaponSecond_Scripted;
	_unit addMagazines [_MagArray select 0,_MagCount];
};

switch (_role) do {
	case "tl": {
		[_unit,_Weapons select 0] call _AddSecondaryWeapon;
	};
	case "r": {
		//[_unit,_Weapons select 0] call _AddSecondaryWeapon;
	};
	case "lr": {
		[_unit,_Weapons select 1] call _AddSecondaryWeapon;
	};
	case "g": {
		[_unit,_Weapons select 0] call _AddSecondaryWeapon;
	};
	case "ag": {
		//[_unit,_Weapons select 1] call _AddSecondaryWeapon;
	};
	case "ar": {
		// No Weapon by Default
	};
	case "ammg": {
		// No Weapon by Default
	};
	case "mmg": {
		// No Weapon by Default
	};	
	case "marksman": {
		[_unit,_Weapons select 1] call _AddSecondaryWeapon;
	};		
	default {
		// No Weapon by Default
	};
};