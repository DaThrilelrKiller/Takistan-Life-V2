﻿if (dtk_server)exitWith {};

private ["_name","_price","_condition","_lic","_index"];

{
	_name = (_x select 2);
	_price = (_x select 3);
	_condition = (_x select 4);
	_lic = _x select 0;
	_index = _forEachINdex;
	{
		_x addaction [format ["Buy %1 ($%2)",_name,_price],"noscript.sqf", format ["%1 call licenses_buy",_index], 1, false, true, "", format ["!('%1' in (player getvariable 'cdb_license')) && {(%2)}",_lic,_condition]];
		true
	}count (_x select 1);
	true
}forEach dtk_licenses;

["licenseflag2",getPos licenseflag2,nil,nil,"ColorBlack","mil_box",nil,"Weapon Licensing"]call core_createMarkerLocal;
["licenseflag3",getPos licenseflag3,nil,nil,"ColorBlack","mil_box",nil,"Passport & Licensing"]call core_createMarkerLocal;