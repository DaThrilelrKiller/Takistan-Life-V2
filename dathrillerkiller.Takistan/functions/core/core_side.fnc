private ["_return"];

if (_this == player)exitWith {
	dtk_side
};

_return = (_this getVariable ["side","UNKNOWN"]);
_return