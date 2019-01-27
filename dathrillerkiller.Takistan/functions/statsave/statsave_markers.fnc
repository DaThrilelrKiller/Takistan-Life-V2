private ["_marker"];

if (dtk_client)then {
	{
		_marker = createMarkerLocal [("save_" + str _ForEachIndex), getPos _x];
		_marker setMarkerTypeLocal "mil_dot";
		_marker setMarkerColorLocal "colorRed";
		_marker setMarkerTextlocal "Vehicle Save Point";
		_marker setMarkerAlphaLocal 1;
		v_save_locs set [count v_save_locs,_marker];
	}ForEach (nearestobjects [dtk_center, ["Land_Ind_Garage01_EP1"], (dtk_center select 0)]); 
};