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

	case 0: {

		[TaskObject_1,1,GetMarkerPos "Task_1",west,objNull] spawn OKS_TASKSETUP; 
		[TaskObject_2,2,GetMarkerPos "Task_2",west,objNull] spawn OKS_TASKSETUP; 
		[TaskObject_3,3,GetMarkerPos "Task_3",west,objNull] spawn OKS_TASKSETUP;
		[TaskObject_4,4,GetMarkerPos "Task_4",west,objNull] spawn OKS_TASKSETUP; 
		[TaskObject_5,5,GetMarkerPos "Task_5",west,objNull] spawn OKS_TASKSETUP; 
		[TaskObject_6,6,GetMarkerPos "Task_6",west,objNull] spawn OKS_TASKSETUP;

		[Trigger_1,false,[15,20,false,false],east,2,0,0,[1,false,false,0.5],[0,false],[1,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
		[[[[15695,6188.83,5.24521e-005],359,"Middle",[]],[[15675.2,6180.33,5.24521e-005],30,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 1: {

		{_X inflame true} foreach [fire_2,campRush_1];

		Soldier_4 setBehaviour "COMBAT";

		if(!TriggerActivated Camp_2) then {
			//[[CampRush_2],5,east,500,true,false,30] spawn OKS_Rush_Spawn;
			[CampRush_2,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		};

		if(!TriggerActivated Camp_1) then {
			//[[CampRush_1],5,east,500,true,false,30] spawn OKS_Rush_Spawn;
			[CampRush_1,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		};

		if(!Alive ecar_1) then {
			deleteVehicle ecar_1;
			[[],[["UK3CB_ADA_O_Pickup",[15700.9,6211.67,-4.48227e-005],299,[["driver",-1,[]],["cargo",1,[0]],["cargo",2,[1]],["cargo",3,[2]]],[[6,["LOP_Black",1]],[7,["HideDoor1",0,"HideDoor2",0,"HideDoor3",1,"HideBackpacks",1,"HideBumper1",1,"HideBumper2",0,"HideConstruction",1,"hidePolice",1,"HideServices",1,"BeaconsStart",0,"BeaconsServicesStart",0]]]]],[[[15620.6,6250.68,1.04904e-005],[[0,"Move"],[5,"FULL"]]],[[15402.3,6378.1,2.38419e-005],[[0,"Move"]]],[[15262.9,6474.94,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		};
	};

	case 2: {

		if(!TriggerActivated Camp_4) then {
			//[[CampRush_4,CampRush_4],5,east,500,true,false,30] spawn OKS_Rush_Spawn;
			[CampRush_4,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
			[CampRush_4,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		};

		if(!TriggerActivated Camp_3) then {
			//[[CampRush_3],5,east,500,true,false,30] spawn OKS_Rush_Spawn;
			[CampRush_3,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		};

		{_X inflame true} foreach [fire_3,campRush_4];
	};

	case 3: {

		{_X inflame true} foreach [campRush_6,campRush_5];

		if(!TriggerActivated Camp_5) then {
			//[[CampRush_5],5,east,500,true,false,30] spawn OKS_Rush_Spawn;
			[CampRush_5,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		};

		if(!TriggerActivated Camp_6) then {
			//[[CampRush_6],5,east,500,true,false,30] spawn OKS_Rush_Spawn;
			[CampRush_6,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		};
	};

	case 4: {

		if(!TriggerActivated Camp_7) then {
			//[[CampRush_7],5,east,1000,true,false,30] spawn OKS_Rush_Spawn;
			[CampRush_7,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		};

		if(!TriggerActivated Camp_8) then {
			//[[CampRush_8],5,east,1000,true,false,30] spawn OKS_Rush_Spawn;
			[CampRush_8,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		};

		if(!TriggerActivated Camp_9) then {
			//[[CampRush_9],5,east,1000,true,false,30] spawn OKS_Rush_Spawn;
			[CampRush_9,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		};

		if(!TriggerActivated Camp_10) then {
			//[[CampRush_10],5,east,1000,true,false,30] spawn OKS_Rush_Spawn;
			[CampRush_10,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		};

		if(!TriggerActivated Camp_11) then {
			//[[CampRush_11],5,east,1000,true,false,30] spawn OKS_Rush_Spawn;
			[CampRush_11,"rush",5,east,1000,[]] spawn OKS_Lambs_SpawnGroup;
		};


	};

	case 5: {

		// Ambush Group 1
		[[[[14010.5,6383.29,4.76837e-007],95,[]],[[14011.1,6381.29,4.76837e-007],95,[]],[[14012.3,6384.93,0],95,[]],[[14009.2,6383.91,4.76837e-007],95,[]]],[],[[[14097.9,6363.68,-3.8147e-006],[[0,"Move"],[5,"FULL"]]],[[14199.4,6319.32,-4.76837e-007],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[14018.8,6369.74,0],95,[]],[[14019.4,6367.73,4.76837e-007],95,[]],[[14020.6,6371.37,0],95,[]],[[14017.6,6370.35,0],95,[]]],[],[[[14084.7,6345.88,0],[[0,"Move"],[5,"FULL"]]],[[14182.2,6264.65,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 6: {

		[Trigger_2,false,[25,30,true,false],east,1,1,0,[3,false,false,0.5],[0,false],[4,false],[0,0,0,0,0],true] spawn OKS_CreateZone;

		[[[[13831,3643.62,0],35,[]],[[13832.2,3636.66,0],35,[]],[[13824,3642.41,0],35,[]],[[13833.4,3629.69,0],35,[]],[[13817.1,3641.2,0],35,[]],[[13834.6,3622.72,0],35,[]],[[13810.1,3639.98,0],35,[]],[[13835.9,3615.76,0],35,[]]],[],[[[13890.6,3773.14,0],[[0,"Move"],[1,"SAFE"],[5,"FULL"]]],[[13955,3944.76,0.000135422],[[0,"Move"]]],[[13961.3,4093.06,8.05855e-005],[[0,"Move"]]],[[14014.3,4272.47,-2.57492e-005],[[0,"Move"]]],[[14096.3,4406.23,1.33514e-005],[[0,"Move"]]],[[14017.4,4269.5,8.7738e-005],[[0,"Move"]]],[[13964.6,4096.79,7.48634e-005],[[0,"Move"]]],[[13947.8,3944.45,2.26498e-005],[[0,"Move"]]],[[13895.2,3768.53,-0.000263214],[[0,"Move"]]],[[13838.4,3644.64,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[13908.7,3577.46,0],35,[]],[[13909.9,3570.49,0],35,[]],[[13901.7,3576.25,0],35,[]],[[13911.1,3563.53,0],35,[]],[[13894.8,3575.03,0],35,[]],[[13912.3,3556.56,0],35,[]],[[13887.8,3573.82,0],35,[]],[[13913.5,3549.59,0],35,[]]],[],[[[13968.2,3706.98,0],[[0,"Move"],[1,"SAFE"],[5,"FULL"]]],[[14032.7,3878.6,0.000113487],[[0,"Move"]]],[[14039,4026.9,5.91278e-005],[[0,"Move"]]],[[14092,4206.31,0],[[0,"Move"]]],[[14174,4340.06,0],[[0,"Move"]]],[[14095,4203.34,6.58035e-005],[[0,"Move"]]],[[14042.3,4030.63,5.24521e-005],[[0,"Move"]]],[[14025.5,3878.29,0],[[0,"Move"]]],[[13972.9,3702.37,0],[[0,"Move"]]],[[13916.1,3578.48,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[14362.3,4740.61,1.01936],0,"Up",[]],[[14357,4738.68,2.47455],324,"Middle",[]],[[14358.3,4742.8,2.25915],324,"Down",[]],[[14354.8,4738.21,2.65889],324,"Down",[]],[[14352.6,4734.43,2.13656],324,"Down",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[13974,4077.89,0],44,"Up",[]],[[13972.6,4082.44,0],44,"Up",[]],[[13969.9,4086.51,-4.76837e-007],44,"Up",[]],[[13981,4099.59,0],44,"Middle",[]],[[13978.9,4069.95,0],44,"Middle",[]],[[13971.7,4068.06,0],44,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		sleep 15;

		[[],[["UK3CB_C_Small_Boat_Wood",[13758,3572.44,4.3895],95,[["driver",-1,[]],["cargo",0,[0]],["cargo",1,[1]],["cargo",2,[2]]],[[6,["Black",1]]]]],[[[13867.1,3598.77,3.02557],[[0,"Move"]]],[[13980.9,3848.63,1.55794],[[0,"Move"]]],[[14033.8,4156.03,4.12457],[[0,"Move"]]],[[14226.3,4517.65,2.21407],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 15;

		[[],[["UK3CB_C_Small_Boat_Wood",[13742.7,3562.64,2.91964],95,[["driver",-1,[]],["cargo",0,[0]],["cargo",1,[1]],["cargo",2,[2]]],[[6,["Black",1]]]]],[[[13866.5,3594.83,1.76126],[[0,"Move"]]],[[13978.8,3850.71,1.16097],[[0,"Move"]]],[[14033.7,4157.96,4.14362],[[0,"Move"]]],[[14174,4447.19,1.97857],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
	};

	case 7: {
		// Convoy
		[convoystart,convoywaypoint,convoyend,east,[10,["UK3CB_MEE_O_YAVA", "UK3CB_MEE_O_YAVA", "UK3CB_MEE_O_Datsun_Pkm", "UK3CB_MEE_O_Hilux_Pkm", "UK3CB_MEE_O_M998_2DR", "UK3CB_MEE_O_Pickup", "UK3CB_MEE_O_Pickup_DSHKM", "UK3CB_MEE_O_Van_Transport", "UK3CB_MEE_O_Datsun_Open", "UK3CB_MEE_O_Hilux_Igla_Chair"], 8, 20],[true,6],[], false, false] spawn OKS_Convoy_Spawn;
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
