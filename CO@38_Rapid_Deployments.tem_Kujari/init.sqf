/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {
	{
		[_X,nil,nil,nil,nil,"Task_1"] spawn OKS_fnc_Destroy_Task;
	} foreach [arty_1,arty_2,arty_3,arty_4];
	{
		[_X,nil,nil,nil,nil,"Task_2"] spawn OKS_fnc_Destroy_Task;
	} foreach [support_1,support_2,support_3,support_4];
};
		