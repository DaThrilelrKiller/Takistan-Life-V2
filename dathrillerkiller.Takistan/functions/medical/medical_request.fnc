private ["_medics","_unit","_waypoint"];


if (count _this == 0)then {
	_medics = call medical_online; 
	["ALL",[_medics,player],"medical_request",false,false]call network_MPExec;
}else{
	_medics = _this select 0;
	_unit = _this select 1;
	
	if (player in _medics)then {
	
		["true","Medical",format["%1 Requested Medical Assistance at %1",name _unit,mapGridPosition  _unit]]call Main_Notification;
	
		_waypoint =(group player) addWaypoint [getMarkerPos getPos _unit, 0];
		(group player) setCurrentWaypoint  _waypoint;
		_waypoint setWaypointDescription format["%1 Requested Medical Assistance",name _unit];
		_unit setVariable ["dtk_waypoint",_waypoint];
	};
};


