private ["_return"];
{
if (_this == (_x select 0))exitWith {_return = _x};
}count inv_apps;
_return;