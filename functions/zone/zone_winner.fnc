_caps = _this select 0;
_time = _this select 1;
_timeNow = _this select 2;
_y = _this select 3;
_faction = _this select 4;

if (_caps == 3) then {
	if (_time == 0) then {
		_time = _timeNow + 120;
	}
	else {
		if ((_time - _timeNow) <= 0) then {
			peacecomps = true;
			publicVariable "peacecomps";
			format["player globalChat ""%1 has won the war and forced its enemies to surrender!"";", _faction] call broadcast;
			format["player globalChat ""30-minute ceasefire cooldown before the next war can commence"";"] call broadcast;
			format["hint ""WAR IS OVER, 30-minute ceasefire is now in effect"";"] call broadcast;
			['opforZone', "CIV", opforZoneFlag,'opforFlag'] call zone_setOwner;
			['indepZone', "CIV", indepZoneFlag,'indepFlag'] call zone_setOwner;
			['bluforZone', "CIV", bluforZoneFlag,'bluforFlag'] call zone_setOwner;
			
			_time = -1;
		}
		else {
			if(_y % 10 == 0) then {						
				format["
					[] spawn
					{
						if (isciv) exitWith {};
						hint ""%1 has control of all 3 warzones, and will win the war if it holds them for %2 more server seconds \n(NOTE: server seconds = 2-4 real time seconds depending on server load)"";
					};
				", _faction,(_time - _timeNow)] call broadcast;
			};
		};
	};
}
else {
	_time = 0;
};
_time