private["_chkZone", "_teamown"];
_chkZone = _this select 0;
	
_teamown = call{
	if (getMarkerColor _chkZone == "ColorYellow")exitWith {civilian};
	if (getMarkerColor _chkZone == "ColorBlack")exitWith {resistance};
	if (getMarkerColor _chkZone == "ColorRed")exitWith {east};
	if (getMarkerColor _chkZone == "ColorBlue")exitWith {west};
	civilian
};

_teamown