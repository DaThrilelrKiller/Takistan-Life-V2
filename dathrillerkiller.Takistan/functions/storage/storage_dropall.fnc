private ["_weps","_mags","_holder","_i","_item","_amount","_object","_array","_items","_amounts"];


_weps = weapons player;
_mags = magazines player;

_holder = createVehicle ["weaponholder", getPosATL player, [], 0, "CAN_COLLIDE" ];
{
	_holder addWeaponCargoGlobal [_x,1];
} count _weps;
{
	_holder addMagazineCargoGlobal [_x,1];
} count _mags;

removeAllWeapons player;

_array = player getVariable ["dtk_storage",[[],[]]];
_items = _array select 0;
_amounts = _array select 1;

{
	if (_x call config_dropable)then
	{
		_amount = _amounts select _ForEachIndex;
		_class = if(_x == "geld")then{"EvMoney"}else{"Suitcase"};
		_object = _class createvehicle position player;

		_object setvariable ["droparray", [_amount, _x], true];
		_name13 = _x call config_displayname;
		_object  setvehicleinit format["
		this addaction ['Pickup %1 (%2)','scripts\pickup.sqf',[this, '%3', %2]];
		", _name13, _amount,_x];
		processInitCommands;
	};
}Foreach _items;

player setvariable ['dtk_storage',[["schluesselbund","idcard"],[1,1]],true];
