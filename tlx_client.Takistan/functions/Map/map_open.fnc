map_open = {
createDialog "map_dialog";
_display = (findDisplay 186);
_map = _display displayCtrl 0;

	{
		_control = _display displayCtrl (_forEachIndex + 1);
		_control ctrlSetStructuredText parseText format["<t size='1.1' color='#DDDDDD'><img size='1.1' image='%2'/>%1</t>",(_x select 1),(_x select 2)];
	}forEAch dtk_map;

	
	while {!isNull (findDisplay 186)} do {
		{
			_screen = _map ctrlMapWorldToScreen (_x select 0);
			_control = _display displayCtrl (_forEachIndex + 1);
			_control ctrlSetPosition _screen;
			_control ctrlCommit 0; 
		}forEAch dtk_map;
	};
};


dtk_map = [
];

{
	_shop = _x select 0;	
	if (!isNil "_shop")then {	
		
		_data = _x select 1;
		_img = _data select 0;
		_text = _data select 1;
		_img = if (_img != "")then {format ["data\images\tags\%1.paa",_img]}else{""};
		
		dtk_map set [count dtk_map,[getPos _shop,_text,_img]];		
	};
}forEach INV_ItemShops;
[]spawn map_open;