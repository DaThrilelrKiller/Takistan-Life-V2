private ["_data","_name","_position","_radius","_dispalyname"];

{
	_data = _x select 0;
	_name = _data select 0;
	_position = _data select 1;
	_radius = _data select 2;
	_dispalyname = _x select 3;

	[_name,_position,nil,"ELLIPSE","ColorWhite","Empty",[_radius, _radius],nil]call core_createMarkerLocal;
	[format["mine_%1",_name],_position,nil,nil,"ColorWhite","mil_circle",nil,_dispalyname]call core_createMarkerLocal;

}forEach dtk_mining;