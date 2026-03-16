//	[] Call Compile PreProcessFileLineNumbers "Scripts\SF_Pet\Init.sqf";
//	
//	
//	
//	

// Exits
if !(hasInterface) exitWith {};

// Define Functions
SF_PetFollow = Compile PreProcessFileLineNumbers "Scripts\SF_Pet\Functions\SF_PetFollow.sqf";
SF_Pet_Run = Compile PreProcessFileLineNumbers "Scripts\SF_Pet\Run.sqf";