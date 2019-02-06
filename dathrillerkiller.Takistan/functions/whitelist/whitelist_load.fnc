

{
	_value = _x select 0;
	_whitelist = _x select 1;
	
	missionNamespace setVariable [_whitelist,_value];
}forEach _this;