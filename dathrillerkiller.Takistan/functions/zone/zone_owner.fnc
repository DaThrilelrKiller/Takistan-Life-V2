private["_chkZone", "_teamown"];
_chkZone = _this select 0;
	
_teamown = call{
	if (getMarkerColor _chkZone == "ColorYellow")exitWith {"CIV"};
	if (getMarkerColor _chkZone == "ColorBlack")exitWith {"GUER"};
	if (getMarkerColor _chkZone == "ColorRed")exitWith {"EAST"};
	if (getMarkerColor _chkZone == "ColorBlue")exitWith {"WEST"};
	"CIV"
};

_teamown