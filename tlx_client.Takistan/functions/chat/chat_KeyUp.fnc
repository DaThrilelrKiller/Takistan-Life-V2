private ["_display","_key","_shift","_ctrl","_alt","_return"];
_display = _this select 0;
_key = _this select 1;
_shift = _this select 2;
_ctrl = _this select 3;
_alt = _this select 4;

_return = false;

if (_Key == 28)then {
	_display = (findDisplay 24);
	_chat = _display displayCtrl 101;
	(ctrlText _chat) call chat_commands;
	_return = false;
}; 

_return
 