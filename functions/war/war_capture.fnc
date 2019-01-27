
_object = _this select 0;
_amount = _this select 1;
_unit = _this select 2;

_current = _object getVariable ["time",0];
_current = _current + _amount;
_current = if (_current < 0)then {0}else{_current};
_object setVariable ["time",_current];

if (_current > 600)exitWith {
	["ALL",[_object],"war_end",false,false]call network_MPExec;
};

_message = format ["Southern Goverment - %1/600 Northern Goverment - %2/600",SouthGov getVariable ["time",0],NorthGov getVariable ["time",0]];
[_unit,["true","Capturing Status",_message],"Main_Notification",false,false]call network_MPExec;
