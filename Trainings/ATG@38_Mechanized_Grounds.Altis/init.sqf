	if(isServer) then {
		DriverCourseShow=false;
		GunnerCourseShow=false;
		BermCourseShow=false;
	};	

	[] execVM "scripts\AddActions.sqf";
	OKS_SpawnEnemyVehicle = compile preprocessFileLineNumbers "Scripts\OKS_SpawnEnemyVehicle.sqf";
	execVM "Scripts\BermActions.sqf";

	[helo_1, getpos helospawn_1, getDir helospawn_1, ["helicopter"]] execVM "Training\VehicleRequest.sqf";
	[helo_2, getpos helospawn_2, getDir helospawn_2, ["helicopter"]] execVM "Training\VehicleRequest.sqf";
	[helo_3, getpos helospawn_3, getDir helospawn_3, ["helicopter"]] execVM "Training\VehicleRequest.sqf";
	[plane_1, getpos planespawn_1, getDir planespawn_1, ["plane"]] execVM "Training\VehicleRequest.sqf";
	[plane_2, getpos planespawn_2, getDir planespawn_2, ["plane"]] execVM "Training\VehicleRequest.sqf";
	[plane_3, getpos planespawn_3, getDir planespawn_3, ["plane"]] execVM "Training\VehicleRequest.sqf";
