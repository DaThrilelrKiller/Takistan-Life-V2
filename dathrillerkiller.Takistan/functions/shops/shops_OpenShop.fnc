private ["_shoparray","_shop","_con"];

dtk_activeShopNumber    = (_this select 0); 
_shoparray = (INV_ItemShops select dtk_activeShopNumber);
_shop		= (_shoparray select 0); 
shop_buylist   = if (typeName (_shoparray select 4) == "STRING")then{call call compile(_shoparray select 4)}else{(_shoparray select 4)};
shop_selllist   = if (typeName (_shoparray select 5) == "STRING")then{call call compile(_shoparray select 5)}else{(_shoparray select 5)};
_con =  (_shoparray select 7);

if !(_con call shops_canuseshop)exitWith {systemChat "you are not allowed to use this shop";};

createDialog "shopping";

call shops_types;
lbAdd [2100,"Shop"];
lbAdd [2100,"Inventoy"];
lbSetCurSel [2100,0];
