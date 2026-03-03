/*
	AUTHOR: GuzzenVonLidl
	Description:
		What case tha should be called for the zone player is in
	Usage:
		[1] spawn GW_Fnc_spawnList;
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

switch (_case) do {

	case 1: {

		// Statics and Patrols.
		[[[[7804.01,11019.2,1.06435],202,"Up",[[301,0]],"ftl"],[[7805.24,11022.6,0.592994],68,"Up",[[301,0]],"mmg"],[[7811.88,11024.7,0.111084],201,"Up",[[301,0]],"mmg"],[[7795.79,11006.5,0],165,"Middle",[[301,0]],"mat"],[[7812.1,10996.3,0],212,"Middle",[[301,1]],"ag"],[[7806.55,11025,0.440237],331,"Up",[[301,0]],"mmg"],[[7786.64,11019.2,0.350224],167,"Up",[[301,1]],"ag"],[[7791.23,11021,0.101499],114,"Up",[[301,0]],"mmg"],[[7819.25,11015,-9.53674e-07],142,"Middle",[[301,1]],"ag"],[[7818.54,11008.3,-9.53674e-07],70,"Middle",[[301,1]],"ag"],[[7767.9,11060.4,0.2221],230,"Up",[[301,1]],"ag"],[[7772.19,11059.7,0.469926],123,"Up",[[301,1]],"ag"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[7744.86,10692.4,0.340361],100,"Up",[[301,0]],"r"],[[7737.1,10697.3,5.26767],359,"Middle",[[301,0]],"r"],[[7742.28,10694.3,5.0764],4,"Middle",[[301,0]],"r"]],[["UK3CB_ADE_O_KORD_high",[7740.51,10698.3,0.428282],24,[["gunner",-1,[0]]],[[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		[[[[7574,10867.2,0],73,"Middle",[[301,0]],"r"],[[7572.06,10852.2,0],84,"Middle",[[301,0]],"r"],[[7577.2,10863.8,1.5253],67,"Middle",[[301,0]],"r"],[[7577.1,10859.6,0.702553],88,"Middle",[[301,0]],"r"],[[7574.99,10840.9,9.53674e-07],89,"Middle",[[301,0]],"r"],[[7575.04,10845.8,0],85,"Middle",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[7632.52,11006.2,4.50225],97,"Up",[[301,0]],"ftl"],[[7636.61,11005.6,1.24529],101,"Up",[[301,0]],"ar"],[[7629.95,10992.7,0.485984],99,"Up",[[301,0]],"ar"],[[7629.92,11010,3.93321],88,"Up",[[301,0]],"g"],[[7633.14,10988.9,0.770855],158,"Up",[[301,0]],"g"],[[7636.86,11014.1,3.66351],89,"Up",[[301,0]],"ar"],[[7631.44,10995,0.240905],337,"Up",[[301,0]],"ar"],[[7638.5,11027.1,0],206,"Middle",[[301,0]],"ar"],[[7626.23,10997.1,0],177,"Up",[[301,0]],"ar"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[7597.94,11044,0],329,"Middle",[[301,0]],"ar"],[[7578.14,11045.7,3.49497],22,"Up",[[301,0]],"r"],[[7581.4,11042.4,3.61938],69,"Up",[[301,0]],"ar"],[[7576.39,11038.1,4.03103],193,"Up",[[301,0]],"ar"],[[7580.41,11041.3,0.361803],330,"Up",[[301,0]],"r"],[[7564.34,11029.7,0],142,"Middle",[[301,0]],"r"],[[7579.42,11024.7,0],250,"Up",[[301,0]],"r"],[[7565.94,11041.5,0],43,"Up",[[301,0]],"r"],[[7565.99,11053,0],81,"Middle",[[301,0]],"ar"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[7692.09,10667.7,0],100,[[301,0]],"r"],[[7688.87,10664.9,0],212,[[301,0]],"r"],[[7689.33,10670.9,0],291,[[301,0]],"ftl"],[[7692.32,10670.7,0],22,[[301,0]],"ar"]],[],[[[7653.35,10728,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[7613.3,10787.3,0],[[0,"Move"],[6,[0,3,6]]]],[[7660.52,10792.6,0],[[0,"Move"],[6,[0,3,6]]]],[[7721.61,10860.1,0],[[0,"Move"],[6,[0,3,6]]]],[[7783.34,10748.4,0],[[0,"Move"],[6,[0,3,6]]]],[[7729.62,10710.9,0],[[0,"Move"],[6,[0,3,6]]]],[[7696.01,10663.9,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7568.21,10797.8,0],77,[[301,0]],"r"],[[7566.32,10794,0],189,[[301,0]],"r"],[[7564.41,10799.7,0],268,[[301,0]],"ftl"],[[7567.25,10800.6,0],359,[[301,0]],"ar"]],[],[[[7498.84,10850.3,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[7439.57,10885.6,0],[[0,"Move"],[6,[0,3,6]]]],[[7456.63,10931.4,0],[[0,"Move"],[6,[0,3,6]]]],[[7530.99,10942.8,0],[[0,"Move"],[6,[0,3,6]]]],[[7650.3,10947.5,0],[[0,"Move"],[6,[0,3,6]]]],[[7624.62,10805.8,0],[[0,"Move"],[6,[0,3,6]]]],[[7573.29,10795.8,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7784.4,10958.4,0],77,[[301,0]],"r"],[[7782.51,10954.6,0],189,[[301,0]],"r"],[[7780.6,10960.3,0],268,[[301,0]],"ftl"],[[7783.44,10961.3,0],359,[[301,0]],"ar"]],[],[[[7757,11044.3,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[7710.45,11128.9,0],[[0,"Move"],[6,[0,3,6]]]],[[7764.56,11191.2,0],[[0,"Move"],[6,[0,3,6]]]],[[7791.82,11145,1.90735e-06],[[0,"Move"],[6,[0,3,6]]]],[[7833.49,11065.9,0],[[0,"Move"],[6,[0,3,6]]]],[[7840.81,10966.4,0],[[0,"Move"],[6,[0,3,6]]]],[[7789.48,10956.5,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7564.36,10985.9,0],77,[[301,0]],"r"],[[7562.47,10982.1,9.53674e-07],189,[[301,0]],"r"],[[7560.56,10987.7,0],268,[[301,0]],"ftl"],[[7563.4,10988.7,0],359,[[301,0]],"ar"]],[],[[[7493.74,11038.6,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[7434.2,11082.9,0],[[0,"Move"],[6,[0,3,6]]]],[[7461.22,11146.8,0],[[0,"Move"],[6,[0,3,6]]]],[[7572.2,11181.9,0],[[0,"Move"],[6,[0,3,6]]]],[[7627.73,11174.2,0],[[0,"Move"],[6,[0,3,6]]]],[[7620.77,10993.8,0],[[0,"Move"],[6,[0,3,6]]]],[[7569.44,10983.9,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7667.5,11287.5,0],178,[[301,0]],"r"],[[7664.11,11290.1,0],290,[[301,0]],"r"],[[7670.05,11290.9,0],9,[[301,0]],"ftl"],[[7670.47,11287.9,0],100,[[301,0]],"ar"]],[],[[[7731.71,11346.2,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[7777.21,11398.1,0],[[0,"Move"],[6,[0,3,6]]]],[[7819.13,11373,0],[[0,"Move"],[6,[0,3,6]]]],[[7816.86,11297.8,0],[[0,"Move"],[6,[0,3,6]]]],[[7799.86,11179.6,0],[[0,"Move"],[6,[0,3,6]]]],[[7665.1,11230.6,0],[[0,"Move"],[6,[0,3,6]]]],[[7664.66,11282.9,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;


		/// Phase 2 Patrols.
		[[[[7382.1,11101.9,0],162,[[301,0]],"sl"],[[7385.1,11101.9,0],40,[[301,0]],"r"],[[7388.1,11101.9,0],255,[[301,1]],"ag"],[[7382.1,11104.9,0],282,[[301,0]],"mat"],[[7385.1,11104.9,0],242,[[301,0]],"ar"],[[7388.1,11104.9,0],195,[[301,0]],"r"]],[],[[[7429.35,11126,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[7372.29,11144.6,0],[[0,"Move"],[6,[0,3,6]]]],[[7344.12,11106.4,0],[[0,"Move"],[6,[0,3,6]]]],[[7363.38,11068.6,0],[[0,"Move"],[6,[0,3,6]]]],[[7410.81,11069,0],[[0,"Move"],[6,[0,3,6]]]],[[7429.35,11126,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7485.54,11234.2,0],162,[[301,0]],"sl"],[[7488.54,11234.2,9.53674e-07],40,[[301,0]],"r"],[[7491.54,11234.2,0],255,[[301,1]],"ag"],[[7485.54,11237.2,0],282,[[301,0]],"mat"],[[7488.54,11237.2,9.53674e-07],242,[[301,0]],"ar"],[[7491.54,11237.2,0],195,[[301,0]],"r"]],[],[[[7532.79,11258.3,9.53674e-07],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[7475.73,11276.9,9.53674e-07],[[0,"Move"],[6,[0,3,6]]]],[[7412.65,11195.7,0],[[0,"Move"],[6,[0,3,6]]]],[[7431.71,11150.4,0],[[0,"Move"],[6,[0,3,6]]]],[[7497.26,11162.9,9.53674e-07],[[0,"Move"],[6,[0,3,6]]]],[[7532.79,11258.3,9.53674e-07],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7246.6,10981.9,0],59,[[301,0]],"sl"],[[7245.91,10984.9,0],297,[[301,0]],"r"],[[7245.22,10987.8,0],152,[[301,1]],"ag"],[[7243.68,10981.3,0],179,[[301,0]],"mat"],[[7242.99,10984.2,9.53674e-07],139,[[301,0]],"ar"],[[7242.3,10987.1,0],92,[[301,0]],"r"]],[],[[[7212.27,11022.4,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[7207.33,10962.6,0],[[0,"Move"],[6,[0,3,6]]]],[[7250.94,10943.9,0],[[0,"Move"],[6,[0,3,6]]]],[[7283.31,10971.4,0],[[0,"Move"],[6,[0,3,6]]]],[[7272.06,11017.5,0],[[0,"Move"],[6,[0,3,6]]]],[[7212.27,11022.4,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7166.49,11099.6,0.647785],111,[[301,0]],"sl"],[[7168.36,11101.9,1.78814e-05],349,[[301,0]],"r"],[[7170.24,11104.3,1.78814e-05],204,[[301,1]],"ag"],[[7164.15,11101.5,1.81198e-05],231,[[301,0]],"mat"],[[7166.02,11103.8,0.78941],191,[[301,0]],"ar"],[[7167.9,11106.2,1.83582e-05],144,[[301,0]],"r"]],[],[[[7177.22,11151.6,1.81198e-05],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[7127.06,11118.6,1.85966e-05],[[0,"Move"],[6,[0,3,6]]]],[[7139.21,11072.8,1.78814e-05],[[0,"Move"],[6,[0,3,6]]]],[[7180.75,11064.2,1.78814e-05],[[0,"Move"],[6,[0,3,6]]]],[[7210.14,11101.4,1.78814e-05],[[0,"Move"],[6,[0,3,6]]]],[[7177.22,11151.6,1.81198e-05],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7139.22,10995.5,0],59,[[301,0]],"sl"],[[7138.53,10998.5,0],297,[[301,0]],"r"],[[7137.84,11001.4,0],152,[[301,1]],"ag"],[[7136.3,10994.9,0],179,[[301,0]],"mat"],[[7135.61,10997.8,9.53674e-07],139,[[301,0]],"ar"],[[7134.92,11000.7,0],92,[[301,0]],"r"]],[],[[[7090.56,11051.8,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[7074.42,10971.8,0],[[0,"Move"],[6,[0,3,6]]]],[[7143.56,10957.5,0],[[0,"Move"],[6,[0,3,6]]]],[[7175.93,10985,0],[[0,"Move"],[6,[0,3,6]]]],[[7164.68,11031.1,0],[[0,"Move"],[6,[0,3,6]]]],[[7090.56,11051.8,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7101.57,11316.2,0],59,[[301,0]],"sl"],[[7100.88,11319.2,0],297,[[301,0]],"r"],[[7100.2,11322.1,0],152,[[301,1]],"ag"],[[7098.65,11315.5,0],179,[[301,0]],"mat"],[[7097.96,11318.5,0],139,[[301,0]],"ar"],[[7097.28,11321.4,0],92,[[301,0]],"r"]],[],[[[7067.24,11356.7,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[7062.3,11296.9,0],[[0,"Move"],[6,[0,3,6]]]],[[7105.91,11278.2,0],[[0,"Move"],[6,[0,3,6]]]],[[7138.28,11305.7,0],[[0,"Move"],[6,[0,3,6]]]],[[7127.04,11351.7,0],[[0,"Move"],[6,[0,3,6]]]],[[7067.24,11356.7,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;
		[[[[7224.33,11266.4,0],59,[[301,0]],"sl"],[[7223.64,11269.3,0],297,[[301,0]],"r"],[[7222.95,11272.2,0],152,[[301,1]],"ag"],[[7221.41,11265.7,0],179,[[301,0]],"mat"],[[7220.72,11268.6,0],139,[[301,0]],"ar"],[[7220.03,11271.5,0],92,[[301,0]],"r"]],[],[[[7189.99,11306.8,0],[[0,"Move"],[1,"SAFE"],[4,"FILE"],[5,"LIMITED"],[6,[0,3,6]]]],[[7185.05,11247,0],[[0,"Move"],[6,[0,3,6]]]],[[7228.67,11228.4,0],[[0,"Move"],[6,[0,3,6]]]],[[7261.03,11255.8,0],[[0,"Move"],[6,[0,3,6]]]],[[7249.79,11301.9,0],[[0,"Move"],[6,[0,3,6]]]],[[7189.99,11306.8,0],[[0,"Cycle"]]]],east] call GW_Common_fnc_spawnGroup;

		// Phase 2 Statics.
		[[[[7297.82,11048.2,3.80171],109,"Up",[[301,0]],"r"],[[7296.39,11045.2,3.54946],113,"Up",[[301,0]],"mmg"],[[7280,11039.4,3.87576],121,"Up",[[301,0]],"r"],[[7271.56,11038.2,0.370203],7,"Up",[[301,0]],"r"],[[7272.95,11050.6,3.60154],71,"Up",[[301,0]],"r"],[[7287.03,11048.7,3.78239],268,"Up",[[301,0]],"mmg"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[7252.36,11053,4.00149],138,"Up",[[301,1]],"ag"],[[7247.56,11052.5,4.13886],137,"Up",[[301,0]],"ar"],[[7253.54,11057.2,4.011],94,"Up",[[301,0]],"mmg"],[[7245.19,11055.4,4.43915],201,"Up",[[301,0]],"mat"],[[7187.52,11122.4,0.401032],136,"Down",[[301,0]],"mmg"],[[7186.65,11119.9,0.524267],133,"Middle",[[301,0]],"lr"],[[7183.82,11114.2,0.268428],102,"Up",[[301,0]],"ftl"],[[7182.52,11110.9,0.500408],99,"Up",[[301,0]],"mmg"],[[7180.76,11108.5,0.797743],188,"Up",[[301,0]],"r"],[[7177.55,11106.7,0.955564],125,"Up",[[301,1]],"ag"],[[7156.8,11068.5,0.848584],133,"Up",[[301,0]],"r"],[[7158.02,11070.7,1.15748],133,"Up",[[301,0]],"r"],[[7175.33,11035.2,0.497533],122,"Up",[[301,0]],"mat"],[[7158.56,11006.2,0.450645],81,"Up",[[301,0]],"mmg"],[[7157.4,11000.9,0.676185],116,"Up",[[301,0]],"lr"],[[7141.6,11030.4,0.468411],54,"Up",[[301,0]],"mat"]],[],[],east] call GW_Common_fnc_spawnGroup;
		[[[[6919.75,11088.6,0],95,"Middle",[[301,0]],"sl"],[[6909.06,11134.6,4.94201],55,"Up",[[301,0]],"g"],[[6902.79,11142.9,4.04194],41,"Up",[[301,0]],"r"],[[6908.39,11132.4,5.07158],169,"Up",[[301,0]],"r"],[[6909.64,11094.4,0.725139],119,"Up",[[301,0]],"lr"],[[6890.16,11078.4,0],64,"Middle",[[301,1]],"ag"],[[6834.34,11083.7,3.84655],118,"Up",[[301,0]],"ar"],[[6826.69,11081.2,3.65961],277,"Up",[[301,0]],"ar"],[[6833.56,11086.8,0.282516],124,"Up",[[301,0]],"r"],[[6832.7,11084.2,0.263607],89,"Up",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;

		// Mortar and Lambs
		[Mortar_1,east,"precise","light",["auto",25],150,350,20,-1,-1] spawn OKS_fnc_Mortars;
		[getPos LambsGroupSpawn_1, "ambushrush", 6, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_2, "ambushrush", 6, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_3, "ambushrush", 6, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;

		// AA MGs.
		[[],[["UK3CB_ADE_O_KORD_high",[7189.46,11726.8,0.2],133,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ADE_O_KORD_high",[7220.37,11715.9,0.2],133,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ADE_O_KORD_high",[6789.01,11683.3,0.2],133,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ADE_O_KORD_high",[6796.04,11687,0.2],133,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ADE_O_KORD_high",[6921.82,11519.3,0.2],133,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ADE_O_KORD_high",[6919.42,11514.6,0.2],133,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ADE_O_KORD_high",[6669.23,10914.4,0.2],133,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ADE_O_KORD_high",[6671.19,10904.5,0.2],89,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ADE_O_KORD_high",[6460.57,11395.1,0.2],74,[["gunner",-1,[0]]],[[351,false]]],["UK3CB_ADE_O_KORD_high",[6462.16,11391.2,3.8147e-06],108,[["gunner",-1,[0]]],[[351,false]]]],[],east] call GW_Common_fnc_spawnGroup;
		
		// Radars
		[Radar_1,["UK3CB_ADE_O_KORD_high"],3500,3500,100] spawn OKS_fnc_Radar;
		[Radar_2,["UK3CB_ADE_O_KORD_high"],3500,3500,100] spawn OKS_fnc_Radar;

		// Artillery
		[east,Arty_1,getpos ArtyTarget_1,7,300,30,false] spawn OKS_fnc_ArtyFire; sleep 2.5;
		[east,Arty_2,getpos ArtyTarget_2,7,300,30,false] spawn OKS_fnc_ArtyFire;

		// AAA
		[AAA_1,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;

		// AI Battles
		[	
			AIBattle_SpawnB_1,
			AIBattle_SpawnA_1,
			AIBattle_Meet_1,
			independent,
			east,
			["UK3CB_AAF_I_BMP1", "UK3CB_AAF_I_GAZ_Vodnik_Cannon", "UK3CB_AAF_I_M60A1", "I_LT_01_cannon_F"],
			["UK3CB_CSAT_M_O_BMD1", "UK3CB_CSAT_M_O_BMP1","UK3CB_CSAT_M_O_MTLB_BMP"],
			sideUnknown,
			true,
			40,
			-1,
			60,
			12,
			3000
		] call OKS_fnc_AI_Battle;

	};

	case 2: {

		// Air Attack - Early Compounds.
		["hq","side","1st Platoon be advised, incoming fast-mover from the north. Godfather out."] remoteExec ["OKS_fnc_Chat",0];
		[AirSpawnPosition_1, AirSpawnTarget_1, [["UK3CB_CSAT_M_O_MIG21_AT",["uk3cb_mag_kh25MA","uk3cb_mag_kh25MA","uk3cb_mag_kh25MA","uk3cb_mag_kh25MA"]]], east] spawn OKS_fnc_AirSpawn;
		sleep 5;
		[MechSpawn_1,MechHunt_1,"UK3CB_CSAT_M_O_BMP1",5,east,2000] spawn OKS_fnc_Mechanized_Spawn;
		sleep 5;
		[MechSpawn_2,MechHunt_1,"UK3CB_CSAT_M_O_BMP1",5,east,2000] spawn OKS_fnc_Mechanized_Spawn;
	
		// Air Scouts
		[getPos AirScout_1,getPos AirScoutTarget_1,east,"UK3CB_CSAT_F_O_Mi8",["LOITER",false],[500,4],[250,500],nil,false] spawn OKS_fnc_AirScout;

	};

	case 3: {

		// SCUD Attack.
		[beachLandingSpawn_3, beachLandingTarget_3, "UK3CB_TKA_O_RHIB_Gunboat", 7, east, "rush", 1500, ""] spawn OKS_fnc_BeachLanding;
		["hq","side","1st Platoon be advised, a squadron of submarines have set up to the north-east. Expect inbound cruise missiles. Godfather out."] remoteExec ["OKS_fnc_Chat",0];
		
		[VLS_1, [7279.71,11038.9,0], east, 45] spawn OKS_fnc_ScudIntercept_LaunchAI; sleep 600;
		[VLS_2, BallisticTarget_1, east, 45] spawn OKS_fnc_ScudIntercept_LaunchAI;
	};

	case 4: {

		// Beach Counter.
		[beachLandingSpawn_1, beachLandingTarget_1, "UK3CB_TKA_O_RHIB_Gunboat", 7, east, "rush", 1500, ""] spawn OKS_fnc_BeachLanding; sleep 1;
		[beachLandingSpawn_2, beachLandingTarget_2, "UK3CB_TKA_O_RHIB_Gunboat", 7, east, "rush", 1500, ""] spawn OKS_fnc_BeachLanding;

		sleep 90;
		[[],[["UK3CB_CSAT_M_O_BTR60",[6631.54,10907.1,0],53,[["driver",-1,[]],["gunner",-1,[0]],["turret",-1,[1]],["turret",8,[2]],["turret",9,[3]],["turret",10,[4]],["turret",11,[5]],["turret",12,[6]],["turret",13,[7]],["turret",14,[8]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",0,"wheel_1_unhide",0,"wheel_2_unhide",0]],[351,false]]]],[[[6694.78,10950.5,0],[[0,"Move"]]],[[6759.69,10958.9,9.53674e-06],[[0,"Move"]]],[[6938.99,11040.6,4.29153e-05],[[0,"Move"]]],[[7066.75,11023,0],[[0,"Hold"]]]],east] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_CSAT_M_O_BTR60",[6251.66,10851.4,0],176,[["driver",-1,[]],["gunner",-1,[0]],["turret",-1,[1]],["turret",8,[2]],["turret",9,[3]],["turret",10,[4]],["turret",11,[5]],["turret",12,[6]],["turret",13,[7]],["turret",14,[8]]],[[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"crate_r4_unhide",0,"water_1_unhide",1,"water_2_unhide",1,"wheel_1_unhide",0,"wheel_2_unhide",0]],[351,false]]]],[[[6593,11015.7,0],[[0,"Move"],[1,"SAFE"]]],[[6936.9,11106,-9.53674e-06],[[0,"Move"]]],[[7144.79,11042.9,0],[[0,"SAD"]]]],east] call GW_Common_fnc_spawnGroup;
	
	};

	case 5: {

		// Final Compound.
		[DroneSpawn_1, DroneHuntZone_1, "" , east] spawn OKS_fnc_DroneHuntZone; sleep 90;
		[DroneSpawn_2, DroneHuntZone_1, "" , east] spawn OKS_fnc_DroneHuntZone; sleep 90;
		[DroneSpawn_3, DroneHuntZone_1, "" , east] spawn OKS_fnc_DroneHuntZone; sleep 90;
		[DroneSpawn_4, DroneHuntZone_1, "" , east] spawn OKS_fnc_DroneHuntZone;		
		sleep 60;
		[getPos LambsGroupSpawn_4, "hunt", 6, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_5, "hunt", 6, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_6, "hunt", 6, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_7, "rush", 6, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_8, "rush", 6, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;
		[getPos LambsGroupSpawn_9, "rush", 6, east, 1500, []] spawn OKS_fnc_Lambs_SpawnGroup;

		sleep 120;
		[ConvoySpawn_2,ConvoyWP_2,ConvoyEnd_2,east,[6,["UK3CB_CSAT_M_O_BMP1","UK3CB_CSAT_M_O_BTR80","UK3CB_CSAT_M_O_BRM1K","UK3CB_CSAT_M_O_Marid_Unarmed_Camo","UK3CB_CSAT_M_O_Marid_Unarmed_Camo","UK3CB_CSAT_M_O_Marid_Unarmed_Camo"],35,50],[true,6],[],false,false,["rush"],false] spawn OKS_fnc_Convoy_Spawn;
	};

	case 6: {

		// Bridge Counter.		
		[ConvoySpawn_1,ConvoyWP_1,ConvoyEnd_1,east,[4,["UK3CB_CSAT_M_O_BTR40_MG","UK3CB_CSAT_M_O_BTR40_MG","UK3CB_CSAT_M_O_BTR40","UK3CB_CSAT_M_O_BTR40"],35,50],[true,1],[],false,false,["rush"],false] spawn OKS_fnc_Convoy_Spawn;

		[[[[7153.84,11069.3,0.698968],187,"Middle",[[301,0]],"r"],[[6910.26,11134.3,1.60901],233,"Up",[[301,0]],"ftl"],[[6897.99,11138,4.05955],237,"Up",[[301,0]],"g"],[[6901.62,11139.9,0.735863],14,"Up",[[301,0]],"mat"],[[6892.58,11139.3,0.434737],223,"Middle",[[301,0]],"mat"],[[6889.86,11091.1,0.153344],84,"Down",[[301,0]],"ar"],[[6905.19,11095.5,0.706105],184,"Middle",[[301,0]],"lr"],[[6823.97,11081.4,9.53674e-07],333,"Up",[[301,0]],"ftl"],[[6827.42,11098,0],66,"Middle",[[301,0]],"r"]],[],[],east] call GW_Common_fnc_spawnGroup;
	};

	case 7:{
		[HuntBase_1, HuntSpawn_1, HuntTrigger_1, 5, 900, EAST, ["UK3CB_CSAT_M_O_BMP1","UK3CB_CSAT_M_O_BTR70","UK3CB_CSAT_M_O_BTR60","UK3CB_CSAT_M_O_BTR80","UK3CB_CSAT_M_O_Gaz66_Open", "UK3CB_CSAT_M_O_Gaz66_Covered", "UK3CB_CSAT_M_O_Ural_Open", "UK3CB_CSAT_M_O_Ural", "UK3CB_CSAT_M_O_UAZ_Closed"], 180] spawn OKS_fnc_HuntBase; sleep 60;
		[HuntBase_2, HuntSpawn_2, HuntTrigger_1, 5, 900, EAST, ["UK3CB_CSAT_M_O_BMP1","UK3CB_CSAT_M_O_BTR70","UK3CB_CSAT_M_O_BTR60","UK3CB_CSAT_M_O_BTR80","UK3CB_CSAT_M_O_Gaz66_Open", "UK3CB_CSAT_M_O_Gaz66_Covered", "UK3CB_CSAT_M_O_Ural_Open", "UK3CB_CSAT_M_O_Ural", "UK3CB_CSAT_M_O_UAZ_Closed"], 180] spawn OKS_fnc_HuntBase; sleep 60;
		[HuntBase_3, HuntSpawn_3, HuntTrigger_1, 5, 900, EAST, ["UK3CB_CSAT_M_O_BMP1","UK3CB_CSAT_M_O_BTR70","UK3CB_CSAT_M_O_BTR60","UK3CB_CSAT_M_O_BTR80","UK3CB_CSAT_M_O_Gaz66_Open", "UK3CB_CSAT_M_O_Gaz66_Covered", "UK3CB_CSAT_M_O_Ural_Open", "UK3CB_CSAT_M_O_Ural", "UK3CB_CSAT_M_O_UAZ_Closed"], 180] spawn OKS_fnc_HuntBase; sleep 60;
		[HuntBase_4, HuntSpawn_4, HuntTrigger_1, 5, 900, EAST, ["UK3CB_CSAT_M_O_BMP1","UK3CB_CSAT_M_O_BTR70","UK3CB_CSAT_M_O_BTR60","UK3CB_CSAT_M_O_BTR80","UK3CB_CSAT_M_O_Gaz66_Open", "UK3CB_CSAT_M_O_Gaz66_Covered", "UK3CB_CSAT_M_O_Ural_Open", "UK3CB_CSAT_M_O_Ural", "UK3CB_CSAT_M_O_UAZ_Closed"], 180] spawn OKS_fnc_HuntBase; sleep 60;
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