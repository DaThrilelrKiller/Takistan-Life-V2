
{
	if (!isNil format["%1_handleDamage",_x])then {
		_return = _this call call compile format["%1_handleDamage",_x];
	};
}count dtk_active_modules;

_return