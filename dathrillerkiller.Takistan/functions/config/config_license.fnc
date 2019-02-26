private ["_return"];
_return = [(_this select 0) call config_array,[4,(_this select 1)]]call core_selectNested;
_return = if (isNil "_return")then {""}else{_return};
_return
