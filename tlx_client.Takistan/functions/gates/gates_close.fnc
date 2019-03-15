private ["_pos"];

sleep (_this select (count _this)-1);

{
	_pos = getPosATL _x;
	_x setPosATL [_pos select 0,_pos select 1,0];
}forEach _this;