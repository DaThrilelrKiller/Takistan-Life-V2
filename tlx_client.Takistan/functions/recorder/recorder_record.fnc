
_data = _this select 0;
_amount = _this select 1;
_variable = _this select 2;

_data = if (typeName _data == "CODE")then {call _data}else{_data};

_array = missionNamespace getVariable [_variable,[]];
_array set [count _array,_data];

[_variable,20]call array_trim;



