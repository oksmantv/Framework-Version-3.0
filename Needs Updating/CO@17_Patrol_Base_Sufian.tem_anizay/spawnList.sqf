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
		[Trigger_1,false,[0,25,false,false],east,2,0,0,[0,false,false],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;	
		[true, "HelpSufian", ["Patrol Base Sufian is under insurgent attack. You need to speed up your movement and reach them before they are wiped out.", "Relieve Sufian", "Relieve"], getMarkerPos "marker_2","ASSIGNED",-1,true,"defend"] call BIS_fnc_taskCreate;
	};

	case 2: {

		private _EnemyAttack = [];
		["hq","side","1-1 be advised, patrol base sufian is currently under attack, secure the area arounding the patrol base asap, HQ out."] remoteExec ["OKS_Chat",0];
		{
			[_X,"rush",8,east,1000,_EnemyAttack] spawn OKS_Lambs_SpawnGroup;
			sleep 30;
		} foreach [t_1,t_2,t_3,t_4,t_5,t_6,t_7];	

		waitUntil { sleep 5; {Alive _X || [_X] call ace_common_fnc_isAwake} count _EnemyAttack == 0 || {Alive _X || [_X] call ace_common_fnc_isAwake} count units Friendly_1 == 0};

		if({Alive _X || [_X] call ace_common_fnc_isAwake} count units Friendly_1 == 0) then {
			["HelpSufian","FAILED"] call BIS_fnc_taskSetState;
			[true, "RetakeSufian", ["Patrol Base Sufian has fallen to the insurgent attack. Retake the outpost!", "Retake Sufian", "Relieve"], getMarkerPos "marker_2","ASSIGNED",-1,true,"attack"] call BIS_fnc_taskCreate;
			waitUntil {sleep 5; triggerActivated SufianTrigger};
			["RetakeSufian","SUCCEEDED"] call BIS_fnc_taskSetState;
		} else {
			["HelpSufian","SUCCEEDED"] call BIS_fnc_taskSetState;
		};

		[Trigger_2,false,[45,45,true,false],east,4,0,0,[0,true,false],[0,false],[4,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
		
	};

	case 3: {
		private _Array = [];
		{
			[_X,"rush",3,east,1000,_Array] spawn OKS_Lambs_SpawnGroup;
		} foreach [a_1,a_2,a_3,a_4,a_5];	

		[true, "DefendFOB", ["FOB Orango is about to be hit by an Insurgent attack. Drop the supplies off and help defend the FOB!", "Defend FOB Orango", "Relieve"], getMarkerPos "marker_4","ASSIGNED",-1,true,"defend"] call BIS_fnc_taskCreate;

		waitUntil {sleep 5; }

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
