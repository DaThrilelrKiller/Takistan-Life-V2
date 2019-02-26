
_unit = _this select 0;
_house = _this select 1;

["Houses", _house, "Owner", getPlayerUid _unit] call s_statsave_write;
["Houses", _house, "Name", name _unit] call s_statsave_write;

_house setMarkerAlpha 1;
_house setMarkerText format ["%1's House", name _unit];
