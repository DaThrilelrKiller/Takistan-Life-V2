createDialog "RscMiniMap";
onMapSingleClick {_dog = player getVariable "CLAY_DogUnit"; _dog setVariable ["CLAY_DogMovePos", _pos];closeDialog 0; onMapSingleClick ""};