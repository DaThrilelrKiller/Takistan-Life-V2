private ["_random","_object","_amount"];

{
	_random = ceil ((random 250) + 250);
	_object = _x select 0;
	_amount = _object getVariable ["robbery_money",5000];

	if (_amount < maxstationmoney) then
	{
		_amount = _amount + _random;
	};
	_object setVariable ["robbery_money",_amount,true];
}forEach robbery_actions;