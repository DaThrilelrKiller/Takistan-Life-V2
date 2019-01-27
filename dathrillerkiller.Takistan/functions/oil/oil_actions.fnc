if (dtk_server)exitWith {};

{
	_x setVehicleVarName format ["drill_%1",_forEachIndex];
	missionNamespace setVariable [format ["drill_%1",_forEachIndex],_x];
	_x addaction ["","functions\items\mine.sqf",'oil', 25, false, true, "LeanRight",format ["player distance _target < 5 && {!([_target,'Drill For Oil (E)','data\images\tags\oil']call tag_show)}",_img,_text]];

}ForEach v_oil_pumps;