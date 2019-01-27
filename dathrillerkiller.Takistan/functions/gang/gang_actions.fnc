

{
	_x addaction ["Neutralise Flag","noscript.sqf",format ['["SERVER",[player,(player call gang_name),%1,"neutralise"],"S_gang_capture",true,false]call network_MPExec;',_x],1,false,true,"",format ['_control = %1 getvariable "control"; _control != (player call gang_name) && {!pickingup}',_x]];
	_x addaction ["Capture Flag","noscript.sqf",format ['["SERVER",[player,(player call gang_name),%1,"capture"],"S_gang_capture",true,false]call network_MPExec;',_x],1,false,true,"",format[' !pickingup && {getpos %1 select 2 < 0} && {(player call gang_name) != ""}',_x]];
	_x addaction ["Gang Shop","noscript.sqf",format ['[ (%1 call shops_index)]call shops_openshop;',_x],1,false,true,"",format["_control = %1 getvariable ""control""; !isnil ""_control"" && {(_control == (player call gang_name))}",_x]];
	true
}count v_gang_areas;