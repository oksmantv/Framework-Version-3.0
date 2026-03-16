if(isServer) then {

	// Initialize all tasks
	[true, "task_0", ["", "Operation Tracked Circle", ""], nil, "ASSIGNED", 5, true, "attack"] call BIS_fnc_taskCreate;
	[true, ["task_1","task_0"], ["", "Destroy Artillery", ""], nil, "CREATED", 2, true, "destroy"] call BIS_fnc_taskCreate;
	[true, ["task_2","task_0"], ["", "Destroy MLRS", ""], nil, "CREATED", 2, true, "danger"] call BIS_fnc_taskCreate;
	[true, ["task_3","task_0"], ["", "Destroy Radars", ""], nil, "CREATED", 2, true,"destroy"] call BIS_fnc_taskCreate;
	[true, ["task_4","task_0"], ["", "Destroy Mortars", ""], nil, "CREATED", 2, true,  "destroy"] call BIS_fnc_taskCreate;
	[true, ["task_5","task_0"], ["", "Destroy SCUDs", ""], nil, "CREATED", 2, true, "truck"] call BIS_fnc_taskCreate;

	[DestroyObject_1,nil,nil,nil,"truck","task_5",false,true] spawn OKS_fnc_Destroy_Task;
	[DestroyObject_2,nil,nil,nil,"truck","task_5",false,true] spawn OKS_fnc_Destroy_Task;
	[DestroyObject_3,nil,nil,nil,"truck","task_5",false,true] spawn OKS_fnc_Destroy_Task;
	[arty_1,nil,nil,nil,"destroy","task_1",false,true] spawn OKS_fnc_Destroy_Task;
	[arty_2,nil,nil,nil,"destroy","task_1",false,true] spawn OKS_fnc_Destroy_Task;
	[arty_3,nil,nil,nil,"destroy","task_1",false,true] spawn OKS_fnc_Destroy_Task;
	[arty_4,nil,nil,nil,"destroy","task_1",false,true] spawn OKS_fnc_Destroy_Task;
	[arty_5,nil,nil,nil,"destroy","task_1",false,true] spawn OKS_fnc_Destroy_Task;
	[AA_1,nil,nil,nil,"danger","task_2",false,true] spawn OKS_fnc_Destroy_Task;
	[AA_2,nil,nil,nil,"danger","task_2",false,true] spawn OKS_fnc_Destroy_Task;
	[aa_3,nil,nil,nil,"danger","task_2",false,true] spawn OKS_fnc_Destroy_Task;
	[AA_4,nil,nil,nil,"danger","task_2",false,true] spawn OKS_fnc_Destroy_Task;
	[AA_5,nil,nil,nil,"danger","task_2",false,true] spawn OKS_fnc_Destroy_Task;
	[radar_1,nil,nil,nil,"destroy","task_3",false,true] spawn OKS_fnc_Destroy_Task;
	[radar_2,nil,nil,nil,"destroy","task_3",false,true] spawn OKS_fnc_Destroy_Task;
	[mortar_1,nil,nil,nil,"destroy","task_4",false,true] spawn OKS_fnc_Destroy_Task;
	[mortar_2,nil,nil,nil,"destroy","task_4",false,true] spawn OKS_fnc_Destroy_Task;
	[mortar_3,nil,nil,nil,"destroy","task_4",false,true] spawn OKS_fnc_Destroy_Task;

	[Destroy_1,false,[8,10]] spawn OKS_fnc_Destroy_Houses; sleep 5;
	[Destroy_2,false,[8,10]] spawn OKS_fnc_Destroy_Houses; sleep 5;
	[Destroy_3,false,[8,10]] spawn OKS_fnc_Destroy_Houses; sleep 5;
	[Destroy_4,false,[8,10]] spawn OKS_fnc_Destroy_Houses; sleep 5;
	[Destroy_5,false,[8,10]] spawn OKS_fnc_Destroy_Houses; sleep 5;
};