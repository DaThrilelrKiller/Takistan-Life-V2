private ["_shoparray","_con"];

if (count _this < 1)then {
	_shoparray = call compile(lbData [897, (lbCurSel 897)]);
}else{
	_shoparray = _this select 0;
};

shop_cache = _shoparray;

shop_buylist   = if (typeName (_shoparray select 1) == "STRING")then{call call compile(_shoparray select 1)}else{(_shoparray select 1)};
shop_selllist   = if (typeName (_shoparray select 2) == "STRING")then{call call compile(_shoparray select 2)}else{(_shoparray select 2)};
_con =  (_shoparray select 3);

if !(_con call shops_canuseshop)exitWith {"you are not allowed to use this shop"call chat_system;};

createDialog "shopping";

if (player distance  shop_object > 10 && {!(shop_object in [dtkgarage,BuildingCollapesLogic])})then {
	ctrlEnable [563, false];
};


call shops_types;
lbAdd [2100,"Shop"];
lbAdd [2100,"Inventoy"];
lbSetCurSel [2100,0];