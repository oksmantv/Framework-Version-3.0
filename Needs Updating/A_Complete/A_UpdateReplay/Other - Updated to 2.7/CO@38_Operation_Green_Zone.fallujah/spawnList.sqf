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

switch (_case) do {

	case 1: {
		// AAC problems
		[[],[["UK3CB_TKA_O_KORD_high",[3432.34,4665.1,0],101,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_KORD_high",[3595.03,4390.31,0],78,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_DSHKM",[6121.99,4412.34,0],318,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_DSHKM",[6556.39,5008.57,0],229,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_DSHKM",[5997.13,5138.22,0],288,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_DSHKM",[2914.46,5745.14,0],128,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_DSHKM",[6729.93,6310.7,0],197,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_DSHKM",[4719.14,5746.5,0],219,[["gunner",-1,[0]]],[]],["UK3CB_TKA_O_DSHKM",[5620.96,5324.31,0],229,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_DSHKM",[4504.79,5348.02,0],156,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Sporadic patrols
		[[[[4984.52,4402.16,0],0,[]],[[4989.52,4397.16,0],0,[]],[[4979.52,4397.16,0],0,[]],[[4994.52,4392.16,0],0,[]],[[4974.52,4392.16,0],0,[]],[[4999.52,4387.16,0],0,[]],[[4969.52,4387.16,0],0,[]],[[5004.52,4382.16,0],0,[]]],[],[[[5136.79,4396.36,0],[[0,"Move"]]],[[5158.94,4216.83,0],[[0,"Move"]]],[[5365.04,4243.66,0],[[0,"Move"]]],[[5330.79,4538.26,0],[[0,"Move"]]],[[5116.12,4525.13,4.76837e-07],[[0,"Move"]]],[[5118.4,4400.67,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5300,4745.67,0],0,[]],[[5305,4740.67,0],0,[]],[[5295,4740.67,0],0,[]],[[5310,4735.67,0],0,[]],[[5290,4735.67,0],0,[]],[[5315,4730.67,0],0,[]],[[5285,4730.67,0],0,[]],[[5320,4725.67,0],0,[]]],[],[[[5046.25,4707.71,0],[[0,"Move"]]],[[5036.18,4612.46,0],[[0,"Move"]]],[[5320.57,4640.02,0],[[0,"Move"]]],[[5332.07,4543.16,0],[[0,"Move"]]],[[5044.32,4517.41,0],[[0,"Move"]]],[[5038.27,4607.55,0],[[0,"Move"]]],[[5319.86,4647.08,0],[[0,"Move"]]],[[5304.14,4733.75,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		
		// Civvies
 		[Trigger_1,false,[0,0,false,false],civilian,3,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_fnc_CreateZone;

	};

	case 2: {

		[[[[5337.52,4936.04,0],216,"Auto",[]],[[5334.2,4940.7,0],216,"Auto",[]],[[5330.62,4944.95,0],216,"Auto",[]],[[5326.97,4949.33,0],216,"Auto",[]],[[5323.81,4953.18,0],216,"Auto",[]],[[5321.13,4956.29,0],216,"Auto",[]],[[5279.82,4932.28,0.0291586],166,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4513.72,4629.26,0],0,[]],[[4518.72,4624.26,0],0,[]],[[4508.72,4624.26,0],0,[]],[[4523.72,4619.26,0],0,[]],[[4503.72,4619.26,0],0,[]],[[4528.72,4614.26,0],0,[]],[[4498.72,4614.26,0],0,[]],[[4533.72,4609.26,0],0,[]]],[],[[[4500.79,4739.57,0],[[0,"Move"]]],[[4811.88,4772.33,0],[[0,"Move"]]],[[4819.67,4656.1,0],[[0,"Move"]]],[[4508.72,4624.26,0.5],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4650.37,4895.3,0],132,"Auto",[]],[[4651.61,4889.51,0],132,"Auto",[]],[[4649.7,4890.71,0],132,"Auto",[]],[[4652.21,4887.63,0],132,"Auto",[]],[[4658.7,4881.96,3.1],132,"Auto",[]],[[4633.95,4881.3,3.1],132,"Auto",[]],[[4614.57,4862.06,6.74637],133,"Auto",[]],[[4616.45,4836.2,3.36632],306,"Auto",[]],[[4662.67,4843.74,3.36632],284,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[4667.25,4780.19,12.11],3,"Auto",[]],[[4718.66,4845.54,8.00612],299,"Auto",[]],[[4762.77,4531.16,10.1325],153,"Auto",[]]],[["UK3CB_TKM_O_PKM_nest_des",[4774.54,4687.61,0],166,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_TKM_O_PKM_nest_des",[5059.72,4712.62,0],170,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKM_O_DSHkM_Mini_TriPod",[4528.03,4831.53,0],81,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// Vehicles from corners of bz
		[[],[["UK3CB_TKM_O_BRDM2_HQ",[6444.19,6075.98,0],0,[["driver",-1,[]],["commander",-1,[0]]],[[6,["Camo1",1]]]]],[[[5273.1,5153.5,0],[[0,"Move"]]],[[5286.42,4944.16,0],[[0,"Move"]]],[[4945.39,4893.61,0],[[0,"Move"]]],[[4915.13,5103.76,0],[[0,"Move"]]],[[5250.83,5152.43,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKM_O_BRDM2",[2989.54,6271.91,0],0,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["Camo1",1]]]]],[[[2997.4,6169.27,0],[[0,"Move"]]],[[3594.75,6080.44,0],[[0,"Move"]]],[[3732.33,4935.69,0],[[0,"Move"]]],[[3818.56,4577.8,0],[[0,"Move"]]],[[4489.64,4993.49,0],[[0,"Move"]]],[[5270.37,5134.41,0],[[0,"Move"]]],[[5387.58,4042.82,0],[[0,"Move"]]],[[4602.82,3900.66,0],[[0,"Move"]]],[[4075.86,4742.28,0],[[0,"Move"]]],[[4491.62,4976.28,0],[[0,"Move"]]],[[4552.62,4855.46,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {
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
		
		*/
			_spawn = Spawn_1;
			_hunt_trigger = NEKY_Hunt_Trigger_1;
			_wave_count = 5;
			_respawn_delay = 10;
			_side = east;
			_hunting_vehicles = [
			"UK3CB_TKM_O_Pickup_DSHKM", 
			"UK3CB_TKM_O_V3S_Closed", 
			"UK3CB_TKM_O_Hilux_Pkm"];
			_refresh_rate = 30;

			[_spawn, _spawn, _hunt_trigger, _wave_count, _respawn_delay, _side, _hunting_vehicles, _refresh_rate] spawn OKS_fnc_Huntbase;

			[[[[5284.74,4943.89,0],175,"Middle",[]],[[5279.28,4948.4,0],175,"Middle",[]],[[5289.24,4949.35,0],175,"Middle",[]],[[5273.83,4952.9,0],175,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;


	};

	case 4: {

		[[[[4686.05,5241.41,0],182,[]],[[4681.22,5246.58,0],182,[]],[[4691.22,5246.23,0],182,[]],[[4676.4,5251.75,0],182,[]],[[4696.39,5251.06,0],182,[]],[[4671.58,5256.92,0],182,[]],[[4701.56,5255.88,0],182,[]],[[4666.75,5262.09,0],182,[]]],[],[[[4669.09,4891.22,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4105.61,4638.05,0],0,[]],[[4110.61,4633.05,0],0,[]],[[4100.61,4633.05,0],0,[]],[[4115.61,4628.05,0],0,[]],[[4095.61,4628.05,0],0,[]],[[4120.61,4623.05,0],0,[]],[[4090.61,4623.05,0],0,[]],[[4125.61,4618.05,0],0,[]]],[],[[[4185.14,4780.45,0],[[0,"Move"]]],[[4665.36,4879.85,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5323.74,5007.72,0],0,[]],[[5328.74,5002.72,0],0,[]],[[5318.74,5002.72,0],0,[]],[[5333.74,4997.72,0],0,[]],[[5313.74,4997.72,0],0,[]],[[5338.74,4992.72,0],0,[]],[[5308.74,4992.72,0],0,[]],[[5343.74,4987.72,0],0,[]]],[],[[[4672.34,4878.35,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4265.76,4601.2,0],0,[]],[[4270.76,4596.2,0],0,[]],[[4260.76,4596.2,0],0,[]],[[4275.76,4591.2,0],0,[]],[[4255.76,4591.2,0],0,[]],[[4280.76,4586.2,0],0,[]],[[4250.76,4586.2,0],0,[]],[[4285.76,4581.2,0],0,[]]],[],[[[4672.51,4862.43,0],[[0,"Move"]]],[[4709.43,4642.55,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4252.75,4390.15,0],0,[]],[[4257.75,4385.15,0],0,[]],[[4247.75,4385.15,0],0,[]],[[4262.75,4380.15,0],0,[]],[[4242.75,4380.15,0],0,[]],[[4267.75,4375.15,0],0,[]],[[4237.75,4375.15,0],0,[]],[[4272.75,4370.15,0],0,[]]],[],[[[4694.57,4438.47,0],[[0,"Move"]]],[[4893.46,4884.78,0],[[0,"Move"]]],[[4238.54,4417.15,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5503.31,4193.5,0],0,[]],[[5508.31,4188.5,0],0,[]],[[5498.31,4188.5,0],0,[]],[[5513.31,4183.5,0],0,[]],[[5493.31,4183.5,0],0,[]],[[5518.31,4178.5,0],0,[]],[[5488.31,4178.5,0],0,[]],[[5523.31,4173.5,0],0,[]]],[],[[[5173.5,4105.08,0],[[0,"Move"]]],[[4703.77,3956.88,0],[[0,"Move"]]],[[4575.71,4132.27,0],[[0,"Move"]]],[[5146.51,4181.15,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5248.03,4738.16,0],171,[]],[[5242.3,4742.31,0],171,[]],[[5252.17,4743.89,0],171,[]],[[5236.57,4746.45,0],171,[]]],[],[[[5248.22,4731.57,0],[[0,"Move"]]],[[5036.88,4707.46,0],[[0,"Move"]]],[[4897.29,4618.57,0],[[0,"Move"]]],[[4897.29,4504.69,0],[[0,"Move"]]],[[5039.97,4511.71,0],[[0,"Move"]]],[[5064.92,4390.8,0],[[0,"Move"]]],[[5151.69,4329.56,0],[[0,"Move"]]],[[5179,4344.64,0],[[0,"Move"]]],[[5345.54,4374.05,0],[[0,"Move"]]],[[5309.12,4735.83,0],[[0,"Move"]]],[[5256.46,4731.79,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;



	};

	case 5: {
		// Left red zone
		// Mobile patrols
		[[[[4127.56,4629.8,0],18,[]],[[4132.57,4625.43,0],18,[]],[[4129.03,4626.86,0],289,[]],[[4135.79,4619.14,0],18,[]],[[4132.14,4620.52,0],289,[]],[[4139.02,4612.85,0],18,[]],[[4135.26,4614.17,0],289,[]],[[4142.24,4606.55,0],18,[]]],[],[[[4366.44,4537.62,0],[[0,"Move"]]],[[4496.06,4339.56,0],[[0,"Move"]]],[[4620.96,4153.3,0],[[0,"Move"]]],[[4194.41,4818.21,0],[[0,"Move"]]],[[4354.75,4550.38,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKM_O_Hilux_Dshkm",[4156.57,4440.67,0],80,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[[[4248.46,4457.78,0],[[0,"Move"]]],[[4442.63,4591.73,0],[[0,"Move"]]],[[4886.63,4658.5,0],[[0,"Move"]]],[[4899.6,4508.26,0],[[0,"Move"]]],[[4501.81,4361.11,0],[[0,"Move"]]],[[4346.93,4285.86,0],[[0,"Move"]]],[[4240.79,4452.68,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKM_O_Hilux_Dshkm",[4156.57,4440.67,0],80,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[[[4248.46,4457.78,0],[[0,"Move"]]],[[4442.63,4591.73,0],[[0,"Move"]]],[[4886.63,4658.5,0],[[0,"Move"]]],[[4899.6,4508.26,0],[[0,"Move"]]],[[4501.81,4361.11,0],[[0,"Move"]]],[[4346.93,4285.86,0],[[0,"Move"]]],[[4240.79,4452.68,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[4847.8,4319.07,0],0,[]],[[4852.8,4314.07,0],0,[]],[[4842.8,4314.07,0],0,[]],[[4857.8,4309.07,0],0,[]],[[4837.8,4309.07,0],0,[]],[[4862.8,4304.07,0],0,[]],[[4832.8,4304.07,0],0,[]],[[4867.8,4299.07,0],0,[]]],[],[[[4866.8,4350.2,0],[[0,"Move"]]],[[5064.03,4349.89,0],[[0,"Move"]]],[[5086.97,4171.42,0],[[0,"Move"]]],[[4877.63,4150.19,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		
		// Rooftop marksmen
		[[[[4172.35,4344.89,15.7722],0,"Auto",[]],[[4404.44,4146.98,6.74638],0,"Auto",[]],[[4407.49,4527.62,8.00613],0,"Auto",[]],[[4456.57,4569.55,18.1331],0,"Auto",[]],[[4359.59,4704.99,8.00613],0,"Auto",[]],[[4339.78,4749.92,5.88582],0,"Auto",[]],[[4312.82,4849.59,6.10001],0,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Static fortifications
		[[[[4321.84,4153.47,0.504498],0,"Middle",[]],[[4320.96,4154.44,0.504498],0,"Middle",[]],[[4319.81,4153.69,0.504498],0,"Middle",[]],[[4320.46,4152.3,0.504498],0,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_O_PKM_Nest_Des",[4287.21,4238.24,0],350,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_O_PKM_Nest_Des",[4183.08,4478.67,0],64,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_O_PKM_Nest_Des",[4095.76,4690.36,0],44,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_O_PKM_Nest_Des",[4293.33,5010.61,0],105,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]],["UK3CB_O_PKM_Nest_Des",[4062.64,4804.6,0],101,[["gunner",-1,[0]]],[[7,["CamoNet_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

		

	};

	case 6: {
		// Right red zone
		// Marksmen on roof
		[[[[5350.18,4635.35,36.9803],0,"Auto",[]],[[5352.33,4889.48,11.1149],0,"Auto",[]],[[5517.87,4697.11,33.1898],0,"Auto",[]],[[5528.14,4451.96,36.9803],0,"Auto",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Foot patrols
		[[[[5365.22,4991.86,0],0,[]],[[5370.22,4986.86,0],0,[]],[[5360.22,4986.86,0],0,[]],[[5375.22,4981.86,0],0,[]],[[5355.22,4981.86,0],0,[]],[[5380.22,4976.86,0],0,[]],[[5350.22,4976.86,0],0,[]],[[5385.22,4971.86,0],0,[]]],[],[[[5290.07,4941.86,0],[[0,"Move"]]],[[4940.38,4892.04,0],[[0,"Move"]]],[[5079.94,4839.06,0],[[0,"Move"]]],[[5287.75,4928.12,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5471.08,4340.38,0],0,[]],[[5476.08,4335.38,0],0,[]],[[5466.08,4335.38,0],0,[]],[[5481.08,4330.38,0],0,[]],[[5461.08,4330.38,0],0,[]],[[5486.08,4325.38,0],0,[]],[[5456.08,4325.38,0],0,[]],[[5491.08,4320.38,0],0,[]]],[],[[[5421.74,4360.54,0],[[0,"Move"]]],[[5388.59,4679.59,0],[[0,"Move"]]],[[5360.5,4950.06,0],[[0,"Move"]]],[[5420.84,4342.53,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Vehicle patrols
		[[],[["UK3CB_TKM_O_Hilux_M2",[5568.44,4942.11,0],0,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["Camo_4",1]],[7,["ClanLogo_Hide",1,"Beacons_Hide",1,"Bonnet_Armour_Hide",1,"Central_Armour_Hide",1,"Front_Armour_Hide",1,"Rear_Armour_Hide",1,"Roof_Armour_Hide",1,"Wheel_Armour_Hide",1,"Windscreen_Armour_Hide",1,"Running_Board_Hide",0,"Roof_Rack_Hide",0,"Aerial_Hide",0,"Wipers_Hide",0]]]]],[[[5490.92,4965.92,0],[[0,"Move"]]],[[5414.61,5148.67,0],[[0,"Move"]]],[[5265.09,5133.43,0],[[0,"Move"]]],[[5335.15,4536.96,0],[[0,"Move"]]],[[4808.5,4488.87,0],[[0,"Move"]]],[[4790.96,4654.96,0],[[0,"Move"]]],[[4367.86,4541.73,0],[[0,"Move"]]],[[4490.58,4347.05,0],[[0,"Move"]]],[[4700.37,4046,0],[[0,"Move"]]],[[4822.55,3984.12,0],[[0,"Move"]]],[[5176.78,4024,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKM_O_BRDM2",[5931.96,4277.38,0],0,[["driver",-1,[]],["commander",-1,[0]],["gunner",-1,[1]]],[[6,["Camo1",1]]]]],[[[5383.9,3997.79,0],[[0,"Move"]]],[[5383.32,4038.08,0],[[0,"Move"]]],[[4857.85,3992.35,0],[[0,"Move"]]],[[4858.58,3958.24,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;



	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*
	GOL SCRIPT EXAMPLES

	=======================================

	Creates a defuse explosive objective with 600 (10 minutes) seconds to complete on the "SatchelCharge" object with the name bomb_1.
	This can be replaced with a position to create an explosive on the position using getPos bomb_1.

	Code:
	[bomb_1,600] spawn OKS_fnc_Defuse_Explosive;

	Params:
	[bomb_1,600,bombtarget_1,"BombDetonated","BombDefused"] spawn OKS_fnc_Defuse_Explosive;
	Bomb Object or Position, Time Delay (Seconds), Target Object (Destroyed upon detonation), VariableName to set to true if failed, VariableName to set to true if succeeded.

	=======================================

	Sets up a generator to be disabled by action to turn off light sources in the area around it. 

	Code:
	[Generator_1,true,true,1000] spawn OKS_fnc_PowerGenerator;

	Params:
	Generator Object, Should Add Action to disable, Turn Off Lights when disabled, Range of disabled lights from Generator

    =======================================

	Setup a scripted AAA that fires randomly into the air until it finds a target and locks on. It has less accuracy than standard AAA positions for balance.

	Code:
	[aaa_1,east,false,1500,true] spawn OKS_fnc_Ambient_AAA;

	Params:
	AAA Object, side of crew, Is an HMG, Range of AAA, Should be assisted by nearby radar

    =======================================

	Setup an artillery to fire into the sky until destroyed. Take note that it is supposed to delete the rounds from landing to save performance.
	This might fail, so make sure the target is not near friendly positions or bases.

	Code:
	[east,arty_1,getpos ArtyTarget_1,7,300,180,false] spawn OKS_fnc_ArtyFire;

	Params:
	Side of Crew, Artillery Object, Artillery Target, Rounds per Salvo, Rearm Delay, Reload Delay, Should give full crew.

    =======================================

	Setup an active artillery barrage on specified targets until destroyed.

	Code:
	[livearty_1,[getPos ArtySuppress_1,getPos ArtySuppress_2,getPos ArtySuppress_3],east,1,1,true,true,300,true] spawn OKS_fnc_ArtySuppression;

	Params:
	Artillery Object, Array with Target positions, Side of Crew, Rounds per target, Delay per target, Unlimited Ammo, Should Loop until Destroyed, Delay per Salvo, Mark with Red Smoke on Target.

	=======================================

	Setup a destroy/kill objective on a target.

	Code:
	[officer_1,"Kill the Officer","Enemy Officer","You need to kill this %1 because it needs to happen","kill",nil,true,true] spawn OKS_fnc_Destroy_Task;

	Params:
	Target Object, Task Title, Target Type, Task Description, Task Icon, Task Parent, Should Mark Position on Map, Should Show Popup when created/completed

	=======================================

	Setup a HVT Capture Objective. The last variable sets true/false if they target should be set to captive (tied hands). False for enemy officers, true for friendly captives.

	Code:
	[Group HVT_1,getMarkerPos "respawn_west",west,false,nil,true] spawn OKS_fnc_Evacuate_HVT;

	Params:
	Group of HVT, Exfil Position (Either pickup (Extract On) or dropoff (Extract off)), Side of Extract Helicopter, Should Send AI Helicopter Evac, Parent Task, Is Captive

	=======================================

	Setup Barricade Objective. Objective to destroy objects lined up as a blockade on a road. Make sure the object is destructible by testing it.

	Code:
	[[barricade_1,barricade_2]] spawn OKS_fnc_Destroy_Barricade;

	Params:
	Array with Barricade Objects

	=======================================

	Spawn a convoy that moves until engaged, they will dismount, armed vehicles will hunt and dismounts will rush.

	Code:
	[spawn_1,waypoint_1,end_1,west,[4,["rhs_btr60_msv"], 6, 25],[true,6],[], false, false] spawn OKS_fnc_Convoy_Spawn;

	Params:
	Spawn Position, First Waypoint, End Waypoint (Scattered formation), Side of Convoy, Convoy Array [](Number, [TypeArray]), Speed meters/second, dispersion]
	Dismount Array (Should have dismount, how many), ConvoyArray to populate variable, forced careless (ignore everything), delete on arrival.

	=======================================

	Spawns a team that either creep/rush/hunt based on LAMBS. Used for quick and intense counter-attacks by enemy infantry.

	Code:
	[SpawnPos,"rush",UnitsPerBase,Side,Range,[]] spawn OKS_fnc_Lambs_SpawnGroup;

	Params:
	Position, Type of Waypoint (rush,creep,hunt), Units to spawn, Side of units, Range of waypoint (around the spawn), unit array that gets populated with the units.

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

