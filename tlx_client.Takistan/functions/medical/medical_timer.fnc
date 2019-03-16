private ["_unit","_corps","_deathTime","_medics"];
_unit = _this select 0;
_corps = _this select 1;
_deathTime = _this select 2;
_medics = call medical_online;

waitUntil {lifeState player == "UNCONSCIOUS"};
deleteVehicle _corps;
deleteMarker ("medical_" + name _unit);

if (count _medics > 0)then {
	createDialog "medic_respawn";
}else{
	call spawn_openMenu;
	player call cdb_clear_warrants;
	call medical_terminate;
};