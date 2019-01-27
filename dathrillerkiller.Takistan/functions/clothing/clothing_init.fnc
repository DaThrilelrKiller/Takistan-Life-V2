if (dtk_server)exitWith {};

private ["_name","_condition","_class","_index"];

{
	_name = (_x select 0);
	_class = (_x select 1);
	_condition = (_x select 2);
	{
		_x addaction [format ["Switch To %1",_name],"noscript.sqf", format ['["%1"] call clothing_switch;',_class], 1, false, true, "", format ["typeOf player != '%2' && %1",_condition,_class]];
		true
	}count (_x select 3);
	true
}forEach v_clothing_actions;