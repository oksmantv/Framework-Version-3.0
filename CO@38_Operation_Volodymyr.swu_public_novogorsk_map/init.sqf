/*
	Initialization script for FW.

	Use this file if you want to run code at the start of the mission.
	If you want tasks to appear on the briefing screen, place the task creations below here.
*/

if(isServer) then {

	_battleRef1 = [
        west_1,                     // Faction 1 spawn object
        east_1,                     // Faction 2 spawn object  
        meet_1,                     // Meeting point object (returned for control)
        west,                       // Faction 1 side
        east,                       // Faction 2 side
        ["UK3CB_GAF_B_BMD1", "UK3CB_GAF_B_BMP2", "UK3CB_GAF_B_BMP1", "UK3CB_GAF_B_T55"], // Faction 1 vehicle classes
        ["UK3CB_CW_SOV_O_LATE_BMD1", "UK3CB_CW_SOV_O_LATE_BMD2", "UK3CB_CW_SOV_O_LATE_BMP1", "UK3CB_CW_SOV_O_LATE_BMP2", "UK3CB_CW_SOV_O_LATE_BRM1K", "UK3CB_CW_SOV_O_LATE_T55"], // Faction 2 vehicle classes
        east,                // Defending side (optional)
        true,                       // Enable looping battles
        180,                         // Delay between rounds (seconds)
        -1,                         // Max rounds (-1 = infinite)
        30,                         // Victory delay before cleanup
        6,                         // Maximum total units per round
        3000                        // Player observation range (meters)
    ] call OKS_fnc_AI_Battle;
	sleep 60;
	_battleRef2 = [
        west_2,                     // Faction 1 spawn object
        east_2,                     // Faction 2 spawn object  
        meet_2,                     // Meeting point object (returned for control)
        west,                       // Faction 1 side
        east,                       // Faction 2 side
        ["UK3CB_GAF_B_BMD1", "UK3CB_GAF_B_BMP2", "UK3CB_GAF_B_BMP1", "UK3CB_GAF_B_T55"], // Faction 1 vehicle classes
        ["UK3CB_CW_SOV_O_LATE_BMD1", "UK3CB_CW_SOV_O_LATE_BMD2", "UK3CB_CW_SOV_O_LATE_BMP1", "UK3CB_CW_SOV_O_LATE_BMP2", "UK3CB_CW_SOV_O_LATE_BRM1K", "UK3CB_CW_SOV_O_LATE_T55"], // Faction 2 vehicle classes
        east,                // Defending side (optional)
        true,                       // Enable looping battles
        180,                         // Delay between rounds (seconds)
        -1,                         // Max rounds (-1 = infinite)
        30,                         // Victory delay before cleanup
        6,                         // Maximum total units per round
        3000                        // Player observation range (meters)
    ] call OKS_fnc_AI_Battle;	

    _artilleryBattleRef1 = [
        arty_spawn_1,               // Side 1 artillery spawn object
        arty_spawn_2,               // Side 2 artillery spawn object  
        west,                       // Side 1 faction
        east,                       // Side 2 faction
        ["UK3CB_GAF_B_2S1"],        // Side 1 artillery classes
        ["rhs_2s1_tv"],        // Side 2 artillery classes
        90,                         // Base delay between fire missions (seconds)
        3,                          // Rounds per fire mission
        true,                       // Enable looping battles
        -1,                         // Max fire missions (-1 = infinite)
        300                          // Victory delay before cleanup
    ] call OKS_fnc_AI_ArtilleryBattle;
	sleep 30;

    _artilleryBattleRef2 = [
        arty_spawn_3,               // Side 1 artillery spawn object
        arty_spawn_4,               // Side 2 artillery spawn object  
        west,                       // Side 1 faction
        east,                       // Side 2 faction
        ["UK3CB_GAF_B_2S1"],        // Side 1 artillery classes
        ["rhs_2s1_tv"],        // Side 2 artillery classes
        90,                         // Base delay between fire missions (seconds)
        3,                          // Rounds per fire mission
        true,                       // Enable looping battles
        -1,                         // Max fire missions (-1 = infinite)
        300                          // Victory delay before cleanup
    ] call OKS_fnc_AI_ArtilleryBattle;
	sleep 30;

    _artilleryBattleRef3 = [
        arty_spawn_5,               // Side 1 artillery spawn object
        arty_spawn_6,               // Side 2 artillery spawn object  
        west,                       // Side 1 faction
        east,                       // Side 2 faction
        ["UK3CB_GAF_B_2S1"],        // Side 1 artillery classes
        ["rhs_2s1_tv"],        // Side 2 artillery classes
        90,                         // Base delay between fire missions (seconds)
        3,                          // Rounds per fire mission
        true,                       // Enable looping battles
        -1,                         // Max fire missions (-1 = infinite)
        300                          // Victory delay before cleanup
    ] call OKS_fnc_AI_ArtilleryBattle;
	
	waitUntil {sleep 30; missionNamespace getVariable ["FW_StopAllBattles", false] == true};
	_artilleryBattleRef1 setVariable ["OKS_ArtilleryBattle_On", false, true]; // Stop battle
	_artilleryBattleRef2 setVariable ["OKS_ArtilleryBattle_On", false, true]; // Stop battle
	_artilleryBattleRef3 setVariable ["OKS_ArtilleryBattle_On", false, true]; // Stop battle
	_battleRef1 setVariable ["OKS_AIBattle_On", false, true];
	_battleRef2 setVariable ["OKS_AIBattle_On", false, true];
};