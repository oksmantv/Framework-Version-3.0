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



#include "\OKS_GOL_MISC\script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};

params [
	"_case"
];

private _ReturnAndRemoveRandomIndex = {
	Params ["_Array","_Selected"];
	private _ReturnArray = [];
	_NewArray = [];
	{_NewArray pushBackUnique _X} foreach _Array;
	_NewArray deleteAt (_NewArray find _Selected);

	_ReturnArray pushBack _NewArray;
	_ReturnArray pushBack _Selected;

	_ReturnArray;
};

private _vehicles = [
	"UK3CB_MEI_O_Datsun_Pkm",
	"UK3CB_MEI_O_Offroad_AT",
	"UK3CB_MEI_O_Hilux_Spg9"
];

switch (_case) do {

	case 0: {

		// Engagement 1
		Private ["_Array","_SelectedObject"];
		_vehicleLocations = [vehicle_0_1,vehicle_0_2,vehicle_0_3];
		_infantryLocations = [infantry_0_1,infantry_0_2,infantry_0_3,infantry_0_4];
		_patrolLocations = [patrol_0_1,patrol_0_2];

		_patrolArray = [_patrolLocations, selectRandom _patrolLocations] call _ReturnAndRemoveRandomIndex;
		_patrolArray params ["_Array","_SelectedObject"];
		[getPos _SelectedObject,5,150,EAST] spawn OKS_fnc_Patrol_Spawn;

		_infantryArray = [_infantryLocations, selectRandom _infantryLocations] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];
		_infantryArray = _Array;
		[getPos _SelectedObject,"ambushrush",5,east,500,[]] spawn OKS_fnc_Lambs_SpawnGroup;

		_infantryArray = [_Array, selectRandom _Array] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];	
		_infantryArray = _Array;	
		[getPos _SelectedObject,"ambushrush",5,east,500,[]] spawn OKS_fnc_Lambs_SpawnGroup;

		_vehicleArray = [_vehicleLocations, selectRandom _vehicleLocations] call _ReturnAndRemoveRandomIndex;
		_vehicleArray params ["_Array","_SelectedObject"];		
		[getPos _SelectedObject,nil,selectRandom _vehicles,east] spawn OKS_Attack_SpawnGroup;

		// Static
		switch (ceil (random 3)) do
		{
			case 1: {
				[[[[4009.95,10114.7,0],126,"Middle",[]],[[3991.28,10099.5,0],113,"Middle",[]],[[3985.53,10092.2,0],100,"Middle",[]],[[4011.49,10120.8,0],117,"Middle",[]],[[3999.45,10103.7,0],109,"Middle",[]],[[4001.71,10109.4,0],125,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			};

			case 2: {
				[[[[3966.83,10033.8,3.93298],126,"Middle",[]],[[3957.85,10034.3,3.78961],113,"Middle",[]],[[3963.66,10028.5,1.52588e-005],100,"Middle",[]],[[3968.16,10043.1,0],117,"Middle",[]],[[3962.19,10036.3,3.80165],109,"Middle",[]],[[3952.36,10040.2,0],125,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			};

			case 3:{
				[[[[3974.5,9904.79,0],24,"Middle",[]],[[3948.49,9898.67,0],358,"Middle",[]],[[3953.11,9897.87,0],9,"Middle",[]],[[3971.98,9906.93,0],16,"Middle",[]],[[3956.67,9900.02,0],17,"Middle",[]],[[3964.77,9871.7,1.52588e-005],19,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			};
		};

	};

	case 1: {

		// Engagement 2
		Private ["_Array","_SelectedObject"];
		_vehicleLocations = [vehicle_1_1,vehicle_1_2,vehicle_1_3];
		_infantryLocations = [infantry_1_1,infantry_1_2,infantry_1_3,infantry_1_4];
		_patrolLocations = [patrol_1_1,patrol_1_2];

		_patrolArray = [_patrolLocations, selectRandom _patrolLocations] call _ReturnAndRemoveRandomIndex;
		_patrolArray params ["_Array","_SelectedObject"];
		[getPos _SelectedObject,5,150,EAST] spawn OKS_fnc_Patrol_Spawn;

		_infantryArray = [_infantryLocations, selectRandom _infantryLocations] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];
		_infantryArray = _Array;
		[getPos _SelectedObject,"ambushrush",5,east,300,[]] spawn OKS_fnc_Lambs_SpawnGroup;

		_infantryArray = [_Array, selectRandom _Array] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];	
		_infantryArray = _Array;	
		[getPos _SelectedObject,"ambushrush",5,east,300,[]] spawn OKS_fnc_Lambs_SpawnGroup;

		_vehicleArray = [_vehicleLocations, selectRandom _vehicleLocations] call _ReturnAndRemoveRandomIndex;
		_vehicleArray params ["_Array","_SelectedObject"];		
		[getPos _SelectedObject,nil,selectRandom _vehicles,east] spawn OKS_Attack_SpawnGroup;

		// Static
		switch (ceil (random 3)) do
		{
			case 1: {
				[[[[3653.59,9939.45,0],24,"Middle",[]],[[3645.52,9930.16,0],358,"Middle",[]],[[3635.62,9928.19,0],9,"Middle",[]],[[3643.06,9938.3,0],55,"Middle",[]],[[3639.51,9941.1,0],47,"Middle",[]],[[3648.82,9926.99,3.91666],19,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			};

			case 2: {
				[[[[3686.79,10035.4,0],111,"Middle",[]],[[3658.58,10048.1,0],85,"Middle",[]],[[3664.03,10047.6,0],97,"Middle",[]],[[3683.89,10044.4,0],142,"Middle",[]],[[3687.82,10052,0],134,"Middle",[]],[[3678.88,10033.1,1.52588e-005],107,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			};

			case 3:{
				[[[[3446.25,9872.48,0],65,"Middle",[]],[[3451.85,9854.07,0],87,"Middle",[]],[[3451.88,9858.62,0],85,"Middle",[]],[[3437.79,9876.56,0],96,"Middle",[]],[[3435.04,9884.63,0],88,"Middle",[]],[[3442.51,9865.1,0],60,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			};
		};
	};

	case 2: {

		// Engagement 3 - Static & Patrol
		_patrolLocations = [patrol_2_1,patrol_2_2];

		_patrolArray = [_patrolLocations, selectRandom _patrolLocations] call _ReturnAndRemoveRandomIndex;
		_patrolArray params ["_Array","_SelectedObject"];
		[getPos _SelectedObject,5,150,EAST] spawn OKS_fnc_Patrol_Spawn;

		switch (ceil (random 3)) do {
			case 1: {
				[[[[2589.64,9672.63,0],36,"Middle",[]],[[2593.54,9668.45,1.52588e-005],36,"Middle",[]],[[2591.15,9681.11,0],36,"Middle",[]],[[2596.65,9666.02,0],51,"Middle",[]],[[2600.89,9661.9,0],51,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			};

			case 2:{
				[[[[2655.65,9653.89,0],360,"Middle",[]],[[2660.54,9660.35,0],360,"Middle",[]],[[2635.8,9648.61,0],1,"Middle",[]],[[2650.73,9651.98,0],359,"Middle",[]],[[2644.51,9650.94,0],4,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			};

			case 3:{
				[[[[2818.23,9847.28,1.52588e-005],140,"Middle",[]],[[2816.79,9852.96,0],92,"Middle",[]],[[2797.02,9840.8,0],150,"Middle",[]],[[2811.89,9844.61,0],105,"Middle",[]],[[2808.62,9840.48,0],133,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
			};
			default { };
		};
	};

	case 3: {

		// Engagement 3 - Attack
		Private ["_Array","_SelectedObject"];
		_vehicleLocations = [vehicle_2_1,vehicle_2_2,vehicle_2_3,vehicle_2_4];
		_infantryLocations = [infantry_2_1,infantry_2_2,infantry_2_3,infantry_2_4];


		_infantryArray = [_infantryLocations, selectRandom _infantryLocations] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];
		_infantryArray = _Array;
		[getPos _SelectedObject,"ambushrush",5,east,300,[]] spawn OKS_fnc_Lambs_SpawnGroup;

		_infantryArray = [_Array, selectRandom _Array] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];	
		_infantryArray = _Array;	
		[getPos _SelectedObject,"ambushrush",5,east,300,[]] spawn OKS_fnc_Lambs_SpawnGroup;

		_vehicleArray = [_vehicleLocations, selectRandom _vehicleLocations] call _ReturnAndRemoveRandomIndex;
		_vehicleArray params ["_Array","_SelectedObject"];		
		[getPos _SelectedObject,nil,selectRandom _vehicles,east] spawn OKS_Attack_SpawnGroup;

	};

	case 4: {

		// First Ambush Party + SPG
		[[[[4698.96,9437.73,3.05176e-005],25,"Up",[]],[[4716.43,9430.6,4.57764e-005],20,"Up",[]],[[4712.55,9431.99,1.81705],20,"Up",[]],[[4710.13,9436.12,3.37462],20,"Up",[]],[[4707.33,9439.2,2.7417],20,"Up",[]],[[4705.38,9443.28,2.0468],20,"Up",[]]],[["UK3CB_CW_SOV_O_LATE_UAZ_SPG9",[4693.88,9346.86,-3.05176e-005],19,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["SOV2",1]],[7,["light_hide",0,"spare_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrol.
		[[[[4832.45,9627.63,-1.52588e-005],0,[]],[[4822.45,9627.63,1.52588e-005],0,[]],[[4837.45,9622.63,0],0,[]]],[],[[[4940.16,9649.79,0],[[0,"Move"],[1,"SAFE"]]],[[4939.89,9519.8,-4.57764e-005],[[0,"Move"]]],[[4809.35,9509.42,-0.000457764],[[0,"Move"]]],[[4815.22,9609.06,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4596.73,9562.74,0],0,[]],[[4586.73,9562.74,0],0,[]],[[4601.73,9557.74,0],0,[]]],[],[[[4688.04,9589.21,1.52588e-005],[[0,"Move"],[1,"SAFE"]]],[[4695.3,9452.04,0],[[0,"Move"]]],[[4585.08,9463.09,0],[[0,"Move"]]],[[4575.2,9565.04,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4872.69,9312.42,0],197,[]],[[4882.24,9309.47,0],197,[]],[[4869.39,9318.68,0],197,[]]],[],[[[4748.57,9343.3,0],[[0,"Move"],[1,"SAFE"]]],[[4767.92,9482.43,0],[[0,"Move"]]],[[4912.2,9389.79,0],[[0,"Move"]]],[[4894.64,9325.08,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		_infantryLocations = [infantry_4_1,infantry_4_2,infantry_4_3,infantry_4_4];
		_infantryArray = [_infantryLocations, selectRandom _infantryLocations] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];
		_infantryArray = _Array;
		[getPos _SelectedObject,"ambushrush",5,east,300,[]] spawn OKS_fnc_Lambs_SpawnGroup;

		_infantryArray = [_infantryLocations, selectRandom _infantryLocations] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];
		_infantryArray = _Array;
		[getPos _SelectedObject,"ambushrush",5,east,300,[]] spawn OKS_fnc_Lambs_SpawnGroup;	

		_vehicles = [
			"UK3CB_MEI_O_Datsun_Pkm",
			"UK3CB_MEI_O_Offroad_AT",
			"UK3CB_MEI_O_Hilux_Spg9"
		];

		_vehicleLocations = [vehicle_4_1,vehicle_4_2];
		_vehicleArray = [_vehicleLocations, selectRandom _vehicleLocations] call _ReturnAndRemoveRandomIndex;
		_vehicleArray params ["_Array","_SelectedObject"];
		[getPos _SelectedObject,nil,selectRandom _vehicles,east] spawn OKS_Attack_SpawnGroup;

	};

	case 5: {

		// Second Ambush.
		[[[[4705.54,8968.32,0],34,"Middle",[]],[[4709.26,8964.94,0],34,"Middle",[]],[[4696.48,8970.45,0],34,"Middle",[]],[[4699.8,8969.42,1.52588e-005],34,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4956.99,8924.4,0],341,"Middle",[]],[[4961.92,8925.38,0],341,"Middle",[]],[[4949.88,8918.4,0],341,"Middle",[]],[[4952.69,8920.45,1.52588e-005],341,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Patrols.
		[[[[4754.48,9019.74,-1.52588e-005],0,[]],[[4744.48,9019.74,0],0,[]],[[4759.48,9014.74,-1.52588e-005],0,[]]],[],[[[4777.92,9151.02,0],[[0,"Move"],[1,"SAFE"]]],[[4619.2,9086.43,1.52588e-005],[[0,"Move"]]],[[4735.41,9013.85,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4914.49,8908.74,0.501663],0,[]],[[4904.49,8908.74,0],0,[]],[[4919.49,8903.74,0],0,[]]],[],[[[4937.93,9040.02,0],[[0,"Move"],[1,"SAFE"]]],[[4779.21,8975.44,0],[[0,"Move"]]],[[4895.42,8902.86,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5088.13,9099.34,0],309,[]],[[5081.83,9091.57,0],309,[]],[[5095.16,9100.08,0],309,[]]],[],[[[4936.8,9207.26,0],[[0,"Move"],[1,"SAFE"]]],[[4848.75,9087.29,0],[[0,"Move"]]],[[5049.07,9088.85,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		_infantryLocations = [infantry_5_1,infantry_5_2,infantry_5_3,infantry_5_4];
		_infantryArray = [_infantryLocations, selectRandom _infantryLocations] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];
		_infantryArray = _Array;
		[getPos _SelectedObject,"ambushrush",5,east,300,[]] spawn OKS_fnc_Lambs_SpawnGroup;

		_infantryArray = [_infantryLocations, selectRandom _infantryLocations] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];
		_infantryArray = _Array;
		[getPos _SelectedObject,"ambushrush",5,east,300,[]] spawn OKS_fnc_Lambs_SpawnGroup;	

		_vehicleLocations = [vehicle_5_1,vehicle_5_1];
		_vehicleArray = [_vehicleLocations, selectRandom _vehicleLocations] call _ReturnAndRemoveRandomIndex;
		_vehicleArray params ["_Array","_SelectedObject"];
		[getPos _SelectedObject,nil,selectRandom _vehicles,east] spawn OKS_Attack_SpawnGroup;


	};

	case 6: {

		// Third Ambush.
		[[[[4890.12,8231.19,0],76,"Middle",[]],[[4868.86,8237.02,0],94,"Middle",[]],[[4884.76,8241.26,1.52588e-005],95,"Middle",[]],[[4871.93,8224.24,0],48,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4935.53,7948.61,0],57,"Middle",[]],[[4921.57,7976.44,1.65689],27,"Middle",[]],[[4936.12,7960.71,0],37,"Middle",[]],[[4927.8,7970.22,1.14854],48,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[4799.91,8104.57,1.00801],104,[]],[[4802.41,8114.25,1.00804],104,[]],[[4793.82,8100.97,1.00801],104,[]]],[],[[[4932.22,7862.64,1.0079],[[0,"Move"],[1,"SAFE"]]],[[4854.29,8206.48,1.00813],[[0,"Move"]]],[[4824.57,8123.95,1.008],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5206.71,7868.07,0],309,[]],[[5200.42,7860.3,1.52588e-005],309,[]],[[5213.74,7868.81,0],309,[]]],[],[[[5021.53,8011.51,0],[[0,"Move"],[1,"SAFE"]]],[[5036.41,7808.95,0],[[0,"Move"]]],[[5176.23,7860.69,1.52588e-005],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5085.84,8176.07,0],309,[]],[[5079.54,8168.3,0],309,[]],[[5092.87,8176.81,0],309,[]]],[],[[[4900.66,8319.51,1.52588e-005],[[0,"Move"],[1,"SAFE"]]],[[4915.54,8116.95,0],[[0,"Move"]]],[[5055.36,8168.69,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4732.22,8001.77,0],176,[]],[[4742.19,8002.54,3.05176e-005],176,[]],[[4726.85,8006.38,0],176,[]]],[],[[[4755.23,7768.67,0],[[0,"Move"],[1,"SAFE"]]],[[4892.18,7918.65,0],[[0,"Move"]]],[[4758.52,7984.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		_infantryLocations = [infantry_6_1,infantry_6_2,infantry_6_3,infantry_6_4];
		_infantryArray = [_infantryLocations, selectRandom _infantryLocations] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];
		_infantryArray = _Array;
		[getPos _SelectedObject,"ambushrush",5,east,300,[]] spawn OKS_fnc_Lambs_SpawnGroup;

		_infantryArray = [_infantryLocations, selectRandom _infantryLocations] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];
		_infantryArray = _Array;
		[getPos _SelectedObject,"ambushrush",5,east,300,[]] spawn OKS_fnc_Lambs_SpawnGroup;	

		_vehicleLocations = [vehicle_6_1,vehicle_6_1];
		_vehicleArray = [_vehicleLocations, selectRandom _vehicleLocations] call _ReturnAndRemoveRandomIndex;
		_vehicleArray params ["_Array","_SelectedObject"];
		[getPos _SelectedObject,nil,selectRandom _vehicles,east] spawn OKS_Attack_SpawnGroup;

	};

	case 7: {

		// Last Ambush.
		// Patrol
		[[[[4666.03,7131.97,0],0,[]],[[4671.03,7126.97,0],0,[]],[[4661.03,7126.97,0],0,[]],[[4676.03,7121.97,0],0,[]]],[],[[[4706.28,7229.19,0],[[0,"Move"],[1,"AWARE"]]],[[4705.59,7362.83,0],[[0,"Move"]]],[[4581,7326,0],[[0,"Move"]]],[[4596.34,7173.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4877.77,7218.51,1.52588e-05],0,[]],[[4882.77,7213.51,1.52588e-05],0,[]],[[4872.77,7213.51,1.52588e-05],0,[]],[[4887.77,7208.51,1.52588e-05],0,[]]],[],[[[4918.02,7315.73,1.52588e-05],[[0,"Move"],[1,"AWARE"]]],[[4917.33,7449.37,1.52588e-05],[[0,"Move"]]],[[4792.74,7412.54,1.52588e-05],[[0,"Move"]]],[[4808.08,7260.34,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5096.37,7230.52,0],297,[]],[[5103.11,7232.67,1.52588e-05],297,[]],[[5098.52,7223.78,1.52588e-05],297,[]],[[5109.84,7234.82,0],297,[]]],[],[[[5063.5,7399.29,1.52588e-05],[[0,"Move"],[1,"AWARE"]]],[[4994.95,7381.91,1.52588e-05],[[0,"Move"]]],[[4983.36,7208.11,0],[[0,"Move"]]],[[5078.57,7200.92,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4820.08,6972.4,0],0,[]],[[4825.08,6967.4,0],0,[]],[[4815.08,6967.4,0],0,[]],[[4830.08,6962.4,0],0,[]]],[],[[[4860.33,7069.62,0],[[0,"Move"],[1,"AWARE"]]],[[4859.64,7203.26,0],[[0,"Move"]]],[[4735.05,7166.43,0],[[0,"Move"]]],[[4750.39,7014.23,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5037.06,6895.07,0],0,[]],[[5042.06,6890.07,0],0,[]],[[5032.06,6890.07,0],0,[]],[[5047.06,6885.07,0],0,[]]],[],[[[5077.31,6992.29,0],[[0,"Move"],[1,"AWARE"]]],[[5076.62,7125.93,0],[[0,"Move"]]],[[4952.03,7089.1,0],[[0,"Move"]]],[[4967.37,6936.89,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Ambush
		[[[[4723.02,7182.09,0],31,"Up",[]],[[4719.92,7182.17,3.05176e-05],31,"Up",[]],[[4713.72,7180.8,0],348,"Up",[]],[[4711.74,7181.61,1.52588e-05],357,"Up",[]],[[4707.66,7181.05,1.52588e-05],337,"Up",[]],[[4936,7103.29,0],38,"Up",[]],[[4933.45,7106.01,0],38,"Up",[]],[[4934,7114.86,1.52588e-05],50,"Up",[]],[[4930.69,7109.71,0],4,"Up",[]],[[4932.65,7121.04,0],18,"Up",[]],[[4901.75,7100.98,7.04317],109,"Up",[]],[[4903,7101.51,4.13606],86,"Up",[]],[[4903.42,7105.34,7.09512],87,"Up",[]],[[5045.43,7011.47,3.56934],63,"Up",[]],[[5047.63,7009.98,3.55312],38,"Up",[]],[[5033.29,7006.9,3.67499],81,"Up",[]],[[5037.61,6976.45,0],70,"Up",[]],[[5036.15,6974.11,0],355,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		_infantryLocations = [infantry_7_1,infantry_7_2,infantry_7_3,infantry_7_4];
		_infantryArray = [_infantryLocations, selectRandom _infantryLocations] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];
		_infantryArray = _Array;
		[getPos _SelectedObject,"ambushrush",5,east,300,[]] spawn OKS_fnc_Lambs_SpawnGroup;

		_infantryArray = [_infantryLocations, selectRandom _infantryLocations] call _ReturnAndRemoveRandomIndex;
		_infantryArray params ["_Array","_SelectedObject"];
		_infantryArray = _Array;
		[getPos _SelectedObject,"ambushrush",5,east,300,[]] spawn OKS_fnc_Lambs_SpawnGroup;	

		_vehicleLocations = [vehicle_7_1,vehicle_7_2];
		_vehicleArray = [_vehicleLocations, selectRandom _vehicleLocations] call _ReturnAndRemoveRandomIndex;
		_vehicleArray params ["_Array","_SelectedObject"];
		[getPos _SelectedObject,nil,selectRandom _vehicles,east] spawn OKS_Attack_SpawnGroup;

	};	

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   Dynamic Script Params
		   0 - Trigger Name (Object)
		   1 - Disabled - Keep False
		   2 - Number of Infantry - [Static Integer,Patrol Integer,CreateSectorObjective?,LocalPatrols?] (Array) -
		   3 - Wheeled Patrols (Integer/Number)
		   4 - APC Patrols (Integer/Number)
		   5 - Tank Patrols (Integer/Number)
		   6 - Roadblocks [RoadBlocksCount,OnlyOnTarmac,LocalPatrols?,NumberChanceForVehicle(0-1)] (Array)
		   7 - Mortar Pits [MortarCount,LocalPatrols?] (Array)
		   8 - Random Objectives [ObjectiveCount,LocalPatrols?] (Array)
		   9 - Hunt Array Bases [Infantry,Wheeled,APC,Tank,Helicopter]
		   10 - Dynamic Civilians on? (Boolean)

			Local Patrols - This means that the strongpoints / roadblocks / mortar pits / objectives have their own local patrols near their position.
			If you use it on Parameter 2, 30% of the static contacts will be turned into patrols.

		   Note:
		   The Dynamic Scripts does work on its own however is very limited in selecting positions for strongpoints.
		   You as an editor can assist the dynamic script by placing down locations for pinpointing different positions.
		   In Eden-Editor "Location"s can be found in Systems (F5) and Game Logics > Locations.

		   Area, Base, City, Evac Point, Resupply Point & Town -> Spawns Strongpoints & Sector Tasks (Selects Random Buildings in Area. Generally more contacts per building)
		   Outpost -> Spawns Compounds & Sector Tasks (Selects all buildings in range of compoundSize (Settings) and spawns even-spread over all buildings)
		   FOB -> Spawns Roadblocks, use the direction of the logic to define the direction of the roadblock.
		   Respawn Point -> If you use HuntBases these locations will be picked, use the direction of the logic to choose the spawn direction 15-25m away from logic.
		   Camp -> Static Objective positions, once again direction of logic defines direction of Objective compositions.
		   Village -> Defines village area for the Dynamic Civilian presence, radius is found in Settings.sqf

		   All Locations are not required, the script will find its own locations, however for the best experience and best result, help the dynamic script by placing these logics.

		   Example:
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_fnc_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_CreateZone")};

			//// START OF ZONE /////
			[	Trigger_1,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					8,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					25,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				0,    // Number of Wheeled on Patrol
				0,    // Number of APCs on Patrol
				0,    // Number of Tanks on Patrol
				[
					0,     // Number of Roadblocks - Preferred Game Logic Location 'FOB'"
					true,  // Should be on tarmac.
					false, // Should have dedicated patrol.
					0  	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
				],
				[
					0,     // Number of Mortars
					false  // Should have dedicated patrols around it
				],[
					0,    // Number of Random Objectives - Preferred Game Logic Location 'Camp'"
					false // Should have dedicated patrols around it
				],
				[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Preferred Game Logic Location 'Respawn Point'"
				,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_fnc_CreateZone;
			//// END OF ZONE ////

		};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   	HuntBase Params

		   	0 - Base Object (Object)
		   	1 - Spawn Object (Object)
		   	2 - Hunt Trigger (Trigger)
		   	3 - Wave Count (Integer/Number)
		   	4 - Respawn Delay in Seconds (Integer/Number)
		   	5 - Enemy Side (Side)
		   	6 - Unit Selection - (Integer/String/Array with Strings)
		   	7 - Refresh Rate in Seconds (Integer/Number)

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn OKS_fnc_Huntbase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn OKS_fnc_Huntbase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Huntbase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn OKS_fnc_Huntbase;
		};

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   AirBase Params

		   0 - Base Object (Object)
		   1 - Spawn Object (Object)
		   2 - Hunt Trigger (Trigger)
		   3 - Enemy Side (Side)
		   4 - Classname of Helicopter (String)
		   5 - Type of Insert (Unload ONLY) (String)
		   6 - Cargo Split - [How many teams,Procent of Cargo] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "OKS_fnc_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn OKS_fnc_Airbase;
		};

