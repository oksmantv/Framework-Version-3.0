/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.

	Global Commands can be used here, but be wary of locality issues. Do not spawn global effects "globally" (All clients)
	Example: Spawn a vehicle globally means, every single client will spawn a vehicle, resulting in.. a lot of vehicles.

	Server Commands should be within the isServer check.
*/
if(isServer) then {

	execVM "ZAM_fnc_liveMapsComp.sqf";
	[] spawn {
		waitUntil {
			sleep 1;
			!(isNil "MAZ_fnc_makeNewMapDisplay")
		};
		[MapBoard] spawn MAZ_fnc_makeNewMapDisplay;
		
		waitUntil{
			sleep 1;
			!(isNil "sebs_briefing_table_fnc_createTable")
		};
		[Table, "marker_0", 35, 2, true, true, -0.15] call sebs_briefing_table_fnc_createTable;
	};	
};