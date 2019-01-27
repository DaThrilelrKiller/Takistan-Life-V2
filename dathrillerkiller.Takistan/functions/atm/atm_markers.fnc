private ["_marker"];

{
	_marker = createMarkerLocal [("atm_" + str _ForEachIndex), getPos _x];
	_marker setMarkerTypeLocal "mil_box";
	_marker setMarkerColorLocal "ColorGreen";
	_marker setMarkerTextlocal format ["ATM %1",_ForEachIndex];
	_marker setMarkerAlphaLocal 1;
}forEach (nearestobjects [dtk_center, ["Misc_cargo_cont_tiny"], (dtk_center select 0)]);