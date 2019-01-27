dtk_hunger = dtk_hunger + 1;

{
	if (dtk_hunger == (_x select 0))then {
		call (_x select 1);
		true
	};
	true
}count dtk_hunger_config;

true