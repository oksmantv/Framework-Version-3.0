/*

	Example:
	[triggerName,"SolidBorder","colorCivilian"] spawn OKS_CreateAreaMarkerOnTrigger;
	[triggerName,"Grid","ColorBlack"] execVM "Scripts\OKS_Task\OKS_Deliver_Supplies\OKS_CreateAreaMarkerOnTrigger.sqf";


	Brush Types:
	"Solid"
	"SolidFull" (A3 only)
	"Horizontal"
	"Vertical"
	"Grid"
	"FDiagonal"
	"BDiagonal"
	"DiagGrid"
	"Cross"
	"Border" (Not present in A1)
	"SolidBorder" (Not present in A1)

	Colors:
	ColorBlack	
	ColorGrey	
	ColorRed	
	ColorBrown	
	ColorOrange
	ColorYellow	
	ColorKhaki
	ColorGreen	
	ColorBlue	
	ColorPink	
	ColorWhite	
	ColorUNKNOWN	
	colorBLUFOR	
	colorOPFOR	
	colorIndependent
	colorCivilian

 */

Params ["_Trigger","_Brush","_Color"];
Private ["_Shape"];

_Array = triggerArea _Trigger;
_Array params ["_X","_Y","_Dir","_IsRectangle"];

if(_IsRectangle) then {
	_Shape = "RECTANGLE";
} else {
	_Shape = "ELLIPSE";
};

_MarkerId = format["AreaTriggerMarker_%1",_Trigger];
_AreaMarker = createMarker [_MarkerId, _Trigger];
_AreaMarker setMarkerSize [_X,_Y];
_AreaMarker setMarkerDir _Dir;
_AreaMarker setMarkerShape _Shape;
_AreaMarker setMarkerBrush _Brush;
_AreaMarker setMarkerColor _Color;