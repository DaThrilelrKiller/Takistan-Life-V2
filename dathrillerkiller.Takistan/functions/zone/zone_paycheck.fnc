
_income = _this select 0;

if(dtk_cop) then {
	_bluZone = ['bluforZone'] call zone_owner;
	if (_bluZone == "GUER" || _bluZone == "EAST") then {
		_income = _income*(0.2);
		player commandChat "An enemy force controls a capture zone of your faction, resulting in a 50% income penalty. Retake your faction capture zone.";
	};
};

if(dtk_ins) then {
	_insZones = ["GUER"] call zone_getcount;
	if(_insZones < 3) then {
		_income = _income*(0.25 + (_insZones)*.25);
		player commandChat format ["Controlling %1/3 capture zones yields %2 percent income. We must spread Shariah further.", _insZones, 25 + (_insZones)*25];
	};
};

if(dtk_opf) then {
	_opfZone = ['opforZone'] call zone_owner;
	if (_opfZone == "GUER" || _opfZone == "WEST") then {
		_income = _income*(0.2);
		player commandChat "An enemy force controls a capture zone of your faction, resulting in a 50% income penalty. Retake your faction capture zone.";
	};
};

_income