/*again server side to prevent bitches from stealing my code, your wellcome it is open source*/
private ["_player","_gang","_gangArea","_action","_gangarea1"];

_player = _this select 0;
_gang = _this select 1;
_gangArea = _this select 2;
_action = _this select 3;

if (_gangarea==gangarea1) then {_gangarea1 = "West Side";};
if (_gangarea==gangarea2) then {_gangarea1 = "Little Havana";};
if (_gangarea==gangarea3) then {_gangarea1 = "East side";};

["ALL",[_player,"AinvPknlMstpSlayWrflDnon_medic"],"network_SwitchMove",false,false]call network_MPExec;
waituntil {animationstate _player != "AinvPknlMstpSlayWrflDnon_medic"};
sleep 5;
["ALL",[_player," "],"network_SwitchMove",false,false]call network_MPExec;

switch(_action)do
{
	case "neutralise":
	{
		_gangArea setpos [getpos _gangArea select 0, getpos _gangArea select 1, -3];
		sleep 1;
		["ALL",["dtk_civ","Gang Alert",format["%1 has been neutralised by %2!", _gangarea1, _gang]],"Main_Notification",true,false]call network_MPExec;
	};
	case "capture":
	{
		_gangArea setpos [getpos _gangArea select 0, getpos _gangArea select 1, 0];
		sleep 1;
		_gangArea setvariable["control", _gang, true];

		["ALL",["dtk_civ","Gang Alert",format["%1 has been captured by %2!", _gangarea1, _gang]],"Main_Notification",true,false]call network_MPExec;
	};
};