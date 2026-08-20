/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

if(isServer) then {		
	if({!isNil format ["%1", _X]} count ["wecho1","wecho2","wecho3","wecho4","wecho5","wecho6"] < 2) then {
		{
			_X setMarkerAlpha 0;
		} foreach [
			"marker_407", 
			"marker_408", 
			"marker_227", 
			"marker_409", 
			"marker_410", 
			"marker_291", 
			"marker_435", 
			"marker_436", 
			"marker_294", 
			"marker_433", 
			"marker_434", 
			"marker_293", 
			"marker_415", 
			"marker_430", 
			"marker_292"
		];
		systemChat "Removed AAA Markers";
	};
};
