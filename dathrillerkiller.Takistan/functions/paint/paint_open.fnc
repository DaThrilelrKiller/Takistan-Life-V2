if !((vehicle player)call paint_paintable)exitWith {
	titleText ["Sorry this vehicle is not paintable", "PLAIN"];
};

[]call paint_vehicle;

createDialog "Paint_shop";

sliderSetRange [11, 0, 1];
sliderSetSpeed [11, 0.10, 0.10];

sliderSetRange [12, 0, 1];
sliderSetSpeed [12, 0.10, 0.10];

sliderSetRange [10, 0, 1];
sliderSetSpeed [10, 0.10, 0.10];

_selections = getArray (configFile >> "CfgVehicles" >> paint_type >> "hiddenselections");
					
{
	_index	= lbAdd [1500, format["%1",_forEachIndex]];
	lbSetData [1500, _index, format["%1",_forEachIndex]];
} foreach _selections;				

	
							