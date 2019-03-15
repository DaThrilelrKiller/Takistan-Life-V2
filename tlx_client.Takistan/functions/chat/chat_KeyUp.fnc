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
	_return = true;
 }; 
 
if (_Key in [200,201])then {
	if (count chat_channels >= dtk_active_chat + 1)then {
		dtk_active_chat = dtk_active_chat + 1;
	}else{
		dtk_active_chat = 0;
	};
	_return = true;
}; 
 
if (_Key in [208,209])then {
	if (dtk_active_chat >= 0)then {
		dtk_active_chat = dtk_active_chat - 1;
	}else{
		dtk_active_chat = 0;
	};
	_return = true;
}; 

if (_ctrl && {_key == 18})then {
	if (!dialog)then {
		call chat_load_emojis;
	}else{
		closeDialog 0;
	};
};
 
 _return
 