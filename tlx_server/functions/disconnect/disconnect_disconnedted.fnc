_unit = _this call core_nametoplayer;
_array = _unit getVariable ["disconnect",[]];

{	
	if (count (crew _x) == 0)then {
		if (isNil {_x getVariable "DTK_OwnerUID"})then {
			deleteVehicle _x;
		}else{
			[_x]call impound_add;
		};
		diag_log formatText ["[LOG] %1 %2 | %3 %4 - Disconnect Delete",_x,typeOf _x,_unit,_this];
	};
	
}forEach _array;
