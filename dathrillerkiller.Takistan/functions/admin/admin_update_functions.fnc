
{
	
	_functions = call compile preprocessFile format ["functions\%1\_module.functions",_x];
	_module = _x;
	{
		systemchat format['%1_%2',_module,_x];
		lbAdd [1501, format['%1_%2',_module,_x]];
	}forEach _functions;
}forEach dtk_active_modules;
