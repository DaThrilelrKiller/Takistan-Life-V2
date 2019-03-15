_control1 = _this select 0;
_selectedIndex = _this select 1;

_display = findDisplay 24;
_control = _display displayCtrl 101;
_chat = ctrlText _control;

_control ctrlSetText format ["%1 #%2",_chat,_selectedIndex]; 
closeDialog 0;