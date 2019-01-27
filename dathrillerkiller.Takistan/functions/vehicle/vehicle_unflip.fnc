_vehicle = call keys_grabVehicle;
_name = _vehicle call vehicle_name;

if !(isNil "_vehicle")then {
systemChat  format["You are rolling over (%1) stay within 10m",_name];	
sleep 5;
	if (player distance _vehicle < 10)then {
		_pos = getPos _vehicle;
		_vehicle setvectorup [0,0,1];
		_vehicle setPos [_pos select 0,_pos select 1,0];
	}else
	{
		systemChat format ["You have moved to far away from %1",_vehicle];
	};
};