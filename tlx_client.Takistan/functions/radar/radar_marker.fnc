	
_postion = position (_this select 0);
_name = format ["%1%2",_this select 2,_this select 1];

_marker = createMarkerLocal [_name,_postion];
_marker setMarkerTypeLocal (_this select 3);
_marker setMarkerPosLocal _postion;
_marker setMarkerColorLocal("ColorRed");