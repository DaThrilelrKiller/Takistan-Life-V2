private ["_uid","_array","_side","_name","_value","_unit","_log"];

_unit = (_this select 0);
_uid = if ((typeName _unit) == "STRING")then {_unit}else{getPlayerUID _unit};
_array = _this select 1;

{
	_side = _x select 0;
	_name = _x select 1;
	_value = _x select 2;
	
	if(count (toarray(format["%1", _value])) > 8080) then {
		_log = format["Datebase: write failed %1 %2 data too big > 8K", _name];
		[_unit,["dtk_client",_log,3],"network_chat",false,false]call network_mpexec;
	}
	else
	{
		[_uid, _side, _name, _value] call s_statsave_write;
	};
}ForEach _array;