// by ALIAS

damage_playeron_fire = 0.01;	// amount of damage players will take from fire script
publicVariable "damage_playeron_fire";

// animations used by players to get rid of fire
off_fire = ["amovppnemstpsraswrfldnon_amovppnemevaslowwrfldl","amovppnemstpsraswrfldnon_amovppnemevaslowwrfldr","amovppnemstpsnonwnondnon_amovppnemevasnonwnondl","amovppnemstpsnonwnondnon_amovppnemevasnonwnondr","amovppnemstpsraswpstdnon_amovppnemevaslowwpstdl","amovppnemstpsraswpstdnon_amovppnemevaslowwpstdr"];
publicVariable "off_fire";

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

list_vegetation = ["TREE","SMALL TREE","BUSH","FOREST BORDER","FOREST TRIANGLE","FOREST SQUARE","FOREST"];
publicVariable "list_vegetation";

vik_list = ["CAR","TANK","PLANE","HELICOPTER","Motorcycle","Air","Ship"];
publicVariable "vik_list";

street_lapms = ["Land_fs_roof_F","Land_TTowerBig_2_F","Land_TTowerBig_1_F","Lamps_base_F","PowerLines_base_F","PowerLines_Small_base_F","Land_LampStreet_small_F"];
publicVariable "street_lapms";

buildings_list = ["BUILDING","HOUSE","CHURCH","CHAPEL","FUELSTATION","HOSPITAL","RUIN","BUNKER"];
publicVariable "buildings_list";

list_man = ["Civilian","SoldierGB","SoldierEB","SoldierWB"];
publicVariable "list_man";

/////////////////////// DO NOT EDIT LINES BELOW ---------------------------------------------------------------------------------

[] spawn {
	if (isNil "allPlayers_on") then 
	{
		chk_players = true;
		while {chk_players} do 
		{
			//allPlayers_on = allPlayers_on - entities "HeadlessClient_F";
			allPlayers_on = call BIS_fnc_listPlayers;
			publicVariable "allPlayers_on";
			sleep 60;
		};
	}
};