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
		
		{ [east,_X,getMarkerPos "marker_5",4,300,150,false] spawn OKS_ArtyFire; sleep (5 + (random 5)); } foreach [arty_1,arty_2,arty_3];
		{ [east,_X,getMarkerPos "marker_5",4,300,150,false] spawn OKS_ArtyFire; sleep (5 + (random 5)); } foreach [arty_4,arty_5,arty_6];

		{ [_X,east,false,1500,false,[8,12,14],0.35] spawn GW_Ambient_AAA; sleep (10 + (random 10)); _X setFuel 0; /*[_X,east] call OKS_AddVehicleCrew; sleep 2;*/ [_X,100,8,"Scan_1",false] execvm "AL_AI_scan\al_scan.sqf";} foreach [aa_1,aa_2,aa_3];

		/// First Compounds
		[[[[5052.27,4716.47,1.06842],256,"Up",[]],[[5049.04,4722.49,0.690247],62,"Up",[]],[[5053.65,4720.41,0.431717],322,"Up",[]],[[5031.88,4734.09,4.09823],256,"Up",[]],[[5034.44,4733.62,1.48112],347,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5020.47,4716.88,0],123,"Up",[]],[[5023.14,4720.29,0],64,"Up",[]],[[5034.72,4701.52,0.190941],345,"Up",[]],[[5037.32,4699.07,0.349648],127,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		/// Second Compound
		[[[[5276.06,4715.82,0],353,"Up",[]],[[5290.62,4718.59,3.86024],137,"Up",[]],[[5286.63,4725.04,3.85479],319,"Up",[]],[[5283.98,4713.18,0.51548],128,"Up",[]],[[5284.64,4722.99,0.47081],110,"Up",[]],[[5279.83,4717.27,3.93615],138,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5314.89,4724.93,18.2175],334,"Up",[]],[[5312.78,4723.89,18.267],323,"Up",[]],[[5304.08,4705.42,0],340,"Middle",[]],[[5295.86,4694.89,0.262894],21,"Up",[]],[[5307.93,4767.12,0],265,"Up",[]],[[5271.56,4772.21,7.62939e-006],39,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		/// Artillery Guards
		[[[[5391.31,4495.2,0],11,"Up",[]],[[5385.19,4489.3,0],253,"Up",[]],[[5361.32,4514.13,0],56,"Middle",[]],[[5352.8,4512,7.62939e-006],125,"Up",[]],[[5345.35,4523.57,-7.62939e-006],332,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5349.75,4462.01,7.62939e-006],290,"Up",[]],[[5380.84,4459.66,7.62939e-006],357,"Up",[]],[[5377.24,4457.74,0],337,"Up",[]],[[5356.78,4473.38,-7.62939e-006],314,"Up",[]],[[5371.85,4434.27,-7.62939e-006],344,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		//[[[[5390.99,4404.99,0],356,"Up",[]],[[5366.69,4402.63,0],354,"Up",[]],[[5361.73,4398.14,0],353,"Up",[]],[[5387.05,4427.11,7.62939e-006],314,"Middle",[]],[[5404.9,4432.16,0],13,"Up",[]],[[5417.47,4435.17,0],101,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5466.35,4450.53,0],331,"Up",[]],[[5464.77,4448.44,0],323,"Up",[]],[[5452.29,4437.33,0],334,"Up",[]],[[5437.55,4436.51,0],326,"Middle",[]],[[5417.49,4462.91,0],30,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		/// Third Compound
		[[[[5011.18,4483.76,3.70259],2,"Up",[]],[[5019.02,4480.73,3.62061],31,"Up",[]],[[5022.3,4490.2,0],46,"Up",[]],[[5006.69,4475.69,0.486656],132,"Up",[]],[[5013.38,4475.55,0.45472],336,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5065.34,4502.96,0],226,"Up",[]],[[5071.11,4483.56,0.551254],338,"Up",[]],[[5055.02,4481.37,0.119583],32,"Up",[]],[[5051.74,4479.06,0.149567],343,"Up",[]],[[5072.36,4450.54,0],301,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		[Trigger_1,false,[0,15,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;	
		
	};

	case 2: {

		waitUntil {sleep 1; !isNil "OKS_Enemy_Radio"};
		[east] spawn OKS_Enemy_Radio;

		/// Spawn Convoy Ambience
		ENEMYCONVOY = [];
		[econvoy_1,econvoy_2,econvoy_3,east,[4,["UK3CB_TKA_O_BMP2"], 15, 25],[false,0],ENEMYCONVOY, true, true] spawn OKS_Convoy_Spawn;

		/// Spawn Artillery strikes
		{_X setVehicleAmmo 1} foreach [farty_1,farty_2,farty_3,farty_4];
		[farty_1,west,[getPos sam_1],1,1,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf";
		[farty_2,west,[getPos sam_2],1,1,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf";
		[farty_3,west,[getPos sam_1],1,1,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf";
		[farty_4,west,[getPos sam_2],1,1,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf";

		sleep 10;
		waitUntil {sleep 1; !isNil "OKS_SAM"};
		{[_X,10,2,90] spawn OKS_SAM;} foreach [SAM_1,SAM_2];
		sleep 5;
		/// Spawn Air Ambience
		
		/// Spawn Escort
		[getPos Plane_1, getPos PlaneExit_1,selectRandom ["UK3CB_AAF_B_L39_AA"],west,true,"MOVE"] execVM "Scripts\OKS_Ambience\OKS_AirSpawn.sqf";
		[getPos Plane_2, getPos PlaneExit_2,selectRandom ["UK3CB_AAF_B_L39_AA"],west,true,"MOVE"] execVM "Scripts\OKS_Ambience\OKS_AirSpawn.sqf";
		sleep 5;
		/// Spawn Cargo Drop
		[getPos Cargo_1,getMarkerPos "marker_25",getPos PlaneExit_1,"UK3CB_AAF_B_C130J_CARGO",west,true,"MOVE"] execVM "Scripts\OKS_Ambience\OKS_AirCargoDrop.sqf"; sleep 10;
		[getPos Cargo_2,getMarkerPos "marker_25",getPos PlaneExit_2,"UK3CB_AAF_B_C130J_CARGO",west,true,"MOVE"] execVM "Scripts\OKS_Ambience\OKS_AirCargoDrop.sqf";

	};

	case 3: {

		// AA Compound
		[[[[5118.52,4179.7,0.426949],356,"Up",[]],[[5123.72,4180.47,0.417061],90,"Up",[]],[[5110.05,4185.44,3.88559],353,"Up",[]],[[5112.84,4186.03,3.88559],9,"Up",[]],[[5111.9,4185.96,0.524841],255,"Up",[]]],[["UK3CB_AAF_O_PKM_High",[5107.69,4185.18,3.88559],319,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5124.46,4192.25,0],311,"Up",[]],[[5140.89,4170.75,0],311,"Middle",[]],[[5092.04,4212.3,7.62939e-006],307,"Middle",[]],[[5098.49,4218.6,0.519478],201,"Up",[]],[[5100.78,4217.64,0.214272],54,"Up",[]],[[5103.75,4214.63,0.184669],115,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5103.79,4247.22,0.398888],270,"Up",[]],[[5123.1,4226.48,0.509567],18,"Up",[]]],[["UK3CB_AAF_O_PKM_Low",[5119.78,4219.84,0.427719],314,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		//[Trigger_2,false,[0,25,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		/// Villa Patrol
		[[[[5124.12,4035.25,-7.62939e-006],0,[]],[[5129.12,4030.25,0],0,[]],[[5119.12,4030.25,0],0,[]],[[5134.12,4025.25,0],0,[]]],[],[[[5160.47,4188.6,0],[[0,"Move"]]],[[5260.05,4136.82,7.62939e-006],[[0,"Move"]]],[[5290.92,4031.26,0],[[0,"Move"]]],[[5125.79,4024.22,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5073.24,4054.3,-7.62939e-006],312,[]],[[5080.31,4054.62,0],312,[]],[[5073.56,4047.24,0],312,[]],[[5087.37,4054.94,0],312,[]]],[],[[[4992.43,4080.36,0],[[0,"Move"]]],[[5004.8,4201.8,0.0348511],[[0,"Move"]]],[[5076.78,4163.82,0],[[0,"Move"]]],[[5082.51,4048.09,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5024.21,3947.24,0],0,[]],[[5029.21,3942.24,0],0,[]],[[5019.21,3942.24,0],0,[]],[[5034.21,3937.24,0],0,[]]],[],[[[4977.66,3987.32,0],[[0,"Move"]]],[[5008.93,4039.08,0],[[0,"Move"]]],[[5066.59,3998.09,0],[[0,"Move"]]],[[5025.87,3936.21,7.62939e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		
		
		/// Spawn Artillery strikes
		{_X setVehicleAmmo 1} foreach [farty_1,farty_2,farty_3,farty_4];
		[farty_1,west,[getPos aa_1],6,1,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf"; sleep 2;
		[farty_2,west,[getPos aa_2],6,1,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf"; sleep 15;
		[farty_3,west,[getPos aa_1],2,1,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf"; sleep 2;
		[farty_4,west,[getPos aa_2],2,1,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf";

		// Villa Sentry
		[[[[4995.74,3981,0.380775],55,"Up",[]],[[5000.29,3985.58,0.379807],327,"Up",[]],[[5000.05,3993.8,0.421761],113,"Up",[]],[[5005.62,3997.03,0.42041],49,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5025.1,3971.56,0.212868],286,"Up",[]],[[5021.89,3980.85,0.247337],82,"Up",[]],[[5027.76,3983.94,0.247498],33,"Up",[]],[[5016.06,3968.89,0.213348],79,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5013.72,3974.03,3.91972],14,"Up",[]],[[5010.76,3975.76,3.91972],34,"Up",[]],[[5004.19,3972.32,3.91972],34,"Up",[]],[[5004.57,3979.78,3.91972],26,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4968.23,3976.19,0.328804],37,"Up",[]],[[4970.99,3963.07,0.428123],213,"Up",[]]],[["UK3CB_TKA_O_Hilux_Pkm",[4990.81,4000.98,0],30,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
	};	

	case 4: {

		/// Artillery Counter-Attack
		{[_X,3,east,500,[]] spawn OKS_Rush_SpawnGroup} foreach [attack_1,attack_2,attack_3,attack_4,attack_5]; sleep 10;
		["hq","side","1-1 be advised, UAV reports incoming roughly two squad-sized counter-attack from Sainte Marie, hold the line, 1-Actual out."] remoteExec ["OKS_Chat",0];
		sleep 160;
		["HQ","side","1-1, friendly artillery barrage is inbound on Saint Marie. You can disregard this objective and continue towards the Phaseline Red, Actual out."] remoteExec ["OKS_Chat",0];
		{_X setVehicleAmmo 1} foreach [farty_1,farty_2,farty_3,farty_4];
		[farty_1,west,[getPos destroy_1,getPos destroy_2,getPos destroy_3,getPos destroy_4,getPos destroy_5, getPos aa_1],3,1,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf";
		[farty_3,west,[getPos destroy_4,getPos destroy_5,getPos aa_1, getPos aa_1],3,1,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf";
		[farty_2,west,[getPos aa_3,getPos destroy_6,getPos destroy_7,getPos destroy_8,getPos destroy_9],3,1,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf";
		[farty_4,west,[getPos destroy_10,getPos destroy_11,getPos destroy_12,getPos destroy_13],3,1,true] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf";
		sleep 45;
		{_X setMarkerAlpha 1} foreach ["cross_1","cross_2"];
		{deleteVehicle _X} foreach crew aa_3; aa_3 setDamage 1; 
		SkipObjective = true;
		publicVariable "SkipObjective";
	
	};

	case 5: {

		["hq","side","1-1 be advised, radar is picking up activity in the air, low flight. Suspected incoming air-assault, repel their attack, 1-Actual out."] remoteExec ["OKS_Chat",0];
		{[_X,4,east,500,[]] spawn OKS_Rush_SpawnGroup} foreach [rush_7,rush_8];
		[[],[["UK3CB_TKA_O_BTR80",[4673.52,3995.08,3.8147e-006],298,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",1,"crate_l2_unhide",1,"crate_l3_unhide",0,"crate_l4_unhide",1,"crate_r1_unhide",1,"crate_r2_unhide",1,"crate_r3_unhide",0,"crate_r4_unhide",1,"water_1_unhide",0,"water_2_unhide",0,"wheel_1_unhide",1,"wheel_2_unhide",0]]]]],[[[4720.4,4095.68,3.8147e-005],[[0,"Move"]]],[[4842.61,4287.37,5.34058e-005],[[0,"Move"]]],[[4931.16,4268.46,8.39233e-005],[[0,"Move"]]],[[5010.28,4238.44,-7.62939e-006],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		// Air Assault Counter-Attack
		[east,"UK3CB_TKA_O_Mi8", False, "unload", air_1, insert_1, PlaneExit_1, [2,0.4], [insert_1]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 5;
		[east,"UK3CB_TKA_O_Mi8", False, "unload", air_2, insert_2, PlaneExit_1, [2,0.4], [insert_2]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 5;
		[east,"UK3CB_TKA_O_Mi8", False, "unload", air_3, insert_3, PlaneExit_2, [2,0.4], [insert_3]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 5;
		[east,"UK3CB_TKA_O_Mi8", False, "unload", air_4, insert_4, PlaneExit_2, [2,0.4], [insert_4]] execVM "Scripts\NEKY_AirDrop\NEKY_AirDrop.sqf"; sleep 5;
	};

	case 6: {

		["hq","side","1-1 be advised, UAV reports incoming incoming counter-attack from Chapoi to your east. Looks like a full company is heading your way, hold the line! 1-Actual out."] remoteExec ["OKS_Chat",0];
		
		sleep 120;
		
		COUNTERARRAY = [];
		{[_X,3,east,1000,COUNTERARRAY] spawn OKS_Rush_SpawnGroup} foreach [rush_1,rush_2,rush_3,rush_4,rush_5,rush_6];

		/// Final counter-attack
		_Vehicle = [[],[["UK3CB_TKA_O_BMP1",[5650.28,3779.45,0],293,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[[[5506.4,3775.82,0],[[0,"Move"]]],[[5381.77,3834.55,0],[[0,"Move"]]],[[5233.18,3855.58,4.57764e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		{COUNTERARRAY pushBackUnique _X} foreach units _Vehicle; sleep 120;

		{[_X,3,east,1000,COUNTERARRAY] spawn OKS_Rush_SpawnGroup} foreach [rush_1,rush_2,rush_3,rush_4,rush_5,rush_6];
		_Vehicle = [[],[["UK3CB_TKA_O_BMP1",[5685.19,3825.62,0],293,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["TKA",1]],[7,["crate_l1_unhide",0,"crate_l2_unhide",0,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",1,"crate_r3_unhide",1,"wood_1_unhide",0,"maljutka_hide_source",0]]]]],[[[5509.08,3916.14,-7.62939e-006],[[0,"Move"]]],[[5274.04,3954.48,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		{COUNTERARRAY pushBackUnique _X} foreach units _Vehicle; sleep 90;

		_Vehicle = [[],[["UK3CB_TKA_O_T55",[5431.95,3607.78,-2.28882e-005],295,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]]]]],[[[5321.18,3672.39,-2.28882e-005],[[0,"Move"]]],[[5266.07,3759.05,0],[[0,"Move"]]],[[5161.56,3868.86,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		{COUNTERARRAY pushBackUnique _X} foreach units _Vehicle;
	};

	case 7:{
		FRIENDLYCONVOY = [];
		// Final Ambience - Friendly pushing past
		{ [_X,1] remoteExec ["SetMarkerAlpha",0]} foreach ["cross_3","cross_4","cross_5","cross_6"];
		["hq","side","1-1, solid work on repelling the counter-attack. Be advised, armored column relieving the paratroopers are now inbound. Move to your rally point across the road, 1-Actual out."] remoteExec ["OKS_Chat",0];
		
		[convoy_1,convoy_2,convoy_3,west,[8,["B_T_AFV_Wheeled_01_cannon_F","B_T_AFV_Wheeled_01_cannon_F","B_T_AFV_Wheeled_01_cannon_F","B_T_AFV_Wheeled_01_cannon_F","rhsusf_stryker_m1126_m2_wd","rhsusf_stryker_m1126_m2_wd","rhsusf_stryker_m1126_m2_wd","rhsusf_stryker_m1126_m2_wd"], 12, 40],[false,0],FRIENDLYCONVOY, true, true] spawn OKS_Convoy_Spawn;
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
