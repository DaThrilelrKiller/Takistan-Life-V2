
_side = side _this;

_color = call{
	if (_side == civilian)exitWith {"#a8a6a6"};
	if (_side == resistance)exitWith {"#338c00"};
	if (_side == east)exitWith {"#b50000"};
	if (_side == west)exitWith {"#002f8e"};
	"#a8a6a6"
};

_name = format ["<t color='%1'>%2</t>",_color,name _this];

_name