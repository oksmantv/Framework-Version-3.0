/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

if(isServer) then {
	[true,"Task_0", ["The USMC 1st Marine Division is conducting a seize and hold operation in the Farabad region to secure key objectives and destroy the insurgent forces.<br/><br/>The majority of marine forces are currently operating inside the city, fighting their way through from street to street. You are stationed in Outpost Ezekiel at the outskirts of downtown Farabad, you have yet to be called to the fighting in the city, but that may change soon..", "Operation Farabad Rescue", ""], nil,"CREATED",-1,false, "whiteboard"] call BIS_fnc_taskCreate;
	[true,["Task_1","Task_0"], ["Your outpost is under threat from enemy forces. You must secure Outpost Ezekiel and make sure that the outpost isnt threatened if you are called to join the fighting in the city. Conduct defensive operations to hold the outpost.", "Secure Outpost Ezekiel", ""], nil,"ASSIGNED",-1,false, "defend"] call BIS_fnc_taskCreate;

	[[],[["RHS_Ural_Zu23_MSV_01",[4347.59,4937.05,0],153,[["gunner",-1,[0]]],[[6,["standard",1]],[7,["spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1,"light_hide",0]]]],["RHS_Ural_Zu23_MSV_01",[4986.22,5044.52,4.76837e-07],162,[["gunner",-1,[0]]],[[6,["standard",1]],[7,["spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1,"light_hide",0]]]],["RHS_Ural_Zu23_MSV_01",[4670.86,5580.26,0],253,[["gunner",-1,[0]]],[[6,["standard",1]],[7,["spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1,"light_hide",0]]]],["RHS_Ural_Zu23_MSV_01",[5119.42,5758.84,0],205,[["gunner",-1,[0]]],[[6,["standard",1]],[7,["spare_hide",0,"bench_hide",0,"people_tag_hide",0,"rear_numplate_hide",1,"light_hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
};