
if (dtk_server)exitWith {};
if !(dtk_civ)exitWith {};

{
	_type = typeOf _x;
	_name = gettext(configFile >> "CfgVehicles" >> _type >> "Displayname");
	_marker = format["house_%1",_ForEachINdex];
	_price = _type call house_price;
	
	_x addaction ["","noscript.sqf",format["['%1',%2]call house_buy;",_marker,_price], 25, false, true, "LeanRight",format["!(['%3']call house_own) && {!([_target,'Buy %1 (%2$) (E)','data\images\misc\bank']call tag_show)}",_name,[_price] call Main_FormatMoney,_marker]];
	_x addaction ["","noscript.sqf",format["[%1,'%2']call house_menu;",dtk_home,_marker], 25, false, true, "LeanRight",format["(['%2']call house_own) && {!([_target,'Access %1 (E)','data\images\misc\bank']call tag_show)}",_name,_marker]];

}forEAch dtk_house_list;

[]spawn house_loop;