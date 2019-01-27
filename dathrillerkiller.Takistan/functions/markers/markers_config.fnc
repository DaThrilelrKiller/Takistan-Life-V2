private ["_return"];
_return = switch(dtk_side)do
	{
		case "PD": {[call core_units,"ColorBlue"]};
		case "INS":{[call core_units,"ColorGreen"]};
		case "CIV": { [[str player],"ColorWhite"] };
		case "OPF": { [[str player],"ColorRed"] };
	};
	
_return