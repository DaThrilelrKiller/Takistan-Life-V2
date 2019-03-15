{
	if (!isNil "_x")then {
	_x addaction ["","noscript.sqf","call atm_open;", 25, false, true, "LeanRight","player distance _target < 5 && {!([_target,'ATM (E)','data\images\misc\bank']call tag_show)}"];
	};
}ForEach dtk_atms;

call atm_markers;