private ["_marker"];

{
	if (!isNil "_x")then {
	[("atm_" + str _ForEachIndex),getPos _x,nil,nil,"ColorGreen","mil_box",nil,format ["ATM %1",_ForEachIndex]]call core_createMarkerLocal;
	};
}forEach dtk_atms;