if (dtk_server)exitWith {};

{
	_x addaction ["High Slotmachine ($2000)","noscript.sqf", format ["['slotmachine'] spawn slots_start",_x], 1, false, true];
	_x addaction ["Low Slotmachine ($100)","noscript.sqf", format ["['slotmachineB'] spawn slots_start",_x], 1, false, true];
	true
}forEach dtk_machines;