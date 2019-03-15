_return = "";
_text = _this;

{
	if (_x in chat_emojis_array)then {
		_text set [_forEachIndex,format ["<img image='data\images\emoji\%1.paa'/>",_x]];
	};
}forEach _text;

{
	_return = _return + format ["%1 ",_x];
}forEach _text;
_return