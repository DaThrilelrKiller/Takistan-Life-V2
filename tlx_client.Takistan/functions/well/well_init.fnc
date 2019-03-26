{
	_x addaction ["","noscript.sqf",'[]call well_menu;',25,false,true,"LeanRight","player distance _target < 5 && {!([_target,'Make a Wish (E)','data\images\tags\Gas pump.paa']call tag_show)}"];
} forEach (nearestobjects [dtk_center, ["Land_Misc_Well_C_EP1"], (dtk_center select 0)]);
