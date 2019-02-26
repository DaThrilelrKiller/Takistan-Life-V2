call compile preprocessFile '\MPMissions\mission.sqf';

private ["_modules","_functions"];
PG_SSF = [];

dtk_server_modules = 
[
"Statsave",
"OwlEye",
"Robbery",
"Setup",
"Gang",
"Impound",
"Core",
"Disconnect",
"Hunting",
"Zone",
"Whitelist",
"House"
];

/*loads module functions*/ 
{
	call compile preprocessFile format ["\MPMissions\functions\%1\_module.variables", _x ];
	_functions = call compile preprocessFile format["\MPMissions\functions\%1\_module.functions", _x];
	_module = _x;
	{
		_name = _x select 0;
		_client = _x select 1;
		if (_client)then
		{
			call compile format['%1_%2 = compile preprocessFile "\MPMissions\functions\%1\%1_%2.fnc";PG_SSF set[count PG_SSF,"%1_%2"];',_module,_name];
		}
		else
		{
			call compile format['S_%1_%2 = compile preprocessFile "\MPMissions\functions\%1\%1_%2.fnc";',_module,_name];
		};
	}forEach _functions;
}count dtk_server_modules;