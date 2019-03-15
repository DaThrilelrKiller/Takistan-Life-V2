if (dtk_server)exitWith {};

["opf_radar_site",[7481.74,2590.07,0],"Border","ELLIPSE","ColorRed","Empty",[4000, 4000],"OPFOR RADAR"]call core_createMarkerLocal;
["blu_radar_site",[6184,11414.9,0],"Border","ELLIPSE","ColorBlue","Empty",[4000, 4000],"BLUFOR RADAR SITE"]call core_createMarkerLocal;

["blu_radar_site_access",getPos Radar_blu,nil,nil,"ColorRed","mil_dot",[1, 1],"Radar Station"]call core_createMarkerLocal;
["opf_radar_site_access",getPos ofor_radar,nil,nil,"ColorRed","mil_dot",[1, 1],"Radar Station"]call core_createMarkerLocal;


Radar_blu addaction ["","noscript.sqf","['blu_radar_site']call radar_open;", 25, false, true, "LeanRight","dtk_cop && {!radar_inuse} && {player distance _target < 5} && {!([_target,'Open Radar (E)','data\images\items\radar']call tag_show)}"];
ofor_radar addaction ["","noscript.sqf","['opf_radar_site']call radar_open;", 25, false, true, "LeanRight","dtk_opf && {!radar_inuse} && {player distance _target < 5} && {!([_target,'Open Radar (E)','data\images\items\radar']call tag_show)}"];
