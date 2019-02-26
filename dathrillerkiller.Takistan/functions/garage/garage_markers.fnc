private ["_marker","_type","_color"];

{
	if (paint_true)then {
		paint_true = false;
		_type = "Paint Shop";
		_color = "ColorOrange";
	}else{
		paint_true = true;
		_type = "Performance Shop";
		_color = "ColorYellow";
	
	};
	
	_x setVariable ["type",_color];
	
	[("garage1_" + str _ForEachIndex),getPos _x,nil,nil,_color,"mil_dot",nil,_type]call core_createMarkerLocal;
}ForEach (nearestobjects [dtk_center, ["Land_House_C_12_EP1"], (dtk_center select 0)]);