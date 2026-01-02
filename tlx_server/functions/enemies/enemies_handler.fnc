private ["_marker","_grp"];
_marker = _this select 0;
_grp = _this select 1;

["ALL",format["%1 %2",_grp,_marker],{systemchat _this},false,false]call network_MPExec;


waitUntil {
	sleep 1;
	{alive _x} count units _grp == 0
};

deleteMarker _marker;

["ALL","The rebel forces have been eliminated! Great work!",{systemchat _this},false,false]call network_MPExec;
