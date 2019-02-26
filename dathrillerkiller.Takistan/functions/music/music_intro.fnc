

_music = call {
	if (dtk_side == "PD")exitWith {"copintro"};
	if (dtk_side == "OPF")exitWith {"opfintro"};
	if (dtk_side == "INS")exitWith {"indintro"};
	"intro"
};

playSound _music;