private ["_amount","_resource","_infos","_name","_itemweight","_pos","_object"];
if(working)exitwith{"You are collecting a resource, please wait"call chat_system;};
working=true;


_amount = floor (random 2)+1;

_resource = "Oil";

_infos    = _resource call config_array;
_name     = (_infos call config_displayname);
_itemweight = (_infos call config_weight)*_amount;


for [{_i=0}, {_i < (floor(random 5))}, {_i=_i+1}] do 
{
	titletext ["Machine Running...", "PLAIN DOWN", 1];
	sleep 5;
	titletext [format ["The Machine has collected %1!", _resource], "PLAIN"];
	format["There is %1 %2s on the ground collect them.", _amount, _name]call chat_system;
	switch true do
	{
		case (_resource == "oil"):{
			_pos = getposASL player;
			_object = "Barrel4" createvehicle (position player);
			_object setPos [ getPos _object select 0, (getPos _object select 1)+4, (getPos _object select 2)];
		};
	};
	
	_object call core_setVarName;
	["ALL",[_object,['','scripts\pickup.sqf',[_object, _resource, _amount],25,false,true,'LeanRight',format ['player distance _target < 5 && {!([_target,"Pick up %3 %1(E)","%2"]call tag_show)}',_name,"data\images\tags\oil.paa",_amount]]],"network_addAction",false,true]call network_MPExec;
	titletext ["Restart the machine it has shut down...", "PLAIN DOWN", 3];
};
working=false;
