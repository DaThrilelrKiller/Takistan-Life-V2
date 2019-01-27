private ["_vehicle","_dog"];

_dog = player getVariable "CLAY_DogUnit";
_vehicle = _dog getVariable "CLAY_DogVehicle";
detach _dog;
_dog setPos [(getPos _vehicle select 0) + (-5 * sin (getDir _vehicle)), (getPos _vehicle select 1) + (-5 * cos (getDir _vehicle)), 0.5];
_dog setDir (getDir _vehicle + 180);
_dog enableAI "ANIM";
_dog playMove "Dog_Run";
sleep 1;
player setVariable ["CLAY_DogStatus", "Waiting"];