{
	_x addaction ["","noscript.sqf","call atm_open;", 25, false, true, "LeanRight","player distance _target < 5 && {!([_target,'ATM (E)','data\images\misc\bank']call tag_show)}"];
}ForEach (nearestobjects [dtk_center, ["Misc_cargo_cont_tiny"], (dtk_center select 0)]);

call atm_markers;