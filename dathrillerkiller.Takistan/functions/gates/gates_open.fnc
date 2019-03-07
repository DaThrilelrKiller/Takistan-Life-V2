private["_postion"];

{
	_postion = _x getVariable ["dtk_pos",getPos _x];
	_x setVariable ["dtk_pos",_postion];
	_x setPos [0,0,0];
}forEach _this;

_this spawn gates_close;
