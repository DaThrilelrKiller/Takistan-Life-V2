
dtk_server_modules = dtk_server_modules - ["setup"];

{
	if (!isNil format["S_%1_init",_x] && {_x != "Setup"})then {
		call call compile format["s_%1_init",_x];
		diag_log formatText ["Module Setup - %1",_x];
	};
}count dtk_server_modules