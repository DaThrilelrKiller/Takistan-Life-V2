private ["_to","_name"];
_to = _this select 0;
_name = if (typeName _to == "STRING")then {_to}else{name _to};

["ALL",[player,format ["Excuted %1 on %2",_name,ctrlText 1400]],"admin_log",false,true]call network_MPExec;

if (typeName _to == "STRING" && {_to == "ALL"})then
{
	[_to,[],compile ctrlText 1400,false,true]call network_MPExec;
}
else
{
	[_to,[],compile ctrlText 1400,false,false]call network_MPExec;
};

v_admin_recents set [count v_admin_recents,ctrlText 1400];
profileNameSpace setVariable ["v_admin_recents",v_admin_recents];
[]call admin_console_recents;