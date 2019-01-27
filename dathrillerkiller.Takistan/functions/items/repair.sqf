private ["_art"];
_art = _this select 0;

if (_art == "use") then 

{

if (vehicle player == player) exitWith {systemChat  localize "STRS_inv_items_repair_refuel_notincar";};
if ( (typeOf(vehicle player)) call config_weight > 1) exitWith {systemChat  localize "STRS_inv_items_repair_wrongvcl";};
["use", "kleinesreparaturkit", 1] execVM "largerepair.sqf";

};

