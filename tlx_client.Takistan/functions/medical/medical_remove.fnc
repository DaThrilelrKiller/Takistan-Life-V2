private ["_unit","_medic","_waypoint"];

_unit = _this select 0;
_medic = _this select 1;
_waypoint = _unit getVariable "dtk_waypoint";

if (!isNil "_waypoint")then {
	deleteWaypoint _waypoint;
	["true","Medical",format["%1 has been revived by %2",name _unit,name  _medic]]call Main_Notification;
};