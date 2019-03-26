disableserialization;
while {dtk_speed and (player != vehicle player)} do {

	if !(dtk_speed)exitWith {};
	_speed = abs round(speed vehicle player);
	_array = toArray str _speed;
	
	_sp1 = if (count _array > 0)then {toString[_array select 0]}else{""};
	_sp2 = if (count _array > 1)then {toString[_array select 1]}else{""};
	_sp3 = if (count _array > 2)then {toString[_array select 2]}else{""};
	
	if (count _array == 1)then {
		(speed_ui displayCtrl 7) ctrlSetText format ["data\images\radar\%1.pac",0];
		(speed_ui displayCtrl 8) ctrlSetText format ["data\images\radar\%1.pac",0];
		(speed_ui displayCtrl 9) ctrlSetText format ["data\images\radar\%1.pac",_sp1];
	
	};
	if (count _array == 2)then {
		(speed_ui displayCtrl 7) ctrlSetText format ["data\images\radar\%1.pac",0];
		(speed_ui displayCtrl 8) ctrlSetText format ["data\images\radar\%1.pac",_sp1];
		(speed_ui displayCtrl 9) ctrlSetText format ["data\images\radar\%1.pac",_sp2];
	
	};
	if (count _array == 3)then {
		(speed_ui displayCtrl 7) ctrlSetText format ["data\images\radar\%1.pac",_sp1];
		(speed_ui displayCtrl 8) ctrlSetText format ["data\images\radar\%1.pac",_sp2];
		(speed_ui displayCtrl 9) ctrlSetText format ["data\images\radar\%1.pac",_sp3];
	
	};
	
	sleep 0.05;
};

dtk_speed = false;
88 cutText ["", "PLAIN"];