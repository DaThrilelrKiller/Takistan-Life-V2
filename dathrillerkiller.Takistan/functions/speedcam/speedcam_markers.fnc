private ["_marker"];

{
	_marker = createMarkerLocal [("speedcam_" + str _ForEachIndex), getPos _x];
	_marker setMarkerTypeLocal "mil_dot";
	_marker setMarkerColorLocal "colorBlack";
	_marker setMarkerTextlocal format ["Speedcam %1",_ForEachIndex];
	_marker setMarkerAlphaLocal 1;
}forEach speedcam_array;