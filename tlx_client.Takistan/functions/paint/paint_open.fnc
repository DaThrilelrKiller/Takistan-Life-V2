if !((vehicle player)call paint_paintable)exitWith {
	titleText ["Sorry this vehicle is not paintable", "PLAIN"];
};

[]call paint_vehicle;

dtk_paint = [];
dtk_default = [];

createDialog "Paint_shop";

sliderSetRange [11, 0, 1];
sliderSetSpeed [11, 0.10, 0.10];

sliderSetRange [12, 0, 1];
sliderSetSpeed [12, 0.10, 0.10];

sliderSetRange [10, 0, 1];
sliderSetSpeed [10, 0.10, 0.10];

_selections = getArray (configFile >> "CfgVehicles" >> paint_type >> "hiddenselectionsTextures");

{
	lbAdd [2100,_x];
}foreach dtk_formats;


{
	_index	= lbAdd [1500, format["%1",_forEachIndex]];
	dtk_paint set [_forEachIndex,""];
	dtk_default set [_forEachIndex,_x];
} foreach _selections;		

paint_unit call paint_current;	

lbSetCurSel [1500, 0];	
	
							