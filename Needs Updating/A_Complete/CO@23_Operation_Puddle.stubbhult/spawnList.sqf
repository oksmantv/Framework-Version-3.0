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

		// ANTI-AIR.
		[[],[["UK3CB_LNM_O_DSHKM",[2616.95,4924.64,0],165,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_DSHKM",[3331.68,4172.4,0],220,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_DSHKM",[3161.85,4345.46,0],180,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_DSHKM",[4935.92,3873.18,0],86,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_DSHKM",[5470.69,4984.32,0],285,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_DSHKM",[5228.03,6616.2,0],167,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_DSHKM",[6779.97,6763.67,-9.53674e-07],132,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_DSHKM",[5470.05,6048.47,0],95,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_PKM_High",[2640.13,5120.03,0],193,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_PKM_High",[6787.2,6114.13,0],321,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_PKM_High",[5591.35,5020.25,0],165,[["gunner",-1,[0]]],[]],["UK3CB_LNM_O_PKM_High",[7868.77,5777.56,0],325,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;

		// First Raid.
		// Patrols.
		[[[[3646.23,3392.34,1.90735e-06],0,[]],[[3644.43,3393.81,1.90735e-06],0,[]]],[],[[[3619.25,3385.88,0],[[0,"Move"],[1,"SAFE"]]],[[3598.09,3397.69,3.57628e-07],[[0,"Move"]]],[[3634.4,3416.21,0],[[0,"Move"]]],[[3646.95,3395.65,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3561.82,3414.99,0.620053],140,[]],[[3564.14,3415.03,0.620053],140,[]]],[],[[[3579.06,3434.62,0],[[0,"Move"],[1,"SAFE"]]],[[3616.08,3410.47,0],[[0,"Move"]]],[[3573.44,3403.04,0],[[0,"Move"]]],[[3563.42,3412.01,0.620051],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3629.74,3436.21,0],0,[]],[[3627.95,3437.68,0],0,[]]],[],[[[3608.27,3434.52,0],[[0,"Move"],[1,"SAFE"]]],[[3569.87,3450.36,2.38419e-07],[[0,"Move"]]],[[3618.61,3475.36,0],[[0,"Move"]]],[[3630.46,3439.51,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3554.23,3439.29,0],111,[]],[[3556.24,3440.42,0],111,[]]],[],[[[3552.01,3465.89,0],[[0,"Move"],[1,"SAFE"]]],[[3588.34,3472.95,0],[[0,"Move"]]],[[3590.8,3441.61,0],[[0,"Move"]]],[[3557.05,3437.42,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Sentries.
		[[[[3624.57,3403.9,4.76837e-06],95,"Up",[]],[[3623.42,3402.37,2.38419e-07],163,"Middle",[]],[[3630.11,3413.37,0.620055],55,"Up",[]],[[3631.77,3408.46,0.620055],297,"Up",[]],[[3594.03,3399.87,0.596095],60,"Up",[]]],[["UK3CB_O_Static_PKM_High_VDV",[3622.21,3400.06,2.38419e-07],134,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3626.54,3455.37,4.29153e-06],11,"Up",[]],[[3626.77,3453.47,0],119,"Middle",[]],[[3626.69,3429.93,0.620055],110,"Up",[]],[[3624.94,3435.19,0.620055],275,"Up",[]],[[3619.46,3455.8,0.0571909],84,"Up",[]],[[3619,3457.92,0.0723729],84,"Up",[]],[[3617.16,3463.02,0.0989313],167,"Up",[]]],[["UK3CB_O_Static_PKM_High_VDV",[3627.49,3450.97,0],90,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[3586.49,3466.84,3.54158],77,"Up",[]],[[3587.19,3463.71,3.54158],77,"Up",[]],[[3586.42,3465.04,0.789299],77,"Up",[]],[[3580.98,3465.88,0.789299],173,"Middle",[]],[[3578.43,3467.89,3.54158],165,"Middle",[]],[[3582.11,3468.89,3.54158],331,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3581.43,3418.86,0.620055],9,"Up",[]],[[3580.56,3414.37,0.620055],194,"Up",[]],[[3559.89,3434.29,0],71,"Up",[]],[[3570.82,3428.8,0.168534],355,"Up",[]],[[3560.45,3428.05,0.00250244],344,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[4282.22,4346.18,0],0,[]],[[4287.22,4341.18,0],0,[]],[[4277.22,4341.18,0],0,[]],[[4292.22,4336.18,0],0,[]]],[],[[[4186.36,4375.12,0],[[0,"Move"],[1,"SAFE"]]],[[4113.47,4380.28,-3.05176e-05],[[0,"Move"]]],[[4052.57,4370.18,-9.53674e-07],[[0,"Move"]]],[[4112.97,4382.76,6.67572e-06],[[0,"Move"]]],[[4187.01,4378.36,-1.19209e-05],[[0,"Move"]]],[[4269.77,4347.01,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 2: {

		// Second Raid.
		[[[[4805.66,5090.93,0],154,[]],[[4798.99,5093.28,0],154,[]],[[4808.01,5097.6,0],154,[]],[[4792.32,5095.62,0],154,[]]],[],[[[4898.22,5076.61,2.38419e-07],[[0,"Move"],[1,"SAFE"]]],[[4997.35,5097.3,0],[[0,"Move"]]],[[5069.76,5123.46,0],[[0,"Move"]]],[[4998.87,5095.27,0],[[0,"Move"]]],[[4899.04,5073.41,2.38419e-07],[[0,"Move"]]],[[4817.25,5095.57,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5338.07,5162.4,1.66253],94,[]],[[5332.7,5157.8,1.66253],94,[]],[[5333.47,5167.77,1.66253],94,[]],[[5327.33,5153.2,1.66253],94,[]]],[],[[[5366.93,5213.73,1.21593e-05],[[0,"Move"],[1,"SAFE"]]],[[5473.04,5331.27,1.20072],[[0,"Move"]]],[[5541.45,5459.01,0],[[0,"Move"]]],[[5475.55,5331.57,0],[[0,"Move"]]],[[5370.11,5212.83,2.38419e-07],[[0,"Move"]]],[[5339.85,5174.75,1.66253],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5878.07,6052.93,1.23978e-05],142,[]],[[5871.05,6053.74,1.23978e-05],142,[]],[[5878.88,6059.95,1.23978e-05],142,[]],[[5864.02,6054.55,1.23978e-05],142,[]]],[],[[[6027.35,6107.44,2.38419e-07],[[0,"Move"],[1,"SAFE"]]],[[6122.13,6205.41,0],[[0,"Move"]]],[[6199.63,6181.79,0],[[0,"Move"]]],[[6124.06,6203.77,1.19209e-07],[[0,"Move"]]],[[6028.85,6104.5,0],[[0,"Move"]]],[[5888.34,6060.01,1.23978e-05],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Patrol.
		[[[[5532.16,5530.08,0],238,[]],[[5531.87,5527.78,0],238,[]]],[],[[[5554.85,5516.03,1.09075],[[0,"Move"],[1,"SAFE"]]],[[5532.3,5491.74,0],[[0,"Move"]]],[[5520.02,5510.88,0],[[0,"Move"]]],[[5528.98,5528.93,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5564.13,5517.05,0],111,[]],[[5566.14,5518.19,2.38419e-07],111,[]]],[],[[[5539.68,5537.48,0.519835],[[0,"Move"],[1,"SAFE"]]],[[5579.22,5543.31,0],[[0,"Move"]]],[[5589.63,5523.62,0],[[0,"Move"]]],[[5566.95,5515.18,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5558.1,5469.56,0],111,[]],[[5560.12,5470.69,2.38419e-07],111,[]]],[],[[[5555.89,5496.16,0.519787],[[0,"Move"],[1,"SAFE"]]],[[5580.79,5494.93,0],[[0,"Move"]]],[[5583.61,5476.12,0],[[0,"Move"]]],[[5560.92,5467.69,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5601.81,5494.63,0],45,[]],[[5601.6,5496.94,0],45,[]]],[],[[[5547.81,5505.39,0.519785],[[0,"Move"],[1,"SAFE"]]],[[5578.56,5524.43,0],[[0,"Move"]]],[[5606.23,5520.6,0],[[0,"Move"]]],[[5604.67,5496.44,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5516.62,5466.26,0],111,[]],[[5518.64,5467.4,0],111,[]]],[],[[[5514.41,5492.87,0.519787],[[0,"Move"],[1,"SAFE"]]],[[5539.31,5491.64,0],[[0,"Move"]]],[[5542.13,5472.83,0],[[0,"Move"]]],[[5519.44,5464.4,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Sentries.
		[[[[5511.45,5464.98,0],252,"Up",[]],[[5514.79,5463.02,0],145,"Up",[]],[[5522.66,5474.02,0.619704],279,"Up",[]],[[5522.8,5473.71,3.32649],75,"Up",[]],[[5518.86,5475.45,0.728711],279,"Up",[]]],[["UK3CB_ADE_O_PKM_High",[5512.65,5463.61,0],243,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5524.07,5481.58,0.583542],343,"Up",[]],[[5526.74,5472.62,0.579289],338,"Up",[]],[[5529.29,5480.17,0.57929],200,"Up",[]],[[5528.99,5476.87,3.29228],279,"Up",[]],[[5527.32,5472.37,3.29228],341,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5591.96,5514.37,2.38419e-07],148,"Up",[]],[[5589.96,5515.73,0],261,"Up",[]],[[5582.49,5509.08,0.273166],263,"Up",[]],[[5575.54,5501.83,0.769507],165,"Up",[]],[[5581.08,5502.1,0.771299],222,"Up",[]],[[5581.27,5506.59,0.771626],250,"Up",[]],[[5577.81,5504.3,0.769507],333,"Up",[]],[[5585.52,5503.97,0.768146],359,"Up",[]],[[5557.68,5492.9,1.16432],248,"Up",[]]],[["UK3CB_CW_SOV_O_Early_VDV_DSHKM",[5590.23,5517.38,2.38419e-07],271,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[5543.96,5520.22,0.788317],303,"Up",[]],[[5539.76,5513.53,0.759743],278,"Up",[]],[[5537.88,5517.54,0.774771],235,"Up",[]],[[5542.1,5517.52,0.778087],308,"Middle",[]],[[5546.38,5510.14,0],203,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5548.56,5539.1,0],170,"Middle",[]],[[5589.81,5531.5,0.690296],209,"Up",[]],[[5559.66,5529.42,0.630407],249,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	

	
	};

	case 3: {

		// Third Raid.
		// Patrols.
		[[[[6985.42,6259.87,0],0,[]],[[6990.42,6257.87,0],0,[]]],[],[[[7078.73,6257.05,0],[[0,"Move"],[1,"SAFE"]]],[[7075.22,6219.44,0],[[0,"Move"]]],[[6995.85,6254.75,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7096.23,6202.96,0],341,[]],[[7101.6,6202.67,0],341,[]]],[],[[[7188.56,6234.82,0],[[0,"Move"],[1,"SAFE"]]],[[7188.83,6186.25,0],[[0,"Move"]]],[[7107.75,6201.45,2.38419e-07],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[7137.45,6185.83,0.502784],152,[]],[[7132.1,6185.21,0.42126],152,[]]],[],[[[7026.31,6166.97,0],[[0,"Move"],[1,"SAFE"]]],[[7052.19,6214.28,0],[[0,"Move"]]],[[7125.83,6185.36,0.131964],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6976.78,6238.5,2.38419e-07],0,[]],[[6981.78,6236.5,0],0,[]]],[],[[[7021.63,6245.41,0],[[0,"Move"],[1,"SAFE"]]],[[6989.55,6195.98,0],[[0,"Move"]]],[[6987.21,6233.38,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[6946.6,6207.21,0],0,[]],[[6951.6,6205.21,0],0,[]]],[],[[[7014.75,6193.33,0],[[0,"Move"],[1,"SAFE"]]],[[6965.14,6154.42,0],[[0,"Move"]]],[[6957.03,6202.09,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Sentries.
		[[[[7046.52,6204.59,11.4995],308,"Up",[]],[[7029.29,6200.87,11.5085],310,"Up",[]],[[7040.03,6193.45,0.417041],57,"Up",[]],[[7061.05,6196.94,0.420872],278,"Up",[]],[[7075.39,6188.66,0.21053],349,"Up",[]],[[7034.89,6186.15,0.342032],77,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[7073.96,6205.18,11.5005],326,"Up",[]],[[7059.55,6241.52,0.322766],86,"Up",[]],[[7066.53,6220.68,0.340224],183,"Up",[]],[[7059.03,6220.91,0.313959],183,"Up",[]],[[7067.33,6233.71,0.305414],12,"Up",[]]],[["rhs_bmd1",[7091.68,6209.72,0],90,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["maljutka_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"wood_2_unhide",1,"antena2_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[6969.23,6228.75,0.253518],325,"Up",[]],[[6975.74,6219.42,4.41074e-05],232,"Up",[]],[[6965.71,6188.15,2.38419e-07],335,"Middle",[]],[[7000.26,6222.23,2.82601],325,"Up",[]],[[7012.77,6222.9,3.03362],325,"Up",[]],[[6961,6213.66,2.38419e-05],6,"Up",[]],[[6960.1,6212.1,2.38419e-05],350,"Up",[]],[[6962.61,6211.13,2.38419e-05],6,"Middle",[]]],[["rhs_bmd1",[7005.08,6213.98,0],269,[["driver",-1,[]],["gunner",-1,[0]]],[[6,["standard",1]],[7,["maljutka_hide_source",0,"crate_l1_unhide",0,"crate_l2_unhide",1,"crate_l3_unhide",1,"crate_r1_unhide",0,"crate_r2_unhide",0,"crate_r3_unhide",1,"wood_1_unhide",0,"wood_2_unhide",1,"antena2_hide",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[[[7033.98,6244.39,0.703849],53,"Up",[]],[[7042.35,6244.6,0.703775],299,"Up",[]],[[7047.36,6241.4,0.0798142],101,"Up",[]],[[7045.24,6245.02,0.0798142],53,"Up",[]],[[7042.19,6223.96,0.721695],217,"Up",[]],[[7026.16,6239.96,8.11079],325,"Up",[]],[[7032.9,6253.63,2.38419e-05],359,"Up",[]],[[7029.21,6254.53,2.38419e-05],306,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		
	};

	case 4: {

		_Vehicles = ["rhs_uaz_open_vdv"];

		// Counter 1
		[Spawn_1, Spawn_1, NEKY_Hunt_Trigger_1, 4,300,east,_Vehicles,30] spawn NEKY_Hunt_HuntBase;
		[Spawn_2, Spawn_2, NEKY_Hunt_Trigger_1, 4,300,east,_Vehicles,30] spawn NEKY_Hunt_HuntBase;
		[Spawn_3, Spawn_3, NEKY_Hunt_Trigger_1, 4,300,east,_Vehicles,30] spawn NEKY_Hunt_HuntBase;
		[Spawn_4, Spawn_4, NEKY_Hunt_Trigger_1, 4,300,east,_Vehicles,30] spawn NEKY_Hunt_HuntBase;

		[rush_1,"rush",6,east,600,[]] spawn OKS_Lambs_SpawnGroup;
		[rush_2,"rush",6,east,600,[]] spawn OKS_Lambs_SpawnGroup;
		[rush_3,"rush",6,east,600,[]] spawn OKS_Lambs_SpawnGroup;

	};

	case 5: {

		// Counter 2
		[Spawn_5, Spawn_5, NEKY_Hunt_Trigger_2, 4,300,east,5,30] spawn NEKY_Hunt_HuntBase;
		[Spawn_6, Spawn_6, NEKY_Hunt_Trigger_2, 4,300,east,5,30] spawn NEKY_Hunt_HuntBase;
		[Spawn_7, Spawn_7, NEKY_Hunt_Trigger_2, 4,300,east,5,30] spawn NEKY_Hunt_HuntBase;
		[Spawn_8, Spawn_8, NEKY_Hunt_Trigger_2, 4,300,east,5,30] spawn NEKY_Hunt_HuntBase;

		[rush_4,"rush",6,east,600,[]] spawn OKS_Lambs_SpawnGroup;
		[rush_5,"rush",6,east,600,[]] spawn OKS_Lambs_SpawnGroup;
		[rush_6,"rush",6,east,600,[]] spawn OKS_Lambs_SpawnGroup;

	};

	case 6: {

		_Vehicles = ["rhs_uaz_open_vdv", "rhs_uaz_open_vdv", "rhs_uaz_open_vdv", "rhs_uaz_open_vdv", "rhs_bmd1"];

		// Counter 3
		[Spawn_9, Spawn_9, NEKY_Hunt_Trigger_3, 4,300,east,_Vehicles,30] spawn NEKY_Hunt_HuntBase;
		[Spawn_10, Spawn_10, NEKY_Hunt_Trigger_3, 4,300,east,_Vehicles,30] spawn NEKY_Hunt_HuntBase;
		[Spawn_11, Spawn_11, NEKY_Hunt_Trigger_3, 4,300,east,_Vehicles,30] spawn NEKY_Hunt_HuntBase;
		[Spawn_12, Spawn_12, NEKY_Hunt_Trigger_3, 4,300,east,_Vehicles,30] spawn NEKY_Hunt_HuntBase;

		[rush_7,"rush",6,east,600,[]] spawn OKS_Lambs_SpawnGroup;
		[rush_8,"rush",6,east,600,[]] spawn OKS_Lambs_SpawnGroup;
		[rush_9,"rush",6,east,600,[]] spawn OKS_Lambs_SpawnGroup;
		[rush_10,"rush",6,east,600,[]] spawn OKS_Lambs_SpawnGroup;

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
	[bomb_1,600] spawn OKS_Defuse_Explosive;

	Params:
	[bomb_1,600,bombtarget_1,"BombDetonated","BombDefused"] spawn OKS_Defuse_Explosive;
	Bomb Object or Position, Time Delay (Seconds), Target Object (Destroyed upon detonation), VariableName to set to true if failed, VariableName to set to true if succeeded.

	=======================================

	Sets up a generator to be disabled by action to turn off light sources in the area around it. 

	Code:
	[Generator_1,true,true,1000] spawn OKS_PowerGenerator;

	Params:
	Generator Object, Should Add Action to disable, Turn Off Lights when disabled, Range of disabled lights from Generator

    =======================================

	Setup a scripted AAA that fires randomly into the air until it finds a target and locks on. It has less accuracy than standard AAA positions for balance.

	Code:
	[aaa_1,east,false,1500,true] spawn GW_Ambient_AAA;

	Params:
	AAA Object, side of crew, Is an HMG, Range of AAA, Should be assisted by nearby radar

    =======================================

	Setup an artillery to fire into the sky until destroyed. Take note that it is supposed to delete the rounds from landing to save performance.
	This might fail, so make sure the target is not near friendly positions or bases.

	Code:
	[east,arty_1,getpos ArtyTarget_1,7,300,180,false] spawn OKS_ArtyFire;

	Params:
	Side of Crew, Artillery Object, Artillery Target, Rounds per Salvo, Rearm Delay, Reload Delay, Should give full crew.

    =======================================

	Setup an active artillery barrage on specified targets until destroyed.

	Code:
	[livearty_1,[getPos ArtySuppress_1,getPos ArtySuppress_2,getPos ArtySuppress_3],east,1,1,true,true,300,true] spawn OKS_ArtySupression;

	Params:
	Artillery Object, Array with Target positions, Side of Crew, Rounds per target, Delay per target, Unlimited Ammo, Should Loop until Destroyed, Delay per Salvo, Mark with Red Smoke on Target.

	=======================================

	Setup a destroy/kill objective on a target.

	Code:
	[officer_1,"Kill the Officer","Enemy Officer","You need to kill this %1 because it needs to happen","kill",nil,true,true] spawn OKS_Destroy_Task;

	Params:
	Target Object, Task Title, Target Type, Task Description, Task Icon, Task Parent, Should Mark Position on Map, Should Show Popup when created/completed

	=======================================

	Setup a HVT Capture Objective. The last variable sets true/false if they target should be set to captive (tied hands). False for enemy officers, true for friendly captives.

	Code:
	[Group HVT_1,getMarkerPos "respawn_west",west,false,nil,true] spawn OKS_Evacuate_HVT;

	Params:
	Group of HVT, Exfil Position (Either pickup (Extract On) or dropoff (Extract off)), Side of Extract Helicopter, Should Send AI Helicopter Evac, Parent Task, Is Captive

	=======================================

	Setup Barricade Objective. Objective to destroy objects lined up as a blockade on a road. Make sure the object is destructible by testing it.

	Code:
	[[barricade_1,barricade_2]] spawn OKS_Destroy_Barricade;

	Params:
	Array with Barricade Objects

	=======================================

	Spawn a convoy that moves until engaged, they will dismount, armed vehicles will hunt and dismounts will rush.

	Code:
	[spawn_1,waypoint_1,end_1,west,[4,["rhs_btr60_msv"], 6, 25],[true,6],[], false, false] spawn OKS_Convoy_Spawn;

	Params:
	Spawn Position, First Waypoint, End Waypoint (Scattered formation), Side of Convoy, Convoy Array [](Number, [TypeArray]), Speed meters/second, dispersion]
	Dismount Array (Should have dismount, how many), ConvoyArray to populate variable, forced careless (ignore everything), delete on arrival.

	=======================================

	Spawns a team that either creep/rush/hunt based on LAMBS. Used for quick and intense counter-attacks by enemy infantry.

	Code:
	[SpawnPos,"rush",UnitsPerBase,Side,Range,[]] spawn OKS_Lambs_SpawnGroup;

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
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_CreateZone")};

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
			] spawn OKS_CreateZone;
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

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn NEKY_Hunt_HuntBase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Hunt_HuntBase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,600+(random 300),east,6,120+(120)] spawn NEKY_Hunt_HuntBase;
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

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
