﻿private ["_object","_data"];

_object = _this select 0;

_object = if (typeName _object != "STRING")then {_object}else{call compile _object};
_data = _this select 1;

_object addAction _data;