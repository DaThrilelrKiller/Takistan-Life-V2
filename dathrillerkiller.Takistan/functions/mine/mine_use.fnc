_area = call mine_area;
_item = _this select 1;

if (count _area == 0)exitWith {
	systemchat format ["%1 you must be in a mining area to use this item",name player];
};

_resource = _area select 1;
_data = (_item call mine_tool);

_max = _data select 0;
_text = _data select 1;

_name = (_resource call config_displayname);
_class = _resource call config_class;
_image = [_resource] call config_image;

for "_i" from 0 to 3 step 1 do {
	_amount = round (random _max);
	titletext [format ["%1...",_text], "PLAIN DOWN", 0.1];
	player playmove "AinvPknlMstpSlayWrflDnon";
		
	sleep 1.3;
	player switchmove "normal";
	
	_object = createVehicle [_class, position player, [], 10, "NONE"];
	_object call core_setVarName;
	["ALL",[_object,['','scripts\pickup.sqf',[_object, _resource, _amount],25,false,true,'LeanRight',format ['player distance _target < 5 && {!([_target,"Pick up %1 (E)","%2.paa"]call tag_show)}',_name,_image]]],"network_addAction",false,true]call network_MPExec;
		
	systemchat format["%1 you found %2 %3.", name player,_amount, _name];
};
