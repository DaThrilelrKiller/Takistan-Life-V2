private ["_action","_item","_textamount","_player","_filename","_itemamount"];
_action = _this select 0;
_item   =  call compile (_this select 1);
_item = _item select 0;
_textamount = _this select 2;                 

if (!(_textamount call storage_isNumber))   exitWith {systemChat  localize "STRS_inv_no_valid_number";};
_textamount = parseNumber _textamount;
_itemamount = ([player,_item] call storage_amount);
_textamount = if (_textamount > _itemamount) then {_itemamount}else {_textamount};
_player = _this select 3;
if (player call isse_isvictim) exitWith {systemChat  localize "STRS_inv_cannotUseNow";};
INV_InventarGiveReceiver = _player;

if (_action == "use") then 

{
_filename = _item call config_code;

	if (isNil format ["%1",_filename])then {
		["use", _item, _textamount] execVM format["functions\items\%1.sqf",_filename];
	}else{
		["use", _item, _textamount]spawn call compile _filename;
	};
};

if (_action == "drop") then 

{

_h = [_item, _textamount] execVM "scripts\drop.sqf";
waitUntil {ScriptDone _h};
};

if (_action == "give") then 

{

["uebergabe", _item, _textamount, _player] execVM "scripts\give.sqf";

};
