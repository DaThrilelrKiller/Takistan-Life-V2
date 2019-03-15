
if (vehicle player == player)exitWith {};

_objs = (nearestobjects [getpos (vehicle player), ["Land_House_C_12_EP1"], 7]select 0);

if (!isNil "_objs")then {
	_type = _objs getVariable ["type","ColorYellow"]; 
	if (_type == "ColorOrange")then {
		[]call paint_open;
	}else{
		[ (dtkgarage call shops_index)]call shops_open;
	};

};

true