/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	[true, ["task_0"], ["Operation Warmane.", "Battle of Novogorsk", "Artillery"], nil,"CREATED",-1, false,"run", false] call BIS_fnc_taskCreate;
	[true, ["taskRear","task_0"], ["You have been tasked with wreaking havoc on the rear echelon forces after you have successfully widened the gap in the enemy front lines.", "Disrupt Rear-Echelon Units", "truck"], nil,"CREATED",-1, false,"truck", false] call BIS_fnc_taskCreate;
	[true, ["Task_1","taskRear"], ["You have been tasked with destroying a motor pool containing heavy assets. Most likely the T-72s undergoing repair and maintenance. Destroy the tanks!", "Destroy Motor Pool", "Motor Pool"], [1734.53,2493.5,0.00143433],"CREATED",-1, false,"danger", false] call BIS_fnc_taskCreate;
	[true, ["Task_2","taskRear"], ["You have been tasked with destroying a supply depot, bring explosives and destroy any equipment found on the site.", "Destroy Supply Depot", "Supply Depot"], [1495.93,2616.66,0.00137329],"CREATED",-1, false,"destroy", false] call BIS_fnc_taskCreate;
	
	[true, ["taskarty","task_0"], [format["You have been tasked with silencing the enemy artillery positions along the frontline. Destroy all targets and spike the guns."], "Neutralize Artillery Support", "Artillery"], nil,"CREATED",-1, false,"attack", false] call BIS_fnc_taskCreate;
	[true, ["taskaaa","task_0"], [format["You have been tasked with disrupting the enemies air defence. Find the Anti-air positions and neutralize them."], "Neutralize Air Defences", "Air Defence"], nil,"CREATED",-1, false,"attack", false] call BIS_fnc_taskCreate;
	[true, ["taskvillage","task_0"], [format["The village of Novoshy holds the 84th Mechanized Company who are positioned to block any forces approaching from the north. You have been tasked with clearing the path for the main force, destroy the enemy forces and their barricades."], "Secure Novoshy", "Air Defence"], nil,"CREATED",-1, false,"attack", false] call BIS_fnc_taskCreate;

	[Group HVT_1,getMarkerPos "respawn_east",east,false,"nil",false, true, "LDF Officers are coordinating the support assets from the Coal plant in central Novogorsk. These HVTs should be evacuated and debriefed. You must at least capture one of the HVTs."] spawn OKS_fnc_Evacuate_HVT;
	[[barricade_1],"taskvillage", true] spawn OKS_fnc_Destroy_Barricade;
	[[barricade_2],"taskvillage", true] spawn OKS_fnc_Destroy_Barricade;
	[[barricade_3],"taskvillage", true] spawn OKS_fnc_Destroy_Barricade;
	{
		[_X,"Eliminate Air Defence","ZU-23","You need to neutralize this %1. It is stopping the freedom of movement for our air assets!","destroy","taskaaa",true,false,true] spawn OKS_fnc_Destroy_Task;
	} foreach [aaa_1,aaa_2,aaa_3,aaa_4,aaa_5];
	{
		[_X,"Neutralize D-30","D-30 Artillery","You need to neutralize this %1. It is pounding our infantry forces to the north. Eliminate it before it disrupts the main attacking force!","destroy","taskarty",true,false,true] spawn OKS_fnc_Destroy_Task;
	} foreach [arty_1,arty_2,arty_3,arty_5,arty_6];

	[ArtilleryStrike_1,"rhs_ammo_3of56",30,999,250] spawn OKS_fnc_RandomArtillery; sleep (8 + random 8);
	[ArtilleryStrike_2,"rhs_ammo_3of56",30,999,250] spawn OKS_fnc_RandomArtillery; sleep (8 + random 8);
	[ArtilleryStrike_3,"rhs_ammo_3of56",30,999,250] spawn OKS_fnc_RandomArtillery; sleep (8 + random 8);
	[ArtilleryStrike_4,"rhs_ammo_3of56",30,999,250] spawn OKS_fnc_RandomArtillery; sleep (8 + random 8);

};