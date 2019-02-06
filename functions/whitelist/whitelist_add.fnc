
_unit = _this select 0;
_whitelist = _this select 1;
_value = _this select 2;

_uid = getPlayerUid _unit;
_name = name _unit;


[format["%1 - %2",_name,_uid], "Whitelist", _whitelist, _value] call s_statsave_write;