
{
	if (!isNil format["%1_Respawn",_x] && {_x != "Setup"})then {
		_this spawn call compile format["%1_Respawn",_x];
	};
	true
}count dtk_active_modules;
