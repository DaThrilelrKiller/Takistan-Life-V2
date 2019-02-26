
while {dialog} do {
	_medics = call medical_online;
	
	if (count _medics > 0)then {
		{
			_name = name _x;
			_distance = player distance _x;
			
			_index = lbAdd [897, format["%1 %2m", _name,_distance]];
			lbSetData [897, _index, format ['%1',_x]];	
		}forEach _medics;
	}else{
		_index = lbAdd [897,"There are no medics available!"];
	};
	sleep 0.05;
	lbClear 897;
};