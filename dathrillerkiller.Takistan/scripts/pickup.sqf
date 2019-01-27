private ["_object","_item","_tamount","_name","_infos","_itemweight","_ownweight","_amount","_exitvar","_time","_n"];

if(pickingup)exitwith{systemChat  "You Already Have Picked Up An Item!"};
pickingup = true;



_this 	    = _this select 3;
_object	    = _this select 0;
if ([_object, playableUnits, 5] call ISSE_ArrayNumberNear > 1)exitWith {systemChat "There Are To Many People Near This Item!";pickingup = false; };
_item  	    = _this select 1;
_tamount    = _this select 2;
_infos      = _item call config_array;
_name       = _infos call config_displayname;
_itemweight = (_infos call config_weight)*_tamount;   												
_ownweight  =  [player]call storage_kg;
_amount     = _this select 2;
_exitvar    = 0;
_time       = round time;

if ((_ownweight + _itemweight) > dtk_player_storage) then 
{ 

_amount = (floor((dtk_player_storage - _ownweight) / (_infos call config_weight)));

if (_amount <= 0) exitWith {systemChat  localize "STRS_inv_buyitems_maxgewicht"; _exitvar = 1;pickingup = false;};

};

if(_exitvar == 1)exitwith{pickingup = false;};
pickingup   = true;

_object setvariable ["droparray", nil, true];

if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};

sleep 1;

[player,_item,_amount] call storage_add;

systemChat  format["You Picked Up %1 %2", _amount, _name];	

if(_amount < _tamount) then

{

_amount = _tamount - _amount;
_object setvariable ["droparray", [_amount, _item], true];
_n = iactionarr find _object;
iactionarr set [_n, 0];
iactionarr = iactionarr - [0, (iactionarr select (_n + 1))];
pickingup = false;
}
else
{
_object setvariable ["droparray", nil, true];
deletevehicle _object;
pickingup = false;
};

pickingup = false;



