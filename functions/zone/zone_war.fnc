private ["_doWar", "_warTime", "_timeNow", "_westTime", "_westCaps", "_eastTime", "_eastCaps"];
_doWar = _this select 0;
if(_doWar) then {
	warstatus = true;
	publicVariable "warstatus";
	format["server globalChat ""TLA has declared war against the North!"";"] call broadcast;
	format["hint ""****War has been declared by the TLA****"";"] call broadcast;
	
	peacecomps = false;
	publicVariable "peacecomps";
	_warTime = floor(time);
	_westTime = 0;
	_eastTime = 0;
	for "_y" from 0 to 3600 step 1 do {
		_timeNow = floor(time);
		if(_y < 1800) then {
			if(!warstatusopf && !warstatuscop || (_timeNow - _warTime) >= 1800) then {
				_y = 1800;
				_warTime = _timeNow;
			};
			_westCaps = [west] call zone_getCount;
			_westTime = [_westCaps, _westTime, _timeNow, _y, "NATO"]  call s_zone_winner;
			_eastCaps = [east] call zone_getCount;
			_eastTime = [_eastCaps, _eastTime, _timeNow, _y, "TLA"]  call s_zone_winner;
			if(_westTime == -1) then {
				format["
				[] spawn
				{
					if (!iscop) exitWith {};
					_cash = ((playersNumber east)*250000 + 1500000); 
					player commandChat format [""America and its allies are once more victorious in liberating and bringing democracy to a third world country, which just so happens to have oil... and lots of it. The Federal Reserve has printed and given you %1 dollars"", _cash];
					[player, ""money"", _cash] call INV_AddInventoryItem;
				};
				"] call broadcast;
					_y = 1801;
			};
			if(_eastTime == -1) then {
				format["
				[] spawn
				{
					if (!isopf) exitWith {};
					_cash = ((playersNumber west)*250000 + 1500000); 
					player commandChat format [""The TLA stands victorious against the imperialist Americans. Our Russian comrades have sent us %1 dollars in foreign aid, so that the crimson banner may yet keep waving."", _cash];
					[player, ""money"", _cash] call INV_AddInventoryItem;
				};
				"] call broadcast;
				_y = 1801;
			};
			
		}
		else {
			if ((_timeNow - _warTime) >= 1800) then {
				_y = 3600;
			};
			if(_y == 3600) then {
				warstatus = false;
				publicVariable "warstatus";
			};
		};
		if(_y == 1800) then {
			peacecomps = true;
			publicVariable "peacecomps";
			format["player globalChat ""TLA and North have signed a ceasefire after a stalemate!"";"] call broadcast;
			format["player globalChat ""30-minute ceasefire cooldown before the next war can commence"";"] call broadcast;
			format["hint ""WAR IS OVER, 30-minute ceasefire is now in effect"";"] call broadcast;
			_bluZone = ["bluforZone"] call zone_Owner;
			_opfZone = ["opforZone"] call zone_Owner;
			_resZone = ["indepZone"] call zone_Owner;
			if (_bluZone == "WEST" || _bluZone == "EAST") then {
				["bluforZone", "CIV", bluforZoneFlag,"bluforFlag"] call zone_setOwner;
			};
			if (_opfZone == "WEST" || _opfZone == "EAST") then {
				["opforZone", "CIV", opforZoneFlag,"opforFlag"] call zone_setOwner;
			};
			if (_resZone == "WEST" || _resZone == "EAST") then {
				["indepZone", "CIV", indepZoneFlag,"indepFlag"] call zone_setOwner;
			};
		};
		
		sleep 1;
	};
};