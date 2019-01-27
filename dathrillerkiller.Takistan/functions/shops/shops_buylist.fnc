private ["_item","_infos","_preisOhneTax","_preis","_name","_type","_index","_sort"];

lbClear 301;
_sort = lbText [2101, (lbCurSel 2101)];



{
	_item         = _x;
	_infos        = _item call config_array;
	if (count _infos != 0)then {
		_preisOhneTax = _infos call config_buycost;
		_preis        = _infos call INV_getitemSteuer;
		_name         = (_infos call config_displayname);
		_type = toLower (_infos call config_type);
		
		if (_sort == "All" || {_type == _sort})then {
		
		switch(_type)do
		{
			case "item":
			{
				_index = lbAdd [301, format ["%1 ($%2, %3kg)", _name, (_preis), (_infos call config_weight)] ]; 	
			};
			case "label":
			{
				_index = lbAdd [301, format ["%1", _name] ];
			};
			default 
			{
				_index = lbAdd [301, format ["%1 ($%2)", _name, (_preis)] ];
			};
		};
		
		lbSetData [301, _index, format ["%1", [_item,_infos, _preisOhneTax, _preis]] ];		

		};
	};
	true
}count _this;