﻿if (dtk_server)exitWith {};

{
	_x setVehicleVarName format ["fuel_%1",_forEachIndex];
	missionNamespace setVariable [format ["fuel_%1",_forEachIndex],_x];
	_x addaction ["","noscript.sqf",'call fuel_fill;',25,false,true,"LeanRight","player distance _target < 5 && {!([_target,'Pump Fuel (E)','data\images\tags\Gas pump.paa']call tag_show)} && {v_fuel_cost < v_fuel_max}"];

}ForEach (nearestobjects [dtk_center, ["Land_A_Fuelstation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_benzina_schnell","Land_fuelstation_army"], (dtk_center select 0)]);