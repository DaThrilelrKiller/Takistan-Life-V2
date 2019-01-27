private ["_cursor","_array","_return"];

_vehicle = vehicle player;
_cursor = cursorTarget;
_array = nearestObjects [getPos player, ["LandVehicle", "Air", "ship"], 7]select 0;

if (_vehicle != player)exitWith {_vehicle};
if (!isNull _cursor)exitWith {_cursor};
_array




