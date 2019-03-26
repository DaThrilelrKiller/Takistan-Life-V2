
_high = 0;

while {dtk_speed and (player != vehicle player)} do {

	waitUntil {isNull cursorTarget or !dtk_speed};
	if !(dtk_speed)exitWith {};
	_speed = round(speed cursorTarget);
	_array = toArray str _speed;
	
	_sp1 = if (count _array > 0)then {toString[_array select 0]}else{""};
	_sp2 = if (count _array > 1)then {toString[_array select 1]}else{""};
	_sp3 = if (count _array > 2)then {toString[_array select 2]}else{""};
	
	if (count _array == 1)then {
		(speed_ui displayCtrl 1) ctrlSetText format ["data\images\radar\%1.pac",0];
		(speed_ui displayCtrl 2) ctrlSetText format ["data\images\radar\%1.pac",0];
		(speed_ui displayCtrl 3) ctrlSetText format ["data\images\radar\%1.pac",_sp1];
	
	};
	if (count _array == 2)then {
		(speed_ui displayCtrl 1) ctrlSetText format ["data\images\radar\%1.pac",0];
		(speed_ui displayCtrl 2) ctrlSetText format ["data\images\radar\%1.pac",_sp1];
		(speed_ui displayCtrl 3) ctrlSetText format ["data\images\radar\%1.pac",_sp2];
	
	};
	if (count _array == 3)then {
		(speed_ui displayCtrl 1) ctrlSetText format ["data\images\radar\%1.pac",_sp1];
		(speed_ui displayCtrl 2) ctrlSetText format ["data\images\radar\%1.pac",_sp2];
		(speed_ui displayCtrl 3) ctrlSetText format ["data\images\radar\%1.pac",_sp3];
	
	};
	
	if (_speed > _high)then {
		_high = _speed;
		if (count _array == 1)then {
			(speed_ui displayCtrl 4) ctrlSetText format ["data\images\radar\%1.pac",0];
			(speed_ui displayCtrl 5) ctrlSetText format ["data\images\radar\%1.pac",0];
			(speed_ui displayCtrl 6) ctrlSetText format ["data\images\radar\%1.pac",_sp1];
		
		};
		if (count _array == 2)then {
			(speed_ui displayCtrl 4) ctrlSetText format ["data\images\radar\%1.pac",0];
			(speed_ui displayCtrl 5) ctrlSetText format ["data\images\radar\%1.pac",_sp1];
			(speed_ui displayCtrl 6) ctrlSetText format ["data\images\radar\%1.pac",_sp2];
		
		};
		if (count _array == 3)then {
			(speed_ui displayCtrl 4) ctrlSetText format ["data\images\radar\%1.pac",_sp1];
			(speed_ui displayCtrl 5) ctrlSetText format ["data\images\radar\%1.pac",_sp2];
			(speed_ui displayCtrl 6) ctrlSetText format ["data\images\radar\%1.pac",_sp3];
		
		};
	};
	sleep 0.05;
};

dtk_speed = false;
88 cutText ["", "PLAIN"];