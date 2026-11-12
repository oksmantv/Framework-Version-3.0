// Global Commands
MedicalActions = compile preprocessFileLineNumbers "Training\Medical\MedicalActions.sqf";
MedicalDamage = compile preprocessFileLineNumbers "Training\Medical\MedicalDamage.sqf";
MedicalMassActions = compile preprocessFileLineNumbers "Training\Medical\MedicalMassActions.sqf";
MedicalMassPatients = compile preprocessFileLineNumbers "Training\Medical\MedicalMassPatients.sqf";
MedicalPatient = compile preprocessFileLineNumbers "Training\Medical\MedicalPatient.sqf";
MedicalQualificationActions = compile preprocessFileLineNumbers "Training\Medical\MedicalQualificationActions.sqf";
MedicalQualificationPatients = compile preprocessFileLineNumbers "Training\Medical\MedicalQualificationPatients.sqf";
MedicalAssessment = compile preprocessFileLineNumbers "Training\Medical\MedicalAssessment.sqf";
MedicalAssessmentActions = compile preprocessFileLineNumbers "Training\Medical\MedicalAssessmentActions.sqf";
MedicalTask = compile preprocessFileLineNumbers "Training\Medical\MedicalTask.sqf";
MedicalCPRCompleted = compile preprocessFileLineNumbers "Training\Medical\MedicalCPRCompleted.sqf";
MedicalDeadDiagnosis = compile preprocessFileLineNumbers "Training\Medical\MedicalDeadDiagnosis.sqf";
MedicalCardiacArrest = compile preprocessFileLineNumbers "Training\Medical\MedicalCardiacArrest.sqf";
MED_Team_Task = compile preprocessFileLineNumbers "Training\Medical\Team\MedicalTeamTask.sqf";
MED_Team_PlaySound = compile preprocessFileLineNumbers "Training\Medical\Team\MedicalTeamSound.sqf";
MED_Team_SpawnCasualties = compile preprocessFileLineNumbers "Training\Medical\Team\MedicalTeamCasualties.sqf";
MED_Team_SetupTargets = compile preprocessFileLineNumbers "Training\Medical\Team\MedicalTeamTargets.sqf";
MED_Team_Cleanup = compile preprocessFileLineNumbers "Training\Medical\Team\MedicalTeamCleanup.sqf";
call compile preprocessFileLineNumbers "Training\Medical\Team\MedicalTeamCourse.sqf";
execVM "Training\Medical\MedicalTreatmentEvents.sqf";

// Individual Exercise
[MedicalData_1,PatientSpawn_1] execVM "Training\Medical\MedicalActions.sqf";
[MedicalData_2,PatientSpawn_2] execVM "Training\Medical\MedicalActions.sqf";
[MedicalData_3,PatientSpawn_3] execVM "Training\Medical\MedicalActions.sqf";
[MedicalData_4,PatientSpawn_4] execVM "Training\Medical\MedicalActions.sqf";
[MedicalData_5,PatientSpawn_5] execVM "Training\Medical\MedicalActions.sqf";
[MedicalData_6,PatientSpawn_6] execVM "Training\Medical\MedicalActions.sqf";
[MedicalData_7,PatientSpawn_7] execVM "Training\Medical\MedicalActions.sqf";
[MedicalData_8,PatientSpawn_8] execVM "Training\Medical\MedicalActions.sqf";
[MedicalData_9,PatientSpawn_9] execVM "Training\Medical\MedicalActions.sqf";
//[MedicalData_10,PatientSpawn_10] execVM "Training\Medical\MedicalActions.sqf";
// Assessment - Merged into Medical Actions who hold both courses.
[TerminalAssess_1, SpawnAssess_1] execVM "Training\Medical\MedicalActions.sqf";
[TerminalAssess_2, SpawnAssess_2] execVM "Training\Medical\MedicalActions.sqf";
[TerminalAssess_3, SpawnAssess_3] execVM "Training\Medical\MedicalActions.sqf";
[TerminalAssess_4, SpawnAssess_4] execVM "Training\Medical\MedicalActions.sqf";

// Team Exercise
[MedicalData_11,PatientSpawn_11] execVM "Training\Medical\MedicalActions.sqf";
[MedicalData_12,PatientSpawn_12] execVM "Training\Medical\MedicalActions.sqf";
[MedicalData_13,PatientSpawn_13] execVM "Training\Medical\MedicalActions.sqf";

