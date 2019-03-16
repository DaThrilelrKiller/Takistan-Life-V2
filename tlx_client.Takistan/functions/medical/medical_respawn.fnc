private ["_unit","_corps","_time"];

if (dtk_respawn)exitWith {};
dtk_respawn = true;

_unit = _this select 0;
_corps = _this select 1;
_time = time;

_unit setDamage 0;
_corps setDamage 0;
["ALL",player,{_this setUnconscious true;},false,true]call network_MPExec;
["ALL",player,{_this allowDamage false;},false,true]call network_MPExec;
["ALL",player,{_this addaction ["","noscript.sqf",format['%1 call core_interact;',_this],25,false,true,"LeanRight",format["player distance _target < 5 && {!([_target,'Interact (E)','%1']call tag_show)}",player getVariable ["dtk_tag",tag_default]]];},false,false]call network_MPExec;
player setVariable ["id",dtk_id,true];

removeAllWeapons _unit;
_this call storage_dropall;

[]spawn medical_Effect; 
 
waitUntil {(str (velocity _corps)) == '[0,0,0]'};

_this call medical_marker;
_this call medical_setPos;
[_unit,_corps,_time] spawn medical_timer;

dtk_hunger = 25;
dtk_respawn = false;

