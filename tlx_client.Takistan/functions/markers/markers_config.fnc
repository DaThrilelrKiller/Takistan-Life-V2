private ["_return"];
_return = switch(dtk_side)do
	{
		case "WEST": {[call core_units,"ColorBlue"]};
		case "GUER":{[call core_units,"ColorGreen"]};
		case "CIV": { [[str player],"ColorWhite"] };
		case "EAST": { [call core_units,"ColorRed"] };
	};
	
_return