
	if(isServer) then { 
		DefDeploy0 = true; publicVariable "DefDeploy0"; 
		DefDeploy1 = true; publicVariable "DefDeploy1"; 
		DefDeploy2 = true; publicVariable "DefDeploy2"; 
		DefDeploy3 = true; publicVariable "DefDeploy3"; 
		DefDeploy4 = true; publicVariable "DefDeploy4"; 
		DefDeploy5 = true; publicVariable "DefDeploy5"; 
		DefDeploy6 = true; publicVariable "DefDeploy6"; 
		DefDeploy7 = true; publicVariable "DefDeploy7";
		Dry_Array_1 = []; publicVariable "Dry_Array_1";
		Dry_Array_2 = []; publicVariable "Dry_Array_2";
		Dry_Array_3 = []; publicVariable "Dry_Array_3";
	}; 

	[helo_1, getpos helospawn_1, getDir helospawn_1, ["helicopter"]] execVM "Training\VehicleRequest.sqf";
	[helo_2, getpos helospawn_2, getDir helospawn_2, ["helicopter"]] execVM "Training\VehicleRequest.sqf";
	[plane_1, getpos planespawn_1, getDir planespawn_1, ["plane"]] execVM "Training\VehicleRequest.sqf";
	[plane_2, getpos planespawn_2, getDir planespawn_2, ["plane"]] execVM "Training\VehicleRequest.sqf";

	DryRunTargets = compile preprocessFileLineNumbers "Training\DryRunTargets.sqf";
	dryLaptop addAction
	[
		"<t color='#fbbe16'>Activate Dry Course</t>",	// title
		{
			params ["_target", "_caller", "_actionId", "_arguments"]; // script
			[] remoteExec ["DryRunTargets",2];
		},
		nil,		// arguments
		1.5,		// priority
		true,		// showWindow
		true,		// hideOnUse
		"",			// shortcut
		"true",		// condition
		5,			// radius
		false,		// unconscious
		"",			// selection
		""			// memoryPoint
	];