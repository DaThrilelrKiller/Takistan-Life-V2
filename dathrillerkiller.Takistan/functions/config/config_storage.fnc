private ["_return"];
_return = [_this call config_array,[4]]call core_selectNested;
_return = _return select (count _return)-1;

_return = if (isNil "_return")then {0}else{_return};
_return