private ["_near","_locations","_marker"];

v_oil_loc = [];

_near = 
{
	private ["_return","_object","_distance"];

	_object = _this select 0;
	_distance = _this select 1;

	_return = 
	{
		if (getMarkerPos _x distance getPos _object < _distance)exitWith {true};

	}forEach v_oil_loc;

	_return = [false,true]select !isNil "_return";
	_return
};




_locations = [];

{
	if !([_x,500]call _near)then {
		_marker = createMarkerLocal [("drill_" + str _ForEachIndex), getPos _x];
		_marker setMarkerTypeLocal "mil_dot";
		_marker setMarkerColorLocal "colorBlack";
		_marker setMarkerTextlocal "Oil Field";
		_marker setMarkerAlphaLocal 1;
		v_oil_loc set [count v_oil_loc,_marker];
	};
}ForEach (nearestobjects [dtk_center, ["Land_Ind_Oil_Pump_EP1","Land_Ind_Oil_Tower_EP1"], (dtk_center select 0)]);