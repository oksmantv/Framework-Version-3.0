/*
	AUTHOR: GuzzenVonLidl
	Description:
		What case tha should be called for the zone player is in
	Usage:
		null = [1] spawn GW_Fnc_spawnList;
	Parameters:
		#0: Number:	Activate zone
	Returning Value:
		None
*/
#include "script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};

params [
	"_case"
];

switch (_case) do {

	case 1: {

		// Main Building
		// Ground Floor
		[[[[2586.29,3468.45,0.372375],4,"Up",[]],[[2591.89,3462.98,0.389954],25,"Up",[]],[[2601.41,3466.44,0.401367],10,"Up",[]],[[2598.87,3448.76,0.389954],211,"Up",[]],[[2605.41,3451.42,0.40329],253,"Up",[]],[[2589.37,3456.85,0.389954],131,"Up",[]],[[2584.01,3451.73,0.389954],113,"Up",[]],[[2585.62,3459.6,0.389954],96,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		// First Floor
		[[[[2592.9,3453.21,3.18997],18,"Middle",[]],[[2584.58,3452.03,3.18997],77,"Middle",[]],[[2589.39,3456.9,3.18997],191,"Middle",[]],[[2584.93,3463.58,3.18564],79,"Middle",[]],[[2592.31,3468.19,3.18918],322,"Middle",[]],[[2586.98,3469.7,3.1691],16,"Middle",[]],[[2600.14,3460.78,3.19052],12,"Middle",[]],[[2600.45,3466.48,3.19769],96,"Middle",[]],[[2607.83,3464.35,3.28271],227,"Middle",[]],[[2584.29,3462.16,4.48712],98,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		// Second Floor
		[[[[2595.18,3452.28,5.98996],356,"Middle",[]],[[2582.94,3454.66,5.98996],149,"Middle",[]],[[2583.49,3457.87,5.98996],125,"Middle",[]],[[2585.8,3464,5.98398],102,"Middle",[]],[[2586.77,3469.5,5.96906],33,"Up",[]],[[2592.28,3468.19,5.98904],5,"Up",[]],[[2598.37,3449.7,5.98996],183,"Middle",[]],[[2604.94,3451.86,5.99973],270,"Middle",[]],[[2603.17,3447.94,5.99265],96,"Middle",[]],[[2607.19,3464.94,6.07303],201,"Middle",[]],[[2599.49,3461.76,5.98996],46,"Middle",[]],[[2600.92,3466.7,6.00043],96,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		// Third Floor
		[[[[2587.36,3459.32,8.78995],285,"Middle",[]],[[2595.05,3464.03,8.78995],172,"Middle",[]],[[2605.85,3456.73,8.80676],284,"Middle",[]],[[2585.3,3452.05,8.78995],80,"Middle",[]],[[2588.89,3456.53,8.78995],187,"Middle",[]],[[2598.64,3448.93,8.78995],311,"Middle",[]],[[2602.09,3454.4,8.78995],147,"Middle",[]],[[2603.83,3447.8,8.79526],329,"Middle",[]],[[2607.87,3464.8,8.89084],219,"Middle",[]],[[2603.9,3465.42,8.81845],96,"Middle",[]],[[2599.78,3461.38,8.78995],96,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		// Fourth Floor
		[[[[2602.96,3455.98,11.5918],284,"Middle",[]],[[2597.2,3464.2,11.59],203,"Middle",[]],[[2585.57,3469.27,11.5658],157,"Middle",[]],[[2593.27,3467.02,11.59],232,"Middle",[]],[[2605.46,3465.5,11.6432],143,"Middle",[]],[[2599.79,3461.07,11.59],23,"Middle",[]],[[2597.58,3449.36,11.59],3,"Middle",[]],[[2604.76,3451.47,11.599],282,"Middle",[]],[[2600.65,3448.67,11.59],14,"Middle",[]],[[2603.63,3448.28,11.5945],209,"Middle",[]],[[2603.98,3463.98,11.6096],171,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		// Fifth Floor
		[[[[2601.4,3458.88,14.3911],272,"Middle",[]],[[2603.22,3455.84,14.3929],283,"Middle",[]],[[2593.01,3453.66,14.39],19,"Middle",[]],[[2589.03,3451.21,14.39],206,"Middle",[]],[[2585.08,3457.41,14.39],160,"Middle",[]],[[2604.98,3452.04,14.3999],283,"Middle",[]],[[2596.45,3449.67,14.39],28,"Middle",[]],[[2601.33,3454.95,14.39],119,"Middle",[]],[[2607.11,3464.87,14.4706],192,"Middle",[]],[[2603.79,3465.73,14.4184],161,"Middle",[]],[[2600.56,3466.37,14.3977],272,"Middle",[]],[[2584.89,3463.55,14.3857],89,"Middle",[]],[[2586.44,3467.05,14.3817],134,"Middle",[]],[[2592.72,3468.21,14.39],351,"Middle",[]],[[2587.19,3469.64,14.3701],10,"Middle",[]],[[2588.15,3461.42,14.39],221,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		// Rooftop
		[[[[2585.92,3468.77,17.1698],311,"Middle",[]],[[2584.59,3463.9,17.1844],282,"Middle",[]],[[2594.98,3467.47,17.19],325,"Middle",[]],[[2582.4,3452.55,17.1898],287,"Middle",[]]],[["UK3CB_AAF_O_PKM_High",[2583.88,3455.67,17.1899],308,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Roadblock
		[[[[2407.3,3543.19,0],311,"Up",[]],[[2408.91,3546.27,0],311,"Up",[]],[[2413.75,3548.09,0],332,"Up",[]],[[2417,3546.3,-1.52588e-005],358,"Up",[]],[[2426.69,3519.31,0.102264],355,"Up",[]],[[2425.35,3517.31,1.52588e-005],296,"Middle",[]],[[2426.85,3516.09,0.0860596],55,"Middle",[]],[[2434.79,3520.7,0.295044],335,"Middle",[]],[[2443.7,3565.08,0.104416],269,"Middle",[]],[[2442.43,3566.8,0],304,"Middle",[]],[[2444.19,3568.11,0.0963135],269,"Up",[]]],[["UK3CB_CHD_O_Hilux_Pkm",[2413.87,3541.67,1.6],340,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["CHDKZ",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Trench
		[[[[2470.21,3506.69,0],302,"Middle",[]],[[2472.88,3513.31,0],302,"Middle",[]],[[2484.71,3506.59,0.102951],279,"Middle",[]],[[2477.13,3489.54,0.101837],348,"Middle",[]],[[2478.21,3469.07,0.101791],279,"Middle",[]],[[2482.35,3448.77,0.113846],324,"Middle",[]],[[2489.14,3427.6,0.160019],301,"Middle",[]],[[2493.31,3413.65,0],264,"Middle",[]],[[2499.15,3424.55,3.05176e-005],338,"Middle",[]],[[2504.08,3447.34,-3.05176e-005],264,"Up",[]],[[2505.94,3446.58,0],1,"Middle",[]],[[2497.12,3467.71,0],315,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Empty Trucks
		[[],[["UK3CB_CHD_O_Gaz66_Covered",[2631.12,3482.68,0],278,[],[[6,["CHDKZ",1]],[7,["cover_hide",0,"spare_hide",0,"bench_hide",0,"rear_numplate_hide",1,"light_hide",0]]]],["UK3CB_CHD_O_Gaz66_Covered",[2616.22,3484.97,0],278,[],[[6,["CHDKZ",1]],[7,["cover_hide",0,"spare_hide",0,"bench_hide",0,"rear_numplate_hide",1,"light_hide",0]]]],["UK3CB_CHD_O_Gaz66_Covered",[2601.76,3487.58,0],282,[],[[6,["CHDKZ",1]],[7,["cover_hide",0,"spare_hide",0,"bench_hide",0,"rear_numplate_hide",1,"light_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		// Counter-Attack
		[attack_1,5,east,1000,ATTACK_ARRAY] spawn OKS_Rush_SpawnGroup;
		[attack_2,5,east,1000,ATTACK_ARRAY] spawn OKS_Rush_SpawnGroup;	
		[attack_3,5,east,1000,ATTACK_ARRAY] spawn OKS_Rush_SpawnGroup;
		[attack_4,5,east,1000,ATTACK_ARRAY] spawn OKS_Rush_SpawnGroup;
		[attack_5,5,east,1000,ATTACK_ARRAY] spawn OKS_Rush_SpawnGroup;	

		[VehicleAttack_1,[2598.02,3467.7,0],"UK3CB_CHD_O_Hilux_Pkm",east,false] spawn OKS_Attack_SpawnGroup; sleep 60;
		[VehicleAttack_2,[2598.02,3467.7,0],"UK3CB_CHD_O_Hilux_Pkm",east,false] spawn OKS_Attack_SpawnGroup;

		waitUntil{sleep 10; {{Alive _X || [_X] call ace_common_fnc_isAwake} count _X isEqualTo 0} count ATTACK_ARRAY == count ATTACK_ARRAY};
		ATTACK_CLEAR = true;
		publicVariable "ATTACK_CLEAR";

	};

	case 3: {
		[VehicleAttack_1,[2598.02,3467.7,0],"UK3CB_CHD_O_Hilux_Pkm",east,false] spawn OKS_Attack_SpawnGroup; sleep 120;
		[VehicleAttack_3,[2598.02,3467.7,0],"UK3CB_CHD_O_Hilux_Pkm",east,false] spawn OKS_Attack_SpawnGroup; sleep 120;
		[VehicleAttack_4,[2598.02,3467.7,0],"UK3CB_CHD_O_Hilux_Pkm",east,false] spawn OKS_Attack_SpawnGroup;
	};

	case 4: {
	};

	case 5: {
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
