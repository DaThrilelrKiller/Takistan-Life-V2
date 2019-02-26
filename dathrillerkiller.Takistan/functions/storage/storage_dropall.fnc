private ["_weps","_mags","_holder","_i","_item","_amount","_object","_array","_items","_amounts"];

_weps = weapons _this;
_mags = magazines _this;

_holder = createVehicle ["weaponholder", getPosATL _this, [], 0, "CAN_COLLIDE" ];
{
	_holder addWeaponCargoGlobal [_x,1];
} count _weps;
{
	_holder addMagazineCargoGlobal [_x,1];
} count _mags;

removeAllWeapons _this;

_array = _this getVariable ["dtk_storage",[[],[]]];
_items = _array select 0;
_amounts = _array select 1;

{
	if (_x call config_dropable)then
	{
		_amount = _amounts select _ForEachIndex;
		_class = if(_x == "geld")then{"EvMoney"}else{"Suitcase"};
		_object = _class createvehicle position _this;
		_name13 = _x call config_displayname;
		_image = format ["data\images\items\%1",[_x]call config_image];

		_object call core_setVarName;	
		["ALL",[_object,['','scripts\pickup.sqf',[_object, _x, _amount],25,false,true,'LeanRight',format ['player distance _target < 5 && {!([_target,"Pick up (%3) %1 (E)","%2"]call tag_show)}',_name13,_image,_amount]]],"network_addAction",false,true]call network_MPExec;
	};
}Foreach _items;

player setvariable ['dtk_storage',[["schluesselbund","idcard"],[1,1]],true];
