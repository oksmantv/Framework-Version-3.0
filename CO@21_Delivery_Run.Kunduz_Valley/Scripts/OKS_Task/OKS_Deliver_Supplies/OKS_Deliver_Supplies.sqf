
/*
	[DeliveryTrigger_1, "water", 1, "DeliveryTask_1", "Delivery to Village", "Deliver Water"] execVM "Scripts\OKS_Task\OKS_Delivery_Supplies.sqf";
	[DeliveryTrigger_1, "food", 1, "DeliveryTask_1", "Delivery to Village", "Deliver Food"] spawn OKS_Delivery_Supplies;
*/

Params [
	["_SupplyDestinationTrigger", ObjNull, [ObjNull]],
	["_Type","ammo",[""]],
	["_Amount",1,[0]],
	["_ParentTask","OKS_Delivery_MainTask",[""]],
	["_ParentObjectiveName", "Delivery to Area",[""]],
	["_SubObjectiveName", "Deliver Ammo",[""]],
	["_MarkerColor","colorCivilian",[""]],
	["_MarkerBrush","SolidBorder",[""]]	
];
Private ["_Class"];

switch (_Type) do {
	case "ammo": {
		_Class = "CargoNet_01_box_F";
	};
	case "water": {
		_Class = "Land_WaterBottle_01_stack_F";
	};
	case "food": {
		_Class = "Land_FoodSacks_01_large_brown_idap_F";
	};
	case "fuel": {
		_Class = "CargoNet_01_barrels_F";
	};
	default {
		if (true) exitWith {
			systemChat "Exited Delivery Task. Type not found.";
		};
	};
};

if(!([_ParentTask] call BIS_fnc_taskExists)) then {
	[true, _ParentTask, [format["You have been tasked to deliver supplies to this area. Check the sub-tasks for the required supplies.",null], _ParentObjectiveName, "Drop Off"], getPos _SupplyDestinationTrigger,"CREATED",1,true, "truck"] call BIS_fnc_taskCreate;

	[_SupplyDestinationTrigger,_MarkerBrush,_MarkerColor] spawn OKS_CreateAreaMarkerOnTrigger;

	_ParentTask spawn {	
		waitUntil {
			sleep 1;
			_childTasks = _this call BIS_fnc_taskChildren;
			{_X call BIS_fnc_taskCompleted} count _childTasks == count _childTasks
		};
		[_this,"SUCCEEDED"] call BIS_fnc_taskSetState;
	};
};

_TaskId = format["OKS_Delivery_SecondaryTask_%1",random 9999];
[true, [_TaskId,_ParentTask],  [format["You have been tasked to deliver %1 units of %2 to this area.",_Amount,_Type], format["%1: %2",_SubObjectiveName,_Amount], "Drop Off"], nil,"CREATED",1, false, "box"] call BIS_fnc_taskCreate;

waitUntil {
	sleep 10;
	count ((list _SupplyDestinationTrigger) select {_x isKindOf _Class && isNull (attachedTo _x)}) == _Amount
};
{
	[_X, false] call ace_dragging_fnc_setDraggable;
	[_X, false] call ace_dragging_fnc_setCarryable;
} foreach ((list _SupplyDestinationTrigger) select {_x isKindOf _Class});
[_TaskId,"SUCCEEDED"] call BIS_fnc_taskSetState;
