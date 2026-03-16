/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

if(isServer) then {
	[[DestroyObject_1]] spawn OKS_fnc_Destroy_Task;
	[HVT_1, [getMarkerPos ["pos1",true], getMarkerPos ["pos2",true], getMarkerPos ["pos3",true], getMarkerPos ["pos4",true]], [markerDir "pos1", markerDir "pos2", markerDir "pos3", markerDir "pos4"]] call OKS_fnc_SelectRandomPosition;
	[Group HVT_1, getPos ExfilSite_1, west, false, nil, true, false] spawn OKS_fnc_Evacuate_HVT;
};