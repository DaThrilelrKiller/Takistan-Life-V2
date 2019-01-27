
{
	if (!isNil format["%1_fired",_x] && {_x != "Setup"})then {
		_this call call compile format["%1_fired",_x];
	};
	true
}count dtk_active_modules;