
waitUntil {vehicle player == player and player != setup_vehicle};
setup_vehicle = player;

{
	if (!isNil format["%1_getOut",_x])then {
		call compile format["%1_getOut",_x];
	};
}count dtk_active_modules;

[]spawn setup_getOut;