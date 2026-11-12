
Params ["_ActionBox","_SpawnPosition"];

_ActionBox addAction ["<img image='\a3\ui_f\data\igui\cfg\simpletasks\types\search_ca.paa'/> <t color='#ce2ef8'> Initiate Casualty Assessment</t>", {
	[((_this select 3) select 0),((_this select 3) select 1),selectRandom ["some","dead","lot","alot","fatal"],true,true,(_this select 1)] remoteExec ["MedicalPatient",2];
},[_ActionBox,_SpawnPosition],0.7];
_ActionBox addAction ["<img image='\a3\ui_f\data\igui\cfg\actions\heal_ca.paa'/> <t color='#ce2ef8'> Initiate Casualty Treatment</t>", {
	[((_this select 3) select 0),((_this select 3) select 1),"random",true,false,(_this select 1)] remoteExec ["MedicalPatient",2];
},[_ActionBox,_SpawnPosition],0.6];
_ActionBox addAction ["<t color='#fbed16'>Lost some blood</t>", {[((_this select 3) select 0),((_this select 3) select 1),"some",true,false,(_this select 1)] remoteExec ["MedicalPatient",2];},[_ActionBox,_SpawnPosition],0.5];
_ActionBox addAction ["<t color='#FFA500'>Lost a lot of blood</t>", {[((_this select 3) select 0),((_this select 3) select 1),"lot",true,false,(_this select 1)] remoteExec ["MedicalPatient",2];},[_ActionBox,_SpawnPosition],0.4];
_ActionBox addAction ["<t color='#ff5703'>Lost a very large amount of blood</t>", {[((_this select 3) select 0),((_this select 3) select 1),"alot",true,false,(_this select 1)] remoteExec ["MedicalPatient",2];},[_ActionBox,_SpawnPosition],0.3];
_ActionBox addAction ["<t color='#9c0303'>Lost a fatal amount of blood</t>", {[((_this select 3) select 0),((_this select 3) select 1),"fatal",true,false,(_this select 1)] remoteExec ["MedicalPatient",2];},[_ActionBox,_SpawnPosition],0.2];
_ActionBox addAction ["<t color='#000000'>Dead</t>", {[((_this select 3) select 0),((_this select 3) select 1),"dead",true,false,(_this select 1)] remoteExec ["MedicalPatient",2];},[_ActionBox,_SpawnPosition],0.1];
//_ActionBox addAction ["<t color='#FF0000'>Delete Patient", { { if(!isPlayer _X) then {deleteVehicle _X}} foreach (((_this select 3) select 0) nearEntities 10)},[_SpawnPosition]];
/*
waitUntil {sleep 1; _Unit getVariable ["AssessmentComplete",false] || _Unit getVariable ["AssessmentFailed",false]};
if(_Unit getVariable "AssessmentComplete" isEqualTo true) then {
	SystemChat "Complete";
} else {
    SystemChat "Failed";
};