[]spawn 
{
waitUntil {time > 0};
private ["_pos","_rb4h"];

	{
		_pos = profileNamespace getVariable [format["%1",_x],dtk_center];
		_rb4h = _pos nearestObject _x;
		profileNamespace setVariable [format["%1",_x],getPos _rb4h];
		
		_rb4h attachTo [MapCleanObjects, [0, 0, 0]];
		_rb4h allowDamage false;
		detach _rb4h;
	}forEach removeBuilgings;
};