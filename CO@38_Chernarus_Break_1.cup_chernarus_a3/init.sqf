/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	
	Reinforced1 = false;
	Reinforced2 = false;
	Reinforced3 = false;
	publicVariable "Reinforced1";
	publicVariable "Reinforced2";
	publicVariable "Reinforced3";

	counter1variable = false;
	counter2variable = false;
	counter3variable = false;
	counter4variable = false;
	publicVariable "counter1variable";
	publicVariable "counter2variable";
	publicVariable "counter3variable";
	publicVariable "counter4variable";

	OKS_Battle_Case0 = objNull;
	OKS_Battle_Case1 = objNull;
	OKS_Battle_Case2 = objNull;
	OKS_Battle_Case3 = objNull;
	OKS_Battle_Case4 = objNull;
	publicVariable "OKS_Battle_Case0";
	publicVariable "OKS_Battle_Case1";
	publicVariable "OKS_Battle_Case2";
	publicVariable "OKS_Battle_Case3";
	publicVariable "OKS_Battle_Case4";

	// Tasks
	[true, ["Main"], ["You have been tasked with breaking through Chedaki lines to reach the stranded paratroopers in Elektrozavodsk. This breakthrough will split the Russian and Chedaki forces in half, it is of crucial importance that we succeed with this operation. The fate of Chernarus lies in your hands, get to it soldiers.", "Operation Chernarus Break I","Main"], nil, "CREATED", 2, true,"attack"] call BIS_fnc_taskCreate;

	[true, ["Main1","Main"], ["Your mission tonight is to breakthrough the Chedaki lines and split the Russian and Chedaki forces down the middle. The Headquarters in Pusta will be your final destination, there you might find officers worthy of capture.", "Breakthrough to Pusta", "AD"], [9173.2,3833.5,0], "CREATED", 2, true,"attack"] call BIS_fnc_taskCreate;

	[true, ["Sub0","Main1"], ["To ensure the stability of the corridor, follow up forces will reinforce the taken key villages in the planned breakthrough. Secure the villages by neutralizing the enemies in the village, once completed friendly forces will send squads to defend the village.", "Secure Corridor", "Corridor"], nil, "CREATED", 2, true,"attack"] call BIS_fnc_taskCreate;
	[true, ["Sub1","Main1"], ["The Chedaki has a network of AAA weapons and radar stations that we have identified. Use whatever means to destroy them to open the airspace for continued support.", "Neutralize Air Defence", "AD"], nil, "CREATED", 2, true,"attack"] call BIS_fnc_taskCreate;
	[true, ["Sub2","Main1"], ["The Chedaki forces have mortar pits and artillery positions in the path of our breakthrough, destroy the support assets.", "Neutralize Ground Support", "AD"], nil, "CREATED", 2, true,"attack"] call BIS_fnc_taskCreate;

	// Villages
	[true, ["Secure1","Sub0"], ["Neutralize all enemy forces in this village and await friendly reinforcements before you proceed to the next key position.", "Secure Stary Sobor", "Stary Sobor"], [6146.56,7716.9,0.00143433], "CREATED", 2, true,"attack"] call BIS_fnc_taskCreate;
	[true, ["Secure2","Sub0"], ["Neutralize all enemy forces in this village and await friendly reinforcements before you proceed to the next key position.", "Secure Vyshnoye", "Vyshnoye"], [6551.49,6089.76,0.00140381], "CREATED", 2, true,"attack"] call BIS_fnc_taskCreate;
	[true, ["Secure3","Sub0"], ["Neutralize all enemy forces in this village and await friendly reinforcements before you proceed to the next key position.", "Secure Mogilevka", "Mogilevka"], [7536.86,5174.17,0.00143433], "CREATED", 2, true,"attack"] call BIS_fnc_taskCreate;

	// Clear Minefield.
	[[DestroyObject_1,DestroyObject_2,DestroyObject_3,DestroyObject_4,DestroyObject_5],"Defuse Mines",nil,nil,"mine","Main1",true,true] spawn OKS_fnc_Destroy_Task;

	// AAA & Radar
	[[aaa_1],"Destroy AAA",nil,nil,"danger","Sub1",false,true] spawn OKS_fnc_Destroy_Task;
	[[aaa_2],"Destroy AAA",nil,nil,"danger","Sub1",false,true] spawn OKS_fnc_Destroy_Task;
	[[aaa_3],"Destroy AAA",nil,nil,"danger","Sub1",false,true] spawn OKS_fnc_Destroy_Task;
	[[aaa_4],"Destroy AAA",nil,nil,"danger","Sub1",false,true] spawn OKS_fnc_Destroy_Task;
	[[aaa_5],"Destroy AAA",nil,nil,"danger","Sub1",false,true] spawn OKS_fnc_Destroy_Task;
	[[radar_1],"Disable Radar",nil,nil,"intel","Sub1",false,true] spawn OKS_fnc_Destroy_Task;
	[[radar_2],"Disable Radar",nil,nil,"intel","Sub1",false,true] spawn OKS_fnc_Destroy_Task;
	[[radar_3],"Disable Radar",nil,nil,"intel","Sub1",false,true] spawn OKS_fnc_Destroy_Task;

	// Mortar & Artillery
	[[mortar_1],nil,nil,nil,"destroy","Sub2",false,true] spawn OKS_fnc_Destroy_Task;
	[[mortar_2],nil,nil,nil,"destroy","Sub2",false,true] spawn OKS_fnc_Destroy_Task;
	[[arty_1],"Silence MLRS",nil,nil,"truck","Sub2",false,true] spawn OKS_fnc_Destroy_Task;
	[[arty_2],"Silence MLRS",nil,nil,"truck","Sub2",false,true] spawn OKS_fnc_Destroy_Task;
	[[arty_3],"Silence MLRS",nil,nil,"truck","Sub2",false,true] spawn OKS_fnc_Destroy_Task;

	// HVT.
	[Group officer_1,[9169.74,3844.94,0.00143433],west,false,"Sub2",false] spawn OKS_fnc_Evacuate_HVT;

	[] spawn {
		// Recon Drone Marker Update
		while {alive recondrone_1} do {
			"reconmarker" setMarkerPos (getPos recondrone_1);
			sleep 1;
		};	
		deleteMarker "reconmarker";
	};
};