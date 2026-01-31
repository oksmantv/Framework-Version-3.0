
laptop3 addAction ["<t color='#00FF00'>Show/Hide Driver Courses</t>", { [[],{ if(DriverCourseShow == false) then {DriverCourseShow=True} else {DriverCourseShow=false}; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
//laptop3 addAction ["<t color='#00FF00'>Spawn Gunner Course</t>", { [[],{ null = [8] spawn GW_Fnc_spawnList; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
laptop3 addAction ["<t color='#00FF00'>Show/Hide Gunner Courses</t>", { [[],{ if(GunnerCourseShow == false) then {GunnerCourseShow=True} else {GunnerCourseShow=false}; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
laptop3 addAction ["<t color='#00FF00'>Show/Hide Berm Courses</t>", { [[],{ if(BermCourseShow == false) then {BermCourseShow=True} else {BermCourseShow=false}; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
//laptop3 addAction ["<t color='#00FF00'>Spawn Jackal Course</t>", { [[],{ T16=True; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];

repairdepot addAction ["<t color='#FF0000'>Damage Vehicle</t>", { [[],{ damage1 setHitPointDamage ["hitEngine", 1.0];damage1 setHitPointDamage ["HitLTrack", 1.0];damage1 setHitPointDamage ["HitLTrack", 1.0];damage1 setHitPointDamage ["HitGun", 1.0]; damage1 setHitPointDamage ["HitRTrack", 1.0]; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];

{
	offensiveLaptop_1 addAction [
		format["<t color='#cd1344'>Spawn Strongpoint %1</t>", _X],
		{ 
			Params ["_Object","_Player","_ActionId","_Arguments"];
			_Arguments params ["_Number"];
			

			["OFFENSIVE DEPLOYMENTS","side",format["Strongpoint %1 Activated", _Number]] remoteExec ["OKS_fnc_Chat",0];
			
			// Get the trigger area for cleanup
			_triggerName = format ["StrongpointTrigger_%1", _Number];
			_trigger = missionNamespace getVariable _triggerName;
			
			if (!isNull _trigger) then {
				// Get all objects in trigger area
				_triggerPos = getPosATL _trigger;
				_triggerSize = triggerArea _trigger;
				_objectsInArea = _triggerPos nearEntities [["Man", "Car", "Tank", "Air", "Ship"], (_triggerSize select 0) max (_triggerSize select 1)];
				
				// Delete corpses, wrecks and enemy units/vehicles
				{
					if (!alive _x || side _x == EAST || side _x == INDEPENDENT && _x inArea _trigger) then {
						deleteVehicle _x;
					};
				} forEach _objectsInArea;
				
				// Also clean up any remaining dead bodies and vehicle wrecks
				{
					if (!alive _x && _x inArea _trigger) then {
						deleteVehicle _x;
					};
				} forEach (allDead select {_x distance _triggerPos <= ((_triggerSize select 0) max (_triggerSize select 1))});
			};
			_SpawnNumber = _Number + 10; // Offset to match spawn list
			[_SpawnNumber] spawn GW_Fnc_spawnList;
		},
		[_X],
		10,
		false,
		false,
		"",
		"",
		5
	];
} foreach [1,2,3,4,5,6,7,8,9];
