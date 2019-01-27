private ["_marker"];

{
	_marker = createMarkerLocal [("garage1_" + str _ForEachIndex), getPos _x];
	_marker setMarkerTypeLocal "mil_dot";
	_marker setMarkerColorLocal "colorBlack";
	_marker setMarkerTextlocal "Performance Shop";
	_marker setMarkerAlphaLocal 1;
}ForEach (nearestobjects [dtk_center, ["Land_House_C_12_EP1"], (dtk_center select 0)]);