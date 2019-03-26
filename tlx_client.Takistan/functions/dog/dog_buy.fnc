private ["_type","_grp","_name","_dog"];

if (alive dtk_dog)exitWith {
	"You can not own more then 1 dogs!"call chat_system;
};

if !([player,"geld",-dog_cost] call storage_add)exitWith {
	"You dont have enough money"call chat_system;
};

format["%1 bought a dog for %2", player, (dog_cost call string_intToString)]call chat_system;

_type = "Pastor";
_grp = group player;
_name = format ["CLAY_tmpDog%1", round (random 1000)];


call compile format ["_type createUnit [[(getPos player select 0) + (1 * sin (getDir player)), (getPos player select 1) + (0.3 * cos (getDir player)), 0], _grp, '%1 = this']", _name];
dtk_dog = call compile format ["%1", _name];
dtk_dog setDir getDir player;
player setVariable ["CLAY_DogUnit", dtk_dog];
player setVariable ["CLAY_DogStatus", "Waiting"];