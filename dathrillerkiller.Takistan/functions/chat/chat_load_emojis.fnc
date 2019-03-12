createDialog "chat_emjio";
_display = findDisplay 26;
_control = _display displayCtrl 12;

for "_i" from 0 to (count chat_emojis_array) step 1 do {
	_index = _control lbAdd str _i;
	_control lbSetPicture [_index,format ["data\images\emoji\%1.paa",_i]];
};