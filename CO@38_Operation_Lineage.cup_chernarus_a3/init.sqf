/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

if(isServer) then {

	{
		[Group _X] spawn OKS_fnc_Hostage;
	} foreach [hostage_1,hostage_6];

	sleep 15;
	[farty_1,[getPos target_1,getPos target_2,getPos target_3,getPos target_4,getPos target_5,getPos target_6],west,3,1,true,false,30,false] spawn OKS_fnc_ArtySuppression; sleep 1;
	[farty_2,[getPos target_1,getPos target_2,getPos target_3,getPos target_4,getPos target_5,getPos target_6],west,3,1,true,false,30,false] spawn OKS_fnc_ArtySuppression; sleep 1;
	[farty_3,[getPos target_1,getPos target_2,getPos target_3,getPos target_4,getPos target_5,getPos target_6],west,3,1,true,false,30,false] spawn OKS_fnc_ArtySuppression; sleep 1;
	[farty_4,[getPos target_1,getPos target_2,getPos target_3,getPos target_4,getPos target_5,getPos target_6],west,3,1,true,false,30,false] spawn OKS_fnc_ArtySuppression; sleep 1;
	[farty_5,[getPos target_1,getPos target_2,getPos target_3,getPos target_4,getPos target_5,getPos target_6],west,2,1,true,false,30,false] spawn OKS_fnc_ArtySuppression; sleep 1;

};
