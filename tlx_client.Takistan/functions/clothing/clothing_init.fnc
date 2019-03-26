if (dtk_server)exitWith {};

{
	(_x select 0) addaction ["","noscript.sqf",format["%1 call clothing_menu;",_x], 25, false, true, "LeanRight",format["call %1 && {!([_target,'Clothing Shop (E)','data\images\tags\Clothing.paa']call tag_show)}",_x select 2]];
	[("Clothing_" + str _ForEachIndex),getPos (_x select 0),nil,nil,"ColorRed","mil_box",nil,format ["Clothing Shop %1",_ForEachIndex]]call core_createMarkerLocal;


}forEAch dtk_clothingshops;