﻿if (dtk_server)exitWith {};

private ["_data","_img","_text"];

{
	_shop = _x select 0;	
	if (!isNil "_shop")then {	
		_shop setVariable ['shop_data',_forEachIndex,false];
		[("shop_" + str _ForEachIndex),getPos (_x select 0),nil,nil,"ColorBlue","mil_dot",[1,1],(_x select 1 select 1)]call core_createMarkerLocal;

		_data = _x select 1;
		_img = _data select 0;
		_img = if (_img != "")then {format ["data\images\tags\%1.paa",_img]}else{""};
		_text = _data select 1;
		
		(_x select 0) addaction ["","noscript.sqf",format["[%1]call shops_open;",_ForEachIndex], 25, false, true, "LeanRight",format ["player distance _target < 5 && {!([_target,'%2 (%3)','%1']call tag_show)}",_img,_text,((actionKeysNamesArray "LEANRIGHT")select 0)]];
	};
}forEach INV_ItemShops;

onMapSingleClick "_pos call shops_view";
