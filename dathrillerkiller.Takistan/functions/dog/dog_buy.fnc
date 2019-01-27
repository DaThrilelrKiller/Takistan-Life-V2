private ["_type","_grp","_name"];

if !([player,"geld",-dog_cost] call storage_add)exitWith {
systemChat  "You dont have enough money";
};

systemChat  format["%1 bought a dog for %2", player, (dog_cost call string_intToString)];

_type = "CLAY_Dog";
_grp = group player;
_name = format ["CLAY_tmpDog%1", round (random 1000)];


call compile format ["_type createUnit [[(getPos player select 0) + (1 * sin (getDir player)), (getPos player select 1) + (0.3 * cos (getDir player)), 0], _grp, '%1 = this']", _name];
_dog = call compile format ["%1", _name];
_dog setDir getDir player;
player setVariable ["CLAY_DogUnit", _dog];
player setVariable ["CLAY_DogStatus", "Waiting"];
	