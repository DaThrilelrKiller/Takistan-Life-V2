_radar = _this select 0;
_postion = getMarkerPos _radar;

for "_a" from 0 to 1 step 0 do {
	if !(visibleMap) exitWith {
		['Radar Shutdown... ','data\images\items\radar',true]call tag_notify;
		["ShowAll",""]spawn gps_sort;
		radar_inuse = false;
	};
	 if (!alive player)exitWith {};

	_vehicles = _postion nearEntities [["LandVehicle", "Air"], 4000];
	_artillery = _postion nearEntities [["StaticCannon", "StaticMortar", "GRAD_Base", "MLRS", "M1129_MC_EP1"], 20000];
	
	{
		if(_x isKindOf "Air") then {
			[_x, _forEachIndex, "Radar_Vehicle", "Air"] call radar_marker;
		}
		else {
			[_x, _forEachIndex, "Radar_Vehicle", "Tank"] call radar_marker;
		};
	} forEach _vehicles;
	
	{
		if (_postion distance _x > 4000) then { 
			[_x, _forEachIndex, "Radar_artillery", "Artillery"] call radar_marker;
		};
	} forEach _artillery;
	
	
	for "_i" from 1 to 100 step 1 do {
		[format['Scanning... %1%2',_i,"%"],'data\images\items\radar',true]call tag_notify;
		if !(visibleMap) exitWith {};
		uiSleep 0.05;
	};
	
	if (visibleMap) then {
		uiSleep 5;
	};

	{
		deleteMarkerLocal ("Radar_Vehicle" + (str _forEachIndex));
	} forEach _vehicles;
	{
		if (_postion distance _x > 4000) then { 
			deleteMarkerLocal ("Radar_artillery" + (str _forEachIndex));
		};
	} forEach _artillery;

};
