private["_art","_vcl","_item","_anzahl"];
_art = _this select 0;
if (_art == "use") then 
{
_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 6] select 0);
_item = _this select 1;
_anzahl = _this select 2;



if (isnil ("_vcl")) exitwith {systemChat  "Not near any vehicles"};
if (!(player == vehicle player)) exitWith {systemChat  "You must be outside the vehicle"};
if (player distance _vcl <= 6) then 
{
systemChat  "REPAIRING";
[player,_item,-1] call storage_add;
player playMove "ainvpknlmstpslaywrfldnon_medic";
sleep 2;
playsound "Drill";
sleep 5;
player playMove "ainvpknlmstpslaywrfldnon_medic";
sleep 2;
playsound "Drill";
sleep 5;
_vcl setDamage 0;
systemChat  "REPAIRED";
};



};
