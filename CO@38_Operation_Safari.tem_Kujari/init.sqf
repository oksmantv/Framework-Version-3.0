/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	[true, ["MainTask"], ["Abbas Haddad a local militia leader has been reported raiding villages. Intelligence are working on fixing his position, once they do you must be ready to intercept. Abbas Haddad is a violent extremist who has raided and murdered his way around Kujari, he must be stopped. When captured, he might get us intel on enemy assets, destroy these assets to complete the mission.<br/><br/>The following image shows one of his recent activities:<br/><img image='photo.paa' width='320' height='320' />", "HVT: Abbas Haddad", "marker2"], objNull, 1, 3, true, "kill"] call BIS_fnc_taskCreate;
	[true, ["ScoutTask","MainTask"], ["The nearby village of Malari has been attacked, a survivor called in on the radio. Move to the site and observe from the air, see you can find any clues on what has happened.", "Investigate Malari", "marker2"], [11820.1,13619.8,0], 1, 3, true, "search"] call BIS_fnc_taskCreate;
	[[DestroyObject_1],"Destroy Explosives Cache",nil,nil,nil,"MainTask", false, false] spawn OKS_fnc_Destroy_Task;
	[getPos fire_1] spawn OKS_fnc_Fire;
	[getPos fire_2] spawn OKS_fnc_Fire;
	[[IntelTarget_1, IntelTarget_2, IntelTarget_3, IntelTarget_4], "Destroy Motor Pool",nil,nil,"truck","MainTask",false,true] spawn OKS_fnc_Destroy_Task;
	[Rescue_1, "fatal", [false, "ScoutTask"], nil, [4,independent]] spawn OKS_fnc_RescueSurvivorTask;
};