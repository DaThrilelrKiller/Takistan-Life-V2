private ["_log","_unit","_name"];

_unit = _this select 0;
_log = _this select 1;
_name = if (typename _unit == "STRING")then{""}else{name _unit};


_msg = format ["%1 %2|%3",_unit,_name,_log];

if (dtk_server)then {
	"debug_console" callExtension (_msg + "#1001")
}else{
	if !(Developer)exitWith {};
	systemchat _msg;
};