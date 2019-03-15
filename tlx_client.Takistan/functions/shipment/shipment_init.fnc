if (dtk_server)exitWith{};
if !(dtk_civ)exitWith {};

Shipments_South addaction ["","noscript.sqf","call shipment_Open", 25, false, true, "LeanRight","player distance _target < 5 && {!([_target,'Weapon Shipments (E)','data\images\tags\rifle']call tag_show)}"];
Shipments_North addaction ["","noscript.sqf","call shipment_Open", 25, false, true, "LeanRight","player distance _target < 5 && {!([_target,'Weapon Shipments (E)','data\images\tags\rifle']call tag_show)}"];

["Shipments_North_mrk",getPos Shipments_North,nil,nil,"ColorRed","mil_box",nil,"Weapon Shipments"]call core_createMarkerLocal;
["Shipments_South_mrk",getPos Shipments_South,nil,nil,"ColorRed","mil_box",nil,"Weapon Shipments"]call core_createMarkerLocal;