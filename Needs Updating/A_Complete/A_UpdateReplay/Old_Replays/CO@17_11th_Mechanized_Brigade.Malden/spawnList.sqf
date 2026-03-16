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
		[Trigger_2,false,[12,12,false,true],west,0,0,0,[1,true,false,0],[0,false],[2,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		/// Delete First AA
		{deleteVehicle _X} foreach crew AA_1;
		deleteVehicle AA_1;
		{deleteVehicle _X} foreach crew AA_2;
		deleteVehicle AA_1;
		{deleteVehicle _X} foreach crew AA_3;
		deleteVehicle AA_3;

		// Mid Position Open
		[[[[7294.23,7309.91,9.91821e-005],335,"Middle",[]],[[7285.19,7303.34,2.28882e-005],289,"Middle",[]],[[7269.61,7298.04,2.28882e-005],308,"Middle",[]],[[7262.27,7294.65,2.28882e-005],313,"Up",[]]],[["I_LT_01_cannon_F",[7279.96,7296.71,0],327,[["driver",-1,[]],["commander",-1,[0]]],[[6,["Indep_01",1]],[7,["showTools",0,"showCamonetHull",0,"showBags",0,"showSLATHull",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		/// Mid Leap
		[[[[7050.49,7431.87,8.39233e-005],32,"Auto",[]],[[7032.12,7433.48,9.15527e-005],48,"Auto",[]],[[7005.14,7436.47,7.62939e-005],32,"Auto",[]],[[6989.19,7417.2,0.0332336],297,"Auto",[]],[[7016.61,7421.55,7.62939e-005],212,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Mountain Ambush
		[[[[7510.94,7088.79,1.52588e-005],194,"Auto",[]],[[7513.61,7079.82,1.52588e-005],233,"Middle",[]],[[7524.91,7071.26,3.05176e-005],194,"Auto",[]],[[7527.76,7064.18,1.52588e-005],238,"Auto",[]],[[7535.29,7062.53,1.52588e-005],246,"Auto",[]],[[7546.77,7066.11,1.52588e-005],169,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Hill Top Defensive Line
		[[[[7187.68,6746.58,1.52588e-005],310,"Auto",[]],[[7197.89,6745.3,2.28882e-005],346,"Auto",[]],[[7226.7,6743.37,1.52588e-005],336,"Auto",[]],[[7288.98,6747.15,1.52588e-005],338,"Auto",[]],[[7262.19,6746.37,-2.28882e-005],351,"Auto",[]],[[7309.41,6744.76,7.62939e-006],353,"Auto",[]],[[7357.24,6740.31,1.52588e-005],356,"Auto",[]]],[["I_LT_01_cannon_F",[7349.82,6740.94,-1.52588e-005],352,[["driver",-1,[]],["commander",-1,[0]]],[[6,["Indep_01",1]],[7,["showTools",0,"showCamonetHull",0,"showBags",0,"showSLATHull",0]]]],["I_LT_01_scout_F",[7278.01,6745.05,0],0,[["driver",-1,[]],["commander",-1,[0]]],[[6,["Indep_01",1]],[7,["showTools",0,"showCamonetHull",0,"showBags",0,"showSLATHull",0]]]],["I_LT_01_cannon_F",[7205.37,6746.9,-2.28882e-005],345,[["driver",-1,[]],["commander",-1,[0]]],[[6,["Indep_01",1]],[7,["showTools",0,"showCamonetHull",0,"showBags",0,"showSLATHull",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		/// Ridge Positions
		[[[[6794.37,7041.24,-3.05176e-005],24,"Auto",[]],[[6809.32,7026.32,-3.05176e-005],26,"Auto",[]],[[6755.44,7041.17,-3.05176e-005],12,"Auto",[]],[[6772.25,7066.24,-6.10352e-005],12,"Auto",[]],[[6574.88,7086.04,-0.000366211],32,"Auto",[]],[[6589.74,7071.66,-0.000366211],28,"Auto",[]],[[6624.42,7032.38,-1.52588e-005],34,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		/// BMP Ridge
		[[[[6908.13,7023.55,-6.86646e-005],18,"Auto",[]],[[6903.69,7000.4,0.0514908],51,"Auto",[]],[[6900.17,7018.4,0.0514908],24,"Auto",[]]],[["LOP_UKR_BMP1",[6900.62,7007.43,-5.34058e-005],26,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		// Valley Blockade
		[[[[7621.98,6534.64,-6.48499e-005],2,"Auto",[]],[[7600.39,6539.53,-6.48499e-005],1,"Middle",[]],[[7626.85,6521.69,1.23425],2,"Auto",[]],[[7597.6,6510.19,3.58905],37,"Auto",[]],[[7614.67,6495.88,-6.48499e-005],277,"Auto",[]],[[7595.74,6513.42,0.244719],116,"Auto",[]]],[["LOP_UKR_BMP1",[7616.63,6530.87,0],351,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		// Valley Blockade - Rocks
		[[[[7677.28,6372.61,2.47955e-005],28,"Auto",[]],[[7660.19,6371.16,2.67029e-005],299,"Auto",[]],[[7634.3,6382.54,2.47955e-005],90,"Auto",[]],[[7663.16,6340.06,2.47955e-005],300,"Auto",[]],[[7644.36,6467.78,2.47955e-005],13,"Auto",[]]],[["LOP_UKR_BMP1",[7649.72,6458.24,0],6,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]],["LOP_UKR_BMP1",[7674.89,6347.52,-3.05176e-005],334,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		[[[[7431.41,6258.71,-1.71661e-005],290,"Auto",[]],[[7446.52,6245.16,-1.52588e-005],71,"Auto",[]],[[7452.12,6313.98,-1.52588e-005],85,"Auto",[]],[[7450.22,6365.39,-1.52588e-005],85,"Middle",[]],[[7522.42,6277.41,-1.52588e-005],85,"Auto",[]]],[["LOP_UKR_BMP1",[7423.87,6272.2,-2.86102e-005],85,[["driver",-1,[]],["cargo",-1,[0]]],[[6,["standard",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",0,"crate_l3_unhide",0,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",1,"maljutka_hide_source",0]]]]],[]] call GW_Common_fnc_spawnGroup;


		// Wiesel Pair
		[[],[["I_LT_01_cannon_F",[6801.85,6092.95,-9.15527e-005],53,[["driver",-1,[]],["commander",-1,[0]]],[[6,["Indep_01",1]],[7,["showTools",0,"showCamonetHull",0,"showBags",0,"showSLATHull",0]]]],["I_LT_01_cannon_F",[6742.72,6002.77,-9.15527e-005],12,[["driver",-1,[]],["commander",-1,[0]]],[[6,["Indep_01",1]],[7,["showTools",0,"showCamonetHull",0,"showBags",0,"showSLATHull",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		[Trigger_3,false,[12,15,false,true],west,0,1,1,[1,true,false,0],[0,false],[2,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
	};

	case 3: {
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
