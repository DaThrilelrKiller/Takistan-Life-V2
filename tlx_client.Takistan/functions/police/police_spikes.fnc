﻿if (typeName _this != "OBJECT")then {
	
	
	_pos = ScreenToWorld [0.5,0.7];
	_pos = if (_pos distance getPos player > 10)then {getPos player}else{_pos};
	
	_this = "Fort_RazorWire" createVehicle [0, 0, 0];
	_this setDir (getDir player) + 90;
	_this setPos _pos;
	_this setDammage 1;
	["ALL",_this,"police_spikes",true,false]call network_MPExec;
	[player,"spikestrip",-1] call storage_add;
};

while {!isNull _this} do {
	_vehicle = vehicle player;
	if (player distance _this < 5 && {vehicle player != player})exitWith {
		_vehicle setHit ["wheel_1_1_steering", 1];
		_vehicle setHit ["wheel_2_1_steering", 1];
		_vehicle setHit ["wheel_1_2_steering", 1];
		_vehicle setHit ["wheel_2_2_steering", 1];
		deleteVehicle _this;
	};
	sleep 0.01;
};