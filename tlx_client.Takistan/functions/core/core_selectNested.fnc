private ["_array","_selection"];

_array = _this select 0;
_selection = _this select 1;

if (isnil "_array")exitWith {nil};

{

	if (count _array < _x)exitWith {
		_array = nil;
	};
	_array = _array select _x;
	true
}count _selection;

_array