private["_chkZone", "_teamown"];
_chkZone = _this select 0;
	
_teamown = call{
	if (getMarkerColor _chkZone == "ColorYellow")exitWith {"CIV"};
	if (getMarkerColor _chkZone == "ColorBlack")exitWith {"INS"};
	if (getMarkerColor _chkZone == "ColorRed")exitWith {"OPF"};
	if (getMarkerColor _chkZone == "ColorBlue")exitWith {"PD"};
	"CIV"
};

_teamown