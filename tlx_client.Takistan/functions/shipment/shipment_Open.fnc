createdialog 'shipment_open';

{
	_name = markerText _x;
	_distance = player distance getMarkerPos _x;
	_index = lbAdd [1500, format["%1 (%2m)",_name,_distance]];
	lbSetData [1500, _index, _x];	
}count Shipment_locations;

{
	_name = (_x call config_displayname);
	_index = lbAdd [1501, _name];
	lbSetData [1501, _index, _x];	
}count Shipment_items;

{
	_VclVar = (_x getVariable "DTK_OwnerUID");
	if !(isNil "_VclVar")then
	{
		_UID = (_VclVar select 0);
		  if (getPlayerUID player in _UID and player distance _x < 25) then 
		 { 
			_index = lbAdd [2100, format ["%1 (%2)", typeOf _x, _x]];
			lbSetData [2100, _index, format ["%1", _x]];
		};
	};
} count (allMissionObjects "AllVehicles");

[]spawn Shipment_update_map;