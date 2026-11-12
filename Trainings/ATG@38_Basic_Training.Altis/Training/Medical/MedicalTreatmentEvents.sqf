if (!hasInterface || {!isNil "MED_TreatmentEventsRegistered"}) exitWith {};
MED_TreatmentEventsRegistered = true;

["ace_treatmentSucceded", {
    params ["_medic", "_patient", "", "_treatmentClass"];

    if (_treatmentClass isEqualTo "CPR" && {_patient getVariable ["MED_CPRRequired", false]}) then {
        [_patient, _medic] remoteExec ["MedicalCPRCompleted", 2];
    };

    if (
        (_patient getVariable ["MED_RequiresDiagnosis", false])
        && {_medic isEqualTo (_patient getVariable ["MED_DeadDiagnosisPlayer", objNull])}
        && {_treatmentClass in ["Diagnose", "CheckPulse", "CheckBloodPressure", "CheckResponse"]}
    ) then {
        [_patient, _medic] remoteExec ["MedicalDeadDiagnosis", 2];
    };
}] call CBA_fnc_addEventHandler;
