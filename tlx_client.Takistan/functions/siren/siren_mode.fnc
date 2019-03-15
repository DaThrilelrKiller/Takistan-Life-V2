private ["_mode"];

if ((vehicle player) == player)exitWith {};

_mode = (vehicle player) getVariable ["ar_siren_mode","Manual"];
_mode