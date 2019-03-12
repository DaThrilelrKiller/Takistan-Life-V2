private ["_wish","_type","_class","_name"];

_wish = dtk_wishes call BIS_selectRandom;

{
	_name = (_x select 0)call config_displayname;
	_type = (_x select 0)call config_type;
	if (_type == "item")exitWith {
		[player,_x select 0,_x select 1] call storage_add;
	};
	if (_type == "vehicle")exitWith {
		[_x select 0,nil,player,dtk_side]call shops_createVehicle;
	};
	if (_type == "weapon")exitWith {
		_class = (_x select 0) call config_class;
		[_class, _x select 1, player] call INV_CreateWeapon;
	};
	if (_type == "magazin")exitWith {
		_class = (_x select 0) call config_class;
		[_class, _x select 1, player] call INV_CreateMag;
	};
	systemchat format ["You have won %1 of %2 from the wishing well!",_x select 1,_name];
}forEach _wish;