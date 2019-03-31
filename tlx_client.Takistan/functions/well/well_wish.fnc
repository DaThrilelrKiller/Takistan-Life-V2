private ["_wish","_type","_class","_name"];

if (s_seasion == wish_seasion)exitWith {
	systemchat "You can only use the wishing well once every restart!";
};

wish_seasion = s_seasion;
["SERVER",[player, [[dtk_side, "wish", wish_seasion]]],"S_statsave_save",false,false]call network_mpexec;

_wish = dtk_wishes call BIS_selectRandom;
{
	_name = (_x select 0)call config_displayname;
	_type = (_x select 0)call config_type;
	if (_type == "item")then {
		[dtk_well,_x select 0,_x select 1] call storage_add;
	};
	if (_type == "vehicle")then {
		[_x select 0,nil,player,dtk_side]call shops_createVehicle;
	};
	if (_type == "weapon")then {
		_class = (_x select 0) call config_class;
		[_class, _x select 1, dtk_well] call INV_CreateWeapon;
	};
	if (_type == "magazin")then {
		_class = (_x select 0) call config_class;
		[_class, _x select 1, dtk_well] call INV_CreateMag;
	};
	systemchat format ["You have won %1 of %2 from the wishing well!",_x select 1,_name];
}forEach _wish;