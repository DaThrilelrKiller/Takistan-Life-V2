
{
	if (!isNil format["%1_killed",_x])then {
		call call compile format["%1_killed",_x];
	};
}count dtk_active_modules;