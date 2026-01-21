
laptop3 addAction ["<t color='#00FF00'>Show/Hide Driver Courses</t>", { [[],{ if(DriverCourseShow == false) then {DriverCourseShow=True} else {DriverCourseShow=false}; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
//laptop3 addAction ["<t color='#00FF00'>Spawn Gunner Course</t>", { [[],{ null = [8] spawn GW_Fnc_spawnList; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
laptop3 addAction ["<t color='#00FF00'>Show/Hide Gunner Courses</t>", { [[],{ if(GunnerCourseShow == false) then {GunnerCourseShow=True} else {GunnerCourseShow=false}; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
laptop3 addAction ["<t color='#00FF00'>Show/Hide Berm Courses</t>", { [[],{ if(BermCourseShow == false) then {BermCourseShow=True} else {BermCourseShow=false}; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
//laptop3 addAction ["<t color='#00FF00'>Spawn Jackal Course</t>", { [[],{ T16=True; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];

repairdepot addAction ["<t color='#FF0000'>Damage Vehicle</t>", { [[],{ damage1 setHitPointDamage ["hitEngine", 1.0];damage1 setHitPointDamage ["HitLTrack", 1.0];damage1 setHitPointDamage ["HitLTrack", 1.0];damage1 setHitPointDamage ["HitGun", 1.0]; damage1 setHitPointDamage ["HitRTrack", 1.0]; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
