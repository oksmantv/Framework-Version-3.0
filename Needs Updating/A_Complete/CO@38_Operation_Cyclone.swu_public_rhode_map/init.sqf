/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

[true,"Task_0", ["The Soviet-backed government of Mutambara has fallen to America-funded Islamic extremists, the fall of the government sparked a large scale ethnic cleansing of the Russo-population in the country. The Soviet Union wants to make a clear statement that soviet civilians are off limits.<br/><br/>The extremist forces overran the local government forces and captured large stockpiles of soviet equipment, meaning soviet made equipment is currently being used against the soviet people. The 1st Guard Division and the VDV has been sent to stabilize the region, root out the extremists, and retake control to insert their pro-soviet puppet.<br/><br/>Goal:<br/>Attack the southern stronghold to disrupt the extremists quickly to set the stage for a continuous counter-insurgency operation, crush the largest pockets of extremism to allow the civilians of the region to switch sides and supporting our great alliance.", "Operation Cyclone", ""], nil,"CREATED",-1,false, "whiteboard"] call BIS_fnc_taskCreate;
[true,["Task_1","Task_0"], ["The enemy is in control of an old soviet outpost, to complete the objective, you must seize the area and destroy the enemy forces holding it.", "Retake Outpost", ""], nil,"ASSIGNED",-1,false, "attack"] call BIS_fnc_taskCreate;
[true,["Task_2","Task_0"], ["The outskirts of Mutambara holds an entrenched insurgent position, we must eliminate their force at large and retake the outskirts for continued operations in clearing the city.", "Retake Mutambara Outskirts", ""], nil,"created",-1,false, "attack"] call BIS_fnc_taskCreate;

[[DestroyObject_1,DestroyObject_2],nil,nil,nil,nil,"Task_1"] spawn OKS_fnc_Destroy_Task;
[[DestroyObject_3,DestroyObject_4,DestroyObject_5],nil,nil,nil,nil,"Task_2"] spawn OKS_fnc_Destroy_Task;
[HostageGroup_1,"Task_1"] spawn OKS_fnc_Hostage;
[HostageGroup_2,"Task_2"] spawn OKS_fnc_Hostage;