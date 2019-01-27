private ["_return"];

_objs = (nearestobjects [getpos (vehicle player), ["Land_House_C_12_EP1"], 7]select 0);
_return = [false,true]select (!isNil "_objs");
_return

