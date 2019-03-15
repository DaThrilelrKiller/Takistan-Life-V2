if (dtk_server)exitWith{};
{
	[_x select 0,_x select 1,"Border","ELLIPSE","ColorGreen","Empty",[_x select 2,_x select 2],"Safe Zone!"]call core_createMarkerLocal;
	true
}foreach dtk_safezones