diag_log text "[LOG]Pre Initialization started!";
dtk_client = hasInterface;
dtk_server = !dtk_client;

if (dtk_server)then {
	call compile preprocessFile "\MPMissions\functions\pre_init.sqf";
};

call compile preprocessFile "functions\spawn_points.sqf";
call compile preprocessFile "configuration\CfgFunctions.fnc";
call compile preprocessFile  "scripts\miscfunctions.sqf";
call compile preprocessFile "configuration\CfgMaster.sqf";
call compile preprocessFile "configuration\CfgShops.sqf";

private ["_modules","_functions"];
dtk_fnc_total = 0;

dtk_active_modules = 
[
"Music",
"Network",
"Core",
"Action",
"Keypress",
"Config",
"Array",
"BIS",
"Storage",
"Shops",
"Goverment",
"Border",
"Licenses",
"Roads",
"ID",
"Bike",
"Chat",
"Impound",
"Markers",
"Siren",
"Checkpoint",
"Admin",
"Police",
"Cdb",
"War",
"Plates",
"Cuffs",
"Dog",
"Holster",
"String",
"Shipment",
"Quest",
"Locations",
"Setup",
"ATM",
"Medical",
"Gear",
"Robbery",
"Speedcam",
"Fuel",
"Oil",
"Ipad",
"Keys",
"Garage",
"Clothing",
"Slots",
"GPS",
"Dance",
"Statsave",
"Gang",
"Vehicle",
"Hunger",
"Tag",
"Flashbang",
"Fingerprints",
"Hud",
"killfeed",
"Mounted",
"Spawn"
];

/*loads module functions*/
{
	call compile preprocessFile format["functions\%1\_module.variables",_x];
	_functions = call compile preprocessFile format ["functions\%1\_module.functions",_x];
	_module = _x;
	{
		call compile format['
		%1_%2 = compile preprocessFile "functions\%1\%1_%2.fnc";
		',_module,_x];
		dtk_fnc_num = _forEachIndex + 1;
	}forEach _functions;
	diag_log formatText ["Loaded Module - %1 With %2 Functions",_module,dtk_fnc_num];
	dtk_fnc_total = dtk_fnc_total + dtk_fnc_num;
}count dtk_active_modules;


diag_log formatText ["Total Modules: %2 Total Functions: %1",dtk_fnc_total,count dtk_active_modules];
diag_log text "[LOG]Pre Initialization finished!";
