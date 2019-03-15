
house_storage = {

if (isNil "dtk_crate")then {
	dtk_crate = "UNBasicAmmunitionBox_EP1" createVehicle [0,0,0];
};
[dtk_crate]call house_storage;

closeDialog 0;
};
