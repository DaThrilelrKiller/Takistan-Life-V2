{
	if (typeName _x == "OBJECT")then {
		["SERVER",[_x,player],{(_this select 0) setOwner(owner (_this select 1));},false,false]call network_MPExec;
		_x setPosATL [(getPosATL _x select 0),(getPosATL _x select 1),-5];
	};
}forEach _this;

_this spawn gates_close;

