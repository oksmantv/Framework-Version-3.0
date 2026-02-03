/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

if(isServer) then {

	{
		[Group _X] spawn OKS_fnc_Hostage;
	} foreach [hostage_1,hostage_6];
	[[AAA_1,AAA_2,AAA_3]] spawn OKS_fnc_Destroy_Task;
};
