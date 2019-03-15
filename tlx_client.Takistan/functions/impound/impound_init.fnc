if (dtk_server)exitWith{};

{
	_x addaction ["","noscript.sqf",'[] call impound_open;',25,false,true,"LeanRight","player distance _target < 5 && {!([_target,'Open Impound (E)','data\images\tags\Car']call tag_show)}"];
	[("impound_" + str _ForEachIndex),getPos _x,nil,nil,"ColorWhite","mil_dot",[1, 1],"Impound Point"]call core_createMarkerLocal;

}forEach dtk_impound_points;