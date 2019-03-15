if ([player,2] call statsave_nearSave)exitWith
{
	if (driver (vehicle player) == player)then {
		if (vehicle player != player)then {
			call statsave_savevehicle;
		}else{
			[]call statsave_retrivevehicleland;
		};
	};
};