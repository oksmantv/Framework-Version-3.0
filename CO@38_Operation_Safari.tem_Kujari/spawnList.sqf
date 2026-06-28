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

#include "\OKS_GOL_Misc\script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};

params [
	"_case"
];

SystemChat format ["GW_Fnc_spawnList Executed - Case: %1", _case];

switch (_case) do {

	case 0: {
		// Players observes near Malari.
		[DynamicZone_1, false, [0,0,false,false], civilian, 4, 0, 0, [0,true,false,0], [0,false], [0,false], [0,0,0,0,0], false] spawn OKS_fnc_CreateZone;
		[DynamicZone_2, false, [0,0,false,false], civilian, 4, 0, 0, [0,true,false,0], [0,false], [0,false], [0,0,0,0,0], false] spawn OKS_fnc_CreateZone;

		["AFRICOM","side","1st Platoon, you are confirming what we suspected. The Militia has slaughtered the villagers of Malari. The butcher and his men are close, land and investigate on foot, HQ out."] spawn OKS_fnc_ChatGlobal;
		sleep 4;
		[true, ["ClueTask","ScoutTask"], ["Investigate the village of Malari for any trace of the militia, we are looking for a raiding party. Look if you can identify the survivor or clues about where they might have gone.", "Search Malari", "marker2"], nil, 1, 3, true, "search"] call BIS_fnc_taskCreate;
		waitUntil { sleep 1;
			Rescue_1 getVariable ["OKS_IsRescued", false]
			|| Rescue_1 getVariable ["OKS_IsDead", false]
		};

		if (Rescue_1 getVariable ["OKS_IsRescued", false]) then {
			// casualty rescued — do follow-up
			["ClueTask","SUCCEEDED"] call BIS_fnc_taskSetState;
			[Rescue_1,"local","Thank you, you saved my life. I wrote some last words.. take it, bring justice for Malari."] spawn OKS_fnc_ChatGlobal;
			[Rescue_1, "The Paramilitary Militias came out of the jungle from the west of Malari, twenty men who rode SUVs. They killed everyone, slit their throats, piled their bodies and burned them.\n\nThey shot me, and left me for dead, but I managed to crawl away, Im bleeding out, I dont know if I will make it.\nIf anyone finds this, it was Abbas Haddad and his men.\n\nPlease deliver justice, avenge us.", "Survivor Intel", "ScoutTask", []] spawn OKS_fnc_GiveIntelToNearestPlayer;
			sleep 10;
			["AFRICOM","side","1st Platoon, we have incoming early reports of suspected location of Abbas Haddad. Get your force into the air and stand by for coordinates, HQ out."] spawn OKS_fnc_ChatGlobal;
			[true, ["GetInAir","ScoutTask"], ["We have received early reports of sightings on Abbas Haddad. We need your force ready to intercept, exfiltrate from the area and get into the air.", "Get in the Air", "marker2"], nil, 1, 3, true, "heli"] call BIS_fnc_taskCreate;
			waitUntil { sleep 10; {vehicle _X != _X && vehicle _X isKindOf "air"} count AllPlayers > floor(count (AllPlayers - entities "HeadlessClient_F") * 0.7)};
			["GetInAir","SUCCEEDED"] call BIS_fnc_taskSetState;
			[1] spawn GW_Fnc_spawnList;
		} else {
			// casualty died or was not stabilized in time
			["AFRICOM","side","1st Platoon, we have incoming early reports of suspected location of Abbas Haddad. Get your force into the air and stand by for coordinates, HQ out."] spawn OKS_fnc_ChatGlobal;
			[true, ["GetInAir","ScoutTask"], ["We have received early reports of sightings on Abbas Haddad. We need your force ready to intercept, exfiltrate from the area and get into the air.", "Get in the Air", "marker2"], nil, 1, 3, true, "heli"] call BIS_fnc_taskCreate;

			waitUntil { sleep 10; {vehicle _X != _X && vehicle _X isKindOf "air"} count AllPlayers > floor(count (AllPlayers - entities "HeadlessClient_F") * 0.7)};
			["GetInAir","SUCCEEDED"] call BIS_fnc_taskSetState;
			[1] spawn GW_Fnc_spawnList;
		};
	};

	case 1: {

		["ScoutTask","SUCCEEDED"] call BIS_fnc_taskSetState;

		// Biri Noula
		[[],[["UK3CB_ADG_I_DSHKM",[3518.1,14298,3.06824],128,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ADG_I_DSHKM",[3524.88,14270.3,5.15232],58,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ADG_I_PKM_High_ISL",[3463.81,14209.7,3.42878],81,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ADG_I_PKM_High_ISL",[3487.7,14286,3.7158],81,[["gunner",-1,[0]]],[[351,false]]]],[],independent] call GW_Common_fnc_spawnGroup;
		[[[[3474.41,14199.1,0],0,[[301,0]],"ftl"],[[3479.41,14194.1,9.53674e-07],0,[[301,0]],"ar"],[[3469.41,14194.1,0],0,[[301,0]],"g"],[[3484.41,14189.1,0],0,[[301,0]],"mat"]],[],[[[3474.97,14318.7,0],[[0,"Move"],[1,"SAFE"]]],[[3515.61,14351.3,7.62939e-06],[[0,"Move"]]],[[3505.31,14206.2,1.33514e-05],[[0,"Move"]]],[[3486.13,14196.9,0],[[0,"Cycle"]]]],independent] call GW_Common_fnc_spawnGroup;
		[[[[3529.18,14166.1,0],0,[[301,0]],"ftl"],[[3534.18,14161.1,0],0,[[301,0]],"ar"],[[3524.18,14161.1,3.22212],0,[[301,0]],"g"],[[3539.18,14156.1,0],0,[[301,0]],"mat"]],[],[[[3507.16,14262.8,0],[[0,"Move"],[1,"SAFE"]]],[[3558.41,14260,0],[[0,"Move"]]],[[3578.06,14168.6,0],[[0,"Move"]]],[[3540.89,14164,0],[[0,"Cycle"]]]],independent] call GW_Common_fnc_spawnGroup;
		[[[[3546.89,14354.4,0],164,[[301,0]],"ftl"],[[3540.68,14357.8,0],164,[[301,0]],"ar"],[[3550.28,14360.6,0],164,[[301,0]],"g"],[[3534.48,14361.2,0],164,[[301,0]],"mat"]],[],[[[3603.32,14308.6,0],[[0,"Move"],[1,"SAFE"]]],[[3531.58,14253.7,0],[[0,"Move"]]],[[3505.21,14294.2,0],[[0,"Move"]]],[[3535.04,14353.1,0],[[0,"Cycle"]]]],independent] call GW_Common_fnc_spawnGroup;

		// Gonidi
		[[[[4102.83,15865.6,0],290,[[301,0]],"sl"],[[4105.83,15865.6,0],152,[[301,0]],"r"],[[4108.83,15865.6,0],251,[[301,0]],"r"],[[4102.83,15868.6,0],208,[[301,0]],"r"],[[4105.83,15868.6,0],287,[[301,0]],"r"],[[4108.83,15868.6,0],90,[[301,0]],"r"]],[],[[[4120.68,15882.5,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[4107.28,15886.5,0],[[0,"Move"],[6,[0,3,6]]]],[[4091.7,15879.2,0],[[0,"Move"],[6,[0,3,6]]]],[[4091.42,15853.2,0],[[0,"Move"],[6,[0,3,6]]]],[[4103.04,15806.2,1.90735e-06],[[0,"Move"],[6,[0,3,6]]]],[[4145,15813.8,0],[[0,"Move"],[6,[0,3,6]]]],[[4128.51,15866,0],[[0,"Cycle"]]]],independent] call GW_Common_fnc_spawnGroup;
		[[[[4091.61,15782.8,0],290,[[301,0]],"sl"],[[4094.61,15782.8,0],152,[[301,0]],"r"],[[4097.61,15782.8,0],251,[[301,0]],"r"],[[4091.61,15785.8,0],208,[[301,0]],"r"],[[4094.61,15785.8,0],287,[[301,0]],"r"],[[4097.61,15785.8,0],90,[[301,0]],"r"]],[],[[[4101.47,15820.6,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[4095.73,15836.1,0],[[0,"Move"],[6,[0,3,6]]]],[[4070.37,15810.5,0],[[0,"Move"],[6,[0,3,6]]]],[[4080.2,15770.5,0],[[0,"Move"],[6,[0,3,6]]]],[[4110.88,15747.7,1.90735e-06],[[0,"Move"],[6,[0,3,6]]]],[[4147.35,15755.6,0],[[0,"Move"],[6,[0,3,6]]]],[[4121.89,15793,0],[[0,"Cycle"]]]],independent] call GW_Common_fnc_spawnGroup;
		[[[[4087.3,15809.9,1.69464],230,"Up",[[301,0]],"sl"],[[4084.88,15805.4,4.81304],63,"Up",[[301,0]],"ar"],[[4089.28,15807.7,1.55093],163,"Up",[[301,0]],"r"],[[4089.7,15806.2,4.4293],344,"Up",[[301,0]],"r"],[[4082.94,15811.8,4.91644],270,"Up",[[301,0]],"r"],[[4096.53,15807.8,3.27255],123,"Up",[[301,0]],"mat"]],[],[],independent] call GW_Common_fnc_spawnGroup;
		[[[[4112.12,15830.5,1.23396],234,"Up",[[301,0]],"ftl"],[[4110.79,15818.9,3.64603],140,"Up",[[301,0]],"mat"],[[4110.79,15819.6,0.279137],97,"Up",[[301,0]],"ar"],[[4116.36,15829.2,3.95214],276,"Up",[[301,0]],"r"],[[4109.12,15825.1,4.1393],222,"Up",[[301,1]],"ag"],[[4110.82,15830.7,4.02212],319,"Up",[[301,1]],"ag"]],[],[],independent] call GW_Common_fnc_spawnGroup;
		[[[[4092.4,15824.1,0.221201],136,"Up",[[301,0]],"r"],[[4076.81,15818,0.221201],73,"Up",[[301,0]],"r"],[[4119.22,15823.9,0.221203],201,"Up",[[301,0]],"r"],[[4103.04,15836,0.221203],333,"Up",[[301,0]],"r"],[[4112.35,15834.2,0],344,"Up",[[301,0]],"r"],[[4103.65,15851.6,0.551975],344,"Up",[[301,0]],"r"],[[4099.59,15862.4,0.593121],344,"Up",[[301,0]],"r"],[[4101.01,15857.4,0.221201],58,"Up",[[301,0]],"r"],[[4112.75,15841.4,0.398754],344,"Up",[[301,0]],"r"],[[4107.11,15839.9,0.651781],344,"Middle",[[301,0]],"r"]],[],[],independent] call GW_Common_fnc_spawnGroup;

		// Bora.
		[[[[1878.07,14038.1,0.163118],126,[[301,0]],"ftl"],[[1881.07,14038.1,0.163118],91,[[301,0]],"g"],[[1884.07,14038.1,0.163118],128,[[301,0]],"g"],[[1878.07,14041.1,0.163118],306,[[301,0]],"r"],[[1881.07,14041.1,0.163118],60,[[301,1]],"ag"],[[1884.07,14041.1,0.163118],5,[[301,0]],"r"]],[],[[[1947.91,14027.1,0.163118],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[1908.72,14081,0.163118],[[0,"Move"],[6,[0,3,6]]]],[[1862.16,14088.4,0.163118],[[0,"Move"],[6,[0,3,6]]]],[[1808.23,14049.2,0.163116],[[0,"Move"],[6,[0,3,6]]]],[[1847.42,13995.3,0.163118],[[0,"Move"],[6,[0,3,6]]]],[[1893.98,13987.9,0.163118],[[0,"Move"],[6,[0,3,6]]]],[[1947.91,14027.1,0.163118],[[0,"Cycle"]]]],independent] call GW_Common_fnc_spawnGroup;
		[[[[1976.12,13975.7,0],126,[[301,0]],"ftl"],[[1979.12,13975.7,0.163118],91,[[301,0]],"g"],[[1982.12,13975.7,0.163118],128,[[301,0]],"g"],[[1976.12,13978.7,0.163118],306,[[301,0]],"r"],[[1979.12,13978.7,0.163118],60,[[301,1]],"ag"],[[1982.12,13978.7,0.163118],5,[[301,0]],"r"]],[],[[[2045.96,13964.7,0.16312],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[2006.78,14018.7,0.163118],[[0,"Move"],[6,[0,3,6]]]],[[1960.22,14026,0.163116],[[0,"Move"],[6,[0,3,6]]]],[[1906.28,13986.9,0.163116],[[0,"Move"],[6,[0,3,6]]]],[[1945.47,13932.9,0.163116],[[0,"Move"],[6,[0,3,6]]]],[[1992.03,13925.5,0.163118],[[0,"Move"],[6,[0,3,6]]]],[[2045.96,13964.7,0.16312],[[0,"Cycle"]]]],independent] call GW_Common_fnc_spawnGroup;
		[[[[1818.35,13956,0],126,[[301,0]],"ftl"],[[1821.35,13956,0.163116],91,[[301,0]],"g"],[[1824.35,13956,0.163115],128,[[301,0]],"g"],[[1818.35,13959,0.163116],306,[[301,0]],"r"],[[1821.35,13959,0.163115],60,[[301,1]],"ag"],[[1824.35,13959,0.163116],5,[[301,0]],"r"]],[],[[[1873.4,13970.2,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[1849,13999,0.163118],[[0,"Move"],[6,[0,3,6]]]],[[1843.57,14042.8,0],[[0,"Move"],[6,[0,3,6]]]],[[1795.98,14009.6,0],[[0,"Move"],[6,[0,3,6]]]],[[1794.6,13952.4,0],[[0,"Move"],[6,[0,3,6]]]],[[1834.62,13894.7,0],[[0,"Move"],[6,[0,3,6]]]],[[1904.69,13910.3,0],[[0,"Cycle"]]]],independent] call GW_Common_fnc_spawnGroup;
		[[[[1907.93,14012.7,1.90735e-06],28,"Up",[[301,0]],"ftl"],[[1901.5,14029.2,0.33251],110,"Up",[[301,0]],"mmg"],[[1913.91,14011.2,0.142187],176,"Middle",[[301,0]],"r"],[[1896.69,14031.7,0],248,"Up",[[301,0]],"r"],[[1904.61,14002,0.0827637],163,"Up",[[301,0]],"r"],[[1892.32,14024.2,0.693924],94,"Up",[[301,1]],"ag"],[[1920.04,14012.9,0.123373],116,"Middle",[[301,1]],"ag"],[[1928.68,14019.6,0.182291],125,"Up",[[301,0]],"mat"],[[1906.04,14021.2,0],93,"Middle",[[301,0]],"r"],[[1871.02,14012.3,2.90975],14,"Middle",[[301,1]],"ag"]],[],[],independent] call GW_Common_fnc_spawnGroup;


		// First Catch.
		private _hvt = [
			Intercept_Start_1,
			Intercept_End_1,
			[east, east],
			"GARRISON",
			[vehiclehvt_1, vehiclehvt_2, vehiclehvt_3],
			30,
			[17, 25, 40],
			[false, "MainTask", true, "hvt1.paa"],
			true,
			getMarkerPos "respawn_west",
			nil
		] call OKS_fnc_InterceptHvtTask;
		[
			_hvt,
			createHashMapFromArray [
				["uniform", "UK3CB_CSAT_F_O_U_SF_CombatUniform"],
				["vest", "rhsusf_spcs_ucp_crewman"],
				["goggles","G_Squares_Tinted"],
				["nvg","G_Armband_NVG_tak2_F"],
				["headgear", "UK3CB_H_Beret_Officer_Red"],
				["primaryWeapon", "uk3cb_ak47"],
				["primaryWeaponMag", "UK3CB_RPK_75rnd_762x39_GT"],
				["primaryWeaponMagCount", 4],
				["handgunWeapon", "hgun_Rook40_F"],
				["handgunMags", 3],
				["linkedItems", ["ItemMap", "ItemCompass", "ItemWatch", "ItemRadio"]]
			],
			true,
			false,
			"TanoanHead_A3_02",
			"Abbas Haddad",
			"",
			"COLONEL"
		] call OKS_fnc_ReplaceUnitGear;

		{
			[
				(_X select 0),
				(_X select 1),
				selectRandom ["UK3CB_ADC_C_Datsun_Civ_Open", "UK3CB_ADC_C_SUV", "UK3CB_ADC_C_Skoda","UK3CB_ADC_C_SUV"],
				10,
				false
        	] spawn OKS_fnc_Civilian_Vehicle;
			sleep 5;
		} foreach [
			[civilianStart_1, civilianEnd_1],
			[civilianStart_2, civilianEnd_2],
			[civilianStart_3, civilianEnd_3],
			[civilianStart_4, civilianEnd_4],
			[civilianStart_5, civilianEnd_5],
			[civilianStart_6, civilianEnd_6]
		];

		[_hvt] spawn {
			params ["_hvt"];
			waitUntil {
				sleep 1;
				_hvt distance Intercept_Start_1 > 30
			};
			["AFRICOM","side","1st Platoon be advised, Abbas Haddad has been spotted leaving the village of Wondori south-west of the Airfield, heading west, towards insurgent held territory. The details have been transfered to you, out."] spawn OKS_fnc_ChatGlobal;
		};
		[_hvt] spawn {
			params ["_hvt"];
			waitUntil { sleep 30; _hvt getVariable ["GOL_HVT_SECURED", false] };
			["AFRICOM","side","1st Platoon be advised, the HVT has been debriefed. We have the location of an Insurgent hideout with an explosive cache. Its guarded, proceed with caution."] spawn OKS_fnc_ChatGlobal;
			"cachemarker" setMarkerAlpha 1;
		};
		sleep 30;
		[_hvt, [IntelTarget_1, IntelTarget_2, IntelTarget_3, IntelTarget_4], "MainTask", "MOTORPOOL INTEL\nYou have found intel regarding enemy assets at a motorpool.\n\n%1\n%2", "Motorpool Intel", "", true, [], false] spawn OKS_fnc_SetupIntel;
	};

	case 2: {

		// Explosives Cache Counter-attack.
		[ConvoySpawn_1,ConvoyWP_1,ConvoyEnd_1,independent,[4,["UK3CB_ADR_I_Datsun_Pickup_PKM","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup"],45,35,30],[true,4],[],false,false,["rush"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;
		[ConvoySpawn_2,ConvoyWP_2,ConvoyEnd_2,independent,[4,["UK3CB_ADR_I_Datsun_Pickup_PKM","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup"],45,35,30],[true,4],[],false,false,["rush"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;

	};

	case 3: {

		// Insurgent Stronghold Counter
		[ConvoySpawn_3,ConvoyWP_3,ConvoyEnd_3,independent,[4,["UK3CB_ADR_I_Datsun_Pickup_PKM","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup"],45,35,30],[true,4],[],false,false,["rush"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;
		[ConvoySpawn_4,ConvoyWP_4,ConvoyEnd_4,independent,[4,["UK3CB_ADR_I_Datsun_Pickup_PKM","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup"],45,35,30],[true,4],[],false,false,["rush"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;

	};

	case 4: {

		// Motor Pool Counter
		[ConvoySpawn_5,ConvoyWP_5,ConvoyEnd_5,independent,[4,["UK3CB_ADR_I_Datsun_Pickup_PKM","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup"],45,35,30],[true,4],[],false,false,["rush"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;
		[ConvoySpawn_6,ConvoyWP_6,ConvoyEnd_6,independent,[4,["UK3CB_ADR_I_Datsun_Pickup_PKM","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup"],45,35,30],[true,4],[],false,false,["rush"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;

	};
	
	case 5: {

		// Rescue Counter.
		[getPos LambsGroupSpawn_1, "hunt", 4, independent, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_2, "hunt", 4, independent, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_3, "hunt", 4, independent, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_4, "hunt", 4, independent, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;

		[ConvoySpawn_7,ConvoyWP_7,ConvoyEnd_7,independent,[4,["UK3CB_ADR_I_Datsun_Pickup_PKM","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup","UK3CB_ADR_I_Datsun_Pickup"],45,35,30],[true,4],[],false,false,["rush"],"convoystop"] spawn OKS_fnc_Convoy_Spawn;

	};

	case 6: {
	};

	case 7: {
	};

	case 8: {
	};

	case 9: {
	};

	case 10: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*
	GOL SCRIPT EXAMPLES:
	Link to README: https://github.com/oksmantv/Guerrillas-of-Liberations-Misc-Addon?tab=readme-ov-file#readme 
*/