// Mass Tier 1 Casualty
[MedicalMass_1] execVM "Training\Medical\MedicalMassActions.sqf";

// Qualification Course
[MedicalQualificationData_1,MedicalQualificationSpawn_1,Barrier_1] execVM "Training\Medical\MedicalQualificationActions.sqf";
[MedicalQualificationData_2,MedicalQualificationSpawn_2,Barrier_2] execVM "Training\Medical\MedicalQualificationActions.sqf";
[MedicalQualificationData_3,MedicalQualificationSpawn_3,Barrier_3] execVM "Training\Medical\MedicalQualificationActions.sqf";
[MedicalQualificationData_4,MedicalQualificationSpawn_4,Barrier_4] execVM "Training\Medical\MedicalQualificationActions.sqf";
[MedicalQualificationData_5,MedicalQualificationSpawn_5,Barrier_5] execVM "Training\Medical\MedicalQualificationActions.sqf";
[MedicalQualificationData_6,MedicalQualificationSpawn_6,Barrier_6] execVM "Training\Medical\MedicalQualificationActions.sqf";
[MedicalQualificationData_7,MedicalQualificationSpawn_7,Barrier_7] execVM "Training\Medical\MedicalQualificationActions.sqf";
[MedicalQualificationData_8,MedicalQualificationSpawn_8,Barrier_8] execVM "Training\Medical\MedicalQualificationActions.sqf";

