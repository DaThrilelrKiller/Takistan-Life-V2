private ["_current","_data","_postion","_xplayer","_pos","_xpos","_subtract"];

_current = 1000;
_postion = (_this select 0);
_postion = if (typeName _postion == "STRING")then{getMarkerPos _postion}else{getPos _postion};

_xplayer = round(_postion select 0);

_data = {
	if (_x select 4 == "ColorBlue")then {
		_pos = _x select 0;
		_xpos = round (_pos select 0);
		
		_subtract = abs(_xplayer-_xpos);

		if (_subtract < _current)then {
			_current = _subtract;
			_data = _x;
		};
	};
	_data
}forEach border_array;

_y = _data select 0 select 1;
_yplayer = _postion select 1;

_nation = if (_yplayer < _y)then{"South"}else{"North"};