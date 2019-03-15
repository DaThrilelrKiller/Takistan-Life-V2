private ["_return"];

_return = call{
	if (_this == "Shovel")exitWith {[4,"Digging"]};
	if (_this == "Pickaxe")exitWith {[6,"Mining"]};
	[8,"Drilling"]
};

_return