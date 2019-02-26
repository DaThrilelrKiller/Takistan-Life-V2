if (dtk_server)exitWith{};

private ["_marker"];

{
	[("service_" + str _ForEachIndex),getPos _x,nil,nil,"ColorOrange","n_maint",nil,format ["Service Point #%1",_ForEachIndex]]call core_createMarkerLocal;
}forEach allMissionObjects "US_WarfareBVehicleServicePoint_EP1" + allMissionObjects "US_WarfareBVehicleServicePoint_Base_EP1";