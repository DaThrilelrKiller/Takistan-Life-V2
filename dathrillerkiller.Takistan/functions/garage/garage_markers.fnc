private ["_marker"];

{
	[("garage1_" + str _ForEachIndex),getPos _x,nil,nil,"colorBlack","mil_dot",nil,"Performance Shop"]call core_createMarkerLocal;
}ForEach (nearestobjects [dtk_center, ["Land_House_C_12_EP1"], (dtk_center select 0)]);