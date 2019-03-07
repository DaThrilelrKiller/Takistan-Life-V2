{
	_x addaction ["","noscript.sqf",'call fuel_fill;',25,false,true,"LeanRight","player distance _target < 5 && {!([_target,'Make a Wish (E)','data\images\tags\Gas pump']call tag_show)}"];
} forEach (nearestobjects [dtk_center, ["Land_Misc_Well_C_EP1"], (dtk_center select 0)]);
