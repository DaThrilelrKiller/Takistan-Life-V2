
waitUntil {vehicle player != player and (vehicle player) != setup_vehicle};
setup_vehicle = (vehicle player);

{
	if (!isNil format["%1_getin",_x])then {
		call compile format["%1_getin",_x];
	};
}count dtk_active_modules;

[]spawn setup_getIn;