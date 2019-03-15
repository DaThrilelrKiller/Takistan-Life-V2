private ["_object","_warrant","_amount","_warrants","_bounty"];

_object = _this select 0;
_warrant = _this select 1;
_amount = [0,(_this select 2)]select (count _this > 1);

_warrants = _object getVariable ["cdb_warrants",[]];
_bounty = _object getVariable ["cdb_bounty",0];

if !(_warrant in _warrants)then {
_warrants set [count _warrants,_warrant];
_object setVariable ['cdb_warrants',_warrants,true];
};

_bounty = _bounty + _amount;
_object setVariable ['cdb_bounty',_amount,true];


