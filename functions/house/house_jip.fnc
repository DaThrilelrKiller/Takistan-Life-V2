private ["_owner","_building"];

{
	_owner = ["Houses",_x, "Owner",""]call s_statsave_read;
	
	if (_owner != "")then {
		_x setMarkerAlpha 1;
	}else{
		_x setMarkerAlpha 0;
	};
	
}forEAch dtk_houses;