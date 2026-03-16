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

if !(isServer) then {false};

params [
	"_case"
];

switch (_case) do {

	case 1: {
		[[[[4606.63,9322.92,1.79191],114,"Up",[]],[[4596.24,9315.65,0.946061],222,"Up",[]],[[4598.88,9319.32,1.20291],114,"Middle",[]],[[4607.72,9313.88,0.946892],114,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
	};

	case 2: {

		[[[[4037.15,10361.6,0],85,"Up",[]],[[4025.95,10366.1,0],20,"Up",[]],[[4022.1,10361.7,-1.19209e-007],266,"Up",[]],[[4028.36,10351.2,0.273914],131,"Up",[]],[[4021.74,10338.9,0],120,"Up",[]],[[4003.99,10342.9,0],87,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[6372.35,9074.58,0],99,"Up",[]],[[6367.23,9069.88,0],222,"Up",[]],[[6361.16,9077.67,2.38419e-007],288,"Up",[]],[[6364.94,9080.09,2.38419e-007],342,"Up",[]],[[6355.65,9062.09,0],56,"Up",[]],[[6376.16,9077.4,0],45,"Up",[]],[[6370.83,9062.08,0],88,"Up",[]],[[6367.66,9045.4,0.487787],46,"Up",[]],[[6342.07,9080.59,0],54,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5439.38,8999.39,0],50,"Up",[]],[[5441.95,8984.13,-3.8147e-006],96,"Up",[]],[[5430.95,8978.15,0],191,"Up",[]],[[5414.43,8986.35,-3.8147e-006],319,"Up",[]],[[5428.05,8995.11,0],322,"Up",[]],[[5433,8997.57,0],191,"Up",[]],[[5427.62,8985.78,0.227318],191,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[4492.78,9793.25,4.76837e-007],191,"Up",[]],[[4487.52,9798.39,0],242,"Up",[]],[[4497.9,9795.81,0],161,"Up",[]],[[4501.42,9800.8,-4.76837e-007],124,"Up",[]],[[4500.03,9796.71,0],116,"Up",[]],[[4498.77,9807.12,0],87,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5655.62,9701.01,0.498253],191,"Up",[]],[[5655.47,9702.85,3.97726],191,"Up",[]],[[5650.01,9705.39,3.6698],191,"Up",[]],[[5643.39,9709.08,3.09449],296,"Up",[]],[[5647.58,9711.87,3.54438],191,"Up",[]],[[5653.88,9711.67,4.18697],11,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 3: {
		{
			if(!(_X getVariable ["GOL_isStatic",false])) then {
				if(isNull objectParent (leader _X)) then {
					[_X, 2000, 15, [], [], true,true,true] spawn lambs_wp_fnc_taskHunt;
					//[_X,2000,30,[],[],true] remoteExec ["lambs_wp_fnc_taskRush",0];
					{_X disableAI "FSM"} foreach units _X;
				} else {
					/* 
						* Arguments:
						* 0: Group performing action, either unit <OBJECT> or group <GROUP>
						* 1: Range of tracking, default is 500 meters <NUMBER>
						* 2: Delay of cycle, default 15 seconds <NUMBER>
						* 3: Area the AI Camps in, default [] <ARRAY>
						* 4: Center Position, if no position or Empty Array is given it uses the Group as Center and updates the position every Cycle, default [] <ARRAY>
						* 5: Only Players, default true <BOOL>
						* 6: enable dynamic reinforcement <BOOL>
						* 7: Enable Flare <BOOL> or <NUMBER> where 0 disabled, 1 enabled (if Units cant fire it them self a flare is created via createVehicle), 2 Only if Units can Fire UGL them self
					*/
					[_X, 2000, 15, [], [], true,true,true] spawn lambs_wp_fnc_taskHunt;
				}

			};				
		} foreach allGroups;

		{[_X,5,east,2000] spawn OKS_Rush_SpawnGroup;} foreach [rush_1,rush_2,rush_3,rush_4,rush_5,rush_6,rush_7];
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