// Team medical combat course
private _medicalTeamConfiguration = [
	MedicalTeamSpawn_1,
	MedicalSpawn,
	MedicalTeamAO_1,
	[MedicalTeamCasualty_1_1, MedicalTeamCasualty_1_2, MedicalTeamCasualty_1_3, MedicalTeamCasualty_1_4],
	[
		MedicalTeamTarget_1_1, MedicalTeamTarget_1_2, MedicalTeamTarget_1_3, MedicalTeamTarget_1_4, MedicalTeamTarget_1_5,
		MedicalTeamTarget_1_6, MedicalTeamTarget_1_7, MedicalTeamTarget_1_8, MedicalTeamTarget_1_9, MedicalTeamTarget_1_10,
		MedicalTeamTarget_1_11, MedicalTeamTarget_1_12, MedicalTeamTarget_1_13, MedicalTeamTarget_1_14, MedicalTeamTarget_1_15
	],
	[MedicalTeamHunt_1_1, MedicalTeamHunt_1_2, MedicalTeamHunt_1_3, MedicalTeamHunt_1_4, MedicalTeamHunt_1_5, MedicalTeamHunt_1_6]
];
if (isServer) then {
	MedicalTeamTerminal_1 setVariable ["MED_Team_Configuration", _medicalTeamConfiguration, true];
};
MedicalTeamTerminal_1 addAction ["<t color='#26FF88'>Team Medical Course - Dry Run</t>", {[_this # 0, "Dry Run", _this # 1] remoteExec ["MED_Team_Start", 2]}, [], 1, true, true, "", "_target distance _this < 3"];
MedicalTeamTerminal_1 addAction ["<t color='#04F51F'>Team Medical Course - Level 1</t>", {[_this # 0, "Level 1", _this # 1] remoteExec ["MED_Team_Start", 2]}, [], 0.9, true, true, "", "_target distance _this < 3"];
MedicalTeamTerminal_1 addAction ["<t color='#F5D311'>Team Medical Course - Level 2</t>", {[_this # 0, "Level 2", _this # 1] remoteExec ["MED_Team_Start", 2]}, [], 0.8, true, true, "", "_target distance _this < 3"];
MedicalTeamTerminal_1 addAction ["<t color='#FF0000'>Team Medical Course - Level 3</t>", {[_this # 0, "Level 3", _this # 1] remoteExec ["MED_Team_Start", 2]}, [], 0.7, true, true, "", "_target distance _this < 3"];

private _medicalTeamConfiguration2 = [
	MedicalTeamSpawn_2,
	MedicalSpawn,
	MedicalTeamAO_2,
	[MedicalTeamCasualty_2_1, MedicalTeamCasualty_2_2, MedicalTeamCasualty_2_3, MedicalTeamCasualty_2_4],
	[
		MedicalTeamTarget_2_1, MedicalTeamTarget_2_2, MedicalTeamTarget_2_3, MedicalTeamTarget_2_4, MedicalTeamTarget_2_5,
		MedicalTeamTarget_2_6, MedicalTeamTarget_2_7, MedicalTeamTarget_2_8, MedicalTeamTarget_2_9, MedicalTeamTarget_2_10,
		MedicalTeamTarget_2_11, MedicalTeamTarget_2_12, MedicalTeamTarget_2_13, MedicalTeamTarget_2_14, MedicalTeamTarget_2_15
	],
	[MedicalTeamHunt_2_1, MedicalTeamHunt_2_2, MedicalTeamHunt_2_3, MedicalTeamHunt_2_4, MedicalTeamHunt_2_5, MedicalTeamHunt_2_6]
];
if (isServer) then {
	MedicalTeamTerminal_2 setVariable ["MED_Team_Configuration", _medicalTeamConfiguration2, true];
};
MedicalTeamTerminal_2 addAction ["<t color='#26FF88'>Team Medical Course - Dry Run</t>", {[_this # 0, "Dry Run", _this # 1] remoteExec ["MED_Team_Start", 2]}, [], 1, true, true, "", "_target distance _this < 3"];
MedicalTeamTerminal_2 addAction ["<t color='#04F51F'>Team Medical Course - Level 1</t>", {[_this # 0, "Level 1", _this # 1] remoteExec ["MED_Team_Start", 2]}, [], 0.9, true, true, "", "_target distance _this < 3"];
MedicalTeamTerminal_2 addAction ["<t color='#F5D311'>Team Medical Course - Level 2</t>", {[_this # 0, "Level 2", _this # 1] remoteExec ["MED_Team_Start", 2]}, [], 0.8, true, true, "", "_target distance _this < 3"];
MedicalTeamTerminal_2 addAction ["<t color='#FF0000'>Team Medical Course - Level 3</t>", {[_this # 0, "Level 3", _this # 1] remoteExec ["MED_Team_Start", 2]}, [], 0.7, true, true, "", "_target distance _this < 3"];


private _medicalTeamConfiguration3 = [
	MedicalTeamSpawn_3,
	MedicalSpawn,
	MedicalTeamAO_3,
	[MedicalTeamCasualty_3_1, MedicalTeamCasualty_3_2, MedicalTeamCasualty_3_3, MedicalTeamCasualty_3_4],
	[
		MedicalTeamTarget_3_1, MedicalTeamTarget_3_2, MedicalTeamTarget_3_3, MedicalTeamTarget_3_4, MedicalTeamTarget_3_5,
		MedicalTeamTarget_3_6, MedicalTeamTarget_3_7, MedicalTeamTarget_3_8, MedicalTeamTarget_3_9, MedicalTeamTarget_3_10,
		MedicalTeamTarget_3_11, MedicalTeamTarget_3_12, MedicalTeamTarget_3_13, MedicalTeamTarget_3_14, MedicalTeamTarget_3_15
	],
	[MedicalTeamHunt_3_1, MedicalTeamHunt_3_2, MedicalTeamHunt_3_3, MedicalTeamHunt_3_4, MedicalTeamHunt_3_5, MedicalTeamHunt_3_6]
];
if (isServer) then {
	MedicalTeamTerminal_3 setVariable ["MED_Team_Configuration", _medicalTeamConfiguration3, true];
};
MedicalTeamTerminal_3 addAction ["<t color='#26FF88'>Team Medical Course - Dry Run</t>", {[_this # 0, "Dry Run", _this # 1] remoteExec ["MED_Team_Start", 2]}, [], 1, true, true, "", "_target distance _this < 3"];
MedicalTeamTerminal_3 addAction ["<t color='#04F51F'>Team Medical Course - Level 1</t>", {[_this # 0, "Level 1", _this # 1] remoteExec ["MED_Team_Start", 2]}, [], 0.9, true, true, "", "_target distance _this < 3"];
MedicalTeamTerminal_3 addAction ["<t color='#F5D311'>Team Medical Course - Level 2</t>", {[_this # 0, "Level 2", _this # 1] remoteExec ["MED_Team_Start", 2]}, [], 0.8, true, true, "", "_target distance _this < 3"];
MedicalTeamTerminal_3 addAction ["<t color='#FF0000'>Team Medical Course - Level 3</t>", {[_this # 0, "Level 3", _this # 1] remoteExec ["MED_Team_Start", 2]}, [], 0.7, true, true, "", "_target distance _this < 3"];