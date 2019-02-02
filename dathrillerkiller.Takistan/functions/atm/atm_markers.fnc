private ["_marker"];

{
	[("atm_" + str _ForEachIndex),getPos _x,nil,nil,"ColorGreen","mil_box",nil,format ["ATM %1",_ForEachIndex]]call core_createMarkerLocal;
}forEach (nearestobjects [dtk_center, ["Misc_cargo_cont_tiny"], (dtk_center select 0)]);