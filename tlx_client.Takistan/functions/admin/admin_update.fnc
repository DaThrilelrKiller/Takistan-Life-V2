private ["_to"];
_to = _this select 0;
_function = lbText [1501, (lbCurSel 1501)];
_code = compile ctrlText 1400;

missionNamespace setVariable [_function,_code];

if (typeName _to == "STRING" && {_to == "ALL"})then
{
	[_to,[_function,_code],{},false,true]call network_MPExec;
}
else
{
	[_to,[_function,_code],{},false,false]call network_MPExec;
};

systemchat format ["%1 Updated - %2",name player,_function];
