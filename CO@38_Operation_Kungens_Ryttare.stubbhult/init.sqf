/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

if(isServer) then {

	[true,"Task_0", ["The Swedish Defence forces are responding to a Russian incursion in Stubbhult. Swedish forces are on the backfoot as the majority of forces are fighting on Gotland and in Stockholm. Our special forces group are supported by the local militia, Hemvärnet. The task is to hold off the Russians until reinforcements arrive.", "Operation Kungens Ryttare", ""], nil,"CREATED",-1,false, "whiteboard"] call BIS_fnc_taskCreate;
	[true,["Task_1","Task_0"], ["Your task is to break the front line, there are numerous force multipliers pressuring the front, we must destroy the assets and stabilize and then throw in our own reserves for a counter-attack.", "Break the frontline", ""], nil,"ASSIGNED",-1,false, "attack"] call BIS_fnc_taskCreate;
	[true,["Task_3","Task_0"], ["You must adapt to the situation, you may need to reshift your focus to help friendly forces throughout the course of the operation.", "Stabilize the front", ""], nil,"CREATED",-1,false, "defend"] call BIS_fnc_taskCreate;

	[[arty_4,arty_3,arty_1,arty_2], "Artillery: Unnaryd", nil, "You have been tasked with destroying a group of %1. There are a total of %2 %1s. If destroyed our lines will stabilize.","destroy","Task_1", true, true] spawn OKS_fnc_Destroy_Task;
	[[arty_5,arty_6,arty_7], "Artillery: Hjälmshult", nil, "You have been tasked with destroying a group of %1. There are a total of %2 %1s. If destroyed our lines will stabilize.","destroy","Task_1", true, true] spawn OKS_fnc_Destroy_Task;
	[[DestroyObject_1,DestroyObject_2,DestroyObject_3], "Supplies: Bäckhästen", nil, "You have been tasked with destroying the ammunition stockpile supporting the infantry forces pushing our lines. Neutralize the ammo depot!","destroy","Task_1", true, true] spawn OKS_fnc_Destroy_Task;
	//[[DestroyObject_4,DestroyObject_5,DestroyObject_6,DestroyObject_7], "SCUDs: Vasa", "SCUD Launchers", "You have been tasked with destroying the short range ballistic missile platforms in the area. The %1 are hidden somewhere near the port, make a rapid assault, do not get bogged down, find your targets and destroy the equipment.","truck","Task_1", true, true] spawn OKS_fnc_Destroy_Task;
	[[arty_8,arty_9,arty_10], "Artillery: Bohult", nil, "You have been tasked with destroying a group of %1. There are a total of %2 %1s. If destroyed our lines will stabilize.","destroy","Task_1", true, true] spawn OKS_fnc_Destroy_Task;
};

