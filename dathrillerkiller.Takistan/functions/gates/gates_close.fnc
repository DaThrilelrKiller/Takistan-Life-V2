private ["_pos"];

sleep 10;

{
	_pos = _x getVariable "dtk_pos";
	_x setPos _pos;
}forEach _this;