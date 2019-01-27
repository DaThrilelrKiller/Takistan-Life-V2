private ["_object","_array"];

_object = _this select 0;
_array = _object getVariable ["dtk_actions",[]];

{
	_object removeAction (_x select 0);
}forEach _array;