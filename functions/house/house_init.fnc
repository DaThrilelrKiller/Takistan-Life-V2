dtk_house_list = nearestObjects [dtk_center, ['Land_House_K_1_EP1', 'Land_House_K_3_EP1', 'Land_House_K_7_EP1', 'Land_House_L_3_EP1', 'Land_House_L_6_EP1', 'Land_House_C_5_EP1', 'Land_House_C_5_V1_EP1', 'Land_House_C_5_V3_EP1', 'Land_House_C_5_V2_EP1', 'Land_House_C_3_EP1' ], dtk_center select 0];
publicVariable "dtk_house_list";

{
	_type = typeOf _x;
	_name = gettext(configFile >> "CfgVehicles" >> _type >> "Displayname");
	
	_marker = createMarker [format["house_%1",_ForEachINdex],getPos _x];
	_marker setMarkerType "mil_box";
	
	_owner = ["Houses",_marker, "Owner",""]call s_statsave_read;
	
	if (_owner != "")then {
		_name = ["Houses",_marker, "Name",""]call s_statsave_read;
		_marker setMarkerText format ["%1's House",_name];
	};
	
	_marker setMarkerAlpha 1;
	
	dtk_houses set [count dtk_houses,_marker];
	
}forEAch dtk_house_list;
