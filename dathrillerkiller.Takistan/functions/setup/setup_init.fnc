dtk_active_modules = dtk_active_modules - ["setup"];

{
	if (!isNil format["%1_init",_x] && {_x != "Setup"})then {
		call call compile format["%1_init",_x];
		diag_log formatText ["Module Setup - %1",_x];
	};
}count dtk_active_modules;

diag_log text "Modules Done!";


if (dtk_client)then{
/* player addEventHandler ["killed", {_this call setup_killed}]; */
player addEventHandler ["respawn", {_this call setup_respawn; _this}]; 
/* player addEventHandler ["handleDamage", {_this call setup_handleDamage}]; */
player addEventHandler ["fired", {_this call setup_fired}];
};