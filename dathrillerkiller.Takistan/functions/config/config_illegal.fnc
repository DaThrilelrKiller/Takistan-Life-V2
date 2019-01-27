private ["_return"];
_return = [_this call config_array,[5,3]]call core_selectNested;
_return = if (isNil "_return")then {false}else{_return};

_return