private ["_art","_item","_closeVcl"];
 _art = _this select 0;

if (_art == "use") then 

{

_item   = _this select 1;
_closeVcl = (getPos player nearEntities [["LandVehicle", "Air", "ship"], 7] select 0);
if (isNil '_closeVcl')exitWith {systemChat "There are no Vehicles in Range!";};

if ((fuel _closeVcl) < 0.1) exitWith {systemChat  "there is not enough fuel in this car to syphon";};

[player,_item,-1] call storage_add;



	player playMove "AinvPknlMstpSlayWrflDnon_medic"; 
	systemChat  "Syphoning fuel...";
	_closeVcl setFuel 0; 
	sleep 6; 
	WaitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"}; 
	systemChat  localize "STRS_inv_items_empty_refueled";
	[player,"kanister",1] call storage_add;
};