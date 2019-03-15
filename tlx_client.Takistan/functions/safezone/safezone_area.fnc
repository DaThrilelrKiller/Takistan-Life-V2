_area = {
	_marker = _x select 0 select 0;
	_distance = _x select 0 select 2;
	if (player distance (getMarkerPos _marker) <= _distance)exitWith {
		_x
	};
	[]
}forEach dtk_safezones;