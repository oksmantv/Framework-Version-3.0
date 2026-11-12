params ["_object"];

if (isNil "MED_MASS_READY") then {
	publicVariable "MED_MASS_READY";
};

_object addAction ["<t color='#3393bd'>--Mass Casualty T1 Generator--</t>", {}, [], 0.9];
_object addAction ["<t color='#00FF00'>---</t>", {}, [], 0.8];
_object addAction ["<t color='#00FF00'>Enable Foliage</t>", {[-1, MedicalMass_1] remoteExec ["MedicalMassPatients",2];}, [], 0.7];
_object addAction ["<t color='#00FF00'>Disable Foliage</t>", {[-2, MedicalMass_1] remoteExec ["MedicalMassPatients",2];}, [], 0.6];
_object addAction ["<t color='#00FF00'>---</t>", {}, [], 0.5];
_object addAction ["<t color='#e3e017'>2 Casualties</t>", {[2, MedicalMass_1] remoteExec ["MedicalMassPatients",2];}, [], 0.4];
_object addAction ["<t color='#FFA500'>3 Casualties</t>", {[3, MedicalMass_1] remoteExec ["MedicalMassPatients",2];}, [], 0.3];
_object addAction ["<t color='#ff5703'>4 Casualties</t>", {[4, MedicalMass_1] remoteExec ["MedicalMassPatients",2];}, [], 0.2];
_object addAction ["<t color='#9c0303'>5 Casualties</t>", {[5, MedicalMass_1] remoteExec ["MedicalMassPatients",2];}, [], 0.1];