private ["_vehicle"];

_vehicle = player;
waitUntil {vehicle player != player and (vehicle player) != _vehicle};
_vehicle = (vehicle player);
[player]call action_removeAll;
waitUntil {vehicle player == player and player != _vehicle};
[player]call action_addAll;
[]spawn action_handler;
