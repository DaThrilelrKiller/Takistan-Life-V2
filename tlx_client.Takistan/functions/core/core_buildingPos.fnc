private["_obect","_return","_pos"];
_obect = _this select 0;
_return = [];

for "_i" from 0 to 20 step 1 do 
{
	_pos = _obect buildingPos _i;
	if (_pos select 0 == 0)exitWith {};
	_return set [count _return,_pos];
};

_